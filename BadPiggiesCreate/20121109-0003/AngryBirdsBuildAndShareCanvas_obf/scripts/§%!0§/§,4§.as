package §%!0§
{
   import §%!j§.§%K§;
   import §&!P§.§0;§;
   import §&!P§.§9`§;
   import §&!P§.§^!!§;
   import §&!P§.§``§;
   import §&;§.§4!@§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §6]§.§,"0§;
   import §8s§.§=!d§;
   import §;"7§.§1!O§;
   import §;"7§.§5!O§;
   import §;"7§.§="<§;
   import §;T§.§0!3§;
   import §<!1§.§9!=§;
   import §<!a§.b2Vec2;
   import §<i§.§'!e§;
   import §<i§.§+!S§;
   import §<i§.§9!L§;
   import §<i§.§`!r§;
   import §[!P§.§"0§;
   import §]§.§7!K§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.§47§;
   import §switch§.§4G§;
   
   public class §,4§
   {
      
      private static const §]"1§:int = 20;
      
      public static const §!,§:Number;
      
      public static const §[G§:Number;
      
      public static const §,^§:Number = 0.05;
      
      public static const §1!1§:Number;
      
      public static const §^!n§:Number;
      
      public static const §]O§:§9!=§;
      
      public static var §7!3§:Number = 1;
      
      protected static var § !8§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]"1§ = 20;
            while(true)
            {
               §!,§ = §'_§.§["3§;
               addr84:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §7!3§ = 1;
               loop7:
               for(; _loc1_; § !8§ = §'!e§.§>!=§,if(!(_loc1_ || _loc2_))
               {
                  continue;
               },§§goto(addr35))
               {
                  addr51:
                  if(_loc1_ || _loc1_)
                  {
                     continue;
                  }
                  addr144:
                  while(true)
                  {
                     §[G§ = §'_§.§7$§;
                     loop2:
                     while(true)
                     {
                        §,^§ = 1 / 20;
                        while(true)
                        {
                           §1!1§ = §'_§.§7$§ * §,^§;
                           break loop7;
                           addr100:
                           while(!(_loc2_ && _loc1_))
                           {
                              §]O§ = new §9!=§(13 - 3);
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr51);
                  }
               }
               while(true)
               {
                  §§push(§§findproperty(§^!n§));
                  §§push(§!,§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() * §,^§);
                  }
                  §§pop().§^!n§ = §§pop();
                  §§goto(addr100);
               }
            }
         }
         §§goto(addr144);
      }
      
      protected var §#!8§:§^!!§;
      
      private var §9!m§:§``§;
      
      private var §^![§:Array = null;
      
      protected var §]q§:§4!@§;
      
      public var §?=§:§5!e§;
      
      protected var native:§%";§;
      
      protected var §8!j§:§"!P§;
      
      protected var §7R§:§3"!§;
      
      protected var §-R§:§6!Q§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §'§:Boolean = false;
      
      protected var §"!M§:Boolean = false;
      
      protected var § !V§:Boolean = false;
      
      public var §!C§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §!o§:Number;
      
      public var §<I§:Number;
      
      private var §1R§:Number;
      
      public var §[!6§:§9!L§;
      
      public var §1!;§:Boolean = false;
      
      private var §[!<§:§3!g§;
      
      private var §"!i§:Sprite;
      
      protected var §]"§:§'!e§;
      
      protected var §1!A§:§7!K§ = null;
      
      private var §-H§:EventDispatcher;
      
      private var §;7§:Array;
      
      private var §&"3§:Array;
      
      protected var §,!h§:§%K§;
      
      private var §4e§:§=!d§;
      
      protected var §7k§:§="<§;
      
      protected var §#"@§:§5!O§;
      
      private var §=G§:§1!O§;
      
      private var §6!x§:§1!O§;
      
      private var §#'§:§1!O§;
      
      private var §0"§:Stage;
      
      private var §%"+§:§7;§;
      
      protected var §0P§:§0!3§;
      
      protected var §!!,§:§0!3§;
      
      protected var §,z§:Number = 0.0;
      
      protected var §[m§:String;
      
      private var §&W§:Boolean;
      
      protected var §[4§:Boolean;
      
      protected var §3!6§:uint = 1.417339207E9;
      
      public var §>k§:Boolean;
      
      public function §,4§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§&"3§ = [];
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§-H§ = new EventDispatcher();
                  addr112:
                  while(true)
                  {
                     this.§[!6§ = new §9!L§();
                     while(true)
                     {
                        this.§0"§ = param1;
                        addr86:
                        while(_loc4_ || param1)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr43);
            }
         }
         §§goto(addr48);
      }
      
      public static function §#F§(param1:§``§, param2:§``§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§#n§);
         if(_loc5_)
         {
            §§push(§§pop() - param2.§#n§);
            if(_loc5_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§?y§);
         if(_loc5_)
         {
            §§push(§§pop() - param2.§?y§);
            if(!_loc6_)
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            return §??§(_loc3_,_loc4_);
         }
         §§goto(addr61);
      }
      
      public static function §??§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§"!i§);
            while(true)
            {
               §§push(!§§pop());
               if(_loc1_)
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
                           §§push(Boolean(this.§>@§));
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr92:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr93))
                  {
                     if(_loc1_ || _loc1_)
                     {
                        this.§"!i§ = this.§[!<§.§@>§;
                     }
                     if(!_loc1_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        break loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr92);
            }
            return §§pop();
         }
         §§goto(addr74);
      }
      
      public function get §>@§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§[!<§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§[!<§ = this.§,!h§.§'"6§ as §3!g§;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§[!<§);
                     addr51:
                     loop2:
                     while(_loc2_)
                     {
                        §§pop().§#b§ = false;
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  §§push(this.§[!<§);
                  if(_loc2_ || _loc1_)
                  {
                     break;
                  }
                  §§goto(addr51);
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
      
      private function get §`V§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§>@§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         return (this.§>@§ as §3!g§).§`V§;
      }
      
      public function get §00§() : §5!O§
      {
         return this.§#"@§;
      }
      
      public function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function get camera() : §"!P§
      {
         return this.§8!j§;
      }
      
      public function get objects() : §^!!§
      {
         return this.§#!8§;
      }
      
      public function get particles() : §6!Q§
      {
         return this.§-R§;
      }
      
      public function get background() : §4!@§
      {
         return this.§]q§;
      }
      
      public function get slingshot() : §3"!§
      {
         return this.§7R§;
      }
      
      public function get activeObject() : §``§
      {
         return this.§9!m§;
      }
      
      public function get borders() : §%";§
      {
         return this.native;
      }
      
      public function get stage() : Stage
      {
         return this.§0"§;
      }
      
      public function get §?i§() : §1!O§
      {
         return this.§#'§;
      }
      
      protected function get §^x§() : §1!O§
      {
         return this.§=G§;
      }
      
      public function set activeObject(param1:§``§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9!m§ = param1;
         }
      }
      
      public function set §9!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[4§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§4e§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr193:
                     this.§4e§.dispose();
                  }
                  while(true)
                  {
                  }
                  addr194:
               }
               loop1:
               while(true)
               {
                  §§push(this.§7k§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§7k§);
                           addr170:
                           while(true)
                           {
                              §§pop().dispose();
                              addr171:
                              while(!_loc2_)
                              {
                              }
                              continue loop1;
                           }
                        }
                        addr168:
                     }
                     while(true)
                     {
                        §§push(this.§=G§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc1_)
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
                                       addr156:
                                       loop23:
                                       while(true)
                                       {
                                          §§push(this.§=G§);
                                          if(_loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop().§8=§);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            §§push(this.§=G§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§8=§);
                                                               addr138:
                                                               while(true)
                                                               {
                                                                  §§pop().dispose();
                                                               }
                                                               continue loop23;
                                                            }
                                                            addr137:
                                                         }
                                                         loop10:
                                                         while(!(_loc2_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§#'§);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc1_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop19:
                                                                        while(!(_loc2_ && this))
                                                                        {
                                                                           addr106:
                                                                           §§pop();
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              addr109:
                                                                              §§push(this.§#'§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(§§pop().§8=§);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr78:
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(this.§#'§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(§§pop().§8=§);
                                                                                                   break loop18;
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr109);
                                                                                             }
                                                                                             continue loop12;
                                                                                             addr72:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr78:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§,!h§);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      if(_loc2_ && this)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr42:
                                                                                                      this.§,!h§.dispose();
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr78);
                                                                                                   }
                                                                                                }
                                                                                                if(!(_loc1_ || _loc2_))
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr168);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr42);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr72);
                                                                           }
                                                                           while(_loc1_)
                                                                           {
                                                                              §§pop().dispose();
                                                                              §§goto(addr78);
                                                                           }
                                                                           §§goto(addr138);
                                                                        }
                                                                        continue loop7;
                                                                        addr99:
                                                                     }
                                                                     §§goto(addr66);
                                                                  }
                                                                  §§goto(addr99);
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr79);
                                                   }
                                                }
                                                addr126:
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr137);
                                       }
                                    }
                                    addr155:
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr170);
               }
            }
            §§goto(addr193);
         }
         §§goto(addr156);
      }
      
      protected function §;!k§() : §1!O§
      {
         return null;
      }
      
      protected function §"U§() : §1!O§
      {
         return null;
      }
      
      protected function § l§() : §1!O§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§="<§) : §5!O§
      {
         return new §5!O§(param1);
      }
      
      public function §'"@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§%K§.§`9§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(!param1)
                     {
                        §§push(§%K§.§`9§);
                        loop0:
                        while(!(_loc3_ && _loc3_))
                        {
                           §§pop().stop();
                           while(_loc2_)
                           {
                              §§push(§%K§.§`9§);
                              if(!(_loc2_ || this))
                              {
                                 continue loop0;
                              }
                              §§pop().color = 0;
                              if(_loc3_)
                              {
                                 §§goto(addr68);
                              }
                              if(_loc2_ || this)
                              {
                                 §§goto(addr19);
                              }
                              continue loop0;
                           }
                           return;
                        }
                        addr97:
                        §§pop().start();
                        §§goto(addr98);
                     }
                     §§goto(addr97);
                     §§push(§%K§.§`9§);
                  }
               }
               §§goto(addr19);
            }
            §§goto(addr97);
         }
         §§goto(addr19);
      }
      
      public function §"!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.sprite);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().visible = param1;
         }
         addr60:
         if(_loc3_)
         {
            §§push(this.sprite);
         }
      }
      
      public function §1G§() : §7!K§
      {
         return this.§1!A§;
      }
      
      public function §^`§(param1:§7!K§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§1!A§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§1!A§);
                     addr94:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr95:
                        while(true)
                        {
                        }
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  this.§1!A§ = param1;
                  loop2:
                  while(!_loc3_)
                  {
                     while(this.mReadyToRun)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop2;
                           }
                           §§push(this.§1!A§);
                           if(_loc2_ || this)
                           {
                              §§pop().addEventListeners();
                           }
                           §§goto(addr94);
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr92);
                     }
                     return;
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr70);
      }
      
      public function §%F§() : §0!3§
      {
         return this.§0P§;
      }
      
      public function §6h§(param1:§=!d§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§4e§ = param1;
         }
         §§push(this.§4e§.§-"-§);
         if(!_loc7_)
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
               if(_loc6_)
               {
                  if(param3 != null)
                  {
                     while(true)
                     {
                        this.§-H§.addEventListener(Event.INIT,param3);
                        addr101:
                        addr42:
                        while(true)
                        {
                           this.§&"3§.push(param3);
                           addr85:
                           while(true)
                           {
                           }
                        }
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                        this.§@!u§();
                        addr51:
                        if(_loc6_ || param2)
                        {
                           if(!(_loc6_ || param3))
                           {
                              §§goto(addr101);
                           }
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           if(!_loc7_)
                           {
                              §§goto(addr31);
                           }
                           _loc5_++;
                           continue loop0;
                           addr124:
                        }
                        §§goto(addr85);
                     }
                  }
                  while(true)
                  {
                     if(this.§8`§(param2))
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr42);
                        }
                        §§goto(addr51);
                     }
                     break;
                     §§goto(addr85);
                  }
                  addr31:
                  return;
               }
               §§goto(addr101);
            }
            else
            {
               this.§7k§.§[h§(this.§4e§.§@"=§(_loc5_));
            }
            §§goto(addr124);
         }
      }
      
      private function §8`§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc5_ && this))
         {
            §§push(this.§7k§);
            if(_loc4_)
            {
               §§push(§§pop().§8!u§());
               loop0:
               do
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        this.§;7§ = param1.concat();
                        if(!(_loc4_ || param1))
                        {
                           if(_loc4_ || _loc2_)
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                              addr168:
                              addr168:
                              while(true)
                              {
                                 §§push(this.§7k§);
                                 addr170:
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop().§6!K§);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(1000);
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          addr190:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       addr189:
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr192:
                                       addr158:
                                       while(true)
                                       {
                                          §§push(this.§7k§);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(§§pop().§!!v§);
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop9;
                                                }
                                                §§push(1000);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr190);
                                             }
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                           }
                           while(_loc5_)
                           {
                              §§goto(addr192);
                              §§goto(addr158);
                           }
                           §§push(§,"0§);
                           §§push("\n\nMain texture manager memory usage:\n   textures " + _loc2_);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() + " kilobytes\n   bitmaps ");
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() + _loc3_);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + " kilobytes\n\n");
                                 }
                              }
                           }
                           §§pop().log(§§pop());
                           break;
                        }
                        if(!(_loc5_ && this))
                        {
                           §§push(false);
                           if(_loc4_ || _loc2_)
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                        addr84:
                        while(true)
                        {
                           if(!(_loc4_ || _loc3_))
                           {
                              break loop1;
                              addr101:
                           }
                           §§push(true);
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        this.§?!3§(param1);
                        §§goto(addr84);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr168);
               }
               while(!(_loc4_ || _loc3_));
               
               return §§pop();
            }
            §§goto(addr170);
         }
         §§goto(addr168);
      }
      
      private function §?!3§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#"@§.§?!3§(param1);
         }
      }
      
      private function § !m§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§7k§.§[=§();
            loop0:
            while(true)
            {
               §§push(this.§^x§);
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
                        if(!§§pop())
                        {
                           loop45:
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
                                       §§push(this.§?i§);
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
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop46;
                                                      }
                                                      §§pop();
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(this.§?i§);
                                                         if(_loc3_ || param1)
                                                         {
                                                            §§push(§§pop().§8=§);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     loop44:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(this.§;7§)
                                                                              {
                                                                                 addr299:
                                                                                 loop21:
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       this.§8`§(this.§;7§);
                                                                                       loop22:
                                                                                       for(; _loc3_ || _loc2_; while(true)
                                                                                       {
                                                                                          if(_loc2_ && _loc2_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§goto(addr155);
                                                                                       })
                                                                                       {
                                                                                          this.§;7§ = null;
                                                                                          loop23:
                                                                                          for(; !(_loc2_ && _loc3_); if(_loc2_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          },§§goto(addr25))
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break loop16;
                                                                                             }
                                                                                             this.§@!u§();
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                addr212:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§1!A§);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == null);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc2_ && param1)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr234:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.mReadyToRun);
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     continue loop44;
                                                                                                                  }
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§1!A§);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§pop().addEventListeners();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr61:
                                                                                                                     if(!(_loc2_ && this))
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr138:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc2_ && param1)
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     §§push(this.§=G§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().§8!u§();
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr211);
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§=G§);
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§#'§);
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 §§goto(addr138);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§#'§);
                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr39:
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       addr351:
                                                                                                                                       addr304:
                                                                                                                                       addr95:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§8=§);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             addr98:
                                                                                                                                             if(_loc2_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             addr25:
                                                                                                                                             addr25:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr122:
                                                                                                                                                   §§push(this.§#'§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§8=§);
                                                                                                                                                   }
                                                                                                                                                   addr122:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr234);
                                                                                                                                                }
                                                                                                                                                addr54:
                                                                                                                                                if(!(_loc3_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr61);
                                                                                                                                             }
                                                                                                                                             continue loop22;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().§[=§();
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          §§goto(addr39);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§pop().§[=§();
                                                                                                                                             break loop22;
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                          §§goto(addr98);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§[=§();
                                                                                                                                          addr352:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr122);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr25);
                                                                                                                        }
                                                                                                                        §§goto(addr122);
                                                                                                                        addr155:
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  §§goto(addr138);
                                                                                                               }
                                                                                                               §§goto(addr147);
                                                                                                               §§goto(addr211);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop15;
                                                                                       addr270:
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 loop48:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§?i§);
                                                                                    addr301:
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       §§goto(addr304);
                                                                                       §§push(§§pop().§8=§);
                                                                                       continue loop48;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr299:
                                                                              }
                                                                              §§goto(addr212);
                                                                           }
                                                                           addr253:
                                                                        }
                                                                        §§goto(addr299);
                                                                     }
                                                                  }
                                                                  addr297:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop45;
                                                                  }
                                                                  addr336:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  addr341:
                                                                  §§push(this.§^x§);
                                                                  continue loop1;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr339:
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                   }
                                                   continue loop46;
                                                }
                                                §§goto(addr297);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr339);
                              }
                           }
                        }
                        §§goto(addr359);
                     }
                  }
               }
            }
         }
         §§goto(addr299);
      }
      
      private function §@!u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-H§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§!"2§();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function §!"2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§&"3§)
         {
            if(_loc5_ || _loc2_)
            {
               this.§-H§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§&"3§ = [];
         }
      }
      
      public function init(param1:§'!e§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
               while(true)
               {
                  this.native = new §%";§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§8!j§ = this.initLevelCamera(param1);
                     loop5:
                     while(true)
                     {
                        this.§!o§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§<I§ = 0;
                           while(true)
                           {
                              this.§1R§ = 0;
                              loop8:
                              for(; !_loc3_; if(_loc3_ && param1)
                              {
                                 continue;
                              },§§goto(addr71))
                              {
                                 this.§&W§ = false;
                                 loop9:
                                 while(true)
                                 {
                                    this.mReadyToRun = false;
                                    loop10:
                                    while(true)
                                    {
                                       this.§'§ = false;
                                       while(!_loc3_)
                                       {
                                          this.mPigsAnimationTimer1 = 2000;
                                          loop12:
                                          while(!_loc3_)
                                          {
                                             this.mPigsAnimationTimer2 = 1000;
                                             while(true)
                                             {
                                                § !8§ = param1.theme;
                                                continue loop9;
                                                loop21:
                                                while(!(_loc3_ && param1))
                                                {
                                                   this.initialize(param1);
                                                   while(!(_loc3_ && param1))
                                                   {
                                                      continue loop4;
                                                      addr40:
                                                      if(_loc3_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         loop26:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§ !V§);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr99:
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     addr107:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc2_ || _loc3_))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr99);
                                                                     }
                                                                     addr162:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     addr79:
                                                                     this.§ Q§(param1.theme);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ || this))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr54:
                                                                              while(true)
                                                                              {
                                                                                 this.§&!G§();
                                                                                 while(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    continue loop8;
                                                                                    §3!s§.init();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                           addr88:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr304);
                                                                        }
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                               }
                                                               §§goto(addr107);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§"!M§);
                                                                  if(!(_loc2_ || param1))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop26;
                                                               }
                                                               addr189:
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                         continue loop12;
                                                         addr172:
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      protected function §&!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§0P§ = new §0!3§(§`!r§.§0B§);
         }
      }
      
      protected function §'"#§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§=G§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr39:
                  §§push(false);
                  if(_loc3_ || param1)
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
      
      protected function §;!<§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4G§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§6!x§)
            {
               addr29:
               _loc2_ = §47§.§," §(param1);
               if(!(_loc4_ && this))
               {
                  if(_loc2_)
                  {
                     if(!_loc4_)
                     {
                        §§push(Boolean(_loc2_.§5!"§));
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(this.§6!x§.§]!>§(_loc2_.§5!"§));
                                    if(!_loc3_)
                                    {
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr105);
                              }
                              §§push(!§§pop());
                              if(_loc4_ && _loc3_)
                              {
                              }
                              §§goto(addr106);
                           }
                           addr87:
                           if(§§pop())
                           {
                              if(_loc3_ || param1)
                              {
                                 addr106:
                                 return false;
                                 addr105:
                              }
                              else
                              {
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr106);
                  }
               }
            }
            addr107:
            return true;
         }
         §§goto(addr29);
      }
      
      protected function § Q§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4G§ = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§=G§);
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
                           addr266:
                           while(true)
                           {
                              §§push(this.§'"#§(param1));
                              addr242:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr243:
                                 while(_loc4_ || param1)
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§push(this.§=G§);
                              loop9:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§>H§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§=G§);
                                    loop11:
                                    for(; !_loc3_; while(!(_loc3_ && param1))
                                    {
                                       §§pop().addEventListener(Event.CANCEL,this.§=!t§);
                                       §§goto(addr208);
                                    })
                                    {
                                       §§pop().removeEventListener(Event.CANCEL,this.§=!t§);
                                       loop12:
                                       while(!_loc3_)
                                       {
                                          §§push(this.§=G§);
                                          while(true)
                                          {
                                             §§pop().addEventListener(Event.COMPLETE,this.§>H§);
                                             addr217:
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                §§push(this.§=G§);
                                                continue loop11;
                                             }
                                             §§goto(addr266);
                                             addr177:
                                             if(_loc4_ || param1)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§pop().§?2§(param1);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§6!x§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop21:
                                                                     for(; _loc4_ || _loc3_; if(!(_loc4_ || this))
                                                                     {
                                                                        continue;
                                                                     },§§goto(addr110),§§push(!§§pop()))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              loop22:
                                                                              for(; !_loc3_; loop26:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§push(this.§6!x§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().removeEventListener(Event.CANCEL,this.§+e§);
                                                                                    addr86:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          do
                                                                                          {
                                                                                             §§push(this.§6!x§);
                                                                                             continue loop19;
                                                                                          }
                                                                                          while(false);
                                                                                          
                                                                                          _loc2_ = §47§.§," §(param1);
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   this.§6!x§.§?2§(_loc2_.§5!"§);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr119);
                                                                                       }
                                                                                    }
                                                                                    continue loop12;
                                                                                    addr33:
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§pop().addEventListener(Event.CANCEL,this.§+e§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§push(this.§6!x§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§goto(addr33);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr86);
                                                                                             }
                                                                                          }
                                                                                          continue loop26;
                                                                                          addr66:
                                                                                       }
                                                                                       §§goto(addr49);
                                                                                    }
                                                                                    §§goto(addr121);
                                                                                 }
                                                                              })
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§;!<§(param1));
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr110:
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§6!x§);
                                                                                             addr121:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().removeEventListener(Event.COMPLETE,this.§1!F§);
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr298:
                                                                                       return;
                                                                                       addr117:
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§=G§);
                                                                                 if(!(_loc4_ || _loc3_))
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              continue loop9;
                                                                              addr208:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               continue loop2;
                                                               while(_loc4_ || _loc2_)
                                                               {
                                                                  §§pop().addEventListener(Event.COMPLETE,this.§1!F§);
                                                                  §§goto(addr66);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop8;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§goto(addr134);
                     }
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      private function §>H§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§=G§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>H§);
               loop1:
               while(true)
               {
                  §§push(this.§=G§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§=!t§);
                  while(true)
                  {
                     this.§"!M§ = true;
                     loop3:
                     for(; _loc3_ || _loc2_; if(!_loc3_)
                     {
                        continue;
                     },this.initialize(this.§]"§),§§goto(addr71))
                     {
                        §§push(this.§"!M§);
                        if(_loc3_)
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
                                    addr81:
                                    while(_loc3_ || this)
                                    {
                                       §§push(this.§ !V§);
                                       if(_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_)
                                       {
                                       }
                                       continue loop7;
                                    }
                                    continue loop1;
                                 }
                                 addr80:
                              }
                              while(§§pop())
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    addr71:
                                    break;
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr81);
                              }
                              return;
                           }
                        }
                        §§goto(addr80);
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §=!t§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§=G§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>H§);
               while(true)
               {
                  §§push(this.§=G§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§=!t§);
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§'§ = true;
                        if(_loc3_ || _loc3_)
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
         §§goto(addr73);
      }
      
      private function §1!F§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§=G§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§1!F§);
               loop1:
               while(true)
               {
                  §§push(this.§=G§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§+e§);
                  loop2:
                  while(true)
                  {
                     this.§ !V§ = true;
                     loop3:
                     while(_loc2_ || _loc3_)
                     {
                        §§push(this.§"!M§);
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
                                    addr102:
                                    while(true)
                                    {
                                       §§push(this.§ !V§);
                                       if(!(_loc3_ && this))
                                       {
                                          continue loop4;
                                       }
                                       addr46:
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop5;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              while(§§pop())
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       this.initialize(this.§]"§);
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr102);
                                 }
                              }
                              addr24:
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §+e§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§=G§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§1!F§);
               loop1:
               while(true)
               {
                  §§push(this.§=G§);
                  if(!(_loc3_ || param1))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§+e§);
                  while(true)
                  {
                     this.§ !V§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§"!M§);
                        if(_loc3_)
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
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue loop3;
                                       }
                                       addr83:
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       addr95:
                                       while(true)
                                       {
                                          §§push(this.§ !V§);
                                          if(!(_loc2_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop4;
                                             }
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    return;
                                 }
                                 addr44:
                              }
                           }
                        }
                        §§goto(addr94);
                     }
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     this.initialize(this.§]"§);
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      public function get §=I§() : §="<§
      {
         return this.§7k§;
      }
      
      protected function initialize(param1:§'!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§[4§ = false;
            loop0:
            while(true)
            {
               this.§>k§ = false;
               loop1:
               while(true)
               {
                  §§push(§%K§.§^!d§);
                  if(_loc3_ || param1)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§%K§.§^!d§);
                           addr213:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr225:
                              while(true)
                              {
                              }
                           }
                        }
                        addr211:
                     }
                     loop3:
                     while(true)
                     {
                        this.§?=§ = new §5!e§(this);
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.native.mBorderGround_B2);
                           if(!_loc2_)
                           {
                              §§push(§§pop() / §,^§);
                           }
                           §§pop().§]q§ = §§pop().§-!5§(§§pop(),§§pop(),this.§=I§,this.§8!j§.§+C§());
                           loop5:
                           while(true)
                           {
                              this.§]q§.§?R§(§'_§.§&R§());
                              addr172:
                              loop8:
                              while(true)
                              {
                                 this.§#!8§ = this.initLevelObjectManager(param1);
                                 loop9:
                                 for(; _loc3_ || this; while(_loc3_ || param1)
                                 {
                                    continue loop5;
                                    if(_loc3_ || this)
                                    {
                                       if(_loc3_)
                                       {
                                          addr67:
                                          this.§1!A§.addEventListeners();
                                          addr68:
                                          if(!(_loc2_ && param1))
                                          {
                                             §§goto(addr25);
                                          }
                                          continue loop3;
                                       }
                                       continue loop1;
                                    }
                                 })
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    this.§7R§ = this.§?!1§(param1);
                                    while(true)
                                    {
                                       this.§-R§ = this.§'!§(this.§#"@§,this.§7k§);
                                       addr140:
                                       while(_loc3_)
                                       {
                                          this.§8!j§.init();
                                          continue loop9;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop4;
                              }
                              if(_loc2_ && _loc3_)
                              {
                                 continue;
                              }
                              this.§`S§();
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§5"4§();
                                          loop14:
                                          while(true)
                                          {
                                             this.mReadyToRun = true;
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(this.§1!A§);
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr68);
                                                   }
                                                }
                                                continue loop14;
                                                addr25:
                                                return;
                                             }
                                             §§goto(addr67);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr211);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr149);
                                    }
                                 }
                                 break;
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr56);
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr225);
                     }
                  }
                  §§goto(addr213);
               }
            }
         }
         §§goto(addr172);
      }
      
      protected function §5"4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§[m§)
            {
               while(true)
               {
                  this.§!!,§ = §0!3§.initialize(this.§[m§);
                  addr100:
                  loop1:
                  while(true)
                  {
                     §§push(this.§!!,§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        addr73:
                        while(_loc1_ || this)
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
         §§goto(addr100);
      }
      
      public function §4!;§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[m§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§!!,§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§!!,§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(param1)
                     {
                        if(_loc3_ || _loc2_)
                        {
                        }
                        addr25:
                        return;
                        addr118:
                     }
                     else
                     {
                        §§push(this.§!!,§);
                        if(_loc3_ || this)
                        {
                           §§pop().speed = Math.max(this.§!!,§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(!_loc2_)
                           {
                              §§goto(addr25);
                           }
                           else
                           {
                              §§goto(addr118);
                           }
                        }
                        else
                        {
                           §§pop().speed = Math.min(this.§!!,§.speed * 1.25,Math.pow(1.25,2));
                           addr96:
                           §§goto(addr25);
                        }
                        §§goto(addr25);
                     }
                  }
                  §§goto(addr96);
                  §§push(this.§!!,§);
               }
               §§goto(addr25);
            }
            §§goto(addr96);
         }
         §§goto(addr25);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§!!,§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr58:
                     this.§!!,§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      protected function initLevelObjectManager(param1:§'!e§) : §^!!§
      {
         return new §^!!§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§'!e§) : §"!P§
      {
         return new §"!P§(this,param1);
      }
      
      protected function §-!5§(param1:String, param2:Number, param3:§="<§, param4:Number) : §4!@§
      {
         return new §4!@§(param1,param2,param3,param4);
      }
      
      protected function §?!1§(param1:§'!e§) : §3"!§
      {
         return new §3"!§(this,param1,new Sprite());
      }
      
      protected function §'!§(param1:§5!O§, param2:§="<§) : §6!Q§
      {
         return new §6!Q§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || _loc3_)
         {
            if(this.mReadyToRun)
            {
               if(!(_loc6_ && param2))
               {
                  addr34:
                  this.clearLevel();
               }
            }
            var _loc3_:§'!e§ = this.§0_§();
            var _loc4_:§+!S§;
            (_loc4_ = new §+!S§()).left = 0;
            if(_loc7_ || param2)
            {
               §§push(_loc4_);
               §§push(§"!P§.SCREEN_HEIGHT_B2);
               if(_loc7_)
               {
                  §§push(-§§pop());
                  if(_loc7_)
                  {
                     §§push(10);
                     if(!_loc6_)
                     {
                        addr158:
                        §§push(§§pop() / §§pop());
                        if(!(_loc6_ && param1))
                        {
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(_loc7_ || this)
                           {
                              §§push(§§pop() + §"!P§.SCREEN_HEIGHT_B2);
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + §"!P§.SCREEN_WIDTH_B2);
                              }
                              §§pop().right = §§pop();
                              addr120:
                              loop2:
                              while(true)
                              {
                                 _loc4_.y = -13.929;
                                 while(true)
                                 {
                                    if(!(_loc7_ || param2))
                                    {
                                       continue loop2;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    _loc4_.x = §"!P§.SCREEN_WIDTH_B2;
                                    loop4:
                                    while(true)
                                    {
                                       addr68:
                                       addr160:
                                       while(true)
                                       {
                                          _loc4_.id = §"!P§.CAMERA_ID_SLINGSHOT;
                                          continue loop4;
                                       }
                                       var _loc5_:§+!S§;
                                       (_loc5_ = new §+!S§()).top = _loc4_.top;
                                       if(!_loc6_)
                                       {
                                          _loc5_.bottom = _loc4_.bottom;
                                       }
                                       addr372:
                                       _loc5_.left = 150;
                                       addr367:
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       addr352:
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop() + §"!P§.SCREEN_WIDTH_B2);
                                       }
                                       §§pop().right = §§pop();
                                       §§push(_loc5_);
                                       §§push(_loc5_.top);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() + §"!P§.SCREEN_HEIGHT_B2);
                                       }
                                       addr336:
                                       addr320:
                                       §§pop().bottom = §§pop();
                                       addr314:
                                       _loc5_.y = _loc4_.y;
                                       addr287:
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§"!P§.SCREEN_WIDTH_B2);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().x = §§pop();
                                       _loc5_.id = §"!P§.CAMERA_ID_CASTLE;
                                       if(!(_loc6_ && param2))
                                       {
                                          _loc3_.§ d§(_loc5_);
                                          this.§^!a§(_loc3_,param2);
                                          addr281:
                                          if(!_loc6_)
                                          {
                                             addr253:
                                             addr252:
                                             if(param1 != null)
                                             {
                                                addr254:
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      _loc3_.theme = param1;
                                                      addr261:
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr185:
                                                         this.init(_loc3_);
                                                         if(_loc7_ || param1)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr367);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr281);
                                                                  }
                                                                  §§goto(addr254);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            addr237:
                                                            if(_loc7_ || param1)
                                                            {
                                                               _loc3_.theme = § !8§;
                                                               addr247:
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr185);
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr352);
                                             }
                                             §§push(§ !8§);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(null);
                                                if(_loc7_ || param2)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr287);
                                       }
                                       §§goto(addr314);
                                    }
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    _loc3_.§ d§(_loc4_);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(false)
                                       {
                                          §§goto(addr68);
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr73);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
               }
               §§goto(addr158);
            }
            §§goto(addr120);
         }
         §§goto(addr34);
      }
      
      protected function §^!a§(param1:§'!e§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(_loc3_ || param1)
               {
                  addr47:
                  this.§;!K§(param1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      protected function §0_§() : §'!e§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!e§ = new §'!e§();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§finally§ = -12;
         }
         return new §'!e§();
      }
      
      protected function §18§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3!6§ ^= this.§3!6§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§3!6§);
               §§push(this.§3!6§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§3!6§ = §§pop() ^ §§pop();
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     this.§3!6§ ^= this.§3!6§ << 4;
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.§3!6§ * (1 / uint.MAX_VALUE);
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function §;!K§(param1:§'!e§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§"0§ = null;
         if(_loc6_ || _loc2_)
         {
            §§push(this);
            §§push(0.33);
            if(_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§3!6§ = §§pop();
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
                  if(_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ && _loc3_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc7_ && param1)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(5);
                           if(_loc7_ && this)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc7_ && param1)
                              {
                                 break loop2;
                              }
                              _loc2_++;
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                           §§push(this.§18§());
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() * 5);
                           }
                           §§push(int(§§pop()));
                           if(!(_loc7_ && _loc2_))
                           {
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc7_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§push(_loc5_ = new §"0§());
                                 §§push(30 + _loc3_ * 10);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(this.§18§());
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() * 9);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 if(!(_loc7_ && param1))
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
                                             if(_loc6_)
                                             {
                                                §§push(this.§18§());
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() * 3);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_)
                                                      {
                                                         addr332:
                                                         §§push(§§pop() - _loc3_ * 8);
                                                      }
                                                      §§pop().y = §§pop();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + §§pop() * _loc3_);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr263:
                                                                                    §§push(_loc2_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr266:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr270:
                                                                                          §§push(§§pop() % 5);
                                                                                       }
                                                                                       §§push(int(§§pop()));
                                                                                       loop43:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                loop29:
                                                                                                while(!(_loc7_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr291:
                                                                                                      §§push(2);
                                                                                                      loop30:
                                                                                                      while(!_loc7_)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc6_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            continue loop43;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr367:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            break loop30;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc5_.id = "PIG_MUSTACHE";
                                                                                                                     addr388:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr339:
                                                                                                                        loop11:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           §§push(45);
                                                                                                                           §§push(this.§18§());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * 90);
                                                                                                                           }
                                                                                                                           §§pop().angle = §§pop() - §§pop();
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 loop13:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    param1.addObject(_loc5_);
                                                                                                                                    loop14:
                                                                                                                                    while(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             _loc3_++;
                                                                                                                                             if(!(_loc6_ || param1))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             addr304:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   break loop13;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr208:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                if(_loc7_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   break loop12;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr208:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             §§push(this.§18§());
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * 360);
                                                                                                                                             }
                                                                                                                                             §§pop().angle = §§pop();
                                                                                                                                             break loop14;
                                                                                                                                          }
                                                                                                                                          addr139:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ && this)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr367);
                                                                                                                                                      addr426:
                                                                                                                                                      _loc3_;
                                                                                                                                                   }
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      _loc5_.id = "BIRD_YELLOW";
                                                                                                                                                      §§goto(addr208);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      break loop29;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr196:
                                                                                                                                             }
                                                                                                                                             §§goto(addr139);
                                                                                                                                          }
                                                                                                                                          addr160:
                                                                                                                                       }
                                                                                                                                       §§goto(addr208);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr439:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_.y = 0;
                                                                                                                                 break loop12;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              addr430:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 addr431:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    addr432:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop19:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                §§goto(addr435);
                                                                                                                                             }
                                                                                                                                             addr434:
                                                                                                                                          }
                                                                                                                                          addr414:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                          while(_loc7_ && param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr434);
                                                                                                                                          }
                                                                                                                                          §§goto(addr426);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr385:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc5_.id = "PIG_HELMET";
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr339);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr419);
                                                                                                      }
                                                                                                      addr291:
                                                                                                   }
                                                                                                   §§goto(addr430);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   addr392:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§goto(addr414);
                                                                                                            }
                                                                                                            §§goto(addr432);
                                                                                                         }
                                                                                                         §§goto(addr419);
                                                                                                      }
                                                                                                      §§goto(addr431);
                                                                                                   }
                                                                                                }
                                                                                                continue loop43;
                                                                                             }
                                                                                             addr280:
                                                                                          }
                                                                                          §§goto(addr291);
                                                                                       }
                                                                                       addr272:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                              §§goto(addr266);
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               addr338:
                                                            }
                                                            §§goto(addr385);
                                                         }
                                                         §§goto(addr388);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr439);
                                       }
                                    }
                                 }
                                 §§goto(addr338);
                              }
                              continue loop0;
                              addr74:
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  §§goto(addr74);
               }
               return;
            }
         }
      }
      
      private function §0!§() : void
      {
      }
      
      public function §`S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§4!@§.§-"+§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr185:
                  while(true)
                  {
                     this.§<",§(this.§]q§.§"!q§,false);
                     addr191:
                     while(true)
                     {
                     }
                  }
                  addr185:
               }
               while(true)
               {
                  this.§<",§(this.§-R§.§#!D§(§6!Q§.§#6§),false);
                  while(true)
                  {
                     this.§<",§(this.§-R§.§#!D§(§6!Q§.§;"#§),true);
                     while(_loc1_)
                     {
                        this.§<",§(this.§-R§.§#!D§(§6!Q§.§!"%§),true);
                        loop4:
                        for(; _loc1_; if(_loc1_ || this)
                        {
                           continue loop0;
                        })
                        {
                           this.§<",§(this.§#!8§.§[!l§,true);
                           while(true)
                           {
                              this.§<",§(this.§7R§.sprite,true);
                              loop6:
                              while(_loc1_ || _loc1_)
                              {
                                 this.§<",§(this.§-R§.§#!D§(§6!Q§.§+f§),true);
                                 loop7:
                                 do
                                 {
                                    this.§<",§(this.§]q§.§>,§,false);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop6;
                                       loop10:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          while(true)
                                          {
                                             this.§<",§(this.§-R§.§#!D§(§6!Q§.§2!A§),true);
                                             if(!(_loc1_ || _loc2_))
                                             {
                                                continue loop10;
                                             }
                                             if(_loc1_)
                                             {
                                                break;
                                             }
                                             addr55:
                                             while(!_loc2_)
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   this.§<",§(this.§]q§.§=h§,false);
                                                   continue loop10;
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr191);
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 while(!_loc1_);
                                 
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
               §§push(§4!@§.§-"+§);
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr55);
               }
               §§goto(addr23);
            }
         }
         §§goto(addr185);
      }
      
      protected function §<",§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.sprite);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_ || param2)
                  {
                     addr53:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§'_§.§=!c§);
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
                           if(!_loc4_)
                           {
                              §§push(§'_§.§=!c§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(!(_loc4_ && param2))
                                 {
                                    continue loop0;
                                 }
                                 addr107:
                                 if(_loc4_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc5_ || _loc3_)
                                 {
                                    param2 = §§pop();
                                    loop5:
                                    while(_loc5_ || param2)
                                    {
                                       _loc3_.x = (param1 / §"!P§.§#X§ + this.§8!j§.§ !2§ - §"!P§.§2'§ / §"!P§.§#X§) * §,^§;
                                       while(true)
                                       {
                                          _loc3_.y = (param2 / §"!P§.§#X§ + this.§8!j§.§@!j§ - §"!P§.§0,§ / §"!P§.§#X§) * §,^§;
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       return _loc3_;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §4!5§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!_loc5_)
         {
            _loc3_.x = (param1 / §,^§ + §"!P§.§2'§ / §"!P§.§#X§ - this.§8!j§.§ !2§) * §"!P§.§#X§;
            if(_loc6_ || param1)
            {
               _loc3_.y = (param2 / §,^§ + §"!P§.§0,§ / §"!P§.§#X§ - this.§8!j§.§@!j§) * §"!P§.§#X§;
            }
         }
         var _loc4_:Number = Math.max(§'_§.§=!c§,§'_§.§<e§);
         if(!_loc5_)
         {
            _loc3_.x *= _loc4_;
         }
         do
         {
            _loc3_.y *= _loc4_;
         }
         while(_loc5_ && param2);
         
         return _loc3_;
      }
      
      public function §=!U§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§#!8§.addObject(param1,param2,param3);
         }
      }
      
      public function §;!u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§`V§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§`V§);
                     addr84:
                     loop3:
                     while(true)
                     {
                        §§pop().visible = true;
                        addr86:
                        while(true)
                        {
                           §§push(this.§`V§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        addr52:
                        §§pop().alpha = 0;
                        addr61:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           §§goto(addr86);
                        }
                     }
                  }
                  addr82:
               }
               while(true)
               {
                  this.§!C§ = 0;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr52);
                  §§goto(addr61);
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr82);
      }
      
      public function §[!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%"+§ = new §7;§(§,g§.§-!i§,§,g§.§+!O§);
         }
      }
      
      public function §7q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%"+§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§]q§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§]q§);
                     addr578:
                     while(true)
                     {
                        §§pop().dispose();
                        addr579:
                        while(true)
                        {
                           this.§]q§ = null;
                           addr560:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr576:
               }
               loop1:
               while(true)
               {
                  §§push(this.§#!8§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§#!8§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr548:
                                 while(true)
                                 {
                                    if(!(_loc1_ || this))
                                    {
                                       break loop2;
                                    }
                                    this.§#!8§ = null;
                                    while(true)
                                    {
                                       this.§9!m§ = null;
                                       addr531:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr547:
                           }
                           else
                           {
                              §§goto(addr576);
                           }
                           addr462:
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           addr469:
                           loop13:
                           while(true)
                           {
                              §§push(this.§8!j§);
                              if(_loc1_ || _loc1_)
                              {
                                 if(§§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc2_ && this)
                                          {
                                             continue loop1;
                                          }
                                          §§push(this.§8!j§);
                                          while(true)
                                          {
                                             §§pop().clear();
                                             loop16:
                                             while(_loc1_ || _loc1_)
                                             {
                                                addr443:
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   this.§8!j§ = null;
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      addr401:
                                                      if(_loc1_ || this)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               addr412:
                                                               while(true)
                                                               {
                                                                  §§push(this.§-R§);
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr394:
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc2_ && _loc2_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§push(this.§-R§);
                                                                              break;
                                                                           }
                                                                           while(!(_loc2_ && this))
                                                                           {
                                                                              §§goto(addr462);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§?=§);
                                                                              addr525:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().clear();
                                                                                 addr526:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§?=§ = null;
                                                                                    addr505:
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       addr489:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.native);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   addr499:
                                                                                                   this.native.clear();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.native = null;
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   addr500:
                                                                                                }
                                                                                                §§goto(addr500);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§7R§);
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§7R§);
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().dispose();
                                                                                                   break loop16;
                                                                                                }
                                                                                             }
                                                                                             addr470:
                                                                                          }
                                                                                          §§goto(addr499);
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§-R§ = null;
                                                                           addr352:
                                                                           while(!(_loc2_ && this))
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr548);
                                                                           }
                                                                           addr327:
                                                                           break loop14;
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 this.§!o§ = 0;
                                                                                 while(true)
                                                                                 {
                                                                                    this.§<I§ = 0;
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       this.mReadyToRun = false;
                                                                                       while(true)
                                                                                       {
                                                                                          this.§&W§ = false;
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             this.§!C§ = §,g§.§8"=§;
                                                                                             loop39:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§>@§);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§>@§);
                                                                                                         addr290:
                                                                                                         loop66:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push((§§pop() as §3!g§).§+h§);
                                                                                                            addr293:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr294:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop66;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         loop52:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc1_ || this))
                                                                                                            {
                                                                                                               continue loop40;
                                                                                                            }
                                                                                                            §§push(this.§6!x§);
                                                                                                            loop61:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().removeEventListener(Event.COMPLETE,this.§1!F§);
                                                                                                               loop62:
                                                                                                               for(; _loc1_; continue loop61)
                                                                                                               {
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     continue loop61;
                                                                                                                  }
                                                                                                                  loop47:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§=G§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().removeEventListener(Event.COMPLETE,this.§>H§);
                                                                                                                        §§push(this.§=G§);
                                                                                                                        addr221:
                                                                                                                        break loop62;
                                                                                                                        if(_loc2_ && _loc1_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr184:
                                                                                                                        if(!(_loc2_ && this))
                                                                                                                        {
                                                                                                                           §§pop().removeEventListener(Event.CANCEL,this.§=!t§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                              addr231:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§0P§ = null;
                                                                                                                                 break loop47;
                                                                                                                              }
                                                                                                                              addr67:
                                                                                                                              if(!(_loc1_ || _loc1_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc1_ || _loc1_)
                                                                                                                              {
                                                                                                                                 loop58:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.mReadyToRun = false;
                                                                                                                                    if(_loc1_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr65:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop52;
                                                                                                                                       }
                                                                                                                                       §§goto(addr67);
                                                                                                                                       continue loop58;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop60:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       addr112:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§1!A§);
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc1_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_ && _loc1_)
                                                                                                                                                   {
                                                                                                                                                      continue loop62;
                                                                                                                                                   }
                                                                                                                                                   addr64:
                                                                                                                                                   this.§1!A§.removeEventListeners();
                                                                                                                                                }
                                                                                                                                                §§goto(addr65);
                                                                                                                                             }
                                                                                                                                             §§goto(addr28);
                                                                                                                                          }
                                                                                                                                          §§goto(addr64);
                                                                                                                                          §§goto(addr112);
                                                                                                                                       }
                                                                                                                                       continue loop62;
                                                                                                                                       addr42:
                                                                                                                                    }
                                                                                                                                    addr116:
                                                                                                                                    addr146:
                                                                                                                                    while(_loc1_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(§%K§.§`9§);
                                                                                                                                          if(_loc1_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop52;
                                                                                                                                             }
                                                                                                                                             §§goto(addr42);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().color = 0;
                                                                                                                                                continue loop60;
                                                                                                                                             }
                                                                                                                                             addr106:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr347:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.sprite);
                                                                                                                                             if(_loc1_)
                                                                                                                                             {
                                                                                                                                                if(§§pop().numChildren <= 0)
                                                                                                                                                {
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                                §§push(this.sprite);
                                                                                                                                             }
                                                                                                                                             §§pop().removeChildAt(0,true);
                                                                                                                                             §§goto(addr347);
                                                                                                                                          }
                                                                                                                                          addr319:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop63:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§!"2§();
                                                                                                                                             §§goto(addr116);
                                                                                                                                             continue loop63;
                                                                                                                                          }
                                                                                                                                          §§goto(addr269);
                                                                                                                                          addr113:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr269);
                                                                                                                                       }
                                                                                                                                       §§goto(addr271);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr28:
                                                                                                                              }
                                                                                                                              loop65:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr227:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§!!,§ = null;
                                                                                                                                    §§goto(addr231);
                                                                                                                                    continue loop65;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue loop47;
                                                                                                                           }
                                                                                                                           addr149:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§6!x§);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop62;
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop52;
                                                                                                                              }
                                                                                                                              §§goto(addr113);
                                                                                                                           }
                                                                                                                           §§goto(addr184);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr209);
                                                                                                                  }
                                                                                                               }
                                                                                                               loop49:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr221);
                                                                                                                  }
                                                                                                                  addr238:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§`V§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().visible = false;
                                                                                                                        break loop49;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop39;
                                                                                                               }
                                                                                                               §§goto(addr244);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§`V§);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr238);
                                                                                                         }
                                                                                                         §§goto(addr227);
                                                                                                      }
                                                                                                      §§goto(addr242);
                                                                                                      §§goto(addr271);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr290);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr394:
                                                                     }
                                                                     if(this.sprite)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §§goto(addr394);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  break;
                                                                  §§goto(addr412);
                                                               }
                                                               §§pop().dispose();
                                                               §§goto(addr394);
                                                               addr362:
                                                            }
                                                            §§goto(addr531);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§?=§);
                                                            if(_loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop().§4X§)
                                                                  {
                                                                  }
                                                                  §§goto(addr523);
                                                               }
                                                               addr521:
                                                            }
                                                            §§goto(addr525);
                                                         }
                                                         addr517:
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                }
                                                §§goto(addr505);
                                             }
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§7R§ = null;
                                                   §§goto(addr455);
                                                }
                                                else
                                                {
                                                   §§goto(addr536);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr499);
                                    }
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          §§goto(addr470);
                                       }
                                       break;
                                       §§goto(addr352);
                                    }
                                    §§goto(addr526);
                                 }
                                 §§goto(addr362);
                              }
                              §§goto(addr435);
                           }
                        }
                        §§goto(addr579);
                     }
                     while(true)
                     {
                        §§push(this.§?=§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              §§goto(addr517);
                           }
                           §§goto(addr489);
                        }
                        §§goto(addr521);
                        §§goto(addr531);
                     }
                  }
                  §§goto(addr547);
               }
            }
            §§goto(addr578);
         }
         §§goto(addr394);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §#j§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0P§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§0P§.toString();
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
                        while(true)
                        {
                           §§pop();
                           addr171:
                           while(true)
                           {
                              §§push(§%K§.§,!>§());
                              addr149:
                              while(true)
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        addr170:
                     }
                     while(true)
                     {
                        loop7:
                        for(; !§§pop(); loop10:
                        while(true)
                        {
                           if(_loc4_ && param1)
                           {
                              continue loop7;
                           }
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop11:
                              while(true)
                              {
                                 §§pop();
                                 loop12:
                                 while(true)
                                 {
                                    §§push(this.§!!,§);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(§§pop().§4C§);
                                       if(_loc5_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!(_loc4_ && param2))
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr170);
                                                }
                                                break;
                                             }
                                             continue loop10;
                                          }
                                          continue loop11;
                                       }
                                       addr73:
                                       if(_loc4_ && param3)
                                       {
                                          continue loop1;
                                       }
                                       while(§§pop())
                                       {
                                          if(!(_loc5_ || this))
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop12;
                                          }
                                          if(_loc5_ || param2)
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                break loop7;
                                             }
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr125);
                                             }
                                             §§goto(addr171);
                                          }
                                          else
                                          {
                                             §§goto(addr129);
                                          }
                                       }
                                       §§push(this.§!n§(param1,true,param2,param3));
                                       if(!_loc4_)
                                       {
                                          if(_loc5_ || param3)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr163);
                                       }
                                       addr125:
                                       return this.§]!8§(param1,param2,param3);
                                       §§goto(addr171);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr149);
                              }
                           }
                           §§goto(addr90);
                        },continue loop2)
                        {
                           while(true)
                           {
                              §§push(this.§!!,§);
                              addr132:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 continue loop7;
                              }
                           }
                        }
                        addr163:
                        return §§pop();
                     }
                  }
               }
               if(_loc4_ && param1)
               {
                  continue;
               }
               §§goto(addr73);
               §§push(Boolean(§§pop()));
            }
         }
         §§goto(addr125);
      }
      
      protected function §!n§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§[4§)
            {
               if(_loc7_ || param3)
               {
                  addr29:
                  §§push(param1);
                  if(_loc7_)
                  {
                     §§push(§§pop() * 0.2);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param2))
                        {
                           param1 = §§pop();
                           if(_loc7_ || param1)
                           {
                              §§push(§%K§.§^!d§);
                              if(_loc7_ || this)
                              {
                                 if(§§pop())
                                 {
                                    addr68:
                                    if(!_loc6_)
                                    {
                                       §§push(§%K§.§^!d§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc7_)
                                    {
                                       §§push(this);
                                       §§push(this.§<I§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§<I§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§!o§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   §§pop().§!o§ = §§pop();
                                                }
                                             }
                                             else
                                             {
                                                this.§#!8§.§="3§(param1);
                                                while(true)
                                                {
                                                   this.§!o§ = 0;
                                                   addr142:
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         addr144:
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                addr152:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§?=§.§7!V§(this.§!o§));
                                                if(_loc7_ || param2)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr187:
                                                   addr74:
                                                   while(true)
                                                   {
                                                      this.§7R§.update(param1,param4);
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   return §§pop();
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr68);
                              }
                              §§pop().speed = 0.2;
                           }
                           §§goto(addr68);
                        }
                     }
                  }
                  §§goto(addr68);
               }
            }
            §§goto(addr68);
         }
         §§goto(addr29);
      }
      
      private function §]!8§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Number = NaN;
         §§push(§5!e§.§ !B§);
         if(_loc7_ || param3)
         {
            §§push(§§pop() * 1000);
            if(!(_loc6_ && param2))
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               if(this.§!!,§)
               {
                  loop17:
                  do
                  {
                     §§push(param1);
                     if(!(_loc6_ && this))
                     {
                        §§push(this.§!!,§.speed);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr345:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr283:
                           §§push(param1);
                           if(!(_loc7_ || param1))
                           {
                              continue;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    addr304:
                                    _loc5_ = §§pop();
                                    if(_loc7_ || param1)
                                    {
                                       continue loop17;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§<I§);
                                       if(_loc7_ || this)
                                       {
                                          §§goto(addr283);
                                       }
                                       §§goto(addr304);
                                    }
                                    addr347:
                                 }
                                 §§goto(addr345);
                              }
                              while(true)
                              {
                                 param1 = §§pop();
                                 §§goto(addr347);
                              }
                              addr346:
                           }
                           §§goto(addr304);
                        }
                     }
                     §§goto(addr346);
                  }
                  while(!(_loc7_ || param1));
                  
                  loop24:
                  while(true)
                  {
                     §§push(this.§<I§);
                     addr160:
                     while(true)
                     {
                        §§push(_loc4_);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && this))
                           {
                              §§push(_loc5_);
                              loop2:
                              while(!(_loc6_ && param3))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!(_loc6_ && param3))
                                    {
                                       addr196:
                                       §§push(_loc5_);
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(this.§,z§);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + _loc4_);
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §§push(this.§!!,§);
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§pop().step(this);
                                                         addr223:
                                                         loop3:
                                                         while(_loc7_ || param3)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§,z§);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() + _loc4_);
                                                               }
                                                               §§pop().§,z§ = §§pop();
                                                               loop4:
                                                               for(; !_loc6_; §§push(this),§§push(_loc5_),if(_loc7_ || param1)
                                                               {
                                                                  §§push(§§pop() - this.§<I§);
                                                               },§§pop().§!n§(§§pop(),true,param2,param3),if(_loc6_)
                                                               {
                                                                  continue;
                                                               },if(_loc7_ || param3)
                                                               {
                                                                  §§goto(addr76);
                                                               },while(true)
                                                               {
                                                                  continue loop24;
                                                               })
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§<I§);
                                                                     addr101:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_ || param2)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§push(param1);
                                                                                    while(_loc6_ && param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§,z§);
                                                                                                break loop2;
                                                                                             }
                                                                                             addr265:
                                                                                          }
                                                                                          break loop2;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr76:
                                                                                    addr78:
                                                                                 }
                                                                                 continue loop4;
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§,z§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() + _loc4_);
                                                                  }
                                                                  §§pop().§,z§ = §§pop();
                                                                  break loop3;
                                                               }
                                                               addr272:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§!!,§);
                                                               addr270:
                                                               while(true)
                                                               {
                                                                  §§pop().step(this);
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            addr233:
                                                            while(true)
                                                            {
                                                               this.§!n§(_loc4_,false,param2,param3);
                                                               §§goto(addr240);
                                                            }
                                                         }
                                                         addr223:
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr98);
                                             }
                                          }
                                          §§goto(addr265);
                                       }
                                       addr196:
                                    }
                                    §§goto(addr223);
                                 }
                                 else
                                 {
                                    §§push(this.§<I§);
                                 }
                                 §§goto(addr256);
                              }
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    §§goto(addr268);
                                 }
                                 §§goto(addr233);
                              }
                           }
                           §§goto(addr196);
                        }
                        continue loop24;
                     }
                  }
                  addr319:
               }
               else
               {
                  §§push(this.§!n§(_loc4_,true,param2,param3));
                  if(_loc7_ || param2)
                  {
                     if(!(_loc6_ && param3))
                     {
                        if(_loc7_)
                        {
                           if(_loc7_ || param3)
                           {
                              return §§pop();
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr319);
         }
         §§goto(addr37);
      }
      
      private function §"!h§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || param1)
         {
            this.§]q§.update(param1);
            loop0:
            while(true)
            {
               this.§#!8§.§0!j§(param1,param2);
               loop1:
               while(true)
               {
                  this.§=!i§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§!C§);
                     loop3:
                     while(true)
                     {
                        §§push(§,g§.§8"=§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§`V§);
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§`V§);
                                          addr122:
                                          while(true)
                                          {
                                             §§pop().visible = false;
                                             loop18:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§%"+§);
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§%"+§);
                                                               addr86:
                                                               while(true)
                                                               {
                                                                  if(!§§pop().§5!I§(this.§8!j§,param1))
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr109:
                                                                     addr109:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               loop11:
                                                               while(_loc6_)
                                                               {
                                                                  loop12:
                                                                  while(!_loc5_)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(§,g§.§8"=§);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 addr221:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(-Math.abs(this.§!C§ - _loc3_));
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr185:
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§push(§,g§.§4H§);
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   addr198:
                                                                                                   §§push(§§pop() / _loc3_);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr203:
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§goto(addr198);
                                                                                             }
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          §§goto(addr198);
                                                                                       }
                                                                                       §§goto(addr185);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§!C§);
                                                                                          if(!(_loc6_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() + param1);
                                                                                          }
                                                                                          §§pop().§!C§ = §§pop();
                                                                                          continue loop20;
                                                                                       }
                                                                                       addr235:
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(this.§`V§);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(this.§`V§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().alpha = _loc4_;
                                                                        continue loop11;
                                                                     }
                                                                     addr152:
                                                                  }
                                                                  §§goto(addr152);
                                                               }
                                                               continue loop6;
                                                               addr44:
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            this.§8!j§.updateCamera(param1);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     this.§?=§.§#1§();
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop18;
                                                            }
                                                            continue loop18;
                                                         }
                                                      }
                                                      §§goto(addr86);
                                                   }
                                                   return;
                                                   addr58:
                                                   addr78:
                                                }
                                                §§goto(addr221);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr78);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr235);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr248);
      }
      
      public function §7!a§(param1:Number) : void
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
               if(_loc3_ || _loc2_)
               {
                  §§push(1000);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr55:
                     §§push(1000);
                     if(!(_loc2_ && param1))
                     {
                        addr64:
                        §§pop().§#!z§(§§pop() * §§pop());
                        do
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        while(this.§<!Y§(), _loc2_ && this);
                        
                        return;
                        addr34:
                     }
                  }
               }
               addr90:
               while(true)
               {
                  §§pop().§="3§(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr34);
      }
      
      public function §=!i§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§``§ = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§<I§);
            §§push(this.§1R§);
            if(_loc5_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc5_ || this)
               {
                  §§goto(addr55);
               }
            }
            §§goto(addr59);
         }
         addr55:
         if(this.§^![§ != null)
         {
            addr59:
            for each(_loc1_ in this.§^![§)
            {
               if(_loc5_)
               {
                  _loc1_.addTrail();
               }
            }
            if(!_loc5_)
            {
            }
            §§goto(addr96);
         }
         this.§1R§ = this.§<I§;
         addr96:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§``§ = null;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc3_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!_loc4_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc3_)
               {
                  §§push(0);
                  if(_loc3_ || this)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(this.§#!8§);
                           if(_loc3_)
                           {
                              §§push(true);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(!(_loc4_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr69:
                                          §§push(this.§#!8§);
                                          if(!_loc4_)
                                          {
                                             §§push(true);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().§#"!§(§§pop()));
                                                if(!(_loc4_ && this))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            _loc2_.§8C§.mTryToScream = §0;§.§2!_§;
                                                            if(_loc4_)
                                                            {
                                                            }
                                                            addr137:
                                                            §§push(this);
                                                            §§push(this.mPigsAnimationTimer2);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().mPigsAnimationTimer2 = §§pop();
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§goto(addr155);
                                                            }
                                                            §§goto(addr170);
                                                         }
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(_loc3_ || param1)
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§#!8§.getPigCount()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                      }
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr137);
                  }
                  addr155:
                  §§goto(addr154);
               }
               addr154:
               if(this.mPigsAnimationTimer2 <= 0)
               {
                  if(!_loc4_)
                  {
                     addr158:
                     §§push(this.§#!8§);
                     if(!_loc4_)
                     {
                        addr162:
                        §§push(true);
                        if(_loc3_)
                        {
                           addr165:
                           if(§§pop().isPigsAlive(§§pop()))
                           {
                              addr171:
                              _loc2_ = this.§#!8§.§#"!§(true);
                              addr170:
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc2_.§8C§.mTryToBlink = §0;§.§]!7§;
                                       if(_loc3_ || this)
                                       {
                                          §§push(this);
                                          §§push(250 + Math.random() * 500);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() + 2000 / (3 + this.§#!8§.getPigCount()));
                                          }
                                          §§pop().mPigsAnimationTimer2 = §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr170);
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
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
                        §§push(§`!E§.§-4§);
                        addr160:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr161:
                           while(true)
                           {
                              param6 = §§pop();
                              addr162:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr158:
                  }
                  while(true)
                  {
                     §3!s§.addScore(param1,param2);
                     addr142:
                     while(true)
                     {
                        this.§1!A§.addScore(param1);
                        loop7:
                        while(_loc8_)
                        {
                           §§push(param3);
                           if(!(_loc7_ && this))
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
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   addr44:
                                                   if(_loc8_)
                                                   {
                                                      this.§6D§(param1.toString(),param4,param5,800,param6,0,0);
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               §§goto(addr25);
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§>k§);
                                                         if(_loc8_ || param2)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§push(!§§pop());
                                                               continue loop15;
                                                            }
                                                            addr104:
                                                            addr104:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               addr127:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop16;
                                                         §§goto(addr44);
                                                      }
                                                      addr25:
                                                      return;
                                                      addr114:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr25);
                                             }
                                          }
                                       }
                                       §§goto(addr104);
                                    }
                                    continue;
                                    addr99:
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr161);
         }
         §§goto(addr142);
      }
      
      public function §6D§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            §§push(param5);
            if(_loc9_ || param3)
            {
               if(§§pop() == -9999)
               {
                  if(_loc9_)
                  {
                     addr86:
                     §§push(§`!E§.§,"-§);
                     if(!_loc8_)
                     {
                        addr91:
                        param5 = §§pop();
                     }
                     §§goto(addr91);
                  }
                  while(true)
                  {
                     §§goto(addr29);
                  }
               }
               addr29:
               while(true)
               {
                  this.§-R§.§'p§(§`!E§.§5!B§,§6!Q§.§2!A§,§`!E§.§7!6§,param2,param3,param4,param1,param5,param6,param7);
                  if(_loc9_ || this)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr86);
      }
      
      public function §8!J§(param1:§``§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§^![§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§^![§ = new Array();
                  addr78:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §7!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§7R§.§7!_§();
            while(true)
            {
               this.§#!8§.§4![§();
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     this.§>k§ = true;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §32§(param1:§``§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-R§.§ "%§(§6!Q§.§#6§);
         }
         while(true)
         {
            §§push(this.§^![§);
            loop1:
            while(true)
            {
               if(§§pop().indexOf(param1) >= 0)
               {
                  if(!_loc2_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push(this.§^![§);
                     while(true)
                     {
                        §§pop().splice(this.§^![§.indexOf(param1),1);
                        addr24:
                        §§goto(addr20);
                     }
                  }
                  while(true)
                  {
                     addr54:
                     if(_loc3_ || _loc3_)
                     {
                        this.§^![§ = null;
                     }
                     if(_loc3_)
                     {
                        addr20:
                        while(true)
                        {
                           §§push(this.§^![§);
                           if(_loc3_ || this)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     continue;
                     addr20:
                     return;
                  }
               }
               §§goto(addr24);
            }
         }
      }
      
      public function §59§(param1:§%Q§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§9!m§ = this.§#!8§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr42:
                  §§push(§3"!§.§&S§);
                  if(!_loc8_)
                  {
                     addr68:
                     §§push(Number(§§pop()));
                     if(!(_loc8_ && param3))
                     {
                        addr67:
                        §§push(Number(§§pop()));
                        addr54:
                     }
                     var _loc4_:* = §§pop();
                     if(_loc7_)
                     {
                        §§push(param1.§=v§);
                        if(_loc7_ || this)
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
                                    §§push(this.§9!m§);
                                    loop2:
                                    while(true)
                                    {
                                       §§pop().§+!<§(param1.§=v§);
                                       addr153:
                                       while(true)
                                       {
                                          addr112:
                                          while(true)
                                          {
                                             §§push(this.§9!m§);
                                             if(!_loc7_)
                                             {
                                                break;
                                                addr119:
                                             }
                                             §§pop().§8C§.§@4§();
                                             while(!(_loc8_ && param3))
                                             {
                                             }
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(param1.§`#§);
                                 if(_loc8_ && this)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr157:
                              §§push(-§§pop());
                              if(!(_loc8_ && param1))
                              {
                                 addr165:
                                 §§push(§§pop() * param2);
                                 if(_loc7_)
                                 {
                                    addr169:
                                    §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                    if(!_loc8_)
                                    {
                                       addr180:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(_loc4_);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(§§pop() * param2);
                                       if(!_loc8_)
                                       {
                                          addr194:
                                          §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                          if(!_loc8_)
                                          {
                                             addr205:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc6_:* = §§pop();
                                          if(!_loc8_)
                                          {
                                             this.§9!m§.§;E§(new b2Vec2(_loc5_,_loc6_),false,true);
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             this.camera.§8!;§(§"!P§.§-!"§);
                                             do
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   §§push(this.§0P§);
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr210);
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§0P§);
                                                   }
                                                   §§pop().§59§(this.§?=§.§4"'§,param1.x,param1.y,param2,param3);
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             while(_loc8_);
                                             
                                             addr210:
                                             return;
                                          }
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr180);
                              }
                           }
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr54);
               }
               else
               {
                  §§push(§3"!§.§^X§);
                  if(_loc7_ || param3)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        §§goto(addr67);
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr67);
            }
         }
         §§goto(addr42);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&W§ = true;
         }
      }
      
      private function §<!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§&W§);
            loop0:
            for(; §§pop(); if(_loc2_ && _loc1_)
            {
               continue;
            },§§push(!§§pop()),if(_loc1_)
            {
               if(!_loc2_)
               {
                  §§goto(addr124);
               }
               §§goto(addr154);
            },§§goto(addr140))
            {
               loop1:
               while(true)
               {
                  this.§&W§ = false;
                  addr172:
                  loop2:
                  while(true)
                  {
                     §§push(this.activeObject);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() is §9`§);
                        addr154:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§#!8§.§ !3§();
                                    loop14:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr94:
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§0P§);
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc1_ || this)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      addr48:
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§push(this.§0P§);
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         addr76:
                                                         addr68:
                                                         while(true)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§goto(addr24);
                                                         }
                                                         break loop0;
                                                         §§goto(addr48);
                                                      }
                                                      addr148:
                                                   }
                                                   addr61:
                                                   if(!(_loc1_ || this))
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.activeObject);
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push((§§pop() as §9`§).§+^§);
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr156:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr137:
                                                                  }
                                                                  addr140:
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         this.§1!;§ = true;
                                                         §§goto(addr148);
                                                         §§goto(addr76);
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr68);
                                                }
                                                addr24:
                                                return;
                                             }
                                             break;
                                          }
                                          §§pop().§ Z§(this.§?=§.§4"'§);
                                          §§goto(addr61);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(this.activeObject);
                                       continue loop3;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr124:
                           }
                           §§goto(addr156);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr172);
      }
      
      public function §7!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#!8§.§7!E§();
         }
      }
      
      public function §@"%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§#!8§.§;e§();
         }
      }
      
      public function §-!R§() : §'!e§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!e§ = new §'!e§();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.mScoreGold = this.§]"§.mScoreGold;
            loop0:
            while(true)
            {
               _loc1_.mScoreSilver = this.§]"§.mScoreSilver;
               while(true)
               {
                  this.§8!j§.writeCameraInformation(_loc1_);
                  addr84:
                  while(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        this.§#!8§.writeObjectInformation(_loc1_);
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§7R§.writeSlingshotInformation(_loc1_);
            do
            {
               _loc1_.theme = this.§]q§.getCurrentThemeName();
            }
            while(_loc2_);
            
            if(!(_loc3_ || this))
            {
               continue;
            }
            if(!(_loc2_ && _loc3_))
            {
               break;
            }
            §§goto(addr84);
         }
         return _loc1_;
      }
      
      public function §'!W§() : int
      {
         return this.§]"§.mScoreSilver;
      }
      
      public function §8!r§() : int
      {
         return this.§]"§.mScoreGold;
      }
      
      public function § !t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]"§.mScoreSilver = param1;
         }
      }
      
      public function §<r§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]"§.mScoreGold = param1;
         }
      }
      
      public function §`a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§[!<§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§[!<§);
                     addr87:
                     while(true)
                     {
                        §§pop().§,!n§(param1,param2);
                        addr90:
                        while(true)
                        {
                        }
                     }
                     addr57:
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr19);
                  }
               }
               while(true)
               {
                  §§push(this.§8!j§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr48:
                           this.§8!j§.updateCamera(0);
                        }
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr57);
                     }
                     break;
                  }
                  §§goto(addr48);
               }
               addr19:
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr90);
      }
      
      public function get §!!E§() : §'!e§
      {
         return this.§]"§;
      }
      
      public function get §0n§() : §^!!§
      {
         return this.§#!8§;
      }
      
      protected function get §0!^§() : §%K§
      {
         return this.§,!h§;
      }
      
      public function get §]!c§() : int
      {
         return §]"1§;
      }
   }
}
