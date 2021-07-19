package §9N§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §&! §.§3!§;
   import §'!H§.§5,§;
   import §,u§.§-!#§;
   import §-!7§.§&$§;
   import §-!7§.§'x§;
   import §-!7§.§@m§;
   import §-!7§.§^!1§;
   import §3]§.§"§;
   import §3]§.§8[§;
   import §4W§.§!]§;
   import §4W§.§3!@§;
   import §4W§.§9@§;
   import §5g§.§!!+§;
   import §5p§.§?M§;
   import §9"§.b2Vec2;
   import §<!+§.§!T§;
   import §<!+§.§[!!§;
   import §<!+§.§[j§;
   import §<!+§.§with§;
   import §>!"§.§"P§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §@,§.§4h§;
   import §]C§.§9!S§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9!%§
   {
      
      public static const §?!=§:Number;
      
      public static const §8!5§:Number;
      
      public static const §catch§:Number = 0.05;
      
      public static const §!!Z§:Number;
      
      public static const §01§:Number;
      
      public static const §#6§:§3!§;
      
      protected static var §31§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!=§ = §[&§.§"L§;
            while(true)
            {
               §8!5§ = §[&§.§#S§;
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     §catch§ = 1 / 20;
                     loop3:
                     while(true)
                     {
                        §!!Z§ = §[&§.§#S§ * §catch§;
                        while(true)
                        {
                           §§push(§§findproperty(§01§));
                           §§push(§?!=§);
                           if(_loc2_)
                           {
                              §§push(§§pop() * §catch§);
                           }
                           §§pop().§01§ = §§pop();
                           addr73:
                           while(_loc2_ || _loc1_)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(!(_loc1_ && §9!%§))
                  {
                     §31§ = §with§.§+!-§;
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        return;
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      protected var §49§:§&$§;
      
      private var §+!$§:§@m§;
      
      private var §9s§:Array = null;
      
      private var §#A§:§!!+§;
      
      public var mLevelEngine:§0!4§;
      
      private var §;^§:§'!Q§;
      
      private var §=!+§:§?M§;
      
      private var §;o§:§;c§;
      
      private var §&!#§:§,v§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §'u§:Boolean = false;
      
      private var §,!5§:Boolean = false;
      
      private var §^4§:Boolean = false;
      
      public var §+!F§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §1!7§:Number;
      
      public var §@3§:Number;
      
      private var §=e§:Number;
      
      public var §]!Q§:§[j§;
      
      public var §%w§:Boolean = false;
      
      private var §6c§:§!! §;
      
      private var §-N§:Sprite;
      
      private var §5!S§:§with§;
      
      private var §9q§:§9!S§ = null;
      
      private var §>I§:EventDispatcher;
      
      private var §3[§:Array;
      
      private var §`!%§:Array;
      
      private var §>!S§:§0Z§;
      
      private var §&U§:§5,§;
      
      private var §5<§:§!]§;
      
      private var §6N§:§3!@§;
      
      private var §%!E§:§9@§;
      
      private var §=v§:§9@§;
      
      private var §@S§:§9@§;
      
      private var §-?§:Stage;
      
      private var §'O§:§!!$§;
      
      protected var §&q§:§"P§;
      
      protected var §`@§:§"P§;
      
      protected var §^=§:Number = 0.0;
      
      protected var §,$§:String;
      
      private var §0!N§:Boolean;
      
      private var §?>§:Boolean;
      
      public var §6@§:Boolean;
      
      private var §]+§:uint = 1.417339207E9;
      
      public function §9!%§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§`!%§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§>I§ = new EventDispatcher();
                  loop2:
                  for(; !(_loc3_ && param1); while(!(_loc3_ && _loc3_))
                  {
                     this.§5<§ = §!]§.§!!L§;
                     §§goto(addr76);
                     §§goto(addr63);
                  })
                  {
                     this.§]!Q§ = new §[j§();
                     while(true)
                     {
                        this.§-?§ = param1;
                        continue loop2;
                        addr29:
                        if(_loc3_ && param1)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        while(false)
                        {
                           while(true)
                           {
                              this.§=v§ = this.get();
                              do
                              {
                                 this.§@S§ = this.§1K§();
                              }
                              while(_loc3_);
                              
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr29);
                           }
                           loop7:
                           for(; _loc4_; §§goto(addr40))
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                              addr76:
                              while(true)
                              {
                                 this.§6N§ = this.initAnimationManager(this.§5<§);
                                 break loop7;
                              }
                           }
                           addr40:
                           while(_loc4_ || _loc2_)
                           {
                              this.§%!E§ = this.§8%§();
                              §§goto(addr51);
                           }
                           addr51:
                           continue loop2;
                        }
                        var _loc2_:Stage3D = param1.stage3Ds[0];
                        if(_loc4_)
                        {
                           this.§>!S§ = new §0Z§(§!! §,param1,new Rectangle(0,0,§[&§.§"L§,§[&§.§#S§),_loc2_);
                           while(true)
                           {
                              §[&§.§;L§.§]!P§(this.§>!S§);
                              loop12:
                              for(; _loc4_ || _loc3_; if(_loc3_ && _loc2_)
                              {
                                 continue;
                              },§§push(this.§>!S§),loop17:
                              for(; _loc4_; if(_loc4_ || _loc3_)
                              {
                                 §§pop().§+!"§();
                                 if(!_loc4_)
                                 {
                                    §§goto(addr165);
                                 }
                                 addr159:
                              },continue,while(true)
                              {
                                 §§push(this.§>!S§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    continue loop17;
                                 }
                                 continue loop19;
                              },return)
                              {
                                 §§push(false);
                                 if(!(_loc3_ && this))
                                 {
                                    §§pop().enableErrorChecking = §§pop();
                                    loop18:
                                    while(true)
                                    {
                                       §§push(this.§>!S§);
                                       while(true)
                                       {
                                          §§pop().§ l§ = 2;
                                          continue loop18;
                                          addr174:
                                          §§goto(addr159);
                                       }
                                    }
                                 }
                                 §§goto(addr194);
                              },§§goto(addr193))
                              {
                                 _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!%§,false,0,true);
                                 loop13:
                                 while(true)
                                 {
                                    §§push(this.§>!S§);
                                    addr193:
                                    while(true)
                                    {
                                       §§push(false);
                                       addr194:
                                       while(true)
                                       {
                                          §§pop().§4m§ = §§pop();
                                          addr195:
                                          while(!_loc3_)
                                          {
                                             continue loop12;
                                          }
                                          continue loop13;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr174);
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public static function §86§(param1:§@m§, param2:§@m§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§+-§);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.§+-§);
            if(!(_loc6_ && §9!%§))
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§9!V§);
            if(_loc5_ || param1)
            {
               §§push(§§pop() - param2.§9!V§);
               if(_loc5_ || param2)
               {
                  addr71:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return §[!N§(_loc3_,_loc4_);
            }
            §§goto(addr71);
         }
         §§goto(addr40);
      }
      
      public static function §[!N§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§-N§);
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
                           §§push(Boolean(this.§['§));
                           if(!(_loc1_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           this.§-N§ = this.§6c§.§85§;
                        }
                        addr64:
                     }
                     while(true)
                     {
                        if(_loc1_)
                        {
                           break loop4;
                        }
                        §§goto(addr88);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get §['§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§6c§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§6c§ = this.§>!S§.§'w§ as §!! §;
                     addr74:
                     loop3:
                     while(true)
                     {
                        §§push(this.§6c§);
                        addr45:
                        while(_loc1_)
                        {
                           §§pop().§=!;§ = false;
                           if(_loc1_)
                           {
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     addr74:
                  }
                  §§goto(addr74);
               }
               while(true)
               {
                  §§push(this.§6c§);
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr45);
               }
               return §§pop();
            }
         }
         §§goto(addr74);
      }
      
      private function get §+S§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§['§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return (this.§['§ as §!! §).§+S§;
      }
      
      public function get §"B§() : §3!@§
      {
         return this.§6N§;
      }
      
      public function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function get camera() : §?M§
      {
         return this.§=!+§;
      }
      
      public function get objects() : §&$§
      {
         return this.§49§;
      }
      
      public function get particles() : §,v§
      {
         return this.§&!#§;
      }
      
      public function get background() : §!!+§
      {
         return this.§#A§;
      }
      
      public function get slingshot() : §;c§
      {
         return this.§;o§;
      }
      
      public function get activeObject() : §@m§
      {
         return this.§+!$§;
      }
      
      public function get §null §() : §'!Q§
      {
         return this.§;^§;
      }
      
      public function get stage() : Stage
      {
         return this.§-?§;
      }
      
      public function get §0D§() : §9@§
      {
         return this.§@S§;
      }
      
      protected function get §;J§() : §9@§
      {
         return this.§%!E§;
      }
      
      public function set activeObject(param1:§@m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!$§ = param1;
         }
      }
      
      public function set §case §(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?>§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&U§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&U§);
                     addr248:
                     while(true)
                     {
                        §§pop().dispose();
                        addr249:
                        while(true)
                        {
                        }
                     }
                  }
                  addr246:
               }
               loop1:
               while(true)
               {
                  §§push(this.§5<§);
                  if(_loc1_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§5<§);
                           addr224:
                           while(true)
                           {
                              §§pop().dispose();
                              addr225:
                              while(true)
                              {
                              }
                           }
                           loop8:
                           while(true)
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop2;
                              }
                              §§push(this.§%!E§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop().§#G§);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop10:
                                    while(_loc1_ || this)
                                    {
                                       loop25:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop26:
                                             while(true)
                                             {
                                                if(!(_loc1_ || _loc1_))
                                                {
                                                   continue loop8;
                                                }
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   addr189:
                                                   §§push(this.§%!E§);
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop().§#G§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            while(true)
                                                            {
                                                               addr135:
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.§@S§);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_ || this)
                                                                                    {
                                                                                       §§push(this.§@S§);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§push(§§pop().§#G§);
                                                                                          if(_loc1_ || this)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().dispose();
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc1_ || _loc1_))
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§>!S§);
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         return;
                                                                                                      }
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr33:
                                                                                                         this.§>!S§.dispose();
                                                                                                      }
                                                                                                      if(_loc1_ || _loc2_)
                                                                                                      {
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                      addr19:
                                                                                                   }
                                                                                                   §§goto(addr33);
                                                                                                }
                                                                                             }
                                                                                             if(_loc1_ || this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr106:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc1_ || this)
                                                                                                {
                                                                                                   §§push(this.§@S§);
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop26;
                                                                                             }
                                                                                          }
                                                                                          if(!(_loc1_ || this))
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§goto(addr19);
                                                                                          addr126:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr126);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 addr85:
                                                                                 continue loop10;
                                                                                 if(_loc2_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr106);
                                                                                       }
                                                                                       §§goto(addr23);
                                                                                    }
                                                                                    addr104:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr104);
                                                                           }
                                                                           §§goto(addr23);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr201:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                      §§goto(addr189);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      break loop10;
                                                   }
                                                   addr191:
                                                   addr199:
                                                }
                                                else
                                                {
                                                   §§goto(addr246);
                                                }
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr201);
                                    }
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              §§goto(addr191);
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr199);
                        §§goto(addr225);
                     }
                  }
                  §§goto(addr224);
               }
            }
            §§goto(addr248);
         }
         §§goto(addr249);
      }
      
      protected function §8%§() : §9@§
      {
         return null;
      }
      
      protected function get() : §9@§
      {
         return null;
      }
      
      protected function §1K§() : §9@§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§!]§) : §3!@§
      {
         return new §3!@§(param1);
      }
      
      public function §>!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§0Z§.§4J§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(!param1)
               {
                  §§push(§0Z§.§4J§);
                  loop2:
                  while(!_loc3_)
                  {
                     §§pop().stop();
                     while(true)
                     {
                        if(_loc3_ && this)
                        {
                           break loop1;
                        }
                        if(!_loc3_)
                        {
                           §§push(§0Z§.§4J§);
                           if(!(_loc2_ || param1))
                           {
                              continue loop2;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr35);
                           continue loop2;
                        }
                        continue loop1;
                        addr35:
                        §§pop().color = 0;
                        if(!(_loc3_ && this))
                        {
                           if(_loc2_ || _loc3_)
                           {
                              break loop0;
                           }
                           break;
                        }
                     }
                     break loop0;
                  }
                  §§pop().start();
                  §§goto(addr98);
               }
               §§goto(addr97);
               §§push(§0Z§.§4J§);
            }
            return;
         }
         §§goto(addr93);
      }
      
      public function §"C§(param1:Boolean) : void
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
               §§goto(addr59);
            }
            §§pop().visible = param1;
         }
         addr59:
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.sprite);
         }
      }
      
      public function §2P§(param1:§9!S§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§9q§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§9q§);
                     addr100:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr101:
                        while(true)
                        {
                        }
                     }
                  }
                  addr98:
               }
               while(true)
               {
                  this.§9q§ = param1;
                  while(this.mReadyToRun)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && param1))
                        {
                           §§push(this.§9q§);
                           if(_loc3_ || this)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§goto(addr98);
                        }
                        §§goto(addr100);
                     }
                     else
                     {
                        addr71:
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        §§goto(addr101);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr101);
      }
      
      public function §%!Z§() : §"P§
      {
         return this.§&q§;
      }
      
      public function §<!5§(param1:§5,§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§&U§ = param1;
         }
         §§push(this.§&U§.§2"§);
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
                     loop4:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           _loc5_++;
                           continue loop0;
                           addr125:
                        }
                        addr96:
                        this.§>I§.addEventListener(Event.INIT,param3);
                        while(true)
                        {
                           this.§`!%§.push(param3);
                           addr82:
                           addr84:
                           while(_loc6_)
                           {
                              continue loop4;
                           }
                           §§goto(addr96);
                        }
                     }
                     addr94:
                  }
                  while(true)
                  {
                     if(this.§>D§(param2))
                     {
                        if(!_loc6_)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           this.§4U§();
                        }
                        if(_loc7_ || param2)
                        {
                           if(_loc7_ || param2)
                           {
                              break;
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr82);
                     }
                     break;
                     §§goto(addr84);
                  }
                  return;
               }
               §§goto(addr94);
            }
            else
            {
               this.§5<§.§?1§(this.§&U§.§0!L§(_loc5_));
            }
            §§goto(addr125);
         }
      }
      
      private function §>D§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(_loc5_ || this)
         {
            §§push(this.§5<§);
            while(true)
            {
               §§push(§§pop().§8!K§());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§3[§ = param1.concat();
                        if(_loc5_ || _loc2_)
                        {
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           §§push(false);
                           if(!(_loc4_ && param1))
                           {
                              return §§pop();
                           }
                           addr63:
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        if(_loc5_ || param1)
                        {
                           if(_loc4_)
                           {
                              loop3:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(§4h§);
                                    §§push("\n\nMain texture manager memory usage:\n   textures " + _loc2_);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(§§pop() + " kilobytes\n   bitmaps ");
                                       if(!_loc4_)
                                       {
                                          addr107:
                                          §§push(§§pop() + _loc3_);
                                          if(!_loc4_)
                                          {
                                             addr111:
                                             §§push(§§pop() + " kilobytes\n\n");
                                          }
                                          §§pop().log(§§pop());
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop3;
                                             }
                                             addr164:
                                             while(true)
                                             {
                                                §§push(this.§5<§);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop().§^,§);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(1000);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr186:
                                                         addr139:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         §§push(1000);
                                                         if(_loc4_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            continue loop3;
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                   }
                                                   addr187:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          addr114:
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr188);
                              }
                              this.initializeAnimations(param1);
                           }
                           continue;
                           break;
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr63);
                     §§push(true);
                  }
                  §§goto(addr164);
               }
               return §§pop();
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               §§push(§§pop().§<!H§);
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr139);
                  }
                  §§goto(addr187);
               }
               §§goto(addr156);
            }
         }
         §§goto(addr188);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6N§.initializeAnimations(param1);
         }
      }
      
      private function §3!%§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5<§.§"7§();
            loop0:
            while(true)
            {
               §§push(this.§;J§);
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
                                 §§push(this.§;J§);
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().§#G§);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§"7§();
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§0D§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(!(_loc3_ && _loc3_))
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
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(this.§0D§);
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop().§#G§);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr285:
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
                                                                                 §§push(this.§0D§);
                                                                                 addr289:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§#G§);
                                                                                    loop18:
                                                                                    while(_loc2_)
                                                                                    {
                                                                                       addr292:
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          §§pop().§"7§();
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             addr255:
                                                                                             while(true)
                                                                                             {
                                                                                                if(this.§3[§)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§>D§(this.§3[§);
                                                                                                      addr263:
                                                                                                      while(_loc2_ || this)
                                                                                                      {
                                                                                                         this.§3[§ = null;
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§4U§();
                                                                                                            addr249:
                                                                                                            addr161:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr161:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_ || param1)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                               addr59:
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr24:
                                                                                                                     return;
                                                                                                                     addr68:
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   addr259:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§9q§);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == null);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(!(_loc2_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§push(!§§pop());
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr210:
                                                                                                            if(_loc3_ && param1)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc2_ || this)
                                                                                                                     {
                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                           addr238:
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           §§goto(addr263);
                                                                                                                           addr117:
                                                                                                                           if(_loc3_ && this)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr128:
                                                                                                                              this.§%!E§.§8!K§();
                                                                                                                              loop32:
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§@S§);
                                                                                                                                    loop34:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop32;
                                                                                                                                             }
                                                                                                                                             §§push(this.§@S§);
                                                                                                                                             loop36:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§#G§);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            loop37:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop26;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop44;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop26;
                                                                                                                                                                  addr149:
                                                                                                                                                               }
                                                                                                                                                               §§push(this.§@S§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§#G§);
                                                                                                                                                                  addr103:
                                                                                                                                                                  §§push(this.§@S§);
                                                                                                                                                                  if(_loc2_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§8!K§();
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                           addr101:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop15;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr103);
                                                                                                                                                                           }
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop34;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr161);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().§"7§();
                                                                                                                                                   §§goto(addr101);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr24);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr249);
                                                                                                                              addr129:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr259);
                                                                                                                           }
                                                                                                                           §§goto(addr254);
                                                                                                                        }
                                                                                                                        continue loop43;
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                               addr221:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§%!E§);
                                                                                                                     if(_loc2_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§goto(addr117);
                                                                                                                           }
                                                                                                                           §§goto(addr129);
                                                                                                                        }
                                                                                                                        §§goto(addr69);
                                                                                                                     }
                                                                                                                     §§goto(addr128);
                                                                                                                  }
                                                                                                                  §§goto(addr238);
                                                                                                                  addr104:
                                                                                                               }
                                                                                                               §§goto(addr149);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr221);
                                                                                                      }
                                                                                                      §§goto(addr210);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             addr337:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          addr336:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr337);
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §4U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>I§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§07§();
            }
            while(!_loc1_);
            
         }
      }
      
      private function §07§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§`!%§)
         {
            if(!_loc5_)
            {
               this.§>I§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc5_ && _loc1_))
         {
            this.§`!%§ = [];
         }
      }
      
      public function init(param1:§with§) : void
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
                     addr291:
                     while(true)
                     {
                     }
                  }
                  addr289:
               }
               addr268:
               while(true)
               {
                  this.§;^§ = new §'!Q§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§=!+§ = this.§ else§(param1);
                     while(true)
                     {
                        this.§1!7§ = 0;
                        loop6:
                        for(; _loc2_ || _loc3_; if(!(_loc2_ || param1))
                        {
                           continue;
                        },this.§[I§(param1),§§goto(addr130))
                        {
                           if(!_loc2_)
                           {
                              continue loop4;
                           }
                           while(true)
                           {
                              this.§@3§ = 0;
                              while(true)
                              {
                                 this.§=e§ = 0;
                                 loop9:
                                 while(true)
                                 {
                                    this.§0!N§ = false;
                                    loop10:
                                    while(true)
                                    {
                                       this.mReadyToRun = false;
                                       loop11:
                                       while(true)
                                       {
                                          this.§'u§ = false;
                                          loop12:
                                          while(true)
                                          {
                                             this.mPigsAnimationTimer1 = 2000;
                                             loop13:
                                             for(; !(_loc3_ && this); if(!(_loc2_ || _loc2_))
                                             {
                                                continue;
                                             },if(_loc2_ || _loc2_)
                                             {
                                                return;
                                             },§§goto(addr291))
                                             {
                                                this.mPigsAnimationTimer2 = 1000;
                                                while(true)
                                                {
                                                   §31§ = param1.theme;
                                                   addr204:
                                                   while(true)
                                                   {
                                                      this.§5!S§ = param1;
                                                      continue loop10;
                                                   }
                                                   loop24:
                                                   while(_loc2_ || this)
                                                   {
                                                      §^_§.init();
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      addr33:
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop13;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,!5§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(_loc2_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop11;
                                                                                 addr116:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr82:
                                                                              }
                                                                              this.§6!4§(param1.theme);
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§^4§);
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             continue loop27;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop28;
                                                                                    }
                                                                                    continue loop19;
                                                                                    addr159:
                                                                                 }
                                                                                 addr84:
                                                                                 if(!(_loc2_ || param1))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          this.§^4§ = this.§<z§(param1.theme);
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§goto(addr204);
                                                                                       §§goto(addr84);
                                                                                    }
                                                                                    continue loop12;
                                                                                    addr175:
                                                                                 }
                                                                                 if(!(_loc2_ || _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr33);
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr132:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.initReplay();
                                                                  continue loop24;
                                                                  §§goto(addr132);
                                                               }
                                                               continue loop6;
                                                            }
                                                            addr130:
                                                         }
                                                         §§goto(addr116);
                                                      }
                                                      §§goto(addr82);
                                                   }
                                                }
                                             }
                                             §§goto(addr289);
                                          }
                                       }
                                    }
                                 }
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 this.§,!5§ = this.§2C§(param1.theme);
                                 §§goto(addr175);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr260);
      }
      
      protected function initReplay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&q§ = new §"P§(§[!!§.§7!F§);
         }
      }
      
      protected function §2C§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§%!E§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr39:
                  §§push(false);
                  if(!(_loc2_ && _loc2_))
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
      
      protected function §<z§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"§ = null;
         if(_loc3_)
         {
            if(this.§=v§)
            {
               addr24:
               _loc2_ = §8[§.§8V§(param1);
               if(!_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc3_ || param1)
                     {
                        §§push(Boolean(_loc2_.§&!D§));
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§pop();
                                 if(_loc3_ || this)
                                 {
                                    §§push(this.§=v§.§[?§(_loc2_.§&!D§));
                                    if(_loc3_ || param1)
                                    {
                                       §§push(!§§pop());
                                       if(_loc3_)
                                       {
                                          addr102:
                                          if(§§pop())
                                          {
                                             if(_loc3_)
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
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr107);
                              }
                           }
                        }
                        §§goto(addr102);
                     }
                  }
               }
            }
            addr107:
            return true;
         }
         §§goto(addr24);
      }
      
      protected function §6!4§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"§ = null;
         if(!(_loc3_ && param1))
         {
            §§push(this.§%!E§);
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
                        while(true)
                        {
                           §§pop();
                           addr271:
                           while(true)
                           {
                              §§push(this.§2C§(param1));
                              addr252:
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
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(this.§%!E§);
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.COMPLETE,this.§>v§);
                                    addr195:
                                    if(!(_loc4_ || param1))
                                    {
                                       continue;
                                    }
                                    §§pop().§9=§(param1);
                                    loop30:
                                    while(true)
                                    {
                                       addr167:
                                       while(true)
                                       {
                                          §§push(this.§=v§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop13:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(this.§<z§(param1));
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(!§§pop());
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(this.§=v§);
                                                                           while(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§pop().removeEventListener(Event.COMPLETE,this.§^!A§);
                                                                              loop18:
                                                                              for(; _loc4_ || this; if(!(_loc4_ || this))
                                                                              {
                                                                                 continue;
                                                                              },§§pop().addEventListener(Event.CANCEL,this.§?G§),if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr59);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§%!E§);
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr264:
                                                                              },§§goto(addr69))
                                                                              {
                                                                                 §§pop().removeEventListener(Event.CANCEL,this.§?G§);
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             do
                                                                                             {
                                                                                                §§push(this.§=v§);
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().addEventListener(Event.COMPLETE,this.§^!A§);
                                                                                                   addr69:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            §§push(this.§=v§);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                }
                                                                                             }
                                                                                             while(false);
                                                                                             
                                                                                             _loc2_ = §8[§.§8V§(param1);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      this.§=v§.§9=§(_loc2_.§&!D§);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr298);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    addr247:
                                                                                    addr157:
                                                                                    loop17:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          §§push(this.§=v§);
                                                                                          continue loop18;
                                                                                       }
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§%!E§);
                                                                                          addr208:
                                                                                          addr226:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                §§pop().addEventListener(Event.CANCEL,this.§[!E§);
                                                                                                break loop17;
                                                                                             }
                                                                                             §§push(this.§%!E§);
                                                                                             addr222:
                                                                                             break;
                                                                                             if(!(_loc4_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr195);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().addEventListener(Event.COMPLETE,this.§>v§);
                                                                                             continue loop27;
                                                                                             §§goto(addr208);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr222);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr226);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr271);
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr157);
                                                                     }
                                                                     addr298:
                                                                     return;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr270);
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr252);
                                          }
                                       }
                                    }
                                 }
                                 addr259:
                              }
                              §§goto(addr264);
                           }
                           else
                           {
                              §§goto(addr167);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr247);
      }
      
      private function §>v§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§%!E§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>v§);
               loop1:
               while(true)
               {
                  §§push(this.§%!E§);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§[!E§);
                  while(true)
                  {
                     this.§,!5§ = true;
                     loop3:
                     for(; _loc3_; if(_loc3_)
                     {
                        addr25:
                     },continue,return)
                     {
                        if(!(_loc3_ || this))
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           §§push(this.§,!5§);
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_ || this)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       addr81:
                                       addr42:
                                       while(true)
                                       {
                                          §§push(this.§^4§);
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    addr80:
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§goto(addr25);
                                    }
                                    if(!_loc2_)
                                    {
                                       this.§[I§(this.§5!S§);
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr81);
                                    §§goto(addr42);
                                 }
                                 continue;
                              }
                              §§goto(addr80);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      private function §[!E§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§%!E§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>v§);
               addr86:
               while(true)
               {
                  §§push(this.§%!E§);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§[!E§);
                     while(!(_loc2_ && param1))
                     {
                        this.§'u§ = true;
                        if(_loc3_ || param1)
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
         §§goto(addr86);
      }
      
      private function §^!A§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§%!E§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§^!A§);
               loop1:
               while(true)
               {
                  §§push(this.§%!E§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§?G§);
                  loop2:
                  while(true)
                  {
                     this.§^4§ = true;
                     addr99:
                     loop3:
                     while(true)
                     {
                        §§push(this.§,!5§);
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    loop6:
                                    while(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          loop7:
                                          while(!_loc3_)
                                          {
                                             §§push(this.§^4§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop7;
                                                }
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          continue loop3;
                                       }
                                       addr75:
                                       if(_loc2_ || this)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    return;
                                 }
                                 continue;
                                 addr48:
                              }
                           }
                        }
                        §§goto(addr91);
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §?G§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§%!E§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§^!A§);
               loop1:
               while(true)
               {
                  §§push(this.§%!E§);
                  if(!(_loc2_ || _loc3_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§?G§);
                  loop2:
                  while(true)
                  {
                     this.§^4§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§,!5§);
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this.§^4§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!(_loc2_ || param1))
                                             {
                                                continue loop5;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                             }
                                          }
                                          while(§§pop())
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                while(true)
                                                {
                                                   this.§[I§(this.§5!S§);
                                                }
                                                addr67:
                                             }
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break loop6;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                           }
                           §§goto(addr48);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get §4w§() : §!]§
      {
         return this.§5<§;
      }
      
      private function §[I§(param1:§with§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?>§ = false;
            loop0:
            while(true)
            {
               this.§6@§ = false;
               while(true)
               {
                  §§push(§0Z§.§-m§);
                  if(_loc3_ || param1)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§0Z§.§-m§);
                           addr198:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr210:
                              while(true)
                              {
                              }
                           }
                        }
                        addr196:
                     }
                     loop3:
                     while(true)
                     {
                        this.mLevelEngine = new §0!4§(this);
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§;^§.§;U§);
                           if(_loc3_)
                           {
                              §§push(§§pop() / §catch§);
                           }
                           §§pop().§#A§ = §§pop().§1_§(§§pop(),§§pop(),this.§4w§,this.§=!+§.§9L§());
                           addr177:
                           loop7:
                           while(true)
                           {
                              this.§#A§.§@!-§(§[&§.§'a§());
                              loop8:
                              for(; !_loc2_; if(!(_loc3_ || this))
                              {
                                 continue;
                              },if(_loc2_)
                              {
                                 continue loop0;
                              },§§push(this.§9q§),if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       §§goto(addr37);
                                    }
                                    §§goto(addr49);
                                 }
                                 addr20:
                                 return;
                              },§§goto(addr48))
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 this.§49§ = this.initLevelObjectManager(param1);
                                 loop9:
                                 while(true)
                                 {
                                    this.§;o§ = this.initLevelSlingshot(param1);
                                    while(true)
                                    {
                                       this.§&!#§ = this.§-[§(this.§6N§,this.§5<§);
                                       continue loop7;
                                       addr49:
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr20);
                                       }
                                    }
                                    addr80:
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    this.mReadyToRun = true;
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          addr96:
                                          while(true)
                                          {
                                             this.§>r§();
                                             addr91:
                                             while(true)
                                             {
                                                this.loadPreviousReplayData();
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr80);
                                          }
                                          else
                                          {
                                             §§goto(addr91);
                                          }
                                       }
                                       continue loop9;
                                       addr37:
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this.§9q§);
                                             break;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    §§pop().addEventListeners();
                                    §§goto(addr49);
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  §§goto(addr198);
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  this.§=!+§.init();
                  §§goto(addr96);
               }
            }
         }
         §§goto(addr177);
      }
      
      protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§,$§)
            {
               while(true)
               {
                  this.§`@§ = §"P§.§[I§(this.§,$§);
                  addr105:
                  loop1:
                  while(true)
                  {
                     §§push(this.§`@§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        addr78:
                        while(_loc1_ || _loc2_)
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
         §§goto(addr105);
      }
      
      public function §'!'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,$§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`@§ == null);
         if(_loc2_ || _loc2_)
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
            §§push(this.§`@§);
            while(§§pop())
            {
               if(!_loc3_)
               {
                  if(param1)
                  {
                     addr88:
                     §§push(this.§`@§);
                  }
                  else
                  {
                     §§push(this.§`@§);
                     if(!(_loc3_ && this))
                     {
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        §§pop().speed = Math.max(this.§`@§.speed / 1.25,Math.pow(1 / 1.25,10));
                        if(_loc2_ || _loc3_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr112);
                        continue;
                     }
                  }
                  §§pop().speed = Math.min(this.§`@§.speed * 1.25,Math.pow(1.25,2));
               }
               break;
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§`@§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr52:
                     this.§`@§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      protected function initLevelObjectManager(param1:§with§) : §&$§
      {
         return new §&$§(this,param1,new Sprite());
      }
      
      protected function § else§(param1:§with§) : §?M§
      {
         return new §?M§(this,param1);
      }
      
      protected function §1_§(param1:String, param2:Number, param3:§!]§, param4:Number) : §!!+§
      {
         return new §!!+§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§with§) : §;c§
      {
         return new §;c§(this,param1,new Sprite());
      }
      
      protected function §-[§(param1:§3!@§, param2:§!]§) : §,v§
      {
         return new §,v§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            if(this.mReadyToRun)
            {
               if(!(_loc6_ && _loc3_))
               {
                  addr34:
                  this.clearLevel();
               }
            }
            var _loc3_:§with§ = new §with§();
            if(_loc7_ || param2)
            {
               _loc3_.§%!&§ = -12;
            }
            var _loc4_:§!T§;
            (_loc4_ = new §!T§()).left = 0;
            if(!_loc6_)
            {
               §§push(_loc4_);
               §§push(§?M§.§9!U§);
               if(_loc7_ || this)
               {
                  §§push(-§§pop());
                  if(_loc7_)
                  {
                     §§push(10);
                     if(_loc7_)
                     {
                        addr159:
                        §§push(§§pop() / §§pop());
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §?M§.§9!U§);
                           }
                           §§pop().bottom = §§pop();
                           addr132:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(§§pop() + §?M§.§8u§);
                              }
                              §§pop().right = §§pop();
                              addr114:
                              loop2:
                              while(_loc7_ || param1)
                              {
                                 _loc4_.y = -13.929;
                                 loop3:
                                 while(true)
                                 {
                                    _loc4_.x = §?M§.§8u§;
                                    addr93:
                                    while(true)
                                    {
                                       addr73:
                                       while(true)
                                       {
                                          _loc4_.id = §?M§.§7!6§;
                                          addr78:
                                          while(!_loc6_)
                                          {
                                             continue loop0;
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
                     §§push(§§pop() * §§pop());
                  }
               }
               §§goto(addr159);
            }
            §§goto(addr132);
         }
         §§goto(addr34);
      }
      
      private function §=!Z§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§]+§ ^= this.§]+§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§]+§);
               §§push(this.§]+§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§]+§ = §§pop() ^ §§pop();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§]+§ ^= this.§]+§ << 4;
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.§]+§ * (1 / uint.MAX_VALUE);
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §<r§(param1:§with§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§-!#§ = null;
         if(_loc6_ || _loc2_)
         {
            §§push(this);
            §§push(0.33);
            if(!_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§]+§ = §§pop();
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
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     do
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(5);
                        if(!(_loc6_ || _loc3_))
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(_loc7_ && this)
                           {
                              break loop2;
                           }
                           _loc2_++;
                           if(!_loc6_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        §§push(this.§=!Z§());
                        if(_loc6_)
                        {
                           §§push(§§pop() * 5);
                        }
                        §§push(int(§§pop()));
                     }
                     while(!_loc7_);
                     
                     continue loop1;
                     addr464:
                  }
                  while(true)
                  {
                     _loc4_ = §§pop();
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     §§push(_loc5_ = new §-!#§());
                     §§push(30 + _loc3_ * 10);
                     if(_loc6_ || param1)
                     {
                        §§push(this.§=!Z§());
                        if(!_loc7_)
                        {
                           §§push(§§pop() * 9);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().x = §§pop();
                     if(_loc6_)
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
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(this.§=!Z§());
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(§§pop() * 3);
                                       if(_loc6_ || this)
                                       {
                                          addr324:
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr335:
                                             §§push(§§pop() - _loc3_ * 8);
                                          }
                                          §§pop().y = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(_loc3_);
                                                   loop8:
                                                   for(; !_loc7_; if(_loc7_ && param1)
                                                   {
                                                      continue;
                                                   },§§push(3),if(!_loc7_)
                                                   {
                                                      §§goto(addr184);
                                                   },§§goto(addr285))
                                                   {
                                                      §§push(_loc3_);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(§§pop() + §§pop() * _loc3_);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr249:
                                                                        §§push(§§pop() % 5);
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!(_loc6_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr284:
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(2);
                                                                        addr285:
                                                                        while(§§pop() >= §§pop())
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr286:
                                                                        addr289:
                                                                        _loc5_.id = "BIRD_RED";
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(this.§=!Z§());
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop() * 360);
                                                                           }
                                                                           §§pop().angle = §§pop();
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 param1.§@k§.push(_loc5_);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ && param1)
                                                                                    {
                                                                                       continue loop34;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr138:
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             _loc3_++;
                                                                                             if(!(_loc6_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc6_ || this))
                                                                                             {
                                                                                                addr162:
                                                                                                continue loop33;
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                §§goto(addr464);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   §§push(45);
                                                                                                   §§push(this.§=!Z§());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() * 90);
                                                                                                   }
                                                                                                   §§pop().angle = §§pop() - §§pop();
                                                                                                   addr363:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_ || _loc2_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         addr460:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_.y = 0;
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               addr451:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  addr452:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr455:
                                                                                                                              §§pop();
                                                                                                                              break loop27;
                                                                                                                           }
                                                                                                                           loop14:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc6_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 while(!(_loc7_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          break loop9;
                                                                                                                                       }
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    continue loop30;
                                                                                                                                    if(_loc7_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             _loc5_.id = "PIG_HELMET";
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr384:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc5_.id = "PIG_MUSTACHE";
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr402:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       addr421:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr455);
                                                                                                                              }
                                                                                                                              §§goto(addr402);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr446);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr286);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr204:
                                                                                       if(!(_loc6_ || _loc2_))
                                                                                       {
                                                                                          break loop27;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop33;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop34;
                                                                              }
                                                                              addr456:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 break loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr249);
                                                         addr184:
                                                         if(!(_loc6_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               continue loop7;
                                                            }
                                                            _loc5_.id = "BIRD_BLUE";
                                                            §§goto(addr162);
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr421);
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      §§push(4);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr392);
                                                      }
                                                      §§goto(addr452);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§goto(addr418);
                                                         §§push(2);
                                                      }
                                                      §§goto(addr451);
                                                      §§goto(addr456);
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr384);
                                             }
                                             §§goto(addr363);
                                          }
                                       }
                                       §§goto(addr335);
                                    }
                                    §§goto(addr324);
                                 }
                                 §§goto(addr335);
                              }
                              §§goto(addr460);
                           }
                        }
                     }
                     §§goto(addr211);
                  }
               }
               return;
            }
         }
      }
      
      private function §9!P§() : void
      {
      }
      
      public function §>r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§!!+§.§^!R§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§[e§(this.§#A§.§+#§,false);
                     addr219:
                     while(true)
                     {
                     }
                  }
                  addr213:
               }
               while(true)
               {
                  this.§[e§(this.§&!#§.§7q§(§,v§.§&!>§),false);
                  loop4:
                  while(true)
                  {
                     this.§[e§(this.§&!#§.§7q§(§,v§.§`!+§),true);
                     loop5:
                     while(_loc2_)
                     {
                        this.§[e§(this.§&!#§.§7q§(§,v§.§'>§),true);
                        loop6:
                        while(true)
                        {
                           this.§[e§(this.§49§.§1!+§,true);
                           loop7:
                           while(true)
                           {
                              this.§[e§(this.§;o§.sprite,true);
                              while(_loc2_ || _loc2_)
                              {
                                 this.§[e§(this.§&!#§.§7q§(§,v§.§-!;§),true);
                                 continue loop4;
                                 addr61:
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 §§push(§0!4§.§ L§);
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop0;
                                 }
                                 addr35:
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                             continue loop6;
                                             addr113:
                                          }
                                          §§goto(addr61);
                                          §§goto(addr35);
                                       }
                                       addr47:
                                       return;
                                       addr59:
                                    }
                                    addr38:
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop7;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr47);
                              }
                              §§goto(addr213);
                           }
                        }
                     }
                     §§goto(addr219);
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §[e§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.sprite);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(_loc4_ || param2)
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
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc4_ || param2)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§[&§.§8n§);
               loop1:
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
                           if(_loc4_ || _loc3_)
                           {
                              if(!(_loc4_ || this))
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(§[&§.§8n§);
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc4_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           if(_loc4_)
                           {
                              param2 = §§pop();
                              while(!_loc5_)
                              {
                                 _loc3_.x = (param1 / §?M§.§]5§ + this.§=!+§.§ !,§ - §?M§.§&!N§ / §?M§.§]5§) * §catch§;
                                 loop6:
                                 while(!(_loc5_ && param2))
                                 {
                                    while(true)
                                    {
                                       _loc3_.y = (param2 / §?M§.§]5§ + this.§=!+§.§^!9§ - §?M§.§]!Y§ / §?M§.§]5§) * §catch§;
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                    return _loc3_;
                                 }
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
         §§goto(addr91);
      }
      
      public function §2!$§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc6_)
         {
            _loc3_.x = (param1 / §catch§ + §?M§.§&!N§ / §?M§.§]5§ - this.§=!+§.§ !,§) * §?M§.§]5§;
            if(!(_loc5_ && this))
            {
               _loc3_.y = (param2 / §catch§ + §?M§.§]!Y§ / §?M§.§]5§ - this.§=!+§.§^!9§) * §?M§.§]5§;
            }
         }
         var _loc4_:Number = Math.max(§[&§.§8n§,§[&§.§6!H§);
         if(_loc6_ || _loc3_)
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
      
      public function §?e§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§49§.addObject(param1,param2,param3);
         }
      }
      
      public function §80§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§+S§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§+S§);
                     addr85:
                     loop3:
                     while(true)
                     {
                        §§pop().visible = true;
                        addr87:
                        while(true)
                        {
                           §§push(this.§+S§);
                           if(_loc2_ || _loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        addr58:
                        §§pop().alpha = 0;
                        addr67:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           §§goto(addr87);
                        }
                     }
                  }
                  addr83:
               }
               while(true)
               {
                  this.§+!F§ = 0;
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr58);
                  §§goto(addr67);
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr83);
      }
      
      public function §8!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'O§ = new §!!$§(§&!V§.§#!G§,§&!V§.§-5§);
         }
      }
      
      public function §!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'O§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#A§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#A§);
                     addr574:
                     while(true)
                     {
                        §§pop().dispose();
                        addr575:
                        while(true)
                        {
                           this.§#A§ = null;
                           addr551:
                           while(true)
                           {
                           }
                        }
                     }
                     addr450:
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     §§push(this.§;o§);
                     loop19:
                     while(true)
                     {
                        §§pop().dispose();
                        loop20:
                        while(true)
                        {
                           this.§;o§ = null;
                           loop21:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 addr436:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§=!+§);
                                    if(!_loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          loop11:
                                          for(; !_loc1_; if(!(_loc2_ || _loc1_))
                                          {
                                             continue;
                                          },§§goto(addr333))
                                          {
                                             §§push(this.§=!+§);
                                             while(true)
                                             {
                                                §§pop().clear();
                                                loop17:
                                                while(true)
                                                {
                                                   this.§=!+§ = null;
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            addr417:
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(this.§&!#§);
                                                               if(_loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(_loc1_ && _loc2_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              addr407:
                                                                              this.§&!#§.dispose();
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 this.§&!#§ = null;
                                                                                 addr369:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop13;
                                                                                    addr337:
                                                                                    if(!(_loc2_ || _loc1_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc1_ && _loc1_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr320:
                                                                                          §§push(this.sprite);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(§§pop().numChildren <= 0)
                                                                                             {
                                                                                                addr329:
                                                                                                this.§1!7§ = 0;
                                                                                                this.§@3§ = 0;
                                                                                                this.mReadyToRun = false;
                                                                                                this.§0!N§ = false;
                                                                                                this.§+!F§ = §&!V§.§9c§;
                                                                                                addr314:
                                                                                                addr304:
                                                                                                addr332:
                                                                                                addr319:
                                                                                                addr309:
                                                                                                if(this.§['§)
                                                                                                {
                                                                                                   addr297:
                                                                                                   (this.§['§ as §!! §).§!3§.x = 0;
                                                                                                   addr291:
                                                                                                   addr298:
                                                                                                   addr296:
                                                                                                   §§push(this.§['§);
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push((§§pop() as §!! §).§!3§);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               addr286:
                                                                                                               §§push(this.§+S§);
                                                                                                               if(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr243:
                                                                                                                     this.§+S§.visible = false;
                                                                                                                     addr241:
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc1_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr223:
                                                                                                                           this.§`@§ = null;
                                                                                                                           addr227:
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              this.§&q§ = null;
                                                                                                                              addr215:
                                                                                                                              if(!(_loc1_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr200:
                                                                                                                                 if(this.§%!E§)
                                                                                                                                 {
                                                                                                                                    addr203:
                                                                                                                                    this.§%!E§.removeEventListener(Event.COMPLETE,this.§>v§);
                                                                                                                                    addr208:
                                                                                                                                    addr201:
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§%!E§);
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc1_)
                                                                                                                                          {
                                                                                                                                             §§pop().removeEventListener(Event.CANCEL,this.§[!E§);
                                                                                                                                             addr196:
                                                                                                                                             if(this.§=v§)
                                                                                                                                             {
                                                                                                                                                addr160:
                                                                                                                                                if(!_loc1_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc1_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr178:
                                                                                                                                                         this.§=v§.removeEventListener(Event.COMPLETE,this.§^!A§);
                                                                                                                                                         addr183:
                                                                                                                                                         §§push(this.§=v§);
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().removeEventListener(Event.CANCEL,this.§?G§);
                                                                                                                                                               addr148:
                                                                                                                                                               if(!(_loc1_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  addr125:
                                                                                                                                                                  this.§07§();
                                                                                                                                                                  addr128:
                                                                                                                                                                  if(!(_loc1_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§0Z§.§4J§);
                                                                                                                                                                     if(!_loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr106:
                                                                                                                                                                           if(!(_loc1_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc1_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr122:
                                                                                                                                                                                 §0Z§.§4J§.color = 0;
                                                                                                                                                                                 addr124:
                                                                                                                                                                                 §§push(this.§9q§);
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc1_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc1_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr75:
                                                                                                                                                                                                      this.§9q§.removeEventListeners();
                                                                                                                                                                                                      addr76:
                                                                                                                                                                                                      if(!(_loc1_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc2_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr24:
                                                                                                                                                                                                                  this.mReadyToRun = false;
                                                                                                                                                                                                                  if(!(_loc1_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr291);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr215);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr124);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr76);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr329);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr286);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr160);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr148);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr314);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr208);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr196);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr106);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr76);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr24);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr75);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr183);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr128);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr124);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr122);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr227);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr201);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr196);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr178);
                                                                                                                                                      }
                                                                                                                                                      addr364:
                                                                                                                                                      §§goto(addr320);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr304);
                                                                                                                                                }
                                                                                                                                                §§goto(addr241);
                                                                                                                                             }
                                                                                                                                             §§goto(addr125);
                                                                                                                                          }
                                                                                                                                          §§goto(addr200);
                                                                                                                                       }
                                                                                                                                       §§goto(addr203);
                                                                                                                                    }
                                                                                                                                    §§goto(addr241);
                                                                                                                                 }
                                                                                                                                 §§goto(addr196);
                                                                                                                              }
                                                                                                                              §§goto(addr332);
                                                                                                                           }
                                                                                                                           §§goto(addr319);
                                                                                                                        }
                                                                                                                        §§goto(addr309);
                                                                                                                     }
                                                                                                                     §§goto(addr298);
                                                                                                                  }
                                                                                                                  §§goto(addr223);
                                                                                                               }
                                                                                                               §§goto(addr243);
                                                                                                            }
                                                                                                            §§goto(addr297);
                                                                                                         }
                                                                                                         §§goto(addr296);
                                                                                                      }
                                                                                                      §§goto(addr329);
                                                                                                   }
                                                                                                   addr293:
                                                                                                   §§goto(addr293);
                                                                                                }
                                                                                                §§goto(addr286);
                                                                                                addr328:
                                                                                             }
                                                                                             §§push(this.sprite);
                                                                                          }
                                                                                          §§pop().removeChildAt(0,true);
                                                                                          §§goto(addr364);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§49§ = null;
                                                                                             break loop12;
                                                                                          }
                                                                                          addr546:
                                                                                       }
                                                                                    }
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       this.mLevelEngine = null;
                                                                                       addr494:
                                                                                       loop34:
                                                                                       while(!_loc1_)
                                                                                       {
                                                                                          if(_loc2_ || this)
                                                                                          {
                                                                                             addr503:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§;^§);
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc1_ && this))
                                                                                                         {
                                                                                                            §§push(this.§;^§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().clear();
                                                                                                               addr489:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§;^§ = null;
                                                                                                                  break loop11;
                                                                                                               }
                                                                                                            }
                                                                                                            addr488:
                                                                                                         }
                                                                                                         break;
                                                                                                         addr443:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc2_ || _loc1_))
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§goto(addr450);
                                                                                                         }
                                                                                                         §§goto(addr575);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.mLevelEngine);
                                                                                                         addr518:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().clear();
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         §§goto(addr479);
                                                                                                      }
                                                                                                      addr479:
                                                                                                      addr516:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§;o§);
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                      addr472:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr488);
                                                                                                §§goto(addr503);
                                                                                             }
                                                                                             addr473:
                                                                                          }
                                                                                          while(!_loc1_)
                                                                                          {
                                                                                             addr526:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mLevelEngine);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      break loop34;
                                                                                                   }
                                                                                                   §§goto(addr473);
                                                                                                }
                                                                                                §§goto(addr518);
                                                                                                §§goto(addr526);
                                                                                             }
                                                                                          }
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§49§);
                                                                                             addr545:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().dispose();
                                                                                                §§goto(addr546);
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.mLevelEngine);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!§§pop().§0k§)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                          }
                                                                                          §§goto(addr518);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              addr408:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr575);
                                                                           }
                                                                        }
                                                                        §§goto(addr551);
                                                                     }
                                                                     §§goto(addr408);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(this.sprite)
                                                                     {
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§goto(addr328);
                                                                     addr333:
                                                                  }
                                                                  §§goto(addr369);
                                                               }
                                                               §§goto(addr407);
                                                               §§goto(addr417);
                                                            }
                                                            while(true)
                                                            {
                                                               this.§+!$§ = null;
                                                               §§goto(addr524);
                                                            }
                                                            addr531:
                                                            addr379:
                                                         }
                                                         §§goto(addr494);
                                                      }
                                                      §§goto(addr489);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§goto(addr472);
                                             }
                                             §§goto(addr531);
                                          }
                                       }
                                       §§goto(addr379);
                                    }
                                    §§goto(addr428);
                                 }
                              }
                              §§goto(addr443);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§49§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        §§goto(addr543);
                     }
                     §§goto(addr504);
                  }
                  §§goto(addr545);
                  §§goto(addr551);
               }
            }
            §§goto(addr574);
         }
         §§goto(addr519);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §>q§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§&q§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§&q§);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop().toString();
         }
         addr55:
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
               if(!_loc4_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           addr166:
                           while(true)
                           {
                              §§push(§0Z§.§ Z§());
                              continue loop10;
                           }
                        }
                        addr165:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§`@§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(_loc5_ || this)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       if(!§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc4_ && param2)
                                             {
                                                addr105:
                                                break;
                                             }
                                             if(_loc4_ && param1)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         §§push(0);
                                                      }
                                                      else
                                                      {
                                                         addr145:
                                                      }
                                                      §§push(this.§`@§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop().§9y§);
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_ || param3)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr135);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop8;
                                                               }
                                                               addr121:
                                                            }
                                                         }
                                                         if(_loc4_ && this)
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                      continue loop5;
                                                      continue loop0;
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr146);
                                             }
                                             if(_loc5_ || param2)
                                             {
                                                §§goto(addr104);
                                             }
                                             §§goto(addr166);
                                             §§goto(addr135);
                                          }
                                          §§push(this.§;8§(param1,true,param2,param3));
                                          if(_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             addr146:
                                             return §§pop();
                                          }
                                          addr104:
                                          return this.§"!,§(param1,param2,param3);
                                          addr66:
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                  }
               }
               §§goto(addr165);
            }
         }
         §§goto(addr105);
      }
      
      protected function §;8§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            if(this.§?>§)
            {
               if(_loc7_)
               {
                  §§push(param1);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() * 0.2);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           param1 = §§pop();
                           if(_loc7_)
                           {
                              §§push(§0Z§.§-m§);
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    addr63:
                                    if(_loc7_ || param3)
                                    {
                                       addr59:
                                       §§push(§0Z§.§-m§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(this);
                                       §§push(this.§@3§);
                                       if(_loc7_ || param2)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§@3§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§49§.§#P§();
                                                loop2:
                                                while(true)
                                                {
                                                   this.§1!7§ = 0;
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && param3))
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
                                                               if(_loc7_ || param2)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     this.§8z§(param1,_loc5_);
                                                                     addr111:
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr74:
                                                                        §§push(param1);
                                                                        if(!_loc6_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              this.§;o§.update(param1,param4);
                                                                              addr148:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ || param3)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                           if(!(_loc7_ || param2))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§1!7§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + param1);
                                                                                 }
                                                                                 §§pop().§1!7§ = §§pop();
                                                                                 addr185:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.mLevelEngine.§1!X§(this.§1!7§));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              addr177:
                                                                           }
                                                                           this.§1!7§ = _loc5_;
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     §§goto(addr148);
                                                                  }
                                                                  §§goto(addr185);
                                                               }
                                                               §§goto(addr111);
                                                            }
                                                            §§goto(addr74);
                                                         }
                                                         continue loop1;
                                                         addr81:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr81);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr63);
                              }
                              §§pop().speed = 0.2;
                           }
                           §§goto(addr63);
                        }
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr59);
            }
            §§goto(addr63);
         }
         §§goto(addr59);
      }
      
      private function §"!,§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§0!4§.§+!G§);
         if(!_loc6_)
         {
            §§push(§§pop() * 1000);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc7_ || param1)
         {
            if(this.§`@§)
            {
               loop18:
               while(true)
               {
                  §§push(param1);
                  loop19:
                  while(true)
                  {
                     §§push(this.§`@§.speed);
                     loop20:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc6_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                        loop21:
                        while(true)
                        {
                           param1 = §§pop();
                           while(true)
                           {
                              §§push(this.§@3§);
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && param3))
                                 {
                                    §§push(param1);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc6_ && param1))
                                       {
                                          addr276:
                                          if(_loc6_)
                                          {
                                             continue loop21;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       _loc5_ = §§pop();
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop20;
                                 }
                                 continue loop19;
                              }
                              §§goto(addr276);
                           }
                           continue loop18;
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(this.§;8§(_loc4_,true,param2,param3));
               if(_loc7_)
               {
                  if(_loc7_ || param2)
                  {
                     if(_loc7_ || param2)
                     {
                        return §§pop();
                     }
                     §§goto(addr238);
                  }
                  §§goto(addr240);
               }
            }
            §§goto(addr66);
         }
         §§goto(addr289);
      }
      
      private function §8z§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc6_)
         {
            this.§#A§.update(param1);
            loop0:
            while(true)
            {
               this.§49§.§>!=§(param1,param2);
               loop1:
               while(true)
               {
                  this.§7H§();
                  loop2:
                  while(_loc5_)
                  {
                     §§push(this.§+!F§);
                     loop3:
                     while(true)
                     {
                        §§push(§&!V§.§9c§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§+S§);
                              if(!(_loc6_ && param2))
                              {
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(this.§+S§);
                                             while(true)
                                             {
                                                §§pop().visible = false;
                                                loop21:
                                                while(true)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.§'O§);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr78:
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     addr87:
                                                                     if(!this.§'O§.§>Y§(this.§=!+§,param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           this.§!8§();
                                                                        }
                                                                        addr92:
                                                                     }
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        this.§=!+§.§]b§(param1);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              this.mLevelEngine.§7D§();
                                                                              addr148:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§goto(addr92);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr97:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                              addr148:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr206:
                                                                              while(_loc5_)
                                                                              {
                                                                                 §§push(this.§+S§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().alpha = _loc4_;
                                                                                    §§goto(addr148);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§+S§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr142);
                                                                                    }
                                                                                    §§goto(addr97);
                                                                                 }
                                                                                 §§goto(addr146);
                                                                              }
                                                                              addr142:
                                                                              addr206:
                                                                           }
                                                                           §§goto(addr148);
                                                                        }
                                                                     }
                                                                     addr60:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§&!V§.§9c§);
                                                                        addr210:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           addr212:
                                                                           addr159:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr213:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(_loc3_);
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§&!V§.§[g§);
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       addr190:
                                                                                       if(_loc6_ && param1)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(§§pop() / _loc3_);
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr203:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          §§goto(addr206);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr212);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                 }
                                                                                 §§goto(addr213);
                                                                              }
                                                                              §§goto(addr203);
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr78);
                                                                     }
                                                                     addr236:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr60);
                                                         }
                                                         §§goto(addr87);
                                                      }
                                                      addr70:
                                                   }
                                                   §§goto(addr148);
                                                }
                                             }
                                             addr116:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§+!F§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§+!F§ = §§pop();
                                             }
                                             addr228:
                                          }
                                          §§goto(addr236);
                                       }
                                    }
                                    §§goto(addr70);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr228);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr206);
      }
      
      public function §@!U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.objects);
            while(true)
            {
               §§pop().§#P§();
               while(true)
               {
                  §§push(this.objects);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(param1);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§`!"§(§§pop());
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.§while§();
                        if(_loc2_ || param1)
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
         §§goto(addr72);
      }
      
      public function §7H§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§@m§ = null;
         if(!_loc4_)
         {
            §§push(this.§@3§);
            §§push(this.§=e§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr40);
               }
            }
            §§goto(addr54);
         }
         addr40:
         if(this.§9s§ != null)
         {
            addr54:
            var _loc3_:* = this.§9s§;
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc3_)
               {
                  _loc1_.addTrail();
               }
            }
            if(_loc4_ && this)
            {
            }
            §§goto(addr101);
         }
         this.§=e§ = this.§@3§;
         addr101:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@m§ = null;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(!(_loc3_ && param1))
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§push(this.§49§);
                           if(_loc4_ || this)
                           {
                              §§push(true);
                              if(_loc4_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          addr80:
                                          §§push(this.§49§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr89:
                                             §§push(true);
                                             if(_loc4_)
                                             {
                                                addr92:
                                                §§push(§§pop().§[!I§(§§pop()));
                                                if(_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      _loc2_.§%n§.mTryToScream = §'x§.§ H§;
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(_loc4_ || this)
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§49§.§7e§()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                         addr139:
                                                         §§push(this);
                                                         §§push(this.mPigsAnimationTimer2);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().mPigsAnimationTimer2 = §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            addr152:
                                                            if(this.mPigsAnimationTimer2 <= 0)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr155:
                                                                  §§push(this.§49§);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     addr164:
                                                                     §§push(true);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§goto(addr227);
                                                                     }
                                                                     addr178:
                                                                     _loc2_ = §§pop().§[!I§(§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        _loc2_.§%n§.mTryToBlink = §'x§.§@x§;
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(250 + Math.random() * 500);
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              §§push(§§pop() + 2000 / (3 + this.§49§.§7e§()));
                                                                           }
                                                                           §§pop().mPigsAnimationTimer2 = §§pop();
                                                                        }
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                               }
                                                               §§goto(addr176);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr155);
                                                      }
                                                   }
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr139);
                                 }
                                 addr227:
                                 if(§§pop().isPigsAlive(§§pop()))
                                 {
                                    addr176:
                                    §§push(this.§49§);
                                    §§push(true);
                                 }
                                 return;
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr139);
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr80);
         }
         §§goto(addr152);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
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
                        §§push(§-&§.§'=§);
                        if(_loc8_)
                        {
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                           addr190:
                        }
                        addr191:
                        while(true)
                        {
                           param6 = §§pop();
                           addr192:
                           while(true)
                           {
                           }
                        }
                     }
                     addr186:
                  }
                  while(true)
                  {
                     §^_§.addScore(param1,param2);
                     while(true)
                     {
                        if(_loc8_ || param3)
                        {
                           if(!(_loc7_ && this))
                           {
                              this.§9q§.addScore(param1);
                              loop6:
                              while(true)
                              {
                                 §§push(param3);
                                 addr135:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             addr138:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop6;
                                                         addr44:
                                                         if(!(_loc8_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc7_ && param3)
                                                         {
                                                            continue loop8;
                                                         }
                                                         while(§§pop())
                                                         {
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  this.§!G§(param1.toString(),param4,param5,800,param6,0,0);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr191);
                                                                  addr139:
                                                               }
                                                            }
                                                            if(_loc8_ || this)
                                                            {
                                                               break;
                                                            }
                                                            continue loop6;
                                                         }
                                                         return;
                                                         addr60:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr60);
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             addr112:
                                          }
                                          §§goto(addr139);
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr186);
                           }
                           §§goto(addr191);
                        }
                        break;
                        if(_loc7_ && this)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§6@§);
                           if(_loc8_ || param2)
                           {
                              if(_loc8_ || param3)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr44);
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr44);
                        }
                     }
                     §§goto(addr192);
                  }
               }
            }
            §§goto(addr190);
         }
         §§goto(addr132);
      }
      
      public function §!G§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            §§push(param5);
            if(!_loc9_)
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§-&§.§[!0§);
                     if(_loc8_)
                     {
                        addr80:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           param5 = §§pop();
                           addr81:
                           while(true)
                           {
                           }
                        }
                        addr80:
                     }
                     §§goto(addr80);
                  }
                  addr75:
               }
               while(true)
               {
                  this.§&!#§.addParticle(§-&§.§ %§,§,v§.§"%§,§-&§.§"z§,param2,param3,param4,param1,param5,param6,param7);
                  if(_loc9_)
                  {
                     continue;
                  }
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§goto(addr75);
               }
               return;
               addr59:
            }
            §§goto(addr80);
         }
         §§goto(addr59);
      }
      
      public function §+!'§(param1:§@m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§9s§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc2_)
               {
                  this.§9s§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr28);
         }
      }
      
      public function §6!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;o§.§6!A§();
            do
            {
               this.§49§.mSardineCanAdded = true;
               do
               {
                  this.§6@§ = true;
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function § c§(param1:§@m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&!#§.§0!"§(§,v§.§&!>§);
            while(true)
            {
               §§push(this.§9s§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     while(_loc2_)
                     {
                        §§push(this.§9s§);
                        while(true)
                        {
                           §§pop().splice(this.§9s§.indexOf(param1),1);
                           addr100:
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr80:
                  }
                  while(true)
                  {
                     §§push(this.§9s§);
                     if(_loc2_ || this)
                     {
                        if(§§pop().length != 0)
                        {
                           break;
                        }
                        if(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              this.§9s§ = null;
                           }
                           else
                           {
                              §§goto(addr80);
                           }
                        }
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  return;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr100);
      }
      
      public function §8!"§(param1:§8'§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            this.§+!$§ = this.§49§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
            if(!(_loc7_ && this))
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr53:
                  §§push(§;c§.§-O§);
                  if(_loc8_ || param3)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ || param2)
                     {
                     }
                     addr84:
                     var _loc4_:* = §§pop();
                     if(_loc8_)
                     {
                        §§push(param1.§^I§);
                        loop0:
                        while(true)
                        {
                           §§push(1);
                           loop1:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§+!$§);
                                    loop3:
                                    while(true)
                                    {
                                       §§pop().§&c§(param1.§^I§);
                                       loop4:
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(this.§+!$§);
                                             if(!(_loc8_ || param2))
                                             {
                                                break;
                                             }
                                             §§pop().§%n§.§6!F§();
                                             while(!(_loc7_ && param2))
                                             {
                                                while(true)
                                                {
                                                }
                                                if(_loc7_ && param2)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc8_ || param3))
                                                {
                                                   continue loop2;
                                                }
                                                §§push(param1.§1;§);
                                                if(!(_loc7_ && param2))
                                                {
                                                   addr129:
                                                   §§push(Number(§§pop()));
                                                   if(_loc8_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr133:
                                                      if(false)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr175:
                                                      §§push(_loc4_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc8_)
                                                         {
                                                            addr181:
                                                            §§push(§§pop() * param2);
                                                            if(!_loc7_)
                                                            {
                                                               addr185:
                                                               §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                               if(_loc8_ || this)
                                                               {
                                                                  addr201:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc5_:* = §§pop();
                                                               §§push(_loc4_);
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(§§pop() * param2);
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                                     if(_loc7_ && param2)
                                                                     {
                                                                     }
                                                                     addr237:
                                                                     var _loc6_:* = §§pop();
                                                                     if(_loc8_)
                                                                     {
                                                                        this.§+!$§.§%!K§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                                        this.camera.§99§(§?M§.§?q§);
                                                                        addr311:
                                                                        addr291:
                                                                        §§push(this.§&q§);
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 addr265:
                                                                                 this.§&q§.§8!"§(this.mLevelEngine.currentStep,param1.mX,param1.mY,param2,param3);
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(!(_loc8_ || param3))
                                                                                 {
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 addr241:
                                                                                 return;
                                                                                 addr284:
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           §§goto(addr241);
                                                                        }
                                                                        §§goto(addr265);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr181);
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(param1.§1;§);
                                 if(_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(0);
                                    if(!(_loc8_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr106);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr185);
                           }
                        }
                     }
                     §§goto(addr164);
                  }
                  addr83:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(§;c§.§1p§);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ || param3)
                     {
                        §§goto(addr83);
                     }
                  }
               }
               §§goto(addr84);
            }
         }
         §§goto(addr53);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§0!N§ = true;
         }
      }
      
      private function §while§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§0!N§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§0!N§ = false;
                     loop2:
                     while(_loc2_ || _loc2_)
                     {
                        §§push(this.activeObject);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() is §^!1§);
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr164:
                                    while(_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.activeObject);
                                          if(!_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          §§push((§§pop() as §^!1§).§]Z§);
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop6;
                                          }
                                          §§push(!§§pop());
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                                 addr163:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§49§.§9u§();
                                    break;
                                 }
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          break loop3;
                                       }
                                       §§push(this.activeObject);
                                       continue loop3;
                                    }
                                    §§goto(addr164);
                                 }
                                 else
                                 {
                                    addr150:
                                    this.§%w§ = true;
                                    addr153:
                                    §§push(this.§&q§);
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc1_ && this))
                                          {
                                             if(!_loc1_)
                                             {
                                                addr51:
                                                this.§&q§.§?!3§(this.mLevelEngine.currentStep);
                                                §§goto(addr55);
                                             }
                                             break;
                                          }
                                          §§goto(addr55);
                                       }
                                       addr55:
                                       if(_loc1_ && _loc2_)
                                       {
                                          §§goto(addr153);
                                       }
                                       return;
                                    }
                                    §§goto(addr51);
                                    addr63:
                                 }
                                 §§goto(addr104);
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr153);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr163);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr166);
      }
      
      public function §10§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§49§.§10§();
         }
      }
      
      public function §@!O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§49§.§2n§();
         }
      }
      
      public function §'!9§() : §with§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§with§ = new §with§();
         if(_loc3_ || _loc2_)
         {
            _loc1_.§ !§ = this.§5!S§.§ !§;
            while(true)
            {
               _loc1_.§<!D§ = this.§5!S§.§<!D§;
               addr42:
               if(_loc3_ || _loc1_)
               {
                  return _loc1_;
               }
            }
         }
         while(true)
         {
            this.§=!+§.§"4§(_loc1_);
            loop2:
            while(_loc3_ || _loc1_)
            {
               this.§49§.§=s§(_loc1_);
               loop3:
               while(true)
               {
                  this.§;o§.§ "§(_loc1_);
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop2;
               }
            }
         }
      }
      
      public function §^!0§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!S§.§<!D§ = param1;
         }
      }
      
      public function §8"§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5!S§.§ !§ = param1;
         }
      }
      
      public function §]!;§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§6c§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6c§);
                     addr87:
                     while(true)
                     {
                        §§pop().§'7§(param1,param2);
                        addr90:
                        while(true)
                        {
                        }
                     }
                     addr57:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     addr24:
                     return;
                     addr64:
                  }
               }
               while(true)
               {
                  §§push(this.§=!+§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr55:
                           this.§=!+§.§]b§(0);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr55);
               }
               §§goto(addr64);
            }
            §§goto(addr87);
         }
         §§goto(addr24);
      }
      
      public function get §,8§() : §with§
      {
         return this.§5!S§;
      }
      
      public function get § !4§() : §&$§
      {
         return this.§49§;
      }
   }
}
