package §"!I§
{
   import § "§.§5!N§;
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"^§.§+!'§;
   import §+!8§.§&!_§;
   import §+!8§.§,_§;
   import §+!8§.§-!N§;
   import §+!8§.§`!O§;
   import §+"§.§'! §;
   import §+"§.§>w§;
   import §,-§.§3!f§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §3!b§.§;!7§;
   import §6!B§.§8u§;
   import §6A§.b2Vec2;
   import §9!4§.§95§;
   import §9!9§.§'j§;
   import §9b§.§"!S§;
   import §=! §.§[2§;
   import §=!<§.§1!1§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   import §@R§.§4,§;
   import §^!5§.§&!E§;
   import §^!5§.§&m§;
   import §^!5§.§,4§;
   import §^!5§.§5G§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^!2§
   {
      
      private static const §8k§:int = 20;
      
      public static const §@!@§:Number;
      
      public static const §"!E§:Number;
      
      public static const §3!S§:Number = 0.05;
      
      public static const §6o§:Number;
      
      public static const § [§:Number;
      
      public static const §&6§:§[2§;
      
      public static var §<!1§:Number = 1;
      
      protected static var §[7§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8k§ = 20;
            loop0:
            while(true)
            {
               §@!@§ = §"!S§.§3i§;
               loop1:
               while(true)
               {
                  §"!E§ = §"!S§.§!!d§;
                  while(true)
                  {
                     §3!S§ = 1 / 20;
                     loop3:
                     for(; !(_loc1_ && §^!2§); while(_loc2_ || _loc1_)
                     {
                        §<!1§ = 1;
                        while(!(_loc1_ && _loc2_))
                        {
                           §[7§ = §&!E§.§5!$§;
                           if(_loc1_ && §^!2§)
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              return;
                           }
                           §§goto(addr90);
                        }
                     })
                     {
                        while(true)
                        {
                           §6o§ = §"!S§.§!!d§ * §3!S§;
                           loop5:
                           while(true)
                           {
                              §§push(§§findproperty(§ [§));
                              §§push(§@!@§);
                              if(_loc2_ || §^!2§)
                              {
                                 §§push(§§pop() * §3!S§);
                              }
                              §§pop().§ [§ = §§pop();
                              addr90:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    if(!_loc1_)
                                    {
                                       §&6§ = new §[2§(13 - 3);
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop5;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      protected var §"p§:§-!N§;
      
      private var §,!d§:§,_§;
      
      private var §7!W§:Array = null;
      
      protected var §9!0§:§'j§;
      
      public var mLevelEngine:§92§;
      
      protected var §;!0§:§`@§;
      
      protected var §4`§:§95§;
      
      protected var §,'§:§9§;
      
      protected var §'J§:§?F§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?g§:Boolean = false;
      
      protected var §^n§:Boolean = false;
      
      protected var §=c§:Boolean = false;
      
      public var §%H§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var § for§:Number;
      
      public var §#!A§:Number;
      
      private var §<!@§:Number;
      
      public var §'!F§:§5G§;
      
      public var §?j§:Boolean = false;
      
      private var §'v§:§55§;
      
      private var §3b§:Sprite;
      
      protected var §9C§:§&!E§;
      
      protected var §5w§:§;!7§ = null;
      
      private var §'l§:EventDispatcher;
      
      private var §0!G§:Array;
      
      private var §'!5§:Array;
      
      protected var §#I§:§+!'§;
      
      private var §+W§:§3!f§;
      
      protected var §;u§:§>a§;
      
      protected var §>!7§:§>"§;
      
      private var §6!_§:§1!1§;
      
      private var § V§:§1!1§;
      
      private var §]X§:§1!1§;
      
      private var §18§:Stage;
      
      private var §0b§:§,?§;
      
      protected var §?i§:§8u§;
      
      protected var §;;§:§8u§;
      
      protected var §null §:Number = 0.0;
      
      protected var §;$§:String;
      
      private var §2!#§:Boolean;
      
      protected var §]L§:Boolean;
      
      protected var §=K§:uint = 1.417339207E9;
      
      public var §3!I§:Boolean;
      
      public function §^!2§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§'!5§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§'l§ = new EventDispatcher();
                  while(true)
                  {
                     this.§'!F§ = new §5G§();
                     while(_loc4_ || this)
                     {
                        this.§18§ = param1;
                        while(_loc4_)
                        {
                           this.§;u§ = §>a§.§ s§;
                           while(_loc4_)
                           {
                              continue loop0;
                              addr37:
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              addr44:
                              if(false)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    this.§ V§ = this.§>'§();
                                    addr51:
                                    loop10:
                                    while(_loc4_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§]X§ = this.§ C§();
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr37);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§6!_§ = this.initThemeGraphicsManager();
                                             break loop10;
                                          }
                                          addr76:
                                       }
                                    }
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                       §§goto(addr51);
                                    }
                                    continue loop1;
                                 }
                              }
                              var _loc2_:Stage3D = param1.stage3Ds[0];
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.§#I§ = new §+!'§(§55§,param1,new Rectangle(0,0,§"!S§.§3i§,§"!S§.§!!d§),_loc2_);
                                 while(true)
                                 {
                                    §"!S§.§%!U§.addEventListener(Event.ENTER_FRAME,this.§#I§.§@8§);
                                    while(true)
                                    {
                                       _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!c§,false,0,true);
                                       while(!_loc3_)
                                       {
                                          §§push(this.§#I§);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(false);
                                             addr228:
                                             while(true)
                                             {
                                                §§pop().simulateMultitouch = §§pop();
                                                addr229:
                                                while(true)
                                                {
                                                   §§push(this.§#I§);
                                                   continue loop14;
                                                }
                                             }
                                          }
                                          if(_loc3_ && this)
                                          {
                                             continue;
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr223);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §2X§(param1:§,_§, param2:§,_§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§!!A§);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.§!!A§);
            if(_loc5_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§"#§);
            if(_loc5_)
            {
               §§push(§§pop() - param2.§"#§);
               if(!(_loc6_ && param2))
               {
                  addr61:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return §9!>§(_loc3_,_loc4_);
            }
            §§goto(addr61);
         }
         §§goto(addr35);
      }
      
      public static function §9!>§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§3b§);
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
                        addr83:
                        do
                        {
                           §§push(Boolean(this.§4s§));
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        while(_loc1_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this.§3b§ = this.§'v§.§2]§;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        while(true)
                        {
                           break loop4;
                        }
                        addr76:
                     }
                     else
                     {
                        §§goto(addr83);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§3b§);
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
         §§goto(addr76);
      }
      
      public function get §4s§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'v§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'v§);
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
                  addr20:
               }
               if(_loc2_ || this)
               {
                  this.§'v§ = this.§#I§.§&i§ as §55§;
               }
            }
         }
         while(true)
         {
            §§goto(addr46);
         }
      }
      
      private function get §!C§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§4s§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr57);
                  }
               }
               return null;
            }
            §§goto(addr57);
         }
         addr57:
         return (this.§4s§ as §55§).§!C§;
      }
      
      public function get §?!O§() : §>"§
      {
         return this.§>!7§;
      }
      
      public function get textureManager() : §>a§
      {
         return this.§;u§;
      }
      
      public function get camera() : §95§
      {
         return this.§4`§;
      }
      
      public function get objects() : §-!N§
      {
         return this.§"p§;
      }
      
      public function get particles() : §?F§
      {
         return this.§'J§;
      }
      
      public function get background() : §'j§
      {
         return this.§9!0§;
      }
      
      public function get slingshot() : §9§
      {
         return this.§,'§;
      }
      
      public function get activeObject() : §,_§
      {
         return this.§,!d§;
      }
      
      public function get §8z§() : §`@§
      {
         return this.§;!0§;
      }
      
      public function get stage() : Stage
      {
         return this.§18§;
      }
      
      public function get §%! §() : §1!1§
      {
         return this.§]X§;
      }
      
      protected function get §2n§() : §1!1§
      {
         return this.§6!_§;
      }
      
      public function set activeObject(param1:§,_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§,!d§ = param1;
         }
      }
      
      public function set §'I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§]L§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+W§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr229:
                     this.§+W§.dispose();
                  }
                  while(true)
                  {
                     addr86:
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     §§push(this.§]X§);
                     loop19:
                     while(true)
                     {
                        §§push(§§pop().textureManager);
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 §§pop().dispose();
                                 loop18:
                                 while(true)
                                 {
                                    addr24:
                                    while(true)
                                    {
                                       §§push(this.§#I§);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop18;
                                             }
                                             addr51:
                                          }
                                          return;
                                       }
                                       break loop18;
                                    }
                                 }
                                 §§pop().dispose();
                                 §§goto(addr51);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr178);
                           continue loop19;
                        }
                        while(true)
                        {
                           §§goto(addr117);
                        }
                     }
                  }
                  addr230:
               }
               while(true)
               {
                  §§push(this.§;u§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr201);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr203);
                  §§goto(addr230);
               }
            }
            §§goto(addr229);
         }
         §§goto(addr194);
      }
      
      protected function initThemeGraphicsManager() : §1!1§
      {
         return null;
      }
      
      protected function §>'§() : §1!1§
      {
         return null;
      }
      
      protected function § C§() : §1!1§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§>a§) : §>"§
      {
         return new §>"§(param1);
      }
      
      public function §%2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§+!'§.§2d§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     if(!param1)
                     {
                        §§push(§+!'§.§2d§);
                        loop0:
                        while(true)
                        {
                           §§pop().stop();
                           addr57:
                           while(_loc3_ || _loc2_)
                           {
                              if(_loc2_ && _loc3_)
                              {
                                 §+!'§.§2d§.start();
                              }
                              else
                              {
                                 addr103:
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr20);
            }
         }
         §§goto(addr103);
      }
      
      public function §3g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.sprite);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr63:
                     this.sprite.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function §8m§(param1:§;!7§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§5w§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§5w§);
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
                  this.§5w§ = param1;
                  loop5:
                  while(true)
                  {
                     if(this.mReadyToRun)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc2_ || param1)
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§5w§);
                                    if(!(_loc3_ && param1))
                                    {
                                       continue loop0;
                                    }
                                 }
                                 addr58:
                              }
                              else
                              {
                                 §§goto(addr97);
                              }
                              §§goto(addr99);
                           }
                           break;
                        }
                        addr75:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop5;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr100);
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §%!T§() : §8u§
      {
         return this.§?i§;
      }
      
      public function §2K§(param1:§3!f§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            this.§+W§ = param1;
         }
         §§push(this.§+W§.§[J§);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(_loc6_ || param2)
               {
                  if(param3 != null)
                  {
                     if(!_loc7_)
                     {
                        if(_loc6_)
                        {
                           this.§'l§.addEventListener(Event.INIT,param3);
                           addr104:
                           loop3:
                           while(!(_loc7_ && param1))
                           {
                              this.§'!5§.push(param3);
                              while(_loc7_ && param3)
                              {
                                 continue loop3;
                                 §§goto(addr111);
                              }
                              addr111:
                           }
                           addr104:
                        }
                        else
                        {
                           _loc5_++;
                           addr134:
                        }
                        continue;
                     }
                     §§goto(addr104);
                  }
                  while(true)
                  {
                     if(this.§`e§(param2))
                     {
                        if(_loc6_)
                        {
                           this.§]!d§();
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr72);
                     }
                     break;
                     §§goto(addr72);
                  }
                  return;
               }
               §§goto(addr104);
            }
            else
            {
               this.§;u§.§?h§(this.§+W§.§^m§(_loc5_));
            }
            §§goto(addr134);
         }
      }
      
      private function §`e§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(!(_loc4_ && this))
         {
            §§push(this.§;u§);
            loop0:
            while(true)
            {
               §§push(§§pop().§28§());
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§0!G§ = param1.concat();
                     if(_loc4_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc4_ && _loc2_)
                           {
                              break loop1;
                           }
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        loop3:
                        while(true)
                        {
                           §§push(this.§;u§);
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           addr161:
                           while(true)
                           {
                              §§push(§§pop().§^j§);
                              if(!(_loc5_ || param1))
                              {
                                 continue loop3;
                              }
                              §§push(1000);
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 addr181:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        addr153:
                        _loc3_ = §§pop();
                        break;
                     }
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           §§push(false);
                           if(_loc5_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 return §§pop();
                              }
                              continue loop1;
                           }
                        }
                        else
                        {
                           addr111:
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           this.initializeAnimations(param1);
                           §§push(true);
                           addr77:
                        }
                        return §§pop();
                     }
                     §§goto(addr77);
                  }
                  §§push(§4,§);
                  §§push("\n\nMain texture manager memory usage:\n   textures " + _loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + " kilobytes\n   bitmaps ");
                     if(_loc5_ || param1)
                     {
                        addr104:
                        §§push(§§pop() + _loc3_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + " kilobytes\n\n");
                        }
                     }
                     §§pop().log(§§pop());
                     §§goto(addr111);
                  }
                  §§goto(addr104);
               }
               §§goto(addr161);
            }
         }
         §§goto(addr72);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>!7§.initializeAnimations(param1);
         }
      }
      
      private function §3!c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;u§.§-!#§();
            loop0:
            while(true)
            {
               §§push(this.§2n§);
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
                                 §§push(this.§2n§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    continue loop1;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop().textureManager);
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().§-!#§();
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§%! §);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop14:
                                                   while(_loc3_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(this.§%! §);
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop().textureManager);
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
                                                                              addr290:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§%! §);
                                                                                 addr292:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().textureManager);
                                                                                    addr293:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§-!#§();
                                                                                       addr294:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr290:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(this.§0!G§)
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§`e§(this.§0!G§);
                                                                                    while(true)
                                                                                    {
                                                                                       this.§0!G§ = null;
                                                                                       loop22:
                                                                                       for(; _loc3_ || this; while(true)
                                                                                       {
                                                                                          if(!(_loc2_ && param1))
                                                                                          {
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(this.§]X§);
                                                                                                   if(_loc2_ && this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop22;
                                                                                       },§§goto(addr102))
                                                                                       {
                                                                                          this.§]!d§();
                                                                                          loop23:
                                                                                          for(; !_loc2_; while(true)
                                                                                          {
                                                                                             if(!(_loc3_ || _loc3_))
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             §§push(this.mReadyToRun);
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   continue loop43;
                                                                                                }
                                                                                                §§goto(addr220);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr165);
                                                                                             }
                                                                                          },continue loop15)
                                                                                          {
                                                                                             if(_loc2_ && this)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             if(_loc2_ && param1)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§5w§);
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == null);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         if(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            addr211:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc2_ && this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr165:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc2_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           §§push(this.§5w§);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§pop().addEventListeners();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr91:
                                                                                                                           if(!(_loc3_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              addr102:
                                                                                                                              §§push(this.§]X§);
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().textureManager);
                                                                                                                                 addr103:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       break loop33;
                                                                                                                                    }
                                                                                                                                    §§pop().§-!#§();
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr102:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr290);
                                                                                                                           }
                                                                                                                           §§goto(addr293);
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                        addr166:
                                                                                                                     }
                                                                                                                     loop30:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§6!_§);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(this.§6!_§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§28§();
                                                                                                                                    addr139:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                       addr141:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                              addr129:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§]X§);
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc3_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§]X§);
                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr74:
                                                                                                                                             §§push(§§pop().textureManager);
                                                                                                                                             if(_loc3_ || this)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr91);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr139);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop30;
                                                                                                                                                   addr87:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      addr329:
                                                                                                                                                      while(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop8;
                                                                                                                                                            }
                                                                                                                                                            continue loop11;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   addr328:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr103);
                                                                                                                                          }
                                                                                                                                          §§goto(addr102);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr129);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr87);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr74);
                                                                                                                              §§goto(addr141);
                                                                                                                           }
                                                                                                                           addr20:
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr138);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr164:
                                                                                                            }
                                                                                                         }
                                                                                                         while(!_loc2_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                         addr220:
                                                                                                      }
                                                                                                      §§goto(addr329);
                                                                                                   }
                                                                                                   §§goto(addr211);
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr189);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr288:
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            continue loop12;
                                                            if(_loc2_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr164);
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr288);
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
                        §§goto(addr338);
                     }
                  }
               }
            }
         }
         §§goto(addr290);
      }
      
      private function §]!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§'l§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§"o§();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §"o§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         var _loc3_:* = this.§'!5§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && this))
            {
               this.§'l§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            this.§'!5§ = [];
         }
      }
      
      public function init(param1:§&!E§) : void
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
                     addr291:
                     while(true)
                     {
                     }
                  }
                  addr289:
               }
               while(true)
               {
                  this.§;!0§ = new §`@§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§4`§ = this.§0A§(param1);
                     while(true)
                     {
                        this.§ for§ = 0;
                        loop6:
                        while(!_loc3_)
                        {
                           this.§#!A§ = 0;
                           while(true)
                           {
                              this.§<!@§ = 0;
                              addr241:
                              while(true)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.§2!#§ = false;
                                    continue loop4;
                                 }
                                 §§goto(addr289);
                              }
                              addr195:
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              this.§9C§ = param1;
                              loop15:
                              while(_loc2_ || _loc2_)
                              {
                                 this.§^n§ = this.§4!$§(param1.theme);
                                 loop16:
                                 while(true)
                                 {
                                    this.§=c§ = this.§5E§(param1.theme);
                                    addr151:
                                    loop17:
                                    for(; _loc2_ || _loc3_; while(_loc2_ || _loc2_)
                                    {
                                       this.initialize(param1);
                                       §§goto(addr114);
                                    })
                                    {
                                       addr158:
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(this.§^n§);
                                          loop18:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop17;
                                                         }
                                                         this.§`!?§(param1.theme);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            loop22:
                                                            while(true)
                                                            {
                                                               this.initReplay();
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        § !;§.init();
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           if(!(_loc2_ || param1))
                                                                           {
                                                                              while(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 addr207:
                                                                                 addr207:
                                                                                 while(true)
                                                                                 {
                                                                                    §[7§ = param1.theme;
                                                                                    break loop22;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr114:
                                                                           }
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              break loop20;
                                                                           }
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=c§);
                                                                              if(!(_loc2_ || _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              addr132:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop24;
                                                                              }
                                                                           }
                                                                           continue loop20;
                                                                           break loop22;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               continue loop6;
                                                            }
                                                            while(_loc2_)
                                                            {
                                                               §§goto(addr195);
                                                               §§goto(addr114);
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                      }
                                                      continue loop16;
                                                      addr101:
                                                   }
                                                }
                                             }
                                             §§goto(addr132);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                this.§?g§ = false;
                                                break loop17;
                                             }
                                             break;
                                             §§goto(addr158);
                                          }
                                          addr222:
                                       }
                                       §§goto(addr291);
                                    }
                                    while(true)
                                    {
                                       this.mPigsAnimationTimer1 = 2000;
                                       break loop15;
                                       §§goto(addr151);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.mPigsAnimationTimer2 = 1000;
                                 §§goto(addr207);
                                 §§goto(addr180);
                              }
                              addr180:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr207);
      }
      
      protected function initReplay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?i§ = new §8u§(§,4§.§0!$§);
         }
      }
      
      protected function §4!$§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§6!_§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr48:
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr48);
      }
      
      protected function §5E§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>w§ = null;
         if(!_loc4_)
         {
            if(this.§ V§)
            {
               addr24:
               _loc2_ = §'! §.§#n§(param1);
               if(_loc3_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(Boolean(_loc2_.§"!Z§));
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    §§push(this.§ V§.§"T§(_loc2_.§"!Z§));
                                    if(!_loc4_)
                                    {
                                       addr74:
                                       §§push(!§§pop());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr82);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr74);
                           }
                           addr82:
                           if(§§pop())
                           {
                              if(!(_loc4_ && param1))
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
                        §§goto(addr74);
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
      
      protected function §`!?§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>w§ = null;
         if(_loc3_ || param1)
         {
            §§push(this.§6!_§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr284:
                        while(true)
                        {
                           §§pop();
                           addr285:
                           while(true)
                           {
                              §§push(this.§4!$§(param1));
                              addr259:
                              while(true)
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        addr284:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(this.§6!_§);
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.COMPLETE,this.§'!+§);
                                    addr211:
                                    if(_loc3_ || param1)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§6!_§);
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.CANCEL,this.§8!?§);
                                    addr254:
                                    while(true)
                                    {
                                       §§push(this.§6!_§);
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§'!+§);
                                          addr245:
                                          addr197:
                                          while(true)
                                          {
                                             §§push(this.§6!_§);
                                          }
                                          if(_loc3_ || param1)
                                          {
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr276:
                           }
                           else
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(this.§ V§);
                                 loop12:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       loop22:
                                       for(; _loc3_; if(!(_loc3_ || param1))
                                       {
                                          continue;
                                       },addr108:,§§push(!§§pop()),while(true)
                                       {
                                          §§goto(addr110);
                                          §§goto(addr108);
                                       })
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop();
                                             loop23:
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§5E§(param1));
                                                      if(!_loc4_)
                                                      {
                                                         continue loop22;
                                                      }
                                                      addr227:
                                                      addr110:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§push(this.§ V§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeEventListener(Event.COMPLETE,this.§0r§);
                                                                     addr139:
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§ V§);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§pop().removeEventListener(Event.CANCEL,this.§'!]§);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§ V§);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addEventListener(Event.COMPLETE,this.§0r§);
                                                                                    addr74:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          §§push(this.§ V§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           addr236:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§6!_§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr197);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!(_loc3_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§pop().addEventListener(Event.CANCEL,this.§'!]§);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr66);
                                                                              }
                                                                              _loc2_ = §'! §.§#n§(param1);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr312:
                                                                                       this.§ V§.§9k§(_loc2_.§"!Z§);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr74);
                                                                  }
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         addr317:
                                                         return;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr236);
                                             }
                                             continue;
                                          }
                                          §§goto(addr284);
                                          §§goto(addr285);
                                       }
                                       continue loop3;
                                       addr172:
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr259);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr231);
                        }
                     }
                  }
               }
               §§goto(addr284);
            }
         }
         §§goto(addr236);
      }
      
      private function §'!+§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§6!_§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'!+§);
               loop1:
               while(true)
               {
                  §§push(this.§6!_§);
                  if(!(_loc2_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§8!?§);
                  loop2:
                  while(true)
                  {
                     this.§^n§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§^n§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc3_ && param1))
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    addr75:
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc2_ || param1))
                                          {
                                             break;
                                          }
                                          §§push(this.§=c§);
                                          if(_loc2_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc2_ || this)
                                          {
                                             continue loop4;
                                             continue loop5;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                                 return;
                                 addr48:
                              }
                           }
                           §§goto(addr89);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §8!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6!_§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'!+§);
               while(true)
               {
                  §§push(this.§6!_§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§8!?§);
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§?g§ = true;
                     if(_loc3_ || this)
                     {
                        return;
                        addr50:
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §0r§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§6!_§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§0r§);
               loop1:
               while(true)
               {
                  §§push(this.§6!_§);
                  if(!(_loc2_ || param1))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§'!]§);
                  while(true)
                  {
                     this.§=c§ = true;
                     loop3:
                     while(!(_loc3_ && _loc3_))
                     {
                        while(true)
                        {
                           §§push(this.§^n§);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(!_loc3_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             §§push(this.§=c§);
                                             if(!_loc3_)
                                             {
                                                if(!(_loc2_ || param1))
                                                {
                                                   continue loop8;
                                                }
                                                addr40:
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   §§goto(addr40);
                                                }
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop8;
                                                      continue loop7;
                                                   }
                                                   this.initialize(this.§9C§);
                                                }
                                                break;
                                             }
                                             return;
                                          }
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                    addr77:
                                 }
                                 §§goto(addr41);
                              }
                           }
                           §§goto(addr77);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §'!]§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6!_§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§0r§);
               while(true)
               {
                  §§push(this.§6!_§);
                  if(!(_loc2_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§'!]§);
                  loop2:
                  while(true)
                  {
                     this.§=c§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§^n§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr82:
                                    while(_loc2_)
                                    {
                                       §§push(this.§=c§);
                                       if(!_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc2_ || _loc3_)
                                       {
                                       }
                                       continue loop7;
                                    }
                                    continue loop3;
                                 }
                                 addr81:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    addr65:
                                    if(!(_loc3_ && param1))
                                    {
                                       addr72:
                                       break;
                                    }
                                    §§goto(addr82);
                                 }
                                 break;
                                 §§goto(addr31);
                              }
                              return;
                           }
                           §§goto(addr81);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function get backgroundTextureManager() : §>a§
      {
         return this.§;u§;
      }
      
      protected function initialize(param1:§&!E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§]L§ = false;
            while(true)
            {
               this.§3!I§ = false;
               loop1:
               while(true)
               {
                  §§push(§+!'§.§9!;§);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§+!'§.§9!;§);
                           addr217:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr229:
                              while(true)
                              {
                              }
                           }
                        }
                        addr215:
                     }
                     loop3:
                     while(true)
                     {
                        this.mLevelEngine = new §92§(this);
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§;!0§.§"N§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop() / §3!S§);
                           }
                           §§pop().§9!0§ = §§pop().§3!%§(§§pop(),§§pop(),this.backgroundTextureManager,this.§4`§.§8!#§());
                           loop5:
                           while(true)
                           {
                              this.§9!0§.§=[§(§"!S§.§^l§());
                              loop6:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    this.§"p§ = this.initLevelObjectManager(param1);
                                    while(true)
                                    {
                                       this.§,'§ = this.initLevelSlingshot(param1);
                                       addr155:
                                       addr96:
                                       while(true)
                                       {
                                          this.§'J§ = this.initParticleManager(this.§>!7§,this.§;u§);
                                          continue loop6;
                                       }
                                       loop13:
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          this.loadPreviousReplayData();
                                          loop14:
                                          while(!_loc3_)
                                          {
                                             this.mReadyToRun = true;
                                             while(_loc2_ || _loc3_)
                                             {
                                                §§push(this.§5w§);
                                                if(_loc2_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      return;
                                                   }
                                                   addr24:
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr50);
                                                      §§push(this.§5w§);
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   addr50:
                                                   §§pop().addEventListeners();
                                                }
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop13;
                                                   continue loop13;
                                                }
                                                continue loop14;
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr155);
                                          }
                                          continue loop5;
                                       }
                                    }
                                    addr162:
                                 }
                                 else
                                 {
                                    §§goto(addr215);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr217);
               }
            }
         }
         §§goto(addr162);
      }
      
      protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§;$§)
            {
               if(_loc2_)
               {
                  this.§;;§ = §8u§.initialize(this.§;$§);
                  addr111:
                  loop0:
                  while(true)
                  {
                     §§push(this.§;;§);
                     while(true)
                     {
                        §§pop().speed = 1;
                        §§push(this.§;;§);
                        addr89:
                        continue loop0;
                        if(_loc1_ && _loc2_)
                        {
                           continue;
                        }
                        §§pop().play();
                        while(true)
                        {
                           this.§null § = -1000;
                           while(!(_loc1_ && _loc1_))
                           {
                              this.§;$§ = null;
                              if(!_loc1_)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr25);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  addr111:
               }
               §§goto(addr111);
            }
            addr25:
            return;
         }
         §§goto(addr111);
      }
      
      public function §1H§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§;$§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;;§ == null);
         if(_loc2_)
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
            §§push(this.§;;§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     if(param1)
                     {
                        if(!_loc2_)
                        {
                           this.§;;§.speed = Math.min(this.§;;§.speed * 1.25,Math.pow(1.25,2));
                           addr86:
                        }
                        addr108:
                     }
                     else
                     {
                        §§push(this.§;;§);
                        if(!(_loc2_ && param1))
                        {
                           §§pop().speed = Math.max(this.§;;§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(_loc2_)
                           {
                           }
                           §§goto(addr20);
                        }
                        else
                        {
                           §§goto(addr86);
                        }
                     }
                  }
                  §§goto(addr86);
               }
               addr20:
               return;
            }
         }
         §§goto(addr86);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;;§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr57:
                     this.§;;§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      protected function initLevelObjectManager(param1:§&!E§) : §-!N§
      {
         return new §-!N§(this,param1,new Sprite());
      }
      
      protected function §0A§(param1:§&!E§) : §95§
      {
         return new §95§(this,param1);
      }
      
      protected function §3!%§(param1:String, param2:Number, param3:§>a§, param4:Number) : §'j§
      {
         return new §'j§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§&!E§) : §9§
      {
         return new §9§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§>"§, param2:§>a§) : §?F§
      {
         return new §?F§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.mReadyToRun)
            {
               if(_loc7_)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§&!E§ = this.preProcessLevel();
         var _loc4_:§&m§;
         (_loc4_ = new §&m§()).left = 0;
         if(_loc7_ || this)
         {
            §§push(_loc4_);
            §§push(§95§.§=r§);
            if(_loc7_)
            {
               §§push(-§§pop());
               if(!(_loc6_ && this))
               {
                  addr140:
                  §§push(10);
                  if(!(_loc6_ && param1))
                  {
                     addr153:
                     §§push(§§pop() / §§pop());
                     if(_loc7_)
                     {
                        §§push(8);
                     }
                     §§pop().top = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.top);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() + §95§.§=r§);
                        }
                        §§pop().bottom = §§pop();
                        addr126:
                        loop1:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.left);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §95§.§@,§);
                           }
                           §§pop().right = §§pop();
                           loop2:
                           while(true)
                           {
                              _loc4_.y = -13.929;
                              addr97:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    _loc4_.x = §95§.§@,§;
                                    continue loop0;
                                 }
                                 continue loop1;
                                 addr65:
                                 if(!(_loc6_ && this))
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§push(§§pop() * §§pop());
               }
               §§goto(addr153);
            }
            §§goto(addr140);
         }
         §§goto(addr126);
      }
      
      protected function §6!>§(param1:§&!E§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§5!a§(param1);
               }
            }
         }
      }
      
      protected function preProcessLevel() : §&!E§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!E§ = new §&!E§();
         if(!_loc3_)
         {
            _loc1_.§6!`§ = -12;
         }
         return new §&!E§();
      }
      
      protected function §0!;§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§=K§ ^= this.§=K§ << 21;
         }
         while(true)
         {
            §§push(this);
            §§push(this.§=K§);
            §§push(this.§=K§);
            if(!_loc2_)
            {
               §§push(§§pop() >>> 35);
            }
            §§pop().§=K§ = §§pop() ^ §§pop();
            while(_loc1_ || _loc1_)
            {
               this.§=K§ ^= this.§=K§ << 4;
               if(_loc1_)
               {
                  return this.§=K§ * (1 / uint.MAX_VALUE);
               }
            }
         }
      }
      
      protected function §5!a§(param1:§&!E§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§5!N§ = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push(this);
            §§push(0.33);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§=K§ = §§pop();
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
                  if(!_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(_loc6_ || this)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              continue loop1;
                           }
                           §§push(5);
                           if(_loc7_ && this)
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc7_ && _loc2_))
                              {
                                 break;
                              }
                              break loop2;
                           }
                           §§push(this.§0!;§());
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() * 5);
                           }
                           §§push(int(§§pop()));
                           if(!(_loc6_ || _loc3_))
                           {
                              continue loop1;
                           }
                           _loc4_ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(_loc5_ = new §5!N§());
                           §§push(30 + _loc3_ * 10);
                           if(!_loc7_)
                           {
                              §§push(this.§0!;§());
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop() * 9);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().x = §§pop();
                           if(!_loc7_)
                           {
                              §§push(_loc2_);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 addr448:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc5_);
                                       §§push(-100 + _loc2_ * 6);
                                       if(_loc6_)
                                       {
                                          §§push(this.§0!;§());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§pop() * 3);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc6_)
                                                {
                                                   addr334:
                                                   §§push(§§pop() - _loc3_ * 8);
                                                }
                                                §§pop().y = §§pop();
                                                while(true)
                                                {
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc6_ || param1)
                                                      {
                                                         continue loop4;
                                                      }
                                                      loop38:
                                                      while(_loc6_)
                                                      {
                                                         §§push(2);
                                                         loop8:
                                                         while(!_loc7_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  continue loop38;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§push(3);
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 _loc5_.id = "BIRD_YELLOW";
                                                                                 while(true)
                                                                                 {
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       §§push(this.§0!;§());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() * 360);
                                                                                       }
                                                                                       §§pop().angle = §§pop();
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   _loc5_.id = "BIRD_RED";
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   addr303:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      break loop38;
                                                                                                   }
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      loop15:
                                                                                                      while(!(_loc7_ && _loc2_))
                                                                                                      {
                                                                                                         addr412:
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        §§goto(addr430);
                                                                                                                        addr380:
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(_loc7_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!(_loc6_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_.id = "PIG_MUSTACHE";
                                                                                                                                 addr400:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr397:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              _loc5_.id = "PIG_HELMET";
                                                                                                                              while(!_loc7_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              loop13:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    addr403:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_.y = 0;
                                                                                                                                       break loop13;
                                                                                                                                    }
                                                                                                                                    addr449:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              loop29:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 addr433:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    addr434:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       addr435:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          break loop16;
                                                                                                                                          §§goto(addr412);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr438:
                                                                                                                              addr367:
                                                                                                                              addr452:
                                                                                                                           }
                                                                                                                           addr344:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              §§push(45);
                                                                                                                              §§push(this.§0!;§());
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * 90);
                                                                                                                              }
                                                                                                                              §§pop().angle = §§pop() - §§pop();
                                                                                                                              addr360:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr120:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    param1.§@!,§(_loc5_);
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr369);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr395:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr395);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                               §§goto(addr419);
                                                                                                            }
                                                                                                            addr419:
                                                                                                         }
                                                                                                         §§goto(addr435);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr438);
                                                                                                      }
                                                                                                   }
                                                                                                   addr430:
                                                                                                   addr404:
                                                                                                }
                                                                                             }
                                                                                             addr293:
                                                                                          }
                                                                                          §§goto(addr120);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr209:
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc5_.id = "BIRD_BLUE";
                                                                        }
                                                                        §§goto(addr163);
                                                                     }
                                                                     §§goto(addr434);
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                               else
                                                               {
                                                                  while(_loc6_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc7_ && param1)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        continue loop38;
                                                                     }
                                                                  }
                                                                  addr276:
                                                               }
                                                               §§goto(addr403);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               §§goto(addr380);
                                                            }
                                                            §§goto(addr404);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr373);
                                                      }
                                                   }
                                                   §§goto(addr360);
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       §§goto(addr334);
                                    }
                                    §§goto(addr449);
                                 }
                              }
                           }
                           §§goto(addr118);
                        }
                        _loc2_++;
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      private function §8!N§() : void
      {
      }
      
      public function §,^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§'j§.§=!!§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§;!&§(this.§9!0§.§7E§,false);
                     addr201:
                     while(true)
                     {
                     }
                  }
                  addr195:
               }
               while(true)
               {
                  this.§;!&§(this.§'J§.§]q§(§?F§.§?!;§),false);
                  loop3:
                  while(true)
                  {
                     this.§;!&§(this.§'J§.§]q§(§?F§.§;!;§),true);
                     loop4:
                     while(_loc1_)
                     {
                        this.§;!&§(this.§'J§.§]q§(§?F§.§[s§),true);
                        while(true)
                        {
                           this.§;!&§(this.§"p§.§'<§,true);
                           loop6:
                           for(; !(_loc2_ && _loc2_); if(_loc1_ || _loc2_)
                           {
                              while(true)
                              {
                                 this.§;!&§(this.§'J§.§]q§(§?F§.§"!%§),true);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr44:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       break;
                                    }
                                    addr63:
                                    while(true)
                                    {
                                       this.§;!&§(this.§9!0§.§5N§,false);
                                       §§goto(addr44);
                                    }
                                 }
                                 §§goto(addr69);
                              }
                              return;
                              addr28:
                           })
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 this.§;!&§(this.§,'§.sprite,true);
                                 while(!_loc2_)
                                 {
                                    this.§;!&§(this.§'J§.§]q§(§?F§.§<G§),true);
                                    loop8:
                                    while(_loc1_)
                                    {
                                       this.§;!&§(this.§9!0§.§1!`§,false);
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop8;
                                          addr69:
                                          while(true)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                continue loop6;
                                             }
                                             continue loop9;
                                          }
                                          continue loop6;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop3;
                              }
                              §§goto(addr195);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr201);
      }
      
      private function §;!&§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.sprite);
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr65);
            }
            §§pop().addChild(param1);
         }
         addr65:
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc5_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§"!S§.§<!4§);
               loop1:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        param1 = §§pop();
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc4_ && param2)
                              {
                                 continue loop3;
                              }
                              if(_loc4_ && param1)
                              {
                                 continue loop2;
                              }
                              §§push(§"!S§.§<!4§);
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc5_)
                              {
                                 addr130:
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc5_)
                              {
                                 break;
                              }
                              param2 = §§pop();
                              while(true)
                              {
                                 _loc3_.x = (param1 / §95§.§3d§ + this.§4`§.§7r§ - §95§.§02§ / §95§.§3d§) * §3!S§;
                                 §§goto(addr99);
                              }
                           }
                           §§goto(addr130);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         addr99:
         while(true)
         {
            _loc3_.y = (param2 / §95§.§3d§ + this.§4`§.§4k§ - §95§.§"M§ / §95§.§3d§) * §3!S§;
            if(_loc5_ || param1)
            {
               if(!_loc4_)
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
                  continue loop4;
               }
               continue loop5;
            }
         }
         return _loc3_;
      }
      
      public function §&1§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc5_ || _loc3_)
         {
            _loc3_.x = (param1 / §3!S§ + §95§.§02§ / §95§.§3d§ - this.§4`§.§7r§) * §95§.§3d§;
            if(_loc5_)
            {
               _loc3_.y = (param2 / §3!S§ + §95§.§"M§ / §95§.§3d§ - this.§4`§.§4k§) * §95§.§3d§;
               addr47:
            }
            var _loc4_:Number = Math.max(§"!S§.§<!4§,§"!S§.§[=§);
            if(_loc5_ || param2)
            {
               _loc3_.x *= _loc4_;
               do
               {
                  _loc3_.y *= _loc4_;
               }
               while(!_loc5_);
               
            }
            return _loc3_;
         }
         §§goto(addr47);
      }
      
      public function §'U§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§"p§.§@!,§(param1,param2,param3);
         }
      }
      
      public function §"!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§!C§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§%H§ = 0;
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        addr82:
                        while(true)
                        {
                           §§push(this.§!C§);
                           addr84:
                           while(true)
                           {
                              §§pop().visible = true;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§!C§);
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr84);
                  }
                  return;
               }
               §§goto(addr82);
            }
         }
         §§goto(addr78);
      }
      
      public function §4'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0b§ = new §,?§(§<!$§.§^x§,§<!$§.§'!`§);
         }
      }
      
      public function §"4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0b§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§9!0§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§9!0§);
                     addr579:
                     while(true)
                     {
                        §§pop().dispose();
                        addr580:
                        while(true)
                        {
                           this.§9!0§ = null;
                           addr561:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr577:
               }
               loop1:
               while(true)
               {
                  §§push(this.§"p§);
                  if(!(_loc1_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§"p§);
                           addr555:
                           while(true)
                           {
                              §§pop().dispose();
                              addr556:
                              while(true)
                              {
                                 this.§"p§ = null;
                                 addr541:
                                 while(true)
                                 {
                                    this.§,!d§ = null;
                                    addr536:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                        addr553:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.mLevelEngine);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              for(; _loc2_; while(true)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop4;
                                 }
                                 this.§;!0§ = null;
                                 §§goto(addr467);
                              },§§goto(addr530))
                              {
                                 while(true)
                                 {
                                    §§push(this.mLevelEngine);
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!§§pop().§2H§)
                                       {
                                       }
                                       loop36:
                                       while(true)
                                       {
                                          §§push(this.mLevelEngine);
                                          addr530:
                                          while(true)
                                          {
                                             §§pop().clear();
                                             loop26:
                                             while(true)
                                             {
                                                this.mLevelEngine = null;
                                                loop27:
                                                while(true)
                                                {
                                                   if(!(_loc2_ || this))
                                                   {
                                                      continue loop36;
                                                   }
                                                   addr503:
                                                   while(true)
                                                   {
                                                      §§push(this.§;!0§);
                                                      if(!_loc1_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(this.§,'§);
                                                               if(_loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop27;
                                                                        }
                                                                        if(!_loc1_)
                                                                        {
                                                                           §§push(this.§,'§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().dispose();
                                                                              addr462:
                                                                              while(true)
                                                                              {
                                                                                 this.§,'§ = null;
                                                                                 addr441:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc2_ || _loc1_))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr448:
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr461:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr577);
                                                                        }
                                                                     }
                                                                     continue loop27;
                                                                     addr455:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§4`§);
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§4`§);
                                                                              addr426:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().clear();
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          this.§4`§ = null;
                                                                                          addr406:
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr412:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§'J§);
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §§push(this.§'J§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().dispose();
                                                                                                                  loop15:
                                                                                                                  while(_loc2_)
                                                                                                                  {
                                                                                                                     this.§'J§ = null;
                                                                                                                     loop16:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(!(_loc1_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr383:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(this.sprite)
                                                                                                                                 {
                                                                                                                                    if(!(_loc2_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    if(!(_loc1_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop26;
                                                                                                                                       }
                                                                                                                                       addr311:
                                                                                                                                       §§push(this.sprite);
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          if(§§pop().numChildren <= 0)
                                                                                                                                          {
                                                                                                                                             if(!_loc1_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc2_ || _loc1_))
                                                                                                                                                {
                                                                                                                                                   addr362:
                                                                                                                                                   §§goto(addr311);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             this.§#!A§ = 0;
                                                                                                                                             this.mReadyToRun = false;
                                                                                                                                             this.§2!#§ = false;
                                                                                                                                             this.§%H§ = §<!$§.§4!7§;
                                                                                                                                             addr295:
                                                                                                                                             addr300:
                                                                                                                                             addr305:
                                                                                                                                             addr332:
                                                                                                                                             addr310:
                                                                                                                                             if(this.§4s§)
                                                                                                                                             {
                                                                                                                                                addr288:
                                                                                                                                                (this.§4s§ as §55§).§[$§.x = 0;
                                                                                                                                                addr272:
                                                                                                                                                addr289:
                                                                                                                                                addr287:
                                                                                                                                                §§push(this.§4s§);
                                                                                                                                                if(_loc2_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      §§push((§§pop() as §55§).§[$§);
                                                                                                                                                      if(!_loc1_)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr267:
                                                                                                                                                            §§push(this.§!C§);
                                                                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr234:
                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr238:
                                                                                                                                                                     this.§!C§.visible = false;
                                                                                                                                                                     addr216:
                                                                                                                                                                     this.§;;§ = null;
                                                                                                                                                                     addr240:
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§?i§ = null;
                                                                                                                                                                        addr215:
                                                                                                                                                                        §§push(this.§6!_§);
                                                                                                                                                                        if(_loc2_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr194:
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr198:
                                                                                                                                                                                 this.§6!_§.removeEventListener(Event.COMPLETE,this.§'!+§);
                                                                                                                                                                                 addr203:
                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§6!_§);
                                                                                                                                                                                    if(!_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().removeEventListener(Event.CANCEL,this.§8!?§);
                                                                                                                                                                                       addr180:
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr143:
                                                                                                                                                                                          if(this.§ V§)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr144:
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc1_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr157:
                                                                                                                                                                                                      this.§ V§.removeEventListener(Event.COMPLETE,this.§0r§);
                                                                                                                                                                                                      addr162:
                                                                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§ V§);
                                                                                                                                                                                                         if(!_loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc2_ || _loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().removeEventListener(Event.CANCEL,this.§'!]§);
                                                                                                                                                                                                               addr137:
                                                                                                                                                                                                               if(!_loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr105:
                                                                                                                                                                                                                  this.§"o§();
                                                                                                                                                                                                                  addr108:
                                                                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§+!'§.§2d§);
                                                                                                                                                                                                                           if(!(_loc1_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr84:
                                                                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr93:
                                                                                                                                                                                                                                    §+!'§.§2d§.color = 0;
                                                                                                                                                                                                                                    addr95:
                                                                                                                                                                                                                                    if(!(_loc1_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc1_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr38:
                                                                                                                                                                                                                                          §§push(this.§5w§);
                                                                                                                                                                                                                                          if(!_loc1_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr60:
                                                                                                                                                                                                                                                      this.§5w§.removeEventListeners();
                                                                                                                                                                                                                                                      addr61:
                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc2_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr29:
                                                                                                                                                                                                                                                               this.mReadyToRun = false;
                                                                                                                                                                                                                                                               if(!_loc1_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc1_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr95);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr61);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr203);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr180);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr84);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr108);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr61);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr29);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr60);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr162);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr137);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr240);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr38);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr93);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr295);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr194);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr144);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr240);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr143);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr157);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr300);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr272);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr267);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr215);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr105);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr289);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr198);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr305);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr332);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr143);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr198);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr234);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr310);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr216);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr238);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr288);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr287);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr295);
                                                                                                                                                }
                                                                                                                                                addr274:
                                                                                                                                                §§goto(addr274);
                                                                                                                                             }
                                                                                                                                             §§goto(addr267);
                                                                                                                                          }
                                                                                                                                          §§push(this.sprite);
                                                                                                                                       }
                                                                                                                                       §§pop().removeChildAt(0,true);
                                                                                                                                       §§goto(addr362);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr462);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr383);
                                                                                                                              }
                                                                                                                              this.§ for§ = 0;
                                                                                                                              §§goto(addr295);
                                                                                                                              addr333:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr406);
                                                                                                                        }
                                                                                                                        §§goto(addr556);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr541);
                                                                                                               }
                                                                                                               addr398:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§;!0§);
                                                                                                                  addr483:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().clear();
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr481:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr455);
                                                                                                         }
                                                                                                         §§goto(addr462);
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                                §§goto(addr412);
                                                                                             }
                                                                                             addr384:
                                                                                          }
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_ && this)
                                                                                             {
                                                                                                break loop13;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          addr467:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr441);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr426);
                                                                     §§goto(addr448);
                                                                  }
                                                               }
                                                               §§goto(addr461);
                                                            }
                                                         }
                                                         §§goto(addr481);
                                                      }
                                                      §§goto(addr483);
                                                      §§goto(addr503);
                                                   }
                                                }
                                                continue loop36;
                                             }
                                             continue loop36;
                                          }
                                       }
                                    }
                                    §§goto(addr530);
                                 }
                              }
                              §§goto(addr580);
                           }
                           §§goto(addr475);
                        }
                        §§goto(addr530);
                     }
                  }
                  §§goto(addr555);
               }
            }
            §§goto(addr579);
         }
         §§goto(addr517);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §^z§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§?i§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§?i§);
                  }
                  else
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr65);
            }
            return §§pop().toString();
         }
         addr65:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(this.mReadyToRun);
            while(true)
            {
               §§push(!§§pop());
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
                           addr161:
                           while(true)
                           {
                              §§push(§+!'§.§`4§());
                              addr137:
                              while(true)
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        addr160:
                     }
                     while(true)
                     {
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
                                 addr91:
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr25);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§;;§);
                              §§goto(addr102);
                           }
                        }
                        return §§pop();
                     }
                  }
               }
               addr62:
               if(_loc4_ && param1)
               {
                  continue;
               }
               §§goto(addr69);
            }
         }
         while(true)
         {
            §§push(this.§;;§);
            if(!(_loc4_ && param3))
            {
               §§push(§§pop().§&A§);
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     addr60:
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr62);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr103);
               }
               §§goto(addr60);
            }
            addr102:
            loop10:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr103:
               while(_loc5_)
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        continue loop2;
                     }
                     if(§§pop())
                     {
                        continue loop7;
                     }
                     addr69:
                     while(§§pop())
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              break loop10;
                           }
                           addr126:
                           while(_loc5_ || param3)
                           {
                              continue loop10;
                           }
                           §§goto(addr161);
                        }
                        else
                        {
                           §§goto(addr91);
                        }
                     }
                     addr25:
                     §§push(this.§+![§(param1,true,param2,param3));
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           return §§pop();
                        }
                        break loop7;
                     }
                     §§goto(addr90);
                  }
                  else
                  {
                     §§goto(addr160);
                  }
               }
               §§goto(addr137);
            }
            addr90:
            return §§pop();
         }
      }
      
      protected function §+![§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.§]L§)
            {
               if(_loc7_)
               {
                  §§push(param1);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           addr39:
                           param1 = §§pop();
                           if(_loc7_)
                           {
                              §§push(§+!'§.§9!;§);
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    addr53:
                                    if(!_loc6_)
                                    {
                                       addr49:
                                       §§push(§+!'§.§9!;§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc7_ || this)
                                    {
                                       §§push(this);
                                       §§push(this.§#!A§);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§#!A§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§"p§.§'2§(param1);
                                                while(true)
                                                {
                                                   if(_loc7_ || param3)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         this.§ for§ = 0;
                                                         while(true)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr120:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                }
                                                addr176:
                                             }
                                             else
                                             {
                                                addr128:
                                             }
                                             addr147:
                                             addr68:
                                             while(!_loc6_)
                                             {
                                                §§push(this);
                                                §§push(this.§ for§);
                                                if(_loc7_ || this)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§ for§ = §§pop();
                                                while(true)
                                                {
                                                   §§push(this.mLevelEngine.§0!0§(this.§ for§));
                                                   if(!_loc6_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr171:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr172:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         this.§,'§.update(param1,param4);
                                                         addr161:
                                                         while(true)
                                                         {
                                                            this.§ for§ = _loc5_;
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             while(true)
                                             {
                                                if(!(_loc6_ && param3))
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr172);
                                             }
                                             return §§pop();
                                          }
                                       }
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr53);
                              }
                              §§pop().speed = 0.2;
                              §§goto(addr53);
                           }
                           §§goto(addr49);
                        }
                        §§goto(addr53);
                     }
                  }
                  §§goto(addr39);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      private function § x§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(§92§.§!!&§);
         if(!_loc7_)
         {
            §§push(§§pop() * 1000);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            if(this.§;;§)
            {
               if(_loc6_)
               {
                  §§push(param1);
                  loop16:
                  while(true)
                  {
                     §§push(this.§;;§.speed);
                     loop17:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        loop18:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop19:
                           while(true)
                           {
                              param1 = §§pop();
                              addr296:
                              while(true)
                              {
                                 §§push(this.§#!A§);
                                 if(_loc6_)
                                 {
                                    if(!(_loc6_ || param2))
                                    {
                                       continue loop19;
                                    }
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       continue loop17;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc7_)
                                    {
                                       addr265:
                                       _loc5_ = §§pop();
                                       if(_loc6_ || param2)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop16;
                                 }
                                 continue loop18;
                              }
                              loop23:
                              while(true)
                              {
                                 §§push(this.§#!A§);
                                 if(_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop21:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(!_loc7_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      loop4:
                                                      while(_loc6_ || param2)
                                                      {
                                                         §§push(_loc5_);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(this.§null §);
                                                               if(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + _loc4_);
                                                                     addr186:
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           §§push(this.§;;§);
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              §§pop().step(this);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§null §);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc4_);
                                                                                 }
                                                                                 §§pop().§null § = §§pop();
                                                                                 addr121:
                                                                                 addr63:
                                                                                 addr66:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr228:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr229:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§null §);
                                                                                             addr231:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   break loop4;
                                                                                                }
                                                                                                addr199:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§+![§(_loc4_,false,param2,param3);
                                                                                                   §§goto(addr206);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr206:
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§push(this.§#!A§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ || param3))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             if(_loc6_ || param3)
                                                                                             {
                                                                                                if(!(_loc7_ && param2))
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(_loc5_);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push(§§pop() - this.§#!A§);
                                                                                                   }
                                                                                                   §§pop().§+![§(§§pop(),true,param2,param3);
                                                                                                   addr46:
                                                                                                   §§push(param1);
                                                                                                   while(_loc7_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                   addr111:
                                                                                                   addr48:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§null §);
                                                                                                      if(_loc6_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc4_);
                                                                                                      }
                                                                                                      §§pop().§null § = §§pop();
                                                                                                      §§goto(addr199);
                                                                                                      addr234:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().step(this);
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr121);
                                                                                             }
                                                                                             §§goto(addr206);
                                                                                          }
                                                                                          §§goto(addr111);
                                                                                       }
                                                                                       §§goto(addr46);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr229);
                                                                                    }
                                                                                    §§goto(addr63);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§goto(addr63);
                                                                     }
                                                                  }
                                                                  addr184:
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr227);
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr234);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§#!A§);
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr184);
                                             }
                                             addr161:
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr161);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr296);
            }
            else
            {
               §§push(this.§+![§(_loc4_,true,param2,param3));
               if(!_loc7_)
               {
                  if(!_loc7_)
                  {
                     return §§pop();
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr48);
         }
         §§goto(addr296);
      }
      
      private function §#!2§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            this.§9!0§.update(param1);
            loop0:
            while(true)
            {
               this.§"p§.§&!G§(param1,param2);
               while(true)
               {
                  this.§ !O§();
                  loop2:
                  while(!_loc5_)
                  {
                     §§push(this.§%H§);
                     loop3:
                     while(true)
                     {
                        §§push(§<!$§.§4!7§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§!C§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(this.§!C§);
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop().visible = false;
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.§0b§);
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(_loc6_ || param1)
                                                                  {
                                                                     §§push(this.§0b§);
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop().§3!&§(this.§4`§,param1))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              this.§"4§();
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           continue loop18;
                                                                           addr111:
                                                                        }
                                                                     }
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        return;
                                                                        addr53:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr116:
                                                                        while(true)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     addr162:
                                                                  }
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(-Math.abs(this.§%H§ - _loc3_));
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc5_ && param2))
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§<!$§.§@![§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr190:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§push(§§pop() / _loc3_);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    addr203:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          §§push(this.§!C§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr156:
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   §§push(this.§!C§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().alpha = _loc4_;
                                                                                                      §§goto(addr162);
                                                                                                   }
                                                                                                }
                                                                                                continue loop2;
                                                                                                addr156:
                                                                                             }
                                                                                             §§goto(addr116);
                                                                                          }
                                                                                          addr155:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§%H§);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() + param1);
                                                                                             }
                                                                                             §§pop().§%H§ = §§pop();
                                                                                             addr257:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§<!$§.§4!7§);
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop() / 2);
                                                                                                   continue loop3;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                          addr249:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr203);
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr203);
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  this.§4`§.§4"§(param1);
                                                                  addr64:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr156);
                                                               }
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         addr86:
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr160);
                                          }
                                          addr128:
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr249);
                        }
                     }
                  }
                  continue loop0;
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.mLevelEngine.§;!A§();
                     do
                     {
                        this.§'J§.update(param1);
                     }
                     while(!_loc6_);
                     
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr44);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr53);
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §&r§(param1:Number) : void
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
               addr77:
               while(true)
               {
                  §§push(1000);
                  addr78:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr79:
                     while(true)
                     {
                        §§pop().§'2§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
            addr76:
         }
         while(true)
         {
            §§push(this.objects);
            if(!_loc3_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        §§push(1000);
                        if(_loc2_ || param1)
                        {
                           addr60:
                           §§pop().§>!>§(§§pop() * §§pop());
                           while(!_loc3_)
                           {
                              this.§2!E§();
                              if(!_loc3_)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr77);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr79);
               }
               §§goto(addr60);
            }
            else
            {
               §§goto(addr76);
            }
         }
      }
      
      public function § !O§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,_§ = null;
         if(!_loc4_)
         {
            §§push(this.§#!A§);
            §§push(this.§<!@§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc5_ || _loc1_)
               {
                  §§goto(addr55);
               }
            }
            §§goto(addr59);
         }
         addr55:
         if(this.§7!W§ != null)
         {
            addr59:
            var _loc2_:int = 0;
            for each(_loc1_ in this.§7!W§)
            {
               if(_loc5_)
               {
                  _loc1_.addTrail();
               }
            }
            if(_loc4_ && _loc2_)
            {
            }
            §§goto(addr101);
         }
         this.§<!@§ = this.§#!A§;
         addr101:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,_§ = null;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc3_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc3_ || _loc3_)
            {
               addr46:
               §§push(this.mPigsAnimationTimer1);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(0);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(this.§"p§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(true);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr94:
                                          §§push(this.§"p§);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr103:
                                             §§push(true);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().§7h§(§§pop()));
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      _loc2_.§[r§.mTryToScream = §&!_§.§6!c§;
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(_loc3_ || this)
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§"p§.§[E§()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                         addr163:
                                                         §§push(this);
                                                         §§push(this.mPigsAnimationTimer2);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().mPigsAnimationTimer2 = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            addr178:
                                                            if(this.mPigsAnimationTimer2 <= 0)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr189:
                                                                  §§push(this.§"p§);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     §§push(true);
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        §§goto(addr261);
                                                                     }
                                                                     addr212:
                                                                     _loc2_ = §§pop().§7h§(§§pop());
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        _loc2_.§[r§.mTryToBlink = §&!_§.§`I§;
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(250 + Math.random() * 500);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() + 2000 / (3 + this.§"p§.§[E§()));
                                                                           }
                                                                           §§pop().mPigsAnimationTimer2 = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr261);
                              }
                              addr261:
                              if(§§pop().isPigsAlive(§§pop()))
                              {
                                 addr210:
                                 §§push(this.§"p§);
                                 §§push(true);
                              }
                              return;
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr163);
                  }
               }
               §§goto(addr178);
            }
            §§goto(addr94);
         }
         §§goto(addr46);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §§push(param6);
            loop0:
            while(true)
            {
               §§push(-9999);
               addr162:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§!U§.§]6§);
                        addr165:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr166:
                           while(true)
                           {
                              param6 = §§pop();
                              addr167:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr163:
                  }
                  while(true)
                  {
                     § !;§.addScore(param1,param2);
                     while(true)
                     {
                        this.§5w§.addScore(param1);
                        loop7:
                        while(!_loc7_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              §§push(param3);
                              if(!(_loc7_ && param2))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop14:
                                             while(!_loc7_)
                                             {
                                                §§pop();
                                                loop15:
                                                while(_loc8_)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(this.§3!I§);
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr32:
                                                            §§push(!§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     this.§8!;§(param1.toString(),param4,param5,800,param6,0,0);
                                                                  }
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr128:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr165);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr166);
                                                               }
                                                               return;
                                                               addr34:
                                                            }
                                                            continue loop14;
                                                         }
                                                         addr95:
                                                         addr127:
                                                         while(!_loc7_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr32);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr163);
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr34);
                                       }
                                       continue;
                                    }
                                    §§goto(addr127);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr167);
      }
      
      public function §8!;§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param5);
            if(!(_loc8_ && param1))
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§!U§.§5!9§);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr85:
                     }
                     while(true)
                     {
                        param5 = §§pop();
                        while(true)
                        {
                           §§goto(addr24);
                        }
                     }
                  }
               }
               addr24:
               §§goto(addr60);
            }
            §§goto(addr85);
         }
         addr60:
         while(true)
         {
            this.§'J§.addParticle(§!U§.§-G§,§?F§.§"!%§,§!U§.§"i§,param2,param3,param4,param1,param5,param6,param7);
            if(_loc9_ || param1)
            {
               if(_loc9_)
               {
                  break;
               }
               continue loop0;
            }
            continue loop1;
         }
      }
      
      public function §@!4§(param1:§,_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§7!W§);
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
      
      public function §[![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,'§.§[![§();
            while(true)
            {
               this.§"p§.§-,§();
               while(!_loc2_)
               {
                  this.§3!I§ = true;
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §9?§(param1:§,_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§'J§.§5!S§(§?F§.§?!;§);
         }
         loop0:
         while(true)
         {
            §§push(this.§7!W§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop().indexOf(param1) < 0)
               {
                  while(true)
                  {
                     §§push(this.§7!W§);
                     if(!(_loc2_ && this))
                     {
                        if(§§pop().length == 0)
                        {
                           if(!(_loc2_ && param1))
                           {
                              if(_loc2_ && param1)
                              {
                                 continue loop0;
                              }
                              addr66:
                              if(!(_loc2_ && param1))
                              {
                                 this.§7!W§ = null;
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(this.§7!W§);
                                    addr93:
                                    while(true)
                                    {
                                       §§pop().splice(this.§7!W§.indexOf(param1),1);
                                       continue loop0;
                                    }
                                    §§goto(addr66);
                                 }
                                 addr91:
                              }
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr93);
                     addr116:
                  }
                  return;
               }
               §§goto(addr91);
            }
            §§goto(addr93);
         }
      }
      
      public function §+!b§(param1:§94§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§,!d§ = this.§"p§.§@!,§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(_loc7_)
            {
               addr37:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr42:
                  §§push(§9§.§;!]§);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        addr62:
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr54:
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && param2))
                        {
                           §§goto(addr62);
                        }
                     }
                  }
               }
               else
               {
                  §§push(§9§.BIRD_LAUNCH_FORCE);
                  if(!_loc8_)
                  {
                     §§goto(addr54);
                  }
               }
               var _loc4_:* = §§pop();
               if(_loc7_)
               {
                  §§push(param1.§+!^§);
                  if(_loc7_)
                  {
                     §§push(1);
                     loop0:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           while(true)
                           {
                              §§push(this.§,!d§);
                              loop2:
                              while(true)
                              {
                                 §§pop().§3=§(param1.§+!^§);
                                 addr143:
                                 loop11:
                                 while(true)
                                 {
                                    addr107:
                                    while(true)
                                    {
                                       §§push(this.§,!d§);
                                       if(_loc8_)
                                       {
                                          continue loop2;
                                       }
                                       §§pop().§[r§.§ !d§();
                                       while(!(_loc7_ || param1))
                                       {
                                          continue loop11;
                                       }
                                       continue loop11;
                                    }
                                 }
                              }
                           }
                           addr138:
                        }
                        while(true)
                        {
                           §§push(param1.§;1§);
                           if(!(_loc7_ || param3))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr147:
                        §§push(-§§pop());
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop() * param2);
                           if(!(_loc8_ && param3))
                           {
                              addr164:
                              §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                              if(_loc8_)
                              {
                              }
                              addr176:
                              var _loc5_:* = §§pop();
                              §§push(_loc4_);
                              if(!(_loc8_ && param2))
                              {
                                 §§push(§§pop() * param2);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                    if(!_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              var _loc6_:* = §§pop();
                              if(!(_loc8_ && param2))
                              {
                                 this.§,!d§.§[!8§(new b2Vec2(_loc5_,_loc6_),false,true);
                                 do
                                 {
                                    this.camera.§#M§(§95§.§7B§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§?i§);
                                       if(!_loc8_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr210);
                                          }
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§?i§);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().§+!b§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
                                          continue loop7;
                                       }
                                    }
                                 }
                                 while(_loc8_ && param1);
                                 
                                 addr210:
                                 return;
                              }
                              §§goto(addr222);
                           }
                           addr175:
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr176);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr143);
            }
            §§goto(addr42);
         }
         §§goto(addr37);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2!#§ = true;
         }
      }
      
      private function §2!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§2!#§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§2!#§ = false;
                     loop2:
                     while(true)
                     {
                        §§push(this.activeObject);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() is §`!O§);
                           addr143:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(_loc2_)
                                    {
                                       §§push(this.activeObject);
                                       if(!_loc1_)
                                       {
                                          continue loop3;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop().activateSpecialPower(this.§]p§));
                                          addr131:
                                          loop7:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§?j§ = true;
                                                   addr137:
                                                   while(true)
                                                   {
                                                   }
                                                   addr45:
                                                   if(!(_loc1_ && this))
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§goto(addr20);
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§?i§);
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§?i§);
                                                               addr39:
                                                               while(true)
                                                               {
                                                                  §§pop().§ !_§(this.mLevelEngine.currentStep);
                                                               }
                                                            }
                                                            addr37:
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr45);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc1_ && this)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr167:
                                                                     continue loop11;
                                                                  }
                                                                  addr119:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     §§push(this.activeObject);
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               addr66:
                                                            }
                                                         }
                                                      }
                                                      addr20:
                                                      return;
                                                   }
                                                   §§goto(addr39);
                                                }
                                                §§goto(addr137);
                                             }
                                             continue loop12;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 addr145:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§"p§.§>!F§();
                                       §§goto(addr66);
                                    }
                                 }
                                 addr117:
                              }
                              §§goto(addr119);
                           }
                        }
                     }
                  }
               }
               §§goto(addr167);
            }
         }
         §§goto(addr37);
      }
      
      public function §7!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"p§.§7!c§();
         }
      }
      
      public function §2f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"p§.§[!'§();
         }
      }
      
      public function §&!0§() : §&!E§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!E§ = new §&!E§();
         if(_loc2_ || _loc1_)
         {
            _loc1_.§=!F§ = this.§9C§.§=!F§;
         }
         loop0:
         while(true)
         {
            _loc1_.§@Y§ = this.§9C§.§@Y§;
            loop1:
            while(true)
            {
               this.§4`§.§"E§(_loc1_);
               addr87:
               while(true)
               {
                  this.§"p§.§]!`§(_loc1_);
                  addr72:
                  while(!_loc3_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §@!I§() : int
      {
         return this.§9C§.§@Y§;
      }
      
      public function §2R§() : int
      {
         return this.§9C§.§=!F§;
      }
      
      public function §@%§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9C§.§@Y§ = param1;
         }
      }
      
      public function §?!f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9C§.§=!F§ = param1;
         }
      }
      
      public function §?!]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§'v§);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr73:
                     this.§'v§.§@B§(param1,param2);
                  }
                  while(true)
                  {
                  }
                  addr76:
               }
               while(true)
               {
                  §§push(this.§4`§);
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        return;
                     }
                     if(_loc4_)
                     {
                        addr44:
                        this.§4`§.§4"§(0);
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                     addr20:
                  }
                  §§goto(addr44);
               }
               addr48:
               §§goto(addr20);
            }
            §§goto(addr73);
         }
         §§goto(addr48);
      }
      
      public function get §@§() : §&!E§
      {
         return this.§9C§;
      }
      
      public function get §]p§() : §-!N§
      {
         return this.§"p§;
      }
      
      protected function get §-!C§() : §+!'§
      {
         return this.§#I§;
      }
      
      public function get §8!0§() : int
      {
         return §8k§;
      }
   }
}
