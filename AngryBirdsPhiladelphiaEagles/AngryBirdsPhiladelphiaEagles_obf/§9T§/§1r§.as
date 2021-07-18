package §9T§
{
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §#e§.§1b§;
   import §#e§.§@!+§;
   import §&o§.§72§;
   import §-!&§.§1!"§;
   import §-!&§.§20§;
   import §-!&§.§3!,§;
   import §-!&§.§?k§;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §-!O§.§?Z§;
   import §0!E§.§;!D§;
   import §1&§.§["§;
   import §5!G§.§2! §;
   import §5!G§.§>X§;
   import §5Z§.§[Z§;
   import §8!B§.§#! §;
   import §=I§.§2i§;
   import §?#§.§,H§;
   import §^]§.§[z§;
   import §^]§.§]X§;
   import §^]§.§^§;
   import §^]§.§`!K§;
   import §`!D§.§,q§;
   import §`K§.§ L§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1r§
   {
      
      private static const §-!,§:int = 20;
      
      public static const §'6§:Number = §#! §.§-p§;
      
      public static const §=w§:Number = §#! §.§5!9§;
      
      public static const §[M§:Number = 0.05;
      
      public static const §^L§:Number;
      
      public static const §#C§:Number;
      
      public static const §5m§:§;!D§;
      
      public static var §0!1§:Number = 1;
      
      protected static var §2n§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §[M§ = 1 / 20;
            §^L§ = §#! §.§5!9§ * §[M§;
            while(_loc1_ || §1r§)
            {
               §§push(§§findproperty(§#C§));
               §§push(§'6§);
               if(_loc1_)
               {
                  §§push(§§pop() * §[M§);
               }
               §§pop().§#C§ = §§pop();
               do
               {
                  §5m§ = new §;!D§(13 - 3);
               }
               while(!(_loc1_ || _loc1_));
               
               §0!1§ = 1;
               while(_loc1_)
               {
                  §2n§ = §[z§.§"!N§;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected var §#;§:§20§;
      
      private var §9N§:§3!,§;
      
      private var §&k§:Array = null;
      
      protected var §8!E§:§["§;
      
      public var §-!H§:§ !&§;
      
      protected var §5T§:§^=§;
      
      protected var §+=§:§?Z§;
      
      protected var §7;§:§97§;
      
      protected var §>;§:§5!5§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §]=§:Boolean = false;
      
      protected var §2@§:Boolean = false;
      
      protected var §24§:Boolean = false;
      
      public var §<!9§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §98§:Number;
      
      public var §>,§:Number;
      
      private var §%!2§:Number;
      
      public var §?'§:§^§;
      
      public var §5!Q§:Boolean = false;
      
      private var §`2§:§@A§;
      
      private var §5'§:Sprite;
      
      protected var §,I§:§[z§;
      
      protected var §3R§:§,H§ = null;
      
      private var §=9§:EventDispatcher;
      
      private var §52§:Array;
      
      private var §1;§:Array;
      
      protected var §=G§:§[Z§;
      
      private var §>!7§:§2i§;
      
      protected var §2"§:§'?§;
      
      protected var §'_§:§@!+§;
      
      private var §8<§:§1b§;
      
      private var §7@§:§1b§;
      
      private var §]-§:§1b§;
      
      private var §@&§:Stage;
      
      private var §3`§:§[9§;
      
      protected var § !N§:§,q§;
      
      protected var §"2§:§,q§;
      
      protected var §>0§:Number = 0.0;
      
      protected var §2&§:String;
      
      private var §9m§:Boolean;
      
      protected var §0!;§:Boolean;
      
      protected var §6!2§:uint = 1.417339207E9;
      
      public var §^!F§:Boolean;
      
      public function §1r§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1;§ = [];
         }
         super();
         this.§=9§ = new EventDispatcher();
         loop0:
         while(true)
         {
            this.§?'§ = new §^§();
            this.§@&§ = param1;
            this.§2"§ = §'?§.§>o§;
            while(true)
            {
               this.§'_§ = this.initAnimationManager(this.§2"§);
               do
               {
                  this.§8<§ = this.initThemeGraphicsManager();
               }
               while(!_loc3_);
               
               addr40:
               while(true)
               {
                  this.§7@§ = this.§'!J§();
                  this.§]-§ = this.§&s§();
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §?!&§(param1:§3!,§, param2:§3!,§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§49§);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.§49§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§"!<§);
         if(_loc6_)
         {
            §§push(§§pop() - param2.§"!<§);
            if(!(_loc5_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return §return§(_loc3_,_loc4_);
      }
      
      public static function §return§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§5'§);
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
                           §§push(Boolean(this.§,?§));
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc1_)
                     {
                        if(!(_loc2_ && this))
                        {
                           this.§5'§ = this.§`2§.§'t§;
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function get §,?§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§`2§);
            loop0:
            do
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        this.§`2§ = this.§=G§.§%W§ as §@A§;
                     }
                     addr82:
                  }
                  while(true)
                  {
                     §§push(this.§`2§);
                     loop2:
                     while(true)
                     {
                        §§pop().§!!"§ = false;
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        addr24:
                        while(true)
                        {
                           §§push(this.§`2§);
                           if(_loc1_ || this)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr24);
            }
            while(!(_loc1_ || _loc1_));
            
            return §§pop();
         }
         §§goto(addr82);
      }
      
      private function get §'Z§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§,?§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§,?§);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return (§§pop() as §@A§).§'Z§;
         }
         addr52:
         return null;
      }
      
      public function get §<'§() : §@!+§
      {
         return this.§'_§;
      }
      
      public function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function get camera() : §?Z§
      {
         return this.§+=§;
      }
      
      public function get objects() : §20§
      {
         return this.§#;§;
      }
      
      public function get particles() : §5!5§
      {
         return this.§>;§;
      }
      
      public function get background() : §["§
      {
         return this.§8!E§;
      }
      
      public function get slingshot() : §97§
      {
         return this.§7;§;
      }
      
      public function get activeObject() : §3!,§
      {
         return this.§9N§;
      }
      
      public function get §9!>§() : §^=§
      {
         return this.§5T§;
      }
      
      public function get stage() : Stage
      {
         return this.§@&§;
      }
      
      public function get §5-§() : §1b§
      {
         return this.§]-§;
      }
      
      protected function get §&?§() : §1b§
      {
         return this.§8<§;
      }
      
      public function set activeObject(param1:§3!,§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9N§ = param1;
         }
      }
      
      public function set slowMotion(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0!;§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>!7§);
         if(!_loc2_)
         {
            if(§§pop())
            {
               addr199:
               this.§>!7§.dispose();
               while(true)
               {
               }
               addr200:
            }
            loop0:
            while(true)
            {
               §§push(this.§2"§);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     addr190:
                     this.§2"§.dispose();
                     while(true)
                     {
                     }
                     addr191:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§8<§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    §§push(this.§8<§);
                                    if(_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().textureManager);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop7:
                                          while(_loc1_ || this)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!(_loc1_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§8<§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      addr157:
                                                      while(true)
                                                      {
                                                         §§pop().dispose();
                                                         addr158:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§]-§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop14:
                                                            while(!(_loc2_ && _loc2_))
                                                            {
                                                               §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(this.§]-§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(§§pop().textureManager);
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(!(_loc1_ || _loc2_))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc2_ && _loc1_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§push(this.§]-§);
                                                                        }
                                                                        §§push(this.§=G§);
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr34:
                                                                              this.§=G§.dispose();
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr34);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr157);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().textureManager);
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr65);
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr158);
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr156);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr143);
                           }
                        }
                     }
                  }
               }
               §§goto(addr190);
            }
         }
         §§goto(addr199);
      }
      
      protected function initThemeGraphicsManager() : §1b§
      {
         return null;
      }
      
      protected function §'!J§() : §1b§
      {
         return null;
      }
      
      protected function §&s§() : §1b§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'?§) : §@!+§
      {
         return new §@!+§(param1);
      }
      
      public function §^!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§[Z§.§%m§);
            loop0:
            for(; §§pop(); if(_loc3_ && _loc3_)
            {
               continue;
            },§§goto(addr55))
            {
               loop1:
               while(!param1)
               {
                  §§push(§[Z§.§%m§);
                  loop2:
                  while(_loc2_ || _loc3_)
                  {
                     §§pop().stop();
                     while(_loc2_)
                     {
                        continue loop2;
                        §§pop().color = 0;
                        while(true)
                        {
                           §§push(§[Z§.§%m§);
                           if(!(_loc3_ && param1))
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                              break loop1;
                           }
                           break loop0;
                           addr98:
                        }
                     }
                     continue loop1;
                  }
                  §§pop().start();
                  §§goto(addr98);
               }
               §§goto(addr97);
               §§push(§[Z§.§%m§);
            }
            return;
         }
         §§goto(addr89);
      }
      
      public function §%_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.sprite);
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().visible = param1;
         }
         addr44:
         if(!_loc3_)
         {
            §§push(this.sprite);
         }
      }
      
      public function §;]§(param1:§,H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§3R§);
            if(!(_loc3_ && this))
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§3R§);
                     addr89:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr90:
                        while(true)
                        {
                        }
                     }
                  }
                  addr87:
               }
               loop1:
               while(true)
               {
                  this.§3R§ = param1;
                  loop2:
                  while(this.mReadyToRun)
                  {
                     if(_loc2_)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§3R§);
                           if(_loc2_ || param1)
                           {
                              §§pop().addEventListeners();
                           }
                           §§goto(addr89);
                        }
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           break loop2;
                        }
                        §§goto(addr87);
                     }
                  }
                  return;
               }
            }
            §§goto(addr89);
         }
         §§goto(addr46);
      }
      
      public function §>F§() : §,q§
      {
         return this.§ !N§;
      }
      
      public function §0!8§(param1:§2i§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            this.§>!7§ = param1;
         }
         §§push(this.§>!7§.§!!G§);
         if(!(_loc6_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2"§.§!=§(this.§>!7§.§`a§(_loc5_));
            do
            {
               _loc5_++;
            }
            while(!_loc7_);
            
         }
         if(param3 != null)
         {
            while(true)
            {
               this.§=9§.addEventListener(Event.INIT,param3);
               addr107:
               addr61:
               while(true)
               {
                  this.§1;§.push(param3);
               }
               if(!(_loc7_ || param2))
               {
                  continue;
               }
               this.§0Y§();
               if(!(_loc7_ || param1))
               {
                  §§goto(addr107);
               }
               §§goto(addr42);
            }
         }
         while(this.§4K§(param2))
         {
            §§goto(addr61);
         }
         addr42:
      }
      
      private function §4K§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         §§push(this.§2"§);
         if(_loc4_)
         {
            §§push(§§pop().§7E§());
            do
            {
               if(§§pop())
               {
                  §§push(this.§2"§);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().§,!K§);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(1000);
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr173:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           continue loop3;
                        }
                     }
                  }
                  addr168:
               }
               else
               {
                  do
                  {
                     this.§52§ = param1.concat();
                  }
                  while(_loc5_ && param1);
                  
                  if(!(_loc5_ && this))
                  {
                     §§push(false);
                     if(_loc4_ || _loc2_)
                     {
                        return §§pop();
                     }
                     continue;
                  }
               }
               §§goto(addr63);
            }
            while(_loc5_);
            
            return §§pop();
         }
         §§goto(addr168);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'_§.initializeAnimations(param1);
         }
      }
      
      private function §]!$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§2"§.§&I§();
         loop0:
         while(true)
         {
            §§push(this.§&?§);
            loop1:
            while(true)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
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
                           §§push(this.§&?§);
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           §§push(§§pop().textureManager);
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop14:
                              while(true)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop5;
                                 }
                                 §§pop().§&I§();
                                 loop15:
                                 while(true)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       if(this.§52§)
                                       {
                                          continue loop0;
                                       }
                                       loop21:
                                       while(true)
                                       {
                                          §§push(this.§3R§);
                                          loop22:
                                          while(true)
                                          {
                                             §§push(§§pop() == null);
                                             loop23:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(!§§pop());
                                                §§push(!§§pop());
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr173:
                                                      §§push(this.mReadyToRun);
                                                      if(_loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc2_ || _loc3_))
                                                      {
                                                         continue loop23;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc2_ || param1)
                                                            {
                                                               continue loop22;
                                                            }
                                                            addr272:
                                                            addr272:
                                                            while(true)
                                                            {
                                                               §§push(this.§&?§);
                                                               continue loop1;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr89:
                                                            §§push(this.§8<§);
                                                            if(!_loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr97:
                                                                  this.§8<§.§7E§();
                                                               }
                                                               §§push(this.§]-§);
                                                               if(_loc2_ || param1)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(this.§]-§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr55:
                                                                        §§push(§§pop().textureManager);
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().§&I§();
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ && _loc2_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop23;
                                                                                 addr164:
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§]-§);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 while(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    this.§0Y§();
                                                                                    §§goto(addr177);
                                                                                 }
                                                                                 addr177:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§52§ = null;
                                                                                    §§goto(addr184);
                                                                                 }
                                                                                 addr184:
                                                                                 addr207:
                                                                              }
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        addr76:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr76);
                                                                        §§goto(addr88);
                                                                     }
                                                                     addr75:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr55);
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                      }
                                                      return;
                                                      addr114:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr114);
                                                }
                                                §§goto(addr164);
                                             }
                                             loop11:
                                             while(!(_loc3_ && _loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(this.§5-§);
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop().textureManager);
                                                         while(_loc2_ || _loc2_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop16;
                                                               }
                                                               §§push(this.§5-§);
                                                               while(true)
                                                               {
                                                                  continue loop14;
                                                               }
                                                            }
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr75);
                                                               §§push(this.§]-§);
                                                            }
                                                            §§goto(addr17);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().§&I§();
                                                            addr283:
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addr238:
                                                               while(true)
                                                               {
                                                                  §§push(this.§5-§);
                                                                  continue loop8;
                                                               }
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         addr216:
                                                         addr282:
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr224);
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
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr238);
                     }
                     §§goto(addr272);
                  }
               }
            }
         }
      }
      
      private function §0Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§=9§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§0y§();
         }
         while(_loc1_);
         
      }
      
      private function §0y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§1;§)
         {
            if(!_loc5_)
            {
               this.§=9§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc5_)
         {
            this.§1;§ = [];
         }
      }
      
      public function init(param1:§[z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.mReadyToRun);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               this.clearLevel();
            }
            this.§5T§ = new §^=§(this,param1);
            this.§+=§ = this.initLevelCamera(param1);
            this.§98§ = 0;
            loop1:
            while(true)
            {
               this.§>,§ = 0;
               loop2:
               while(true)
               {
                  this.§%!2§ = 0;
                  this.§9m§ = false;
                  loop3:
                  while(true)
                  {
                     this.mReadyToRun = false;
                     while(true)
                     {
                        this.§]=§ = false;
                        this.mPigsAnimationTimer1 = 2000;
                        this.mPigsAnimationTimer2 = 1000;
                        §2n§ = param1.theme;
                        loop5:
                        while(true)
                        {
                           this.§,I§ = param1;
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           continue loop1;
                           addr38:
                           this.§4!7§(param1.theme);
                           if(!(_loc2_ && param1))
                           {
                              if(_loc3_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    this.§!!2§();
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    addr80:
                                    addr130:
                                    while(_loc3_)
                                    {
                                       continue loop11;
                                    }
                                    while(true)
                                    {
                                       this.§24§ = this.§6i§(param1.theme);
                                       addr122:
                                       while(true)
                                       {
                                          §§push(this.§2@§);
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc3_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         this.initialize(param1);
                                                         §§goto(addr80);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr38);
                                                      }
                                                   }
                                                   continue loop5;
                                                   addr75:
                                                }
                                             }
                                             addr106:
                                             addr63:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop3;
                                             }
                                             if(!(_loc3_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(_loc3_)
                                             {
                                                §§goto(addr75);
                                             }
                                             else
                                             {
                                                §§goto(addr106);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr122);
                                    }
                                    §<!!§.init();
                                    return;
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
         }
      }
      
      protected function §!!2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ !N§ = new §,q§(§`!K§.§5g§);
         }
      }
      
      protected function §[a§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§8<§)
            {
               if(!_loc2_)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr28:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr28);
      }
      
      protected function §6i§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2! § = null;
         if(_loc3_)
         {
            if(this.§7@§)
            {
               addr24:
               _loc2_ = §>X§.§2H§(param1);
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        §§push(Boolean(_loc2_.§]!6§));
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§pop();
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(this.§7@§.§5l§(_loc2_.§]!6§));
                                    if(!_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc4_ && _loc3_)
                                       {
                                       }
                                       §§goto(addr101);
                                    }
                                 }
                                 addr100:
                                 addr101:
                                 return §§pop();
                                 §§push(false);
                              }
                              §§goto(addr101);
                           }
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr100);
                              }
                              else
                              {
                                 §§goto(addr102);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr100);
            }
            addr102:
            return true;
         }
         §§goto(addr24);
      }
      
      protected function §4!7§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2! § = null;
         §§push(this.§8<§);
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
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr230:
                     while(true)
                     {
                        §§push(!this.§[a§(param1));
                        addr202:
                        while(!_loc3_)
                        {
                        }
                        continue loop2;
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     loop15:
                     while(true)
                     {
                        §§push(this.§7@§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop17:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 loop18:
                                 while(true)
                                 {
                                    §§push(this.§6i§(param1));
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop17;
                                       }
                                       if(!_loc3_)
                                       {
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                          }
                                          addr98:
                                       }
                                       else
                                       {
                                          §§goto(addr202);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop18;
                                       }
                                       §§push(this.§7@§);
                                       loop19:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(Event.COMPLETE,this.§%!9§);
                                          addr107:
                                          while(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(this.§7@§);
                                                continue loop19;
                                             }
                                             addr206:
                                             while(true)
                                             {
                                                §§push(this.§8<§);
                                                addr208:
                                                while(true)
                                                {
                                                   §§pop().removeEventListener(Event.COMPLETE,this.§2D§);
                                                   addr213:
                                                   while(true)
                                                   {
                                                      §§push(this.§8<§);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(Event.CANCEL,this.§"!L§);
                                                         addr196:
                                                         while(true)
                                                         {
                                                            §§push(this.§8<§);
                                                            addr180:
                                                            while(!_loc3_)
                                                            {
                                                               §§pop().addEventListener(Event.COMPLETE,this.§2D§);
                                                               while(true)
                                                               {
                                                                  §§push(this.§8<§);
                                                                  continue loop0;
                                                                  addr153:
                                                                  while(!(_loc3_ && _loc3_))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop18;
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr98);
                           }
                           continue loop1;
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.§3y§);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr49);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr153);
                        }
                     }
                  }
                  §§goto(addr206);
               }
            }
         }
      }
      
      private function §2D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§8<§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§2D§);
               loop1:
               while(true)
               {
                  §§push(this.§8<§);
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§"!L§);
                  loop2:
                  while(true)
                  {
                     this.§2@§ = true;
                     §§push(this.§2@§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc3_)
                        {
                           addr87:
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    return;
                                 }
                                 addr19:
                                 if(_loc3_)
                                 {
                                    break loop2;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       addr69:
                                       this.initialize(this.§,I§);
                                       break loop2;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              addr41:
                           }
                        }
                        while(true)
                        {
                           §§pop();
                           §§push(this.§24§);
                           addr102:
                           continue loop2;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr41);
                        }
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §"!L§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§8<§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§2D§);
               §§goto(addr86);
            }
         }
         addr86:
         while(true)
         {
            §§push(this.§8<§);
            if(!(_loc2_ && this))
            {
               §§pop().removeEventListener(Event.CANCEL,this.§"!L§);
               do
               {
                  this.§]=§ = true;
               }
               while(_loc2_ && _loc3_);
               
               if(!(_loc2_ && param1))
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      private function §%!9§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§8<§);
            do
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§%!9§);
               §§push(this.§8<§);
            }
            while(!(_loc2_ || _loc3_));
            
            §§pop().removeEventListener(Event.CANCEL,this.§3y§);
            loop1:
            while(true)
            {
               this.§24§ = true;
               §§push(this.§2@§);
               if(!(_loc3_ && param1))
               {
                  §§push(Boolean(§§pop()));
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr103);
                     }
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr48:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           continue loop1;
                        }
                        addr103:
                     }
                     §§goto(addr19);
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr48);
                  §§push(Boolean(§§pop()));
               }
            }
            addr124:
         }
         while(true)
         {
            this.initialize(this.§,I§);
            if(_loc3_ && _loc3_)
            {
               §§goto(addr124);
            }
            addr19:
            while(true)
            {
               §§push(this.§24§);
               if(!(_loc3_ && param1))
               {
                  continue loop3;
               }
            }
            return;
         }
      }
      
      private function §3y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§8<§);
         do
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§%!9§);
            §§push(this.§8<§);
         }
         while(_loc2_);
         
         §§pop().removeEventListener(Event.CANCEL,this.§3y§);
         this.§24§ = true;
         loop1:
         do
         {
            §§push(this.§2@§);
            if(_loc3_ || this)
            {
               §§push(Boolean(§§pop()));
            }
            loop2:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(this.§24§);
                     if(!(_loc2_ && this))
                     {
                        continue loop2;
                     }
                     addr40:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  continue;
               }
               if(!§§pop())
               {
                  break loop1;
               }
               continue loop1;
            }
         }
         while(this.initialize(this.§,I§), _loc2_ && param1);
         
      }
      
      public function get backgroundTextureManager() : §'?§
      {
         return this.§2"§;
      }
      
      protected function initialize(param1:§[z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0!;§ = false;
            do
            {
               this.§^!F§ = false;
            }
            while(!(_loc2_ || _loc3_));
            
         }
         §§push(§[Z§.§[A§);
         if(!(_loc3_ && param1))
         {
            if(§§pop())
            {
               addr159:
               §[Z§.§[A§.speed = 1;
            }
            this.§-!H§ = new § !&§(this);
            §§push(this);
            §§push(this);
            §§push(param1.theme);
            §§push(this.§5T§.§^!O§);
            if(_loc2_ || param1)
            {
               §§push(§§pop() / §[M§);
            }
            §§pop().§8!E§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§+=§.§>y§());
            this.§8!E§.§!Y§(§#! §.§#!-§());
            this.§#;§ = this.initLevelObjectManager(param1);
            this.§7;§ = this.initLevelSlingshot(param1);
            this.§>;§ = this.initParticleManager(this.§'_§,this.§2"§);
            this.§+=§.init();
            this.§`!Q§();
            do
            {
               this.§<!$§();
               this.mReadyToRun = true;
            }
            while(_loc3_ && param1);
            
            §§push(this.§3R§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr36:
                  this.§3R§.addEventListeners();
               }
               return;
            }
            §§goto(addr36);
         }
         §§goto(addr159);
      }
      
      protected function §<!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§2&§)
            {
               if(_loc2_)
               {
                  addr77:
                  this.§"2§ = §,q§.initialize(this.§2&§);
               }
               §§push(this.§"2§);
               do
               {
                  §§pop().speed = 1;
                  §§push(this.§"2§);
               }
               while(_loc1_);
               
               §§pop().play();
               this.§>0§ = -1000;
               this.§2&§ = null;
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function §-j§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2&§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§"2§ == null);
         if(!(_loc1_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§"2§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(param1)
                     {
                        if(_loc2_)
                        {
                           addr95:
                           this.§"2§.speed = Math.min(this.§"2§.speed * 1.25,Math.pow(1.25,2));
                        }
                     }
                     else
                     {
                        §§push(this.§"2§);
                        if(!(_loc3_ && this))
                        {
                           §§pop().speed = Math.max(this.§"2§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(_loc3_)
                           {
                           }
                           §§goto(addr24);
                        }
                        else
                        {
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr95);
                  }
               }
               addr24:
               return;
            }
         }
         §§goto(addr95);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§"2§);
            if(_loc1_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().speed = 1;
         }
         addr44:
         if(_loc1_)
         {
            §§push(this.§"2§);
         }
      }
      
      protected function initLevelObjectManager(param1:§[z§) : §20§
      {
         return new §20§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§[z§) : §?Z§
      {
         return new §?Z§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§'?§, param4:Number) : §["§
      {
         return new §["§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§[z§) : §97§
      {
         return new §97§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§@!+§, param2:§'?§) : §5!5§
      {
         return new §5!5§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(_loc7_)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§[z§ = this.§,o§();
         var _loc4_:§]X§;
         (_loc4_ = new §]X§()).left = 0;
         if(_loc7_ || this)
         {
            §§push(_loc4_);
            §§push(§?Z§.§&5§);
            if(_loc7_ || _loc3_)
            {
               §§push(-§§pop());
               if(_loc7_ || param1)
               {
                  §§push(10);
                  if(_loc7_ || param1)
                  {
                     addr161:
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        addr159:
                        §§push(8);
                     }
                     §§pop().top = §§pop();
                     §§push(_loc4_);
                     §§push(_loc4_.top);
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() + §?Z§.§&5§);
                     }
                     §§pop().bottom = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.left);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() + §?Z§.§@!C§);
                        }
                        §§pop().right = §§pop();
                        addr103:
                        while(true)
                        {
                           _loc4_.y = -13.929;
                           loop2:
                           while(true)
                           {
                              _loc4_.x = §?Z§.§@!C§;
                              addr68:
                              while(true)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§push(§§pop() * §§pop());
               }
               §§goto(addr161);
            }
            §§goto(addr159);
         }
         §§goto(addr103);
      }
      
      protected function §do §(param1:§[z§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2)
            {
               if(_loc3_)
               {
                  addr22:
                  this.§34§(param1);
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      protected function §,o§() : §[z§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§[z§ = new §[z§();
         if(_loc3_ || _loc3_)
         {
            _loc1_.§#2§ = -12;
         }
         return new §[z§();
      }
      
      protected function §`n§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6!2§ ^= this.§6!2§ << 21;
            do
            {
               §§push(this);
               §§push(this.§6!2§);
               §§push(this.§6!2§);
               if(_loc2_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§6!2§ = §§pop() ^ §§pop();
               do
               {
                  this.§6!2§ ^= this.§6!2§ << 4;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
         return this.§6!2§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §34§(param1:§[z§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§72§ = null;
         if(_loc6_)
         {
            §§push(this);
            §§push(0.33);
            if(_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§6!2§ = §§pop();
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
                     if(_loc6_ || _loc3_)
                     {
                        _loc3_ = §§pop();
                        if(_loc7_ && param1)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_ && param1)
                           {
                              break;
                           }
                           addr109:
                           _loc3_++;
                           if(true)
                           {
                              continue;
                           }
                           loop14:
                           while(true)
                           {
                              param1.addObject(_loc5_);
                              if(_loc6_)
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       §§goto(addr109);
                                    }
                                    else
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          _loc5_.id = "BIRD_RED";
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr110:
                                             loop16:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                §§push(this.§`n§());
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop() * 360);
                                                }
                                                §§pop().angle = §§pop();
                                                addr124:
                                                while(!(_loc6_ || _loc2_))
                                                {
                                                   continue loop16;
                                                }
                                                continue loop14;
                                             }
                                             addr110:
                                          }
                                          else
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr269:
                                                   §§push(_loc3_);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() + §§pop() * _loc3_);
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                     }
                                                                     addr212:
                                                                     §§push(int(§§pop()));
                                                                     §§push(int(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr345:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              _loc5_.y = 0;
                                                                              §§push(_loc3_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == 1);
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop14;
                                                                                          }
                                                                                          addr341:
                                                                                       }
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc7_ && _loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                                §§goto(addr333);
                                                                                             }
                                                                                             addr331:
                                                                                             §§goto(addr341);
                                                                                             addr311:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc5_.id = "PIG_MUSTACHE";
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc5_.id = "PIG_HELMET";
                                                                                             }
                                                                                             §§push(_loc5_);
                                                                                             §§push(45);
                                                                                             §§push(this.§`n§());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() * 90);
                                                                                             }
                                                                                             §§pop().angle = §§pop() - §§pop();
                                                                                             addr281:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              addr337:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc5_);
                                                                              §§push(-100 + _loc2_ * 6);
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 §§push(this.§`n§());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() * 3);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          addr265:
                                                                                          §§push(§§pop() - _loc3_ * 8);
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       continue loop21;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr265);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                     addr214:
                                                                  }
                                                                  addr211:
                                                                  §§goto(addr212);
                                                                  §§push(§§pop() % §§pop());
                                                               }
                                                               §§push(5);
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr281);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr110);
                                       }
                                    }
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr124);
                           }
                           while(true)
                           {
                              §§goto(addr311);
                           }
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        §§push(5);
                        if(!_loc6_)
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc7_)
                           {
                              _loc2_++;
                              if(!(_loc7_ && _loc3_))
                              {
                                 break loop2;
                              }
                              break;
                           }
                           break loop2;
                        }
                        §§push(this.§`n§());
                        if(_loc6_)
                        {
                           §§push(§§pop() * 5);
                        }
                        §§push(int(§§pop()));
                        if(_loc7_)
                        {
                           continue loop1;
                        }
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(_loc5_ = new §72§());
                        §§push(30 + _loc3_ * 10);
                        if(_loc6_)
                        {
                           §§push(this.§`n§());
                           if(_loc6_)
                           {
                              §§push(§§pop() * 9);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().x = §§pop();
                        §§goto(addr345);
                        §§push(_loc2_);
                        §§push(0);
                     }
                  }
                  return;
               }
               continue loop0;
            }
         }
      }
      
      private function §7>§() : void
      {
      }
      
      public function §`!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§["§.§"p§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  this.§ else§(this.§8!E§.§3!>§,false);
               }
               this.§ else§(this.§>;§.§[!8§(§5!5§.§[f§),false);
               while(true)
               {
                  this.§ else§(this.§>;§.§[!8§(§5!5§.§&!J§),true);
                  while(!(_loc1_ && _loc1_))
                  {
                     this.§ else§(this.§>;§.§[!8§(§5!5§.§[!K§),true);
                     this.§ else§(this.§#;§.§'T§,true);
                     loop3:
                     while(_loc2_ || _loc1_)
                     {
                        this.§ else§(this.§7;§.sprite,true);
                        do
                        {
                           this.§ else§(this.§>;§.§[!8§(§5!5§.§-U§),true);
                           while(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                              loop6:
                              while(!(_loc1_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    this.§ else§(this.§8!E§.§4B§,false);
                                    loop9:
                                    while(true)
                                    {
                                       addr29:
                                       while(true)
                                       {
                                          this.§ else§(this.§>;§.§[!8§(§5!5§.§6!Q§),true);
                                          if(!_loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          continue loop9;
                                       }
                                       §§goto(addr42);
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                        while(_loc1_);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private function § else§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.sprite);
            if(!(_loc4_ && param2))
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(§#! §.§3M§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr159:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr111:
                  §§push(§#! §.§3M§);
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  §§push(§§pop() / §§pop());
                  if(!(_loc4_ && param2))
                  {
                     addr138:
                     §§push(Number(§§pop()));
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     param2 = §§pop();
                     do
                     {
                        _loc3_.x = (param1 / §?Z§.levelScale + this.§+=§.§`!6§ - §?Z§.§#!#§ / §?Z§.levelScale) * §[M§;
                        do
                        {
                           _loc3_.y = (param2 / §?Z§.levelScale + this.§+=§.§'!9§ - §?Z§.§+^§ / §?Z§.levelScale) * §[M§;
                        }
                        while(_loc4_);
                        
                     }
                     while(!(_loc5_ || param1));
                     
                     if(_loc4_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc4_ && param2))
                           {
                              if(_loc5_ || param2)
                              {
                                 §§goto(addr111);
                              }
                              while(true)
                              {
                                 param1 = §§pop();
                                 continue loop3;
                              }
                              addr160:
                           }
                           §§goto(addr138);
                        }
                        addr161:
                     }
                     return _loc3_;
                  }
                  §§goto(addr159);
               }
            }
            §§goto(addr160);
         }
         §§goto(addr161);
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!_loc5_)
         {
            _loc3_.x = (param1 / §[M§ + §?Z§.§#!#§ / §?Z§.levelScale - this.§+=§.§`!6§) * §?Z§.levelScale;
            if(_loc6_)
            {
               _loc3_.y = (param2 / §[M§ + §?Z§.§+^§ / §?Z§.levelScale - this.§+=§.§'!9§) * §?Z§.levelScale;
               addr43:
            }
            var _loc4_:Number = Math.max(§#! §.§3M§,§#! §.§+!E§);
            if(!(_loc5_ && _loc3_))
            {
               _loc3_.x *= _loc4_;
            }
            do
            {
               _loc3_.y *= _loc4_;
            }
            while(_loc5_);
            
            return _loc3_;
         }
         §§goto(addr43);
      }
      
      public function § !I§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§#;§.addObject(param1,param2,param3);
         }
      }
      
      public function §0C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'Z§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     this.§<!9§ = 0;
                     if(!_loc1_)
                     {
                        break;
                     }
                     addr70:
                     while(!(_loc1_ && _loc1_))
                     {
                        continue loop4;
                     }
                  }
                  return;
                  addr40:
               }
               if(_loc2_)
               {
                  §§push(this.§'Z§);
                  loop1:
                  while(true)
                  {
                     §§pop().visible = true;
                     addr87:
                     while(true)
                     {
                        §§push(this.§'Z§);
                        if(!(_loc1_ && this))
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr87);
            }
         }
         §§goto(addr40);
      }
      
      public function §6!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3`§ = new §[9§(Tuner.§+"§,Tuner.§0e§);
         }
      }
      
      public function §4-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§3`§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§8!E§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  addr499:
                  this.§8!E§.dispose();
                  while(true)
                  {
                     this.§8!E§ = null;
                  }
                  addr500:
               }
               while(true)
               {
                  §§push(this.§#;§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           addr480:
                           this.§#;§.dispose();
                        }
                        loop1:
                        while(true)
                        {
                           addr455:
                           this.§#;§ = null;
                           addr414:
                           this.§9N§ = null;
                           loop11:
                           while(true)
                           {
                              addr420:
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop1;
                              }
                              addr421:
                              while(true)
                              {
                                 §§push(this.§5T§);
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       addr408:
                                       this.§5T§.clear();
                                       this.§5T§ = null;
                                       while(true)
                                       {
                                       }
                                       addr394:
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§7;§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§7;§);
                                                addr381:
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   if(!(_loc1_ || this))
                                                   {
                                                      break;
                                                   }
                                                   this.§7;§ = null;
                                                   while(true)
                                                   {
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                   §§goto(addr420);
                                                }
                                                continue loop4;
                                                addr299:
                                                if(_loc2_ && this)
                                                {
                                                   continue;
                                                }
                                                addr275:
                                                §§push(this.sprite);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(§§pop().numChildren > 0)
                                                   {
                                                      addr310:
                                                      this.sprite.removeChildAt(0,true);
                                                      §§goto(addr275);
                                                   }
                                                   addr288:
                                                   this.§98§ = 0;
                                                   this.§>,§ = 0;
                                                   this.mReadyToRun = false;
                                                   this.§9m§ = false;
                                                   this.§<!9§ = Tuner.§]!J§;
                                                   addr264:
                                                   addr259:
                                                   addr292:
                                                   §§push(this.§,?§);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr252:
                                                         (this.§,?§ as §@A§).§1!$§.x = 0;
                                                         addr253:
                                                         addr246:
                                                         addr251:
                                                         §§push(this.§,?§);
                                                         if(!_loc2_)
                                                         {
                                                            §§push((§§pop() as §@A§).§1!$§);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  addr192:
                                                                  §§push(this.§'Z§);
                                                                  if(_loc1_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr200:
                                                                        this.§'Z§.visible = false;
                                                                        if(_loc1_)
                                                                        {
                                                                           addr187:
                                                                           this.§"2§ = null;
                                                                           this.§ !N§ = null;
                                                                           addr191:
                                                                           §§push(this.§8<§);
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr169:
                                                                                 this.§8<§.removeEventListener(Event.COMPLETE,this.§2D§);
                                                                                 addr167:
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.§8<§);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§pop().removeEventListener(Event.CANCEL,this.§"!L§);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             addr120:
                                                                                             §§push(this.§7@§);
                                                                                             if(!(_loc2_ && _loc1_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr133:
                                                                                                   this.§7@§.removeEventListener(Event.COMPLETE,this.§%!9§);
                                                                                                   addr131:
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      §§push(this.§7@§);
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         §§pop().removeEventListener(Event.CANCEL,this.§3y§);
                                                                                                         addr112:
                                                                                                         if(_loc1_ || _loc2_)
                                                                                                         {
                                                                                                            addr86:
                                                                                                            this.§0y§();
                                                                                                            addr89:
                                                                                                            if(_loc1_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§[Z§.§%m§);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           addr83:
                                                                                                                           §[Z§.§%m§.color = 0;
                                                                                                                           addr85:
                                                                                                                           §§push(this.§3R§);
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc2_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr62:
                                                                                                                                    this.§3R§.removeEventListeners();
                                                                                                                                    addr63:
                                                                                                                                    if(!(_loc2_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       addr28:
                                                                                                                                       this.mReadyToRun = false;
                                                                                                                                       if(_loc1_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc2_ && _loc1_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr85);
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       §§goto(addr63);
                                                                                                                                    }
                                                                                                                                    §§goto(addr131);
                                                                                                                                 }
                                                                                                                                 §§goto(addr89);
                                                                                                                              }
                                                                                                                              §§goto(addr28);
                                                                                                                           }
                                                                                                                           §§goto(addr62);
                                                                                                                        }
                                                                                                                        §§goto(addr112);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr85);
                                                                                                               }
                                                                                                               §§goto(addr83);
                                                                                                            }
                                                                                                            §§goto(addr264);
                                                                                                         }
                                                                                                         §§goto(addr167);
                                                                                                      }
                                                                                                      §§goto(addr133);
                                                                                                   }
                                                                                                   §§goto(addr253);
                                                                                                }
                                                                                                §§goto(addr86);
                                                                                             }
                                                                                             §§goto(addr133);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                       §§goto(addr191);
                                                                                    }
                                                                                    §§goto(addr169);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              §§goto(addr120);
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         addr248:
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr310);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§+=§);
                                             if(!(_loc2_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   addr354:
                                                   this.§+=§.clear();
                                                   this.§+=§ = null;
                                                }
                                                §§push(this.§>;§);
                                                if(_loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr327:
                                                      this.§>;§.dispose();
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      this.§>;§ = null;
                                                      while(true)
                                                      {
                                                      }
                                                      addr318:
                                                   }
                                                   for(; this.sprite; §§goto(addr318))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr288);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr354);
                                          }
                                          continue loop11;
                                       }
                                       §§goto(addr381);
                                    }
                                 }
                                 §§goto(addr408);
                                 §§goto(addr421);
                              }
                           }
                           §§goto(addr455);
                        }
                     }
                     while(true)
                     {
                        §§push(this.§-!H§);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              §§push(this.§-!H§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop().§@!§)
                                 {
                                    if(!(_loc1_ || this))
                                    {
                                       break;
                                    }
                                 }
                                 addr448:
                                 this.§-!H§.clear();
                                 this.§-!H§ = null;
                                 §§goto(addr414);
                              }
                              §§goto(addr448);
                           }
                           §§goto(addr395);
                        }
                        §§goto(addr448);
                     }
                     continue;
                  }
                  §§goto(addr480);
               }
            }
            §§goto(addr499);
         }
         §§goto(addr318);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2?§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§ !N§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§ !N§);
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(this.mReadyToRun);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc5_ || param1)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr142:
                           while(true)
                           {
                              §§push(§[Z§.§?4§());
                              if(!(_loc4_ && param2))
                              {
                                 break;
                              }
                              continue loop6;
                           }
                           §§push(!§§pop());
                        }
                        addr141:
                     }
                     while(true)
                     {
                        addr125:
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(0);
                              break;
                           }
                           §§push(this.§"2§);
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop1;
                              addr112:
                              while(true)
                              {
                                 §§push(this.§"2§);
                                 if(_loc5_ || param1)
                                 {
                                    addr49:
                                    if(§§pop().§+c§)
                                    {
                                       §§push(this.§3A§(param1,param2,param3));
                                    }
                                    else
                                    {
                                       §§push(this.updateWithTime(param1,true,param2,param3));
                                       if(!_loc4_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    if(!_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    break loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr141);
            }
         }
         §§goto(addr112);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            if(this.§0!;§)
            {
               if(!(_loc7_ && param1))
               {
                  §§push(param1);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc6_)
                     {
                        addr45:
                        §§push(Number(§§pop()));
                        if(_loc6_ || param3)
                        {
                           param1 = §§pop();
                           if(_loc6_)
                           {
                              addr56:
                              §§push(§[Z§.§[A§);
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    addr72:
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§[Z§.§[A§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc6_ || param3)
                                    {
                                       §§push(this);
                                       §§push(this.§>,§);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§>,§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§#;§.§@!=§(param1);
                                                this.§98§ = 0;
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc7_ && this);
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         break loop2;
                                                      }
                                                   }
                                                   addr142:
                                                   while(true)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr115:
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      this.§?!§(param1,_loc5_);
                                                      addr83:
                                                      §§push(param1);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§98§);
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§98§ = §§pop();
                                                addr209:
                                                while(true)
                                                {
                                                   §§push(this.§-!H§.§[b§(this.§98§));
                                                   if(_loc6_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr181:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr182:
                                                      while(true)
                                                      {
                                                         this.§7;§.update(param1,param4);
                                                         this.§98§ = _loc5_;
                                                      }
                                                   }
                                                }
                                             }
                                             addr196:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_ || param1)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr209);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr72);
                              }
                              §§pop().speed = 0.2;
                           }
                           §§goto(addr72);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr45);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr56);
      }
      
      private function §3A§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§ !&§.§,!H§);
         if(_loc7_ || param1)
         {
            §§push(§§pop() * 1000);
            if(_loc7_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && this))
         {
            if(this.§"2§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(this.§"2§.speed);
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
                              addr252:
                              while(true)
                              {
                                 §§push(this.§>,§);
                                 if(!_loc6_)
                                 {
                                    §§push(param1);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          addr209:
                                          if(!(_loc7_ || param3))
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       if(!_loc6_)
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr209);
                              }
                              addr241:
                              while(true)
                              {
                                 §§push(this.§>,§);
                              }
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(this.updateWithTime(_loc4_,true,param2,param3));
               if(_loc7_)
               {
                  return §§pop();
               }
            }
            loop5:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ || param1)
               {
                  if(§§pop() + §§pop() >= _loc5_)
                  {
                     if(!(_loc6_ && param1))
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc5_);
                           §§push(this.§>0§);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() + _loc4_);
                              addr152:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§"2§);
                                       if(!_loc6_)
                                       {
                                          §§pop().step(this);
                                          §§push(this);
                                          §§push(this.§>0§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + _loc4_);
                                          }
                                          §§pop().§>0§ = §§pop();
                                          continue loop6;
                                       }
                                    }
                                    addr167:
                                    continue loop5;
                                    addr153:
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        else
                        {
                           addr188:
                           §§push(this.§"2§);
                        }
                        §§pop().step(this);
                     }
                     §§push(this);
                     §§push(this.§>0§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§>0§ = §§pop();
                  }
                  else if(this.§>,§ + _loc4_ > this.§>0§)
                  {
                     §§goto(addr188);
                  }
                  this.updateWithTime(_loc4_,false,param2,param3);
                  §§goto(addr167);
               }
               §§goto(addr152);
            }
         }
         §§goto(addr252);
      }
      
      private function §?!§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         this.§8!E§.update(param1);
         loop0:
         while(true)
         {
            this.§#;§.§break§(param1,param2);
            this.§#4§();
            loop1:
            while(true)
            {
               §§push(this.§<!9§);
               while(true)
               {
                  §§push(Tuner.§]!J§);
                  addr203:
                  addr186:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(this.§'Z§);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr96:
                                 §§push(this.§'Z§);
                                 if(_loc6_)
                                 {
                                    §§pop().visible = false;
                                    loop15:
                                    while(true)
                                    {
                                       addr54:
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§3`§);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr76:
                                                      if(!this.§3`§.§#F§(this.§+=§,param1))
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            this.§4-§();
                                                            addr44:
                                                            while(true)
                                                            {
                                                               this.§+=§.§8,§(param1);
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  this.§-!H§.§+!;§();
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     this.§>;§.update(param1);
                                                                     return;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr44);
                                                   }
                                                   else
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.§'Z§);
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop12;
                                                            }
                                                            addr84:
                                                         }
                                                         addr126:
                                                         while(true)
                                                         {
                                                            §§pop().alpha = _loc4_;
                                                            continue loop11;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§goto(addr126);
                                                            §§push(this.§'Z§);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§<!9§);
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               §§pop().§<!9§ = §§pop();
                                                               continue loop1;
                                                            }
                                                            addr204:
                                                         }
                                                      }
                                                      addr107:
                                                      addr182:
                                                   }
                                                   while(!_loc5_)
                                                   {
                                                      §§goto(addr84);
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop15;
                                             }
                                             §§goto(addr44);
                                          }
                                          §§goto(addr76);
                                       }
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr54);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr204);
                  }
                  loop9:
                  while(_loc6_ || param1)
                  {
                     §§push(§§pop() / 2);
                     do
                     {
                        _loc3_ = §§pop();
                        §§push(-Math.abs(this.§<!9§ - _loc3_));
                        if(_loc5_ && param2)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 continue loop9;
                              }
                              §§push(Tuner.§5h§);
                              if(_loc6_ || param2)
                              {
                                 addr170:
                                 §§push(§§pop() / _loc3_);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    continue;
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr170);
                           }
                           else
                           {
                              addr181:
                              _loc4_ = §§pop();
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr170);
                     }
                     while(_loc5_ && this);
                     
                     §§goto(addr181);
                     §§push(Number(§§pop()));
                  }
               }
            }
         }
      }
      
      public function §7!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
                        §§pop().§@!=§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §#4§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3!,§ = null;
         if(_loc4_)
         {
            §§push(this.§>,§);
            §§push(this.§%!2§);
            if(_loc4_ || this)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!_loc5_)
               {
                  if(this.§&k§ != null)
                  {
                     §§goto(addr53);
                  }
                  this.§%!2§ = this.§>,§;
               }
            }
            §§goto(addr53);
         }
         addr53:
         var _loc2_:int = 0;
         for each(_loc1_ in this.§&k§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.addTrail();
            }
         }
         if(_loc4_ || _loc2_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3!,§ = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_ || this)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr47);
            }
            §§goto(addr57);
         }
         addr47:
         §§push(this.mPigsAnimationTimer1);
         if(_loc4_)
         {
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() <= §§pop())
               {
                  if(_loc4_)
                  {
                     addr57:
                     §§push(this.§#;§);
                     if(!(_loc3_ && this))
                     {
                        §§push(true);
                        if(!_loc3_)
                        {
                           §§push(§§pop().isPigsAlive(§§pop()));
                           if(!(_loc3_ && this))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr85:
                                    §§push(this.§#;§);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(true);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().§2Y§(§§pop()));
                                          if(_loc4_ || this)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc3_)
                                             {
                                                _loc2_.§3! §.mTryToScream = §?k§.§1J§;
                                                if(!_loc4_)
                                                {
                                                }
                                                §§goto(addr144);
                                             }
                                             §§push(this);
                                             §§push(500 + Math.random() * 1000);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + 4000 / (3 + this.§#;§.§=T§()));
                                             }
                                             §§pop().mPigsAnimationTimer1 = §§pop();
                                             §§goto(addr144);
                                          }
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr144);
                           }
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr144);
         }
         addr144:
         §§push(this);
         §§push(this.mPigsAnimationTimer2);
         if(!(_loc3_ && this))
         {
            §§push(§§pop() - param1);
         }
         §§pop().mPigsAnimationTimer2 = §§pop();
         if(this.mPigsAnimationTimer2 <= 0)
         {
            §§push(this.§#;§);
            if(!_loc3_)
            {
               addr165:
               §§push(true);
               if(!(_loc3_ && this))
               {
                  addr174:
                  if(§§pop().isPigsAlive(§§pop()))
                  {
                     addr179:
                     _loc2_ = this.§#;§.§2Y§(true);
                     addr178:
                     addr177:
                     addr175:
                     if(!(_loc3_ && this))
                     {
                        _loc2_.§3! §.mTryToBlink = §?k§.§[R§;
                        if(_loc3_ && _loc2_)
                        {
                        }
                        §§goto(addr233);
                     }
                     §§push(this);
                     §§push(250 + Math.random() * 500);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() + 2000 / (3 + this.§#;§.§=T§()));
                     }
                     §§pop().mPigsAnimationTimer2 = §§pop();
                  }
               }
               §§goto(addr178);
            }
            §§goto(addr177);
         }
         addr233:
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
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr150:
                     while(true)
                     {
                        §§push(§8R§.§^!M§);
                        addr152:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr153:
                           while(true)
                           {
                              param6 = §§pop();
                           }
                        }
                     }
                     addr150:
                  }
                  while(true)
                  {
                     §<!!§.addScore(param1,param2);
                     loop3:
                     while(true)
                     {
                        this.§3R§.addScore(param1);
                        loop4:
                        while(true)
                        {
                           §§push(param3);
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              §§push(Boolean(§§pop()));
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(param1);
                                    if(!(_loc8_ && param1))
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(0);
                                             if(!(_loc8_ && param3))
                                             {
                                                §§push(§§pop() > §§pop());
                                                loop7:
                                                while(_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break;
                                                         }
                                                         do
                                                         {
                                                            §§pop();
                                                            §§push(this.§^!F§);
                                                         }
                                                         while(!_loc7_);
                                                         
                                                         §§push(!§§pop());
                                                         if(!_loc7_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr36);
                                                         continue loop7;
                                                      }
                                                      continue loop6;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         if(_loc8_ && this)
                                                         {
                                                            continue loop3;
                                                         }
                                                         this.§,!A§(param1.toString(),param4,param5,800,param6,0,0);
                                                      }
                                                      if(_loc8_ && this)
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   return;
                                                }
                                                continue loop5;
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr104);
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public function §,!A§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
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
                  if(_loc8_)
                  {
                     addr70:
                     §§push(§8R§.§"h§);
                     if(!(_loc9_ && param2))
                     {
                        addr79:
                        §§push(int(§§pop()));
                     }
                     param5 = §§pop();
                  }
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
               addr23:
               while(true)
               {
                  this.§>;§.addParticle(§8R§.§<T§,§5!5§.§6!Q§,§8R§.§@2§,param2,param3,param4,param1,param5,param6,param7);
                  if(_loc8_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr70);
      }
      
      public function §<a§(param1:§3!,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§&k§);
            while(true)
            {
               if(§§pop() == null)
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        this.§&k§ = new Array();
                     }
                     addr49:
                  }
                  while(true)
                  {
                  }
                  addr53:
               }
               while(true)
               {
                  §§push(this.§&k§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc3_)
                  {
                     return;
                  }
                  §§goto(addr53);
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §`r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§7;§.§`r§();
         }
         while(true)
         {
            this.§#;§.mightyEagleUsed();
            while(!_loc2_)
            {
               this.§^!F§ = true;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §3f§(param1:§3!,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>;§.§@!3§(§5!5§.§[f§);
         }
         loop0:
         while(true)
         {
            §§push(this.§&k§);
            loop1:
            while(true)
            {
               if(§§pop().indexOf(param1) >= 0)
               {
                  while(true)
                  {
                     §§push(this.§&k§);
                     addr92:
                     while(true)
                     {
                        §§pop().splice(this.§&k§.indexOf(param1),1);
                        addr98:
                        while(_loc2_)
                        {
                        }
                        continue loop0;
                     }
                  }
                  addr90:
               }
               while(true)
               {
                  §§push(this.§&k§);
                  if(_loc2_ || param1)
                  {
                     continue loop1;
                  }
                  §§goto(addr92);
               }
               addr19:
               return;
            }
         }
      }
      
      public function shootBird(param1:§>>§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            this.§9N§ = this.§#;§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(_loc7_)
            {
               addr42:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr47:
                  §§push(§97§.§]c§);
                  if(_loc7_ || param2)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc8_ && this))
                     {
                        addr82:
                        §§push(Number(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(§97§.§]!4§);
                  if(!(_loc8_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || param2)
                     {
                        §§goto(addr82);
                     }
                  }
               }
               var _loc4_:* = §§pop();
               if(!_loc8_)
               {
                  §§push(param1.§<P§);
                  §§push(1);
                  loop0:
                  while(true)
                  {
                     if(§§pop() <= §§pop())
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(this.§9N§);
                        addr159:
                        loop2:
                        while(true)
                        {
                           §§pop().§@!A§(param1.§<P§);
                           addr162:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§9N§);
                                 if(!(_loc7_ || param1))
                                 {
                                    break;
                                 }
                                 §§pop().§3! §.§4!@§();
                                 loop5:
                                 while(true)
                                 {
                                    continue loop0;
                                    addr121:
                                    while(true)
                                    {
                                       if(!(_loc7_ || param1))
                                       {
                                          continue loop5;
                                       }
                                       if(false)
                                       {
                                          continue loop4;
                                       }
                                       addr163:
                                       §§push(_loc4_);
                                       if(!(_loc8_ && param3))
                                       {
                                          addr171:
                                          §§push(-§§pop());
                                          if(_loc7_ || this)
                                          {
                                             §§push(§§pop() * param2);
                                             if(_loc7_)
                                             {
                                                §§push(Number(§§pop() * Math.cos(param3 / (180 / Math.PI))));
                                             }
                                          }
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() * param2);
                                          if(_loc7_)
                                          {
                                             addr201:
                                             §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                             if(_loc7_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc6_:* = §§pop();
                                          if(!_loc8_)
                                          {
                                             this.§9N§.§37§(new b2Vec2(_loc5_,_loc6_),false,true);
                                             loop9:
                                             while(true)
                                             {
                                                this.camera.§#!'§(§?Z§.§2N§);
                                                do
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(this.§ !N§);
                                                      if(_loc7_ || param3)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr222);
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.§ !N§);
                                                      }
                                                      §§pop().shootBird(this.§-!H§.§=u§,param1.x,param1.y,param2,param3);
                                                      continue;
                                                   }
                                                   continue loop9;
                                                }
                                                while(!_loc7_);
                                                
                                             }
                                          }
                                          addr222:
                                          return;
                                       }
                                       §§goto(addr201);
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               §§goto(addr110);
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
            this.§9m§ = true;
         }
      }
      
      private function §%!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9m§);
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
                     addr116:
                     this.§5!Q§ = true;
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     §§push(this.§ !N§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           addr31:
                           this.§ !N§.§;6§(this.§-!H§.§=u§);
                        }
                        return;
                     }
                     §§goto(addr31);
                  }
               }
               while(true)
               {
                  this.§9m§ = false;
               }
               addr63:
               if(_loc2_ && this)
               {
                  continue;
               }
               loop8:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.activeObject);
                        loop9:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop().activateSpecialPower(this.§6#§));
                              loop10:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr108:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr116);
                                       }
                                       §§goto(addr36);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          continue loop8;
                                       }
                                    }
                                    addr142:
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    addr145:
                                    while(true)
                                    {
                                       §§push(this.activeObject);
                                       if(!_loc1_)
                                       {
                                          continue loop9;
                                       }
                                       §§push((§§pop() as §1!"§).§ I§);
                                       if(!_loc1_)
                                       {
                                          continue loop10;
                                       }
                                       §§push(!§§pop());
                                       if(!_loc1_)
                                       {
                                          continue loop10;
                                       }
                                       §§goto(addr63);
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr108);
                              }
                           }
                           addr140:
                           while(true)
                           {
                              §§goto(addr142);
                              continue loop9;
                           }
                        }
                     }
                     §§goto(addr145);
                  }
                  else
                  {
                     addr38:
                     this.§#;§.§5R§();
                     if(_loc1_ || this)
                     {
                        break;
                     }
                  }
                  addr150:
                  while(true)
                  {
                     §§goto(addr140);
                     §§goto(addr38);
                  }
               }
               §§goto(addr23);
            }
            return;
         }
         §§goto(addr150);
      }
      
      public function §`!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§#;§.§`!'§();
         }
      }
      
      public function §1!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§#;§.§]W§();
         }
      }
      
      public function §^v§() : §[z§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[z§ = new §[z§();
         if(_loc2_ || _loc1_)
         {
            _loc1_.§,!<§ = this.§,I§.§,!<§;
            _loc1_.§@w§ = this.§,I§.§@w§;
         }
         loop0:
         while(true)
         {
            this.§+=§.§1N§(_loc1_);
            do
            {
               this.§#;§.§^!#§(_loc1_);
               continue loop0;
            }
            while(!(_loc2_ || _loc2_));
            
            return _loc1_;
         }
      }
      
      public function §;e§() : int
      {
         return this.§,I§.§@w§;
      }
      
      public function §@K§() : int
      {
         return this.§,I§.§,!<§;
      }
      
      public function §>! §(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,I§.§@w§ = param1;
         }
      }
      
      public function §&!C§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,I§.§,!<§ = param1;
         }
      }
      
      public function §=,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§`2§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr81:
                  while(true)
                  {
                     §§push(this.§`2§);
                     addr83:
                     while(true)
                     {
                        §§pop().§;!B§(param1,param2);
                        addr86:
                        while(true)
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  §§push(this.§+=§);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!(_loc3_ && this))
                           {
                              §§push(this.§+=§);
                              break;
                           }
                           §§goto(addr81);
                        }
                        addr75:
                     }
                     return;
                  }
                  break;
               }
               §§pop().§8,§(0);
               §§goto(addr75);
            }
            §§goto(addr83);
         }
         §§goto(addr81);
      }
      
      public function get §;,§() : §[z§
      {
         return this.§,I§;
      }
      
      public function get §6#§() : §20§
      {
         return this.§#;§;
      }
      
      protected function get starling() : §[Z§
      {
         return this.§=G§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §-!,§;
      }
   }
}
