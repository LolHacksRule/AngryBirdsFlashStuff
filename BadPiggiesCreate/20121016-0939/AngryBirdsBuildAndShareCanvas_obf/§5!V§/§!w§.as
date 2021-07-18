package §5!V§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"v§.§3!w§;
   import §"v§.§4^§;
   import §"v§.§9"§;
   import §"v§.§^H§;
   import §%c§.§=!X§;
   import §&"5§.§1!A§;
   import §&"5§.§3s§;
   import §&"5§.§7!P§;
   import §'@§.§^J§;
   import §+!o§.§<Y§;
   import §+!o§.§>G§;
   import §+!o§.§?"-§;
   import §+!o§.§]"5§;
   import §,I§.§7!K§;
   import §2!]§.§+!V§;
   import §2"=§.b2Vec2;
   import §3"5§.§5!q§;
   import §6p§.§?%§;
   import §9=§.§0!5§;
   import §9=§.§=!k§;
   import §;'§.§return§;
   import §=!#§.§`"=§;
   import §=!M§.§9!P§;
   import §>!E§.§>"!§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!w§
   {
      
      private static const §!!j§:int = 20;
      
      public static const §[!c§:Number;
      
      public static const §]!U§:Number;
      
      public static const §4!-§:Number = 0.05;
      
      public static const §+b§:Number;
      
      public static const §'"§:Number;
      
      public static const §!!l§:§^J§;
      
      public static var §`"5§:Number = 1;
      
      protected static var §`!_§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!j§ = 20;
            while(true)
            {
               §[!c§ = §=!X§.§^!N§;
               loop1:
               for(; _loc1_ || _loc2_; if(_loc2_ && §!w§)
               {
                  continue;
               },§+b§ = §=!X§.§5!P§ * §4!-§,§§goto(addr104))
               {
                  §]!U§ = §=!X§.§5!P§;
                  while(true)
                  {
                     §4!-§ = 1 / 20;
                     while(!(_loc2_ && _loc1_))
                     {
                        continue loop1;
                        loop7:
                        while(_loc1_ || _loc2_)
                        {
                           §`!_§ = §9"§.§4!§;
                           if(!(_loc1_ || §!w§))
                           {
                              continue;
                           }
                           addr35:
                           if(_loc1_ || _loc2_)
                           {
                              return;
                           }
                           addr104:
                           while(_loc1_)
                           {
                              §`"5§ = 1;
                              continue loop7;
                              §§goto(addr35);
                           }
                           while(!(_loc2_ && _loc1_))
                           {
                              §!!l§ = new §^J§(13 - 3);
                              §§goto(addr63);
                           }
                           addr63:
                           while(true)
                           {
                              §§push(§§findproperty(§'"§));
                              §§push(§[!c§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop() * §4!-§);
                              }
                              §§pop().§'"§ = §§pop();
                              §§goto(addr89);
                           }
                           addr89:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      protected var §&!^§:§?"-§;
      
      private var §?!j§:§]"5§;
      
      private var §1F§:Array = null;
      
      protected var §+!S§:§+!V§;
      
      public var §[g§:§4!#§;
      
      protected var §43§:§?!b§;
      
      protected var § Y§:§`"=§;
      
      protected var §&!3§:§[!6§;
      
      protected var §""4§:§-5§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §9"=§:Boolean = false;
      
      protected var §["§:Boolean = false;
      
      protected var §#!4§:Boolean = false;
      
      public var §&Q§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §;!N§:Number;
      
      public var §," §:Number;
      
      private var §5N§:Number;
      
      public var §"!B§:§^H§;
      
      public var §3"9§:Boolean = false;
      
      private var §?!f§:§^!c§;
      
      private var §`!5§:Sprite;
      
      protected var §"!J§:§9"§;
      
      protected var §4"9§:§return§ = null;
      
      private var §?!w§:EventDispatcher;
      
      private var §-!1§:Array;
      
      private var §""#§:Array;
      
      protected var §2g§:§?%§;
      
      private var §#E§:§7!K§;
      
      protected var §2"!§:§7!P§;
      
      protected var §7!a§:§1!A§;
      
      private var §8G§:§3s§;
      
      private var §]!p§:§3s§;
      
      private var §,E§:§3s§;
      
      private var § "3§:Stage;
      
      private var §%!K§:§#k§;
      
      protected var §,"1§:§>"!§;
      
      protected var §8+§:§>"!§;
      
      protected var §0!?§:Number = 0.0;
      
      protected var §]" §:String;
      
      private var §+F§:Boolean;
      
      protected var §-!P§:Boolean;
      
      protected var §'g§:uint = 1.417339207E9;
      
      public var §>"+§:Boolean;
      
      public function §!w§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§""#§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§?!w§ = new EventDispatcher();
                  loop2:
                  for(; !_loc3_; if(_loc3_ && param1)
                  {
                     continue;
                  },this.§8G§ = this.§;n§(),loop7:
                  while(true)
                  {
                     addr55:
                     while(true)
                     {
                        this.§]!p§ = this.§'",§();
                        do
                        {
                           this.§,E§ = this.§^w§();
                        }
                        while(_loc3_ && param1);
                        
                        if(!(_loc4_ || param1))
                        {
                           continue loop7;
                        }
                        §§goto(addr39);
                     }
                     §§goto(addr74);
                  })
                  {
                     this.§"!B§ = new §^H§();
                     while(true)
                     {
                        this.§ "3§ = param1;
                        loop5:
                        while(!(_loc3_ && this))
                        {
                           this.§7!a§ = this.initAnimationManager(this.§2"!§);
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop5;
                              }
                              addr76:
                              if(_loc4_ || _loc2_)
                              {
                                 continue loop2;
                              }
                              addr108:
                              while(true)
                              {
                                 this.§2"!§ = §7!P§.§2=§;
                                 continue loop5;
                                 §§goto(addr76);
                              }
                              addr39:
                              if(!(_loc3_ && _loc2_))
                              {
                                 continue loop0;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public static function §@H§(param1:§]"5§, param2:§]"5§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§?k§);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.§?k§);
            if(!(_loc6_ && _loc3_))
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§2!V§);
            if(_loc5_)
            {
               §§push(§§pop() - param2.§2!V§);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §6_§(_loc3_,_loc4_);
         }
         §§goto(addr40);
      }
      
      public static function §6_§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§`!5§);
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
                        addr84:
                        do
                        {
                           §§push(Boolean(this.§+!=§));
                           if(!(_loc2_ || this))
                           {
                              continue loop2;
                           }
                        }
                        while(_loc2_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§`!5§ = this.§?!f§.§&e§;
                           }
                           addr62:
                        }
                        else
                        {
                           §§goto(addr84);
                        }
                     }
                     while(true)
                     {
                        break loop4;
                     }
                  }
                  while(true)
                  {
                     §§push(this.§`!5§);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §+!=§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§?!f§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§?!f§ = this.§2g§.§,x§ as §^!c§;
                     addr79:
                     loop3:
                     while(true)
                     {
                        §§push(this.§?!f§);
                        addr50:
                        while(!_loc2_)
                        {
                           §§pop().§#!1§ = false;
                           if(_loc1_)
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
                  §§push(this.§?!f§);
                  if(_loc1_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr50);
               }
               return §§pop();
            }
         }
         §§goto(addr79);
      }
      
      private function get §-"3§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§+!=§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr57);
                  }
               }
               return null;
            }
            §§goto(addr57);
         }
         addr57:
         return (this.§+!=§ as §^!c§).§-"3§;
      }
      
      public function get §<"%§() : §1!A§
      {
         return this.§7!a§;
      }
      
      public function get §7!J§() : §7!P§
      {
         return this.§2"!§;
      }
      
      public function get camera() : §`"=§
      {
         return this.§ Y§;
      }
      
      public function get objects() : §?"-§
      {
         return this.§&!^§;
      }
      
      public function get particles() : §-5§
      {
         return this.§""4§;
      }
      
      public function get background() : §+!V§
      {
         return this.§+!S§;
      }
      
      public function get slingshot() : §[!6§
      {
         return this.§&!3§;
      }
      
      public function get activeObject() : §]"5§
      {
         return this.§?!j§;
      }
      
      public function get borders() : §?!b§
      {
         return this.§43§;
      }
      
      public function get stage() : Stage
      {
         return this.§ "3§;
      }
      
      public function get §;!p§() : §3s§
      {
         return this.§,E§;
      }
      
      protected function get §9r§() : §3s§
      {
         return this.§8G§;
      }
      
      public function set activeObject(param1:§]"5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?!j§ = param1;
         }
      }
      
      public function set §6!R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§-!P§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§#E§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#E§);
                     addr228:
                     while(true)
                     {
                        §§pop().dispose();
                        addr229:
                        while(true)
                        {
                        }
                     }
                     addr163:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §§push(this.§8G§);
                     loop9:
                     for(; _loc1_; §§push(this.§8G§),if(!_loc1_)
                     {
                        continue;
                     },§§push(§§pop().§7!J§),if(!_loc2_)
                     {
                        §§goto(addr154);
                        §§push(Boolean(§§pop()));
                     },§§goto(addr175))
                     {
                        §§push(§§pop().§7!J§);
                        loop10:
                        while(true)
                        {
                           §§pop().dispose();
                           loop11:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 §§push(this.§,E§);
                                 loop14:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §§push(§§pop());
                                          if(_loc1_)
                                          {
                                             if(§§pop())
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §§push(this.§,E§);
                                                         if(_loc1_)
                                                         {
                                                            §§push(§§pop().§7!J§);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop21;
                                                            }
                                                            addr118:
                                                            while(_loc1_ || _loc2_)
                                                            {
                                                               §§pop().dispose();
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§2g§);
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr24);
                                                                           }
                                                                           if(!(_loc1_ || this))
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              break loop18;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§2g§);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                     addr24:
                                                                  }
                                                                  continue loop19;
                                                                  return;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop14;
                                                         addr144:
                                                      }
                                                      addr156:
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            break loop14;
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                   }
                                                   addr75:
                                                   if(_loc1_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  §§push(this.§,E§);
                                                                  continue loop14;
                                                               }
                                                               addr210:
                                                               while(true)
                                                               {
                                                                  addr177:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8G§);
                                                                     break loop9;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr126);
                                                            }
                                                         }
                                                         §§goto(addr28);
                                                         §§goto(addr75);
                                                      }
                                                      addr82:
                                                   }
                                                   addr155:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                }
                                                addr141:
                                             }
                                             §§goto(addr82);
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr155);
                                                }
                                                addr154:
                                             }
                                          }
                                          addr189:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          break loop14;
                                       }
                                       addr190:
                                    }
                                    §§goto(addr141);
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop9;
                                       }
                                       §§goto(addr229);
                                    }
                                    addr207:
                                    while(true)
                                    {
                                       §§push(this.§2"!§);
                                       addr209:
                                       while(true)
                                       {
                                          §§pop().dispose();
                                          break loop12;
                                       }
                                       continue loop12;
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc1_ || this)
                        {
                           §§goto(addr189);
                           §§push(§§pop());
                        }
                        §§goto(addr190);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§2"!§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr207);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr209);
                  §§goto(addr229);
               }
            }
            §§goto(addr228);
         }
         §§goto(addr48);
      }
      
      protected function §;n§() : §3s§
      {
         return null;
      }
      
      protected function §'",§() : §3s§
      {
         return null;
      }
      
      protected function §^w§() : §3s§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§7!P§) : §1!A§
      {
         return new §1!A§(param1);
      }
      
      public function §;p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(§?%§.§%b§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(!param1)
                     {
                        §§push(§?%§.§%b§);
                        loop1:
                        while(_loc3_)
                        {
                           §§pop().stop();
                           while(true)
                           {
                              §§push(§?%§.§%b§);
                              if(_loc3_ || this)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           return;
                        }
                        addr103:
                        §§pop().start();
                        §§goto(addr104);
                     }
                     break;
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr103);
                  §§push(§?%§.§%b§);
               }
               §§goto(addr104);
            }
            §§goto(addr103);
         }
         §§goto(addr83);
      }
      
      public function §'7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.sprite);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr64);
            }
            §§pop().visible = param1;
         }
         addr64:
         if(_loc2_ || _loc3_)
         {
            §§push(this.sprite);
         }
      }
      
      public function §5^§() : §return§
      {
         return this.§4"9§;
      }
      
      public function §]T§(param1:§return§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§4"9§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  addr73:
                  while(true)
                  {
                     §§push(this.§4"9§);
                     addr75:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr76:
                        while(true)
                        {
                        }
                     }
                  }
                  addr73:
               }
               while(true)
               {
                  this.§4"9§ = param1;
                  while(!_loc2_)
                  {
                     if(this.mReadyToRun)
                     {
                        if(!_loc2_)
                        {
                           §§push(this.§4"9§);
                           if(!_loc2_)
                           {
                              §§pop().addEventListeners();
                           }
                           §§goto(addr75);
                        }
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           §§goto(addr73);
                        }
                     }
                     return;
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr73);
      }
      
      public function §=!n§() : §>"!§
      {
         return this.§,"1§;
      }
      
      public function §2!2§(param1:§7!K§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§#E§ = param1;
         }
         §§push(this.§#E§.§9!a§);
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(!(_loc6_ && this))
               {
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(!(_loc6_ && param1))
                  {
                     if(param3 != null)
                     {
                        if(!(_loc6_ && param2))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           this.§""#§.push(param3);
                           addr80:
                           while(true)
                           {
                              addr53:
                              if(_loc7_ || param1)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        addr117:
                     }
                     while(true)
                     {
                        if(this.§]h§(param2))
                        {
                           if(_loc7_ || param2)
                           {
                              §§goto(addr53);
                           }
                           §§goto(addr74);
                        }
                        break;
                        §§goto(addr80);
                     }
                     §§goto(addr37);
                  }
                  else
                  {
                     _loc5_++;
                     continue;
                     addr140:
                  }
               }
               break;
            }
            this.§2"!§.§@!@§(this.§#E§.§["=§(_loc5_));
            §§goto(addr140);
         }
         this.§?!w§.addEventListener(Event.INIT,param3);
         §§goto(addr117);
      }
      
      private function §]h§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            §§push(this.§2"!§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop().§;"#§());
               loop0:
               while(!§§pop())
               {
                  do
                  {
                     this.§-!1§ = param1.concat();
                  }
                  while(!(_loc4_ || _loc2_));
                  
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(false);
                     if(!(_loc5_ && this))
                     {
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        continue;
                     }
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(this.§2"!§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().§3!Q§);
                                    if(_loc4_)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          continue;
                                       }
                                       §§push(1000);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             addr155:
                                             §§push(int(§§pop()));
                                             if(!_loc5_)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(§9!P§);
                                                   §§push("\n\nMain texture manager memory usage:\n   textures " + _loc2_);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + " kilobytes\n   bitmaps ");
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(§§pop() + _loc3_);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr122:
                                                            §§push(§§pop() + " kilobytes\n\n");
                                                         }
                                                         §§pop().log(§§pop());
                                                         while(!_loc4_)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop2;
                                                         addr125:
                                                      }
                                                   }
                                                   §§goto(addr122);
                                                }
                                                addr158:
                                             }
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr184:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                }
                                             }
                                             addr183:
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr155);
                                 }
                                 addr182:
                                 while(true)
                                 {
                                    §§goto(addr183);
                                 }
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr125);
                     }
                     §§push(true);
                     addr81:
                  }
                  return §§pop();
               }
               while(true)
               {
               }
            }
            §§goto(addr182);
         }
         §§goto(addr81);
      }
      
      private function §@D§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!a§.§@D§(param1);
         }
      }
      
      private function §6h§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2"!§.§;!2§();
            loop0:
            while(true)
            {
               §§push(this.§9r§);
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
                                 §§push(this.§9r§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().§7!J§);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§;!2§();
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§;!p§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop43:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop47:
                                                               while(true)
                                                               {
                                                                  §§push(this.§;!p§);
                                                                  addr295:
                                                                  while(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop().§7!J§);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           break;
                                                                           addr311:
                                                                        }
                                                                        §§pop().§;!2§();
                                                                        while(!_loc3_)
                                                                        {
                                                                           if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop().§;!2§();
                                                                              loop37:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       addr125:
                                                                                       §§push(this.§,E§);
                                                                                       if(_loc2_ || param1)
                                                                                       {
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          loop38:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§7!J§);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop36;
                                                                                             }
                                                                                             addr88:
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr96:
                                                                                                   while(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§,E§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop36;
                                                                                                         §§goto(addr125);
                                                                                                      }
                                                                                                   }
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr218:
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§4"9§);
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == null);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc2_ || param1))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop41:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ || _loc2_))
                                                                                                                        {
                                                                                                                           break loop36;
                                                                                                                        }
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                           addr245:
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(this.mReadyToRun);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop41;
                                                                                                                              }
                                                                                                                              addr153:
                                                                                                                              if(_loc2_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc3_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    break loop38;
                                                                                                                                 }
                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    continue loop41;
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              addr334:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop0;
                                                                                                                                 §§goto(addr153);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(!_loc3_)
                                                                                                                              {
                                                                                                                                 this.§?!q§();
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                              §§goto(addr311);
                                                                                                                              addr258:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                     addr235:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr194:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           continue loop47;
                                                                                                                        }
                                                                                                                        addr215:
                                                                                                                        addr215:
                                                                                                                        loop30:
                                                                                                                        while(_loc2_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§8G§);
                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§8G§);
                                                                                                                                       addr139:
                                                                                                                                       addr57:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§;"#§();
                                                                                                                                          addr140:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ && this)
                                                                                                                                             {
                                                                                                                                                addr265:
                                                                                                                                                while(_loc2_ || this)
                                                                                                                                                {
                                                                                                                                                   this.§]h§(this.§-!1§);
                                                                                                                                                   break loop30;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                                addr265:
                                                                                                                                             }
                                                                                                                                             addr147:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          break loop37;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§,E§);
                                                                                                                                    if(_loc2_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          break loop37;
                                                                                                                                       }
                                                                                                                                       if(!(_loc3_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(this.§,E§);
                                                                                                                                          continue loop38;
                                                                                                                                       }
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    continue loop38;
                                                                                                                                    §§goto(addr147);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr139);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§-!1§ = null;
                                                                                                                           §§goto(addr258);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr126);
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  continue loop47;
                                                                                                                  §§goto(addr265);
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            §§goto(addr235);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr96:
                                                                                                }
                                                                                                break loop37;
                                                                                             }
                                                                                             addr361:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr362:
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop38;
                                                                                                }
                                                                                                §§goto(addr88);
                                                                                             }
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
                                                                                       §§goto(addr105);
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                              return;
                                                                           }
                                                                           addr288:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              break loop36;
                                                                           }
                                                                        }
                                                                        while(!_loc3_)
                                                                        {
                                                                           continue loop43;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr293:
                                                            }
                                                            while(true)
                                                            {
                                                               if(this.§-!1§)
                                                               {
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr334);
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
                        §§goto(addr362);
                     }
                  }
               }
            }
         }
         §§goto(addr293);
      }
      
      private function §?!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§?!w§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§=+§();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private function §=+§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         var _loc3_:* = this.§""#§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               this.§?!w§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc4_)
         {
            this.§""#§ = [];
         }
      }
      
      public function init(param1:§9"§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                     addr277:
                     while(true)
                     {
                     }
                  }
                  addr275:
               }
               addr252:
               while(true)
               {
                  this.§43§ = new §?!b§(this,param1);
                  loop4:
                  while(_loc3_)
                  {
                     this.§ Y§ = this.initLevelCamera(param1);
                     loop5:
                     while(true)
                     {
                        this.§;!N§ = 0;
                        while(true)
                        {
                           this.§," § = 0;
                           loop21:
                           while(!(_loc2_ && _loc3_))
                           {
                              §§push(this.§#!4§);
                              if(_loc3_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop21;
                                             }
                                             addr149:
                                          }
                                       }
                                       addr147:
                                    }
                                    while(true)
                                    {
                                       addr84:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§@-§(param1.theme);
                                             loop22:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   loop23:
                                                   while(true)
                                                   {
                                                      this.§+V§();
                                                      loop24:
                                                      while(_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §]"%§.init();
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            addr36:
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  return;
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            else
                                                            {
                                                               while(_loc3_)
                                                               {
                                                                  §§push(this.§["§);
                                                                  continue loop0;
                                                                  §§goto(addr36);
                                                               }
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §`!_§ = param1.theme;
                                                                  addr190:
                                                                  while(true)
                                                                  {
                                                                     this.§"!J§ = param1;
                                                                     addr182:
                                                                     addr205:
                                                                     while(!_loc2_)
                                                                     {
                                                                        this.§["§ = this.§[T§(param1.theme);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.mPigsAnimationTimer1 = 2000;
                                                                        while(true)
                                                                        {
                                                                           this.mPigsAnimationTimer2 = 1000;
                                                                           continue loop13;
                                                                           addr101:
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              this.initialize(param1);
                                                                              break loop24;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr94:
                                                                     if(_loc2_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr101);
                                                                  }
                                                               }
                                                               addr165:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop21;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr94);
                                                               }
                                                            }
                                                            §§goto(addr190);
                                                            addr85:
                                                         }
                                                         while(_loc3_)
                                                         {
                                                            this.§#!4§ = this.§=!C§(param1.theme);
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      loop26:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr118:
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               break loop23;
                                                            }
                                                            continue loop23;
                                                         }
                                                         addr210:
                                                         while(_loc3_ || _loc2_)
                                                         {
                                                            this.§9"=§ = false;
                                                            §§goto(addr205);
                                                            continue loop26;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§5N§ = 0;
                                                      §§goto(addr118);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§+F§ = false;
                                                   continue loop5;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr85);
                                       }
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr84);
                           }
                        }
                     }
                  }
                  §§goto(addr277);
               }
            }
         }
         §§goto(addr239);
      }
      
      protected function §+V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,"1§ = new §>"!§(§3!w§.§%n§);
         }
      }
      
      protected function §[T§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§8G§)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
      
      protected function §=!C§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=!k§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§]!p§)
            {
               §§goto(addr30);
            }
            §§goto(addr103);
         }
         addr30:
         _loc2_ = §0!5§.§;l§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(Boolean(_loc2_.§=5§));
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(!(_loc3_ && param1))
                           {
                              addr73:
                              §§push(this.§]!p§.§,!Z§(_loc2_.§=5§));
                              if(!_loc4_)
                              {
                              }
                              addr98:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr102);
                                 }
                                 else
                                 {
                                    §§goto(addr103);
                                 }
                              }
                           }
                           §§goto(addr103);
                        }
                        §§push(!§§pop());
                        if(_loc4_ || this)
                        {
                           §§goto(addr98);
                        }
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr98);
               }
               §§goto(addr73);
            }
            addr103:
            return true;
         }
         addr102:
         return false;
      }
      
      protected function §@-§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=!k§ = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§8G§);
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
                           addr276:
                           while(true)
                           {
                              §§push(this.§[T§(param1));
                              addr257:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr258:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        addr275:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§8G§);
                              loop6:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§%!s§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§8G§);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().removeEventListener(Event.CANCEL,this.§=!U§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§8G§);
                                          loop10:
                                          for(; !_loc3_; while(_loc4_ || this)
                                          {
                                             continue loop8;
                                             §§goto(addr225);
                                          })
                                          {
                                             §§pop().addEventListener(Event.COMPLETE,this.§%!s§);
                                             while(!(_loc3_ && param1))
                                             {
                                                §§push(this.§8G§);
                                                continue loop10;
                                                addr56:
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                if(false)
                                                {
                                                   loop26:
                                                   while(true)
                                                   {
                                                      §§push(this.§]!p§);
                                                      loop27:
                                                      while(_loc4_)
                                                      {
                                                         §§pop().addEventListener(Event.COMPLETE,this.§7w§);
                                                         loop28:
                                                         for(; _loc4_; §§pop().addEventListener(Event.CANCEL,this.§`!D§),if(!(_loc4_ || param1))
                                                         {
                                                            continue;
                                                         },if(_loc3_)
                                                         {
                                                            break loop26;
                                                         },§§goto(addr56))
                                                         {
                                                            §§push(this.§]!p§);
                                                            if(_loc3_)
                                                            {
                                                               continue loop27;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               addr35:
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  continue;
                                                               }
                                                               addr165:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop19:
                                                                           while(!(_loc3_ && param1))
                                                                           {
                                                                              §§push(this.§=!C§(param1));
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ || param1))
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§push(this.§]!p§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().removeEventListener(Event.COMPLETE,this.§7w§);
                                                                                                addr161:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§]!p§);
                                                                                                   break loop27;
                                                                                                }
                                                                                             }
                                                                                             addr93:
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                addr223:
                                                                                                addr223:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(this.§8G§);
                                                                                                      if(_loc3_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop().§"f§(param1);
                                                                                                         break loop28;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                      addr225:
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr303:
                                                                                       return;
                                                                                       addr135:
                                                                                    }
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     §§goto(addr135);
                                                                  }
                                                                  continue loop2;
                                                                  §§goto(addr35);
                                                               }
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         while(_loc4_ || param1)
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr165);
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(Event.CANCEL,this.§`!D§);
                                                         break loop26;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§goto(addr93);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                _loc2_ = §0!5§.§;l§(param1);
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§]!p§.§"f§(_loc2_.§=5§);
                                                      }
                                                   }
                                                }
                                                §§goto(addr303);
                                             }
                                             §§goto(addr276);
                                          }
                                          continue loop0;
                                       }
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§pop().addEventListener(Event.CANCEL,this.§=!U§);
                                       §§goto(addr223);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr162);
                     }
                  }
               }
            }
         }
         §§goto(addr276);
      }
      
      private function §%!s§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§8G§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§%!s§);
               loop1:
               while(true)
               {
                  §§push(this.§8G§);
                  if(!(_loc2_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§=!U§);
                  loop2:
                  while(true)
                  {
                     this.§["§ = true;
                     loop3:
                     for(; !(_loc3_ && this); if(!(_loc3_ && _loc3_))
                     {
                        continue loop2;
                     })
                     {
                        §§push(this.§["§);
                        if(!(_loc3_ && _loc3_))
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
                                 loop7:
                                 while(§§pop())
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       addr87:
                                       break;
                                    }
                                    if(_loc2_ || _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    addr102:
                                    while(true)
                                    {
                                       §§push(this.§#!4§);
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             continue loop4;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 return;
                              }
                              addr43:
                           }
                           §§goto(addr101);
                        }
                     }
                     continue loop1;
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     this.initialize(this.§"!J§);
                     §§goto(addr87);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      private function §=!U§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8G§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§%!s§);
               loop1:
               while(true)
               {
                  §§push(this.§8G§);
                  if(!_loc2_)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§=!U§);
                     while(true)
                     {
                        this.§9"=§ = true;
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     return;
                     addr63:
                  }
                  break;
               }
            }
         }
         §§goto(addr63);
      }
      
      private function §7w§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§8G§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§7w§);
               addr124:
               while(true)
               {
                  §§push(this.§8G§);
                  if(_loc3_ || param1)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§`!D§);
                     loop2:
                     while(!_loc2_)
                     {
                        this.§#!4§ = true;
                        loop3:
                        while(true)
                        {
                           §§push(this.§["§);
                           if(_loc3_ || _loc3_)
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
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             this.initialize(this.§"!J§);
                                          }
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          else
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§#!4§);
                                                if(_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                addr82:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                          }
                                       }
                                       return;
                                    }
                                 }
                                 addr44:
                              }
                              §§goto(addr82);
                           }
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr124);
      }
      
      private function §`!D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§8G§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§7w§);
               loop1:
               while(true)
               {
                  §§push(this.§8G§);
                  if(!(_loc2_ || _loc3_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§`!D§);
                  loop2:
                  while(true)
                  {
                     this.§#!4§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§["§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_)
                           {
                              addr87:
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(this.§#!4§);
                                             if(!(_loc2_ || this))
                                             {
                                                while(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.initialize(this.§"!J§);
                                                   }
                                                   break loop5;
                                                }
                                             }
                                             else
                                             {
                                                addr42:
                                             }
                                             continue loop4;
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                                 addr89:
                              }
                              while(true)
                              {
                                 §§goto(addr42);
                              }
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr87);
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function get §]@§() : §7!P§
      {
         return this.§2"!§;
      }
      
      protected function initialize(param1:§9"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§-!P§ = false;
            loop0:
            while(true)
            {
               this.§>"+§ = false;
               loop1:
               while(true)
               {
                  §§push(§?%§.§",§);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§?%§.§",§);
                           addr197:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr209:
                              while(true)
                              {
                              }
                           }
                           addr174:
                           if(!(_loc2_ || param1))
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§43§.mBorderGround_B2);
                           if(_loc2_)
                           {
                              §§push(§§pop() / §4!-§);
                           }
                           §§pop().§+!S§ = §§pop().§,!-§(§§pop(),§§pop(),this.§]@§,this.§ Y§.§[!f§());
                           loop5:
                           while(true)
                           {
                              this.§+!S§.§]D§(§=!X§.§5$§());
                              loop6:
                              while(true)
                              {
                                 this.§&!^§ = this.initLevelObjectManager(param1);
                                 loop7:
                                 while(true)
                                 {
                                    this.§&!3§ = this.§-!t§(param1);
                                    loop8:
                                    while(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       this.§""4§ = this.§!!W§(this.§7!a§,this.§2"!§);
                                       while(true)
                                       {
                                          this.§ Y§.init();
                                          while(_loc2_ || _loc3_)
                                          {
                                             continue loop5;
                                             addr67:
                                             if(!(_loc2_ || param1))
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(this.§4"9§);
                                             if(_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§4"9§);
                                                         addr43:
                                                         while(true)
                                                         {
                                                            §§pop().addEventListeners();
                                                         }
                                                      }
                                                      addr41:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ || _loc3_))
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               addr60:
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  while(_loc2_)
                                                                  {
                                                                     this.§%K§();
                                                                     §§goto(addr60);
                                                                  }
                                                                  continue loop6;
                                                                  addr84:
                                                               }
                                                               §§goto(addr67);
                                                            }
                                                            while(true)
                                                            {
                                                               this.mReadyToRun = true;
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr43);
                                          }
                                       }
                                    }
                                    addr172:
                                    while(!_loc3_)
                                    {
                                       §§goto(addr174);
                                    }
                                    §§goto(addr209);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§[g§ = new §4!#§(this);
                        §§goto(addr172);
                        §§goto(addr209);
                     }
                  }
                  §§goto(addr197);
               }
            }
         }
         §§goto(addr41);
      }
      
      protected function §%K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§]" §)
            {
               loop0:
               while(true)
               {
                  this.§8+§ = §>"!§.initialize(this.§]" §);
                  loop1:
                  while(true)
                  {
                     §§push(this.§8+§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        loop3:
                        while(true)
                        {
                           §§push(this.§8+§);
                           if(_loc1_)
                           {
                              §§pop().play();
                              while(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    this.§0!?§ = -1000;
                                    do
                                    {
                                       this.§]" § = null;
                                    }
                                    while(!(_loc1_ || _loc1_));
                                    
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        §§goto(addr19);
                     }
                  }
               }
            }
            §§goto(addr19);
         }
         addr19:
      }
      
      public function §^!K§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]" § = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§8+§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§8+§);
            while(§§pop())
            {
               while(param1)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§8+§);
                     break;
                  }
               }
               break;
               §§pop().speed = Math.min(this.§8+§.speed * 1.25,Math.pow(1.25,2));
               §§goto(addr102);
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§8+§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr65);
            }
            §§pop().speed = 1;
         }
         addr65:
         if(_loc2_ || this)
         {
            §§push(this.§8+§);
         }
      }
      
      protected function initLevelObjectManager(param1:§9"§) : §?"-§
      {
         return new §?"-§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§9"§) : §`"=§
      {
         return new §`"=§(this,param1);
      }
      
      protected function §,!-§(param1:String, param2:Number, param3:§7!P§, param4:Number) : §+!V§
      {
         return new §+!V§(param1,param2,param3,param4);
      }
      
      protected function §-!t§(param1:§9"§) : §[!6§
      {
         return new §[!6§(this,param1,new Sprite());
      }
      
      protected function §!!W§(param1:§1!A§, param2:§7!P§) : §-5§
      {
         return new §-5§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            if(this.mReadyToRun)
            {
               if(_loc6_)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§9"§ = this.§+"#§();
         var _loc4_:§4^§;
         (_loc4_ = new §4^§()).left = 0;
         if(!_loc7_)
         {
            §§push(_loc4_);
            §§push(§`"=§.SCREEN_HEIGHT_B2);
            if(_loc6_ || param1)
            {
               §§push(-§§pop());
               if(!(_loc7_ && param1))
               {
                  addr149:
                  §§push(10);
                  if(_loc6_)
                  {
                     addr157:
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
                           §§push(§§pop() + §`"=§.SCREEN_HEIGHT_B2);
                        }
                        §§pop().bottom = §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.left);
                           if(_loc6_ || param2)
                           {
                              §§push(§§pop() + §`"=§.SCREEN_WIDTH_B2);
                           }
                           §§pop().right = §§pop();
                           while(true)
                           {
                              _loc4_.y = -13.929;
                              while(true)
                              {
                                 _loc4_.x = §`"=§.SCREEN_WIDTH_B2;
                                 addr77:
                                 while(_loc6_ || _loc3_)
                                 {
                                    continue loop1;
                                 }
                              }
                              addr55:
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 while(true)
                                 {
                                    _loc4_.id = §`"=§.CAMERA_ID_SLINGSHOT;
                                    loop6:
                                    while(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          _loc3_.§="8§(_loc4_);
                                          if(_loc7_ && param1)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr55);
                                       }
                                    }
                                    §§goto(addr77);
                                 }
                                 addr64:
                              }
                              var _loc5_:§4^§;
                              (_loc5_ = new §4^§()).top = _loc4_.top;
                              if(!_loc7_)
                              {
                                 _loc5_.bottom = _loc4_.bottom;
                                 while(true)
                                 {
                                    _loc5_.left = 150;
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + §`"=§.SCREEN_WIDTH_B2);
                                       }
                                       §§pop().right = §§pop();
                                       addr351:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc5_.top);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() + §`"=§.SCREEN_HEIGHT_B2);
                                          }
                                          §§pop().bottom = §§pop();
                                          continue loop9;
                                       }
                                    }
                                    addr269:
                                    if(_loc7_ && param2)
                                    {
                                       continue;
                                    }
                                    §§push(param1);
                                    loop18:
                                    while(true)
                                    {
                                       §§push(null);
                                       addr243:
                                       while(§§pop() == §§pop())
                                       {
                                          continue loop18;
                                       }
                                       loop23:
                                       while(true)
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             _loc3_.theme = param1;
                                             loop24:
                                             while(true)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      this.init(_loc3_);
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         addr225:
                                                         addr267:
                                                         while(_loc6_)
                                                         {
                                                            _loc3_.theme = §`!_§;
                                                         }
                                                         while(_loc6_)
                                                         {
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            continue loop23;
                                                         }
                                                         continue loop24;
                                                      }
                                                      addr317:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         §§push(_loc5_.left);
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(§`"=§.SCREEN_WIDTH_B2);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() / 2);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().x = §§pop();
                                                         addr311:
                                                         while(true)
                                                         {
                                                            _loc5_.id = §`"=§.CAMERA_ID_CASTLE;
                                                         }
                                                         continue loop23;
                                                      }
                                                   }
                                                   addr197:
                                                   if(_loc6_ || param1)
                                                   {
                                                      return;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            this.§!§(_loc3_,param2);
                                                            §§goto(addr267);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr311);
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr351);
                                                   addr281:
                                                   addr184:
                                                }
                                                while(true)
                                                {
                                                   _loc3_.§="8§(_loc5_);
                                                   §§goto(addr281);
                                                   continue loop24;
                                                }
                                             }
                                          }
                                          §§goto(addr317);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc5_.y = _loc4_.y;
                                 §§goto(addr317);
                              }
                           }
                        }
                     }
                  }
                  §§push(§§pop() * §§pop());
               }
               §§goto(addr157);
            }
            §§goto(addr149);
         }
         §§goto(addr71);
      }
      
      protected function §!§(param1:§9"§, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(param2)
            {
               if(_loc4_ || param2)
               {
                  addr53:
                  this.§2'§(param1);
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      protected function §+"#§() : §9"§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9"§ = new §9"§();
         if(_loc3_ || this)
         {
            _loc1_.§'!`§ = -12;
         }
         return new §9"§();
      }
      
      protected function §`3§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§'g§ ^= this.§'g§ << 21;
            do
            {
               §§push(this);
               §§push(this.§'g§);
               §§push(this.§'g§);
               if(!_loc2_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§'g§ = §§pop() ^ §§pop();
               do
               {
                  this.§'g§ ^= this.§'g§ << 4;
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
         return this.§'g§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §2'§(param1:§9"§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§5!q§ = null;
         if(!_loc6_)
         {
            §§push(this);
            §§push(0.33);
            if(!_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§'g§ = §§pop();
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
                  if(!_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                        §§push(5);
                        if(!(_loc7_ || _loc3_))
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           break;
                        }
                        §§push(this.§`3§());
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() * 5);
                        }
                        §§push(int(§§pop()));
                        if(!(_loc7_ || _loc3_))
                        {
                           continue loop1;
                        }
                        _loc4_ = §§pop();
                        if(_loc6_ && _loc3_)
                        {
                           continue loop0;
                        }
                        §§push(_loc5_ = new §5!q§());
                        §§push(30 + _loc3_ * 10);
                        if(!_loc6_)
                        {
                           §§push(this.§`3§());
                           if(_loc7_ || this)
                           {
                              §§push(§§pop() * 9);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().x = §§pop();
                        if(_loc7_ || _loc3_)
                        {
                           §§push(_loc2_);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(_loc5_);
                                    §§push(-100 + _loc2_ * 6);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(this.§`3§());
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() * 3);
                                          if(_loc7_)
                                          {
                                             addr376:
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(_loc3_ * 8);
                                             }
                                             §§pop().y = §§pop();
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(_loc3_);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() + §§pop() * _loc3_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc7_)
                                                               {
                                                                  addr291:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     addr289:
                                                                     §§push(5);
                                                                  }
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop39:
                                                                        while(_loc7_ || _loc2_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           loop8:
                                                                           while(_loc7_ || param1)
                                                                           {
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§push(2);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc7_ || _loc2_)
                                                                                          {
                                                                                             §§push(3);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc6_ && param1)
                                                                                             {
                                                                                                continue loop39;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                _loc5_.id = "BIRD_BLUE";
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr154:
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      §§push(this.§`3§());
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * 360);
                                                                                                      }
                                                                                                      §§pop().angle = §§pop();
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc7_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param1.addObject(_loc5_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc6_ && this)
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           if(!(_loc7_ || param1))
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           if(_loc7_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc7_ || param1)
                                                                                                                              {
                                                                                                                                 _loc3_++;
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    addr394:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       addr470:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_.y = 0;
                                                                                                                                          addr473:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr406:
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    break loop39;
                                                                                                                                 }
                                                                                                                                 addr406:
                                                                                                                                 addr451:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_.id = "BIRD_RED";
                                                                                                                              }
                                                                                                                              addr331:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr473);
                                                                                                               }
                                                                                                               loop23:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  break loop8;
                                                                                                                  addr465:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break loop17;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr431:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr378:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         §§push(45);
                                                                                                         §§push(this.§`3§());
                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop() * 90);
                                                                                                         }
                                                                                                         §§pop().angle = §§pop() - §§pop();
                                                                                                         §§goto(addr394);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   _loc5_.id = "BIRD_YELLOW";
                                                                                                   continue loop6;
                                                                                                }
                                                                                                addr428:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_.id = "PIG_MUSTACHE";
                                                                                                   §§goto(addr431);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr406);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    addr435:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             addr444:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§goto(addr451);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr464:
                                                                                                               while(§§pop())
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               §§goto(addr465);
                                                                                                            }
                                                                                                            addr463:
                                                                                                         }
                                                                                                      }
                                                                                                      addr448:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         _loc5_.id = "PIG_HELMET";
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr378);
                                                                                                         }
                                                                                                         addr403:
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   addr426:
                                                                                                }
                                                                                                §§goto(addr464);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr462:
                                                                                       }
                                                                                       §§goto(addr463);
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr435);
                                                                           }
                                                                        }
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§goto(addr426);
                                                                                 }
                                                                                 §§goto(addr465);
                                                                              }
                                                                              §§goto(addr444);
                                                                           }
                                                                           §§goto(addr448);
                                                                           §§goto(addr406);
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr299:
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§push(§§pop() % §§pop());
                                                            }
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                }
                                                §§goto(addr299);
                                             }
                                          }
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§goto(addr376);
                                 }
                                 §§goto(addr470);
                              }
                           }
                        }
                        §§goto(addr473);
                     }
                     if(!_loc7_)
                     {
                        break;
                     }
                     _loc2_++;
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      private function §-!M§() : void
      {
      }
      
      public function §'! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§+!V§.§6`§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§^";§(this.§+!S§.§&!Z§,false);
                     addr186:
                     while(true)
                     {
                     }
                  }
                  addr180:
               }
               while(true)
               {
                  this.§^";§(this.§""4§.§[O§(§-5§.§@T§),false);
                  loop4:
                  while(true)
                  {
                     this.§^";§(this.§""4§.§[O§(§-5§.§&b§),true);
                     while(true)
                     {
                        if(_loc1_)
                        {
                           this.§^";§(this.§""4§.§[O§(§-5§.§<!W§),true);
                           continue;
                        }
                        §§goto(addr180);
                     }
                     addr70:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§^";§(this.§""4§.§[O§(§-5§.§@S§),true);
                        if(!_loc2_)
                        {
                           addr34:
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           addr62:
                           while(true)
                           {
                              this.§^";§(this.§+!S§.§1V§,false);
                              §§goto(addr34);
                           }
                        }
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr70);
                           }
                           else
                           {
                              §§goto(addr107);
                           }
                        }
                        continue loop4;
                     }
                     if(!_loc2_)
                     {
                        §§goto(addr43);
                     }
                     §§goto(addr95);
                  }
               }
               §§push(§+!V§.§6`§);
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr62);
               }
               §§goto(addr23);
            }
         }
         §§goto(addr50);
      }
      
      private function §^";§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.sprite);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
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
         if(_loc4_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§=!X§.§@"6§);
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
                        addr140:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                              §§push(§=!X§.§@"6§);
                              if(_loc5_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() / §§pop());
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop0;
                              }
                           }
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §&g§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!(_loc6_ && param2))
         {
            _loc3_.x = (param1 / §4!-§ + §`"=§.§9!e§ / §`"=§.§;!0§ - this.§ Y§.§74§) * §`"=§.§;!0§;
            if(!_loc6_)
            {
               _loc3_.y = (param2 / §4!-§ + §`"=§.§^Z§ / §`"=§.§;!0§ - this.§ Y§.§1!o§) * §`"=§.§;!0§;
            }
         }
         var _loc4_:Number = Math.max(§=!X§.§@"6§,§=!X§.§ !4§);
         if(_loc5_)
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
      
      public function §8!h§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§&!^§.addObject(param1,param2,param3);
         }
      }
      
      public function §==§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§-"3§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr74:
                     §§push(this.§-"3§);
                     while(true)
                     {
                        §§pop().visible = true;
                     }
                     addr74:
                  }
                  while(true)
                  {
                     §§push(this.§-"3§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop().alpha = 0;
                        addr54:
                        while(true)
                        {
                        }
                        addr54:
                     }
                     else
                     {
                        §§goto(addr74);
                     }
                  }
                  addr76:
               }
               while(true)
               {
                  this.§&Q§ = 0;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr54);
      }
      
      public function §@";§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§%!K§ = new §#k§(§8^§.§!!6§,§8^§.§1A§);
         }
      }
      
      public function §8!y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%!K§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+!S§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  addr597:
                  while(true)
                  {
                     §§push(this.§+!S§);
                     addr599:
                     while(true)
                     {
                        §§pop().dispose();
                        addr600:
                        while(true)
                        {
                           this.§+!S§ = null;
                           addr576:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr597:
               }
               while(true)
               {
                  §§push(this.§&!^§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§&!^§);
                           addr570:
                           while(true)
                           {
                              §§pop().dispose();
                              addr571:
                              while(true)
                              {
                                 this.§&!^§ = null;
                                 addr561:
                                 while(true)
                                 {
                                    this.§?!j§ = null;
                                    addr556:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                        addr568:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§[g§);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(this.§[g§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr542:
                                    if(§§pop().§>!F§)
                                    {
                                       loop27:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             loop28:
                                             while(true)
                                             {
                                                §§push(this.§[g§);
                                                addr548:
                                                while(true)
                                                {
                                                   §§pop().clear();
                                                   addr549:
                                                   loop4:
                                                   while(_loc2_)
                                                   {
                                                      this.§[g§ = null;
                                                      loop5:
                                                      while(true)
                                                      {
                                                         addr493:
                                                         while(true)
                                                         {
                                                            §§push(this.§43§);
                                                            if(_loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop7:
                                                                  for(; !(_loc1_ && this); while(true)
                                                                  {
                                                                     if(_loc1_ && _loc2_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr492:
                                                                  })
                                                                  {
                                                                     §§push(this.§43§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().clear();
                                                                        addr509:
                                                                        while(true)
                                                                        {
                                                                           addr481:
                                                                           this.§43§ = null;
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr561);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§&!3§);
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§ Y§);
                                                                        if(!_loc1_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§ Y§);
                                                                                 addr430:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().clear();
                                                                                    addr431:
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§ Y§ = null;
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr421:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§""4§);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   loop14:
                                                                                                   for(; this.sprite; while(true)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   })
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc1_ && this)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc1_ && _loc1_))
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc1_ && _loc1_))
                                                                                                                  {
                                                                                                                     this.§""4§ = null;
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                         addr398:
                                                                                                      }
                                                                                                      if(!(_loc2_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(_loc1_ && this)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      if(_loc1_ && _loc1_)
                                                                                                      {
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(!(_loc1_ && this))
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               §§goto(addr600);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     this.§&!3§ = null;
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  §§goto(addr568);
                                                                                                               }
                                                                                                               §§goto(addr600);
                                                                                                               addr476:
                                                                                                            }
                                                                                                            §§goto(addr600);
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      addr310:
                                                                                                      §§push(this.sprite);
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         if(§§pop().numChildren <= 0)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(this.sprite);
                                                                                                      }
                                                                                                      §§pop().removeChildAt(0,true);
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                   addr324:
                                                                                                   this.§;!N§ = 0;
                                                                                                   this.§," § = 0;
                                                                                                   addr302:
                                                                                                   if(!(_loc1_ && _loc2_))
                                                                                                   {
                                                                                                      this.mReadyToRun = false;
                                                                                                      this.§+F§ = false;
                                                                                                      this.§&Q§ = §8^§.§8!Y§;
                                                                                                      addr287:
                                                                                                      addr282:
                                                                                                      addr277:
                                                                                                      if(this.§+!=§)
                                                                                                      {
                                                                                                         addr260:
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr268:
                                                                                                            (this.§+!=§ as §^!c§).§8<§.x = 0;
                                                                                                            addr269:
                                                                                                            addr267:
                                                                                                            addr264:
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(this.§+!=§);
                                                                                                               if(_loc2_ || _loc1_)
                                                                                                               {
                                                                                                                  if(!(_loc1_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push((§§pop() as §^!c§).§8<§);
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc1_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           addr253:
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              addr202:
                                                                                                                              §§push(this.§-"3§);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr208:
                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          addr219:
                                                                                                                                          this.§-"3§.visible = false;
                                                                                                                                          addr195:
                                                                                                                                          this.§8+§ = null;
                                                                                                                                          addr221:
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             this.§,"1§ = null;
                                                                                                                                             addr194:
                                                                                                                                             §§push(this.§8G§);
                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr178:
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr184:
                                                                                                                                                         this.§8G§.removeEventListener(Event.COMPLETE,this.§%!s§);
                                                                                                                                                         addr189:
                                                                                                                                                         §§push(this.§8G§);
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().removeEventListener(Event.CANCEL,this.§=!U§);
                                                                                                                                                            addr164:
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr136:
                                                                                                                                                               §§push(this.§]!p§);
                                                                                                                                                               if(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr142:
                                                                                                                                                                     if(!_loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr148:
                                                                                                                                                                           this.§]!p§.removeEventListener(Event.COMPLETE,this.§7w§);
                                                                                                                                                                           addr153:
                                                                                                                                                                           §§push(this.§]!p§);
                                                                                                                                                                           if(!_loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().removeEventListener(Event.CANCEL,this.§`!D§);
                                                                                                                                                                              addr133:
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr117:
                                                                                                                                                                                 this.§=+§();
                                                                                                                                                                                 addr120:
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§?%§.§%b§);
                                                                                                                                                                                    if(!(_loc1_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc1_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr100:
                                                                                                                                                                                                §?%§.§%b§.color = 0;
                                                                                                                                                                                                addr102:
                                                                                                                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr42:
                                                                                                                                                                                                      §§push(this.§4"9§);
                                                                                                                                                                                                      if(_loc2_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr53:
                                                                                                                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr62:
                                                                                                                                                                                                               this.§4"9§.removeEventListeners();
                                                                                                                                                                                                               addr63:
                                                                                                                                                                                                               if(!_loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc2_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr24:
                                                                                                                                                                                                                     this.mReadyToRun = false;
                                                                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc1_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr310);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr142);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr53);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr63);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr153);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr102);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr260);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr24);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr62);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr221);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr120);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr133);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr102);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr42);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr100);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr208);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr189);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr148);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr221);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr164);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr117);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr148);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr178);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr184);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr269);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr194);
                                                                                                                                                }
                                                                                                                                                §§goto(addr136);
                                                                                                                                             }
                                                                                                                                             §§goto(addr184);
                                                                                                                                          }
                                                                                                                                          §§goto(addr253);
                                                                                                                                       }
                                                                                                                                       §§goto(addr287);
                                                                                                                                    }
                                                                                                                                    §§goto(addr282);
                                                                                                                                 }
                                                                                                                                 §§goto(addr195);
                                                                                                                              }
                                                                                                                              §§goto(addr219);
                                                                                                                           }
                                                                                                                           §§goto(addr277);
                                                                                                                        }
                                                                                                                        §§goto(addr268);
                                                                                                                     }
                                                                                                                     §§goto(addr267);
                                                                                                                  }
                                                                                                                  §§goto(addr287);
                                                                                                               }
                                                                                                               §§goto(addr264);
                                                                                                            }
                                                                                                            §§goto(addr302);
                                                                                                         }
                                                                                                         §§goto(addr324);
                                                                                                      }
                                                                                                      §§goto(addr202);
                                                                                                   }
                                                                                                   addr327:
                                                                                                   §§goto(addr327);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().dispose();
                                                                                                   }
                                                                                                   addr397:
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                                §§goto(addr421);
                                                                                             }
                                                                                             §§goto(addr485);
                                                                                             addr375:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr509);
                                                                                          }
                                                                                          §§goto(addr481);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr375);
                                                                        }
                                                                        §§goto(addr430);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop().dispose();
                                                                     }
                                                                     addr475:
                                                                  }
                                                                  §§goto(addr476);
                                                                  §§goto(addr492);
                                                               }
                                                            }
                                                            §§goto(addr508);
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr571);
                                                   continue loop28;
                                                }
                                             }
                                             addr546:
                                          }
                                          else
                                          {
                                             §§goto(addr597);
                                          }
                                          §§goto(addr600);
                                       }
                                    }
                                    §§goto(addr546);
                                 }
                                 §§goto(addr548);
                              }
                              §§goto(addr549);
                           }
                           §§goto(addr493);
                        }
                        §§goto(addr542);
                     }
                  }
                  §§goto(addr570);
                  §§goto(addr576);
               }
            }
            §§goto(addr599);
         }
         §§goto(addr597);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §-J§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§,"1§);
            if(_loc2_)
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
         return this.§,"1§.toString();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(this.mReadyToRun);
            if(_loc4_)
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
                           §§push(§?%§.§]p§());
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr120:
                              if(_loc4_ || param3)
                              {
                                 §§pop();
                                 loop12:
                                 while(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§8+§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().§if §);
                                          if(_loc4_ || param2)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                addr64:
                                                §§push(Boolean(§§pop()));
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   loop13:
                                                   while(§§pop())
                                                   {
                                                      if(_loc5_ && param3)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         addr94:
                                                         if(!_loc4_)
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(this.§8+§);
                                                                  addr106:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr107:
                                                                     while(_loc4_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ || param1))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             break;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    addr140:
                                                                                    return §§pop();
                                                                                    addr136:
                                                                                 }
                                                                                 §§goto(addr120);
                                                                                 §§goto(addr64);
                                                                              }
                                                                              continue loop4;
                                                                              addr113:
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr94);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr101);
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§push(this.§+#§(param1,true,param2,param3));
                                                   if(_loc5_ && param1)
                                                   {
                                                      addr101:
                                                      return this.§+!C§(param1,param2,param3);
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr113);
                                             }
                                             §§goto(addr107);
                                          }
                                          §§goto(addr64);
                                       }
                                       §§goto(addr106);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr136);
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      protected function §+#§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            if(this.§-!P§)
            {
               if(_loc7_)
               {
                  addr29:
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * 0.2);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param1))
                        {
                           param1 = §§pop();
                           if(!_loc6_)
                           {
                              §§push(§?%§.§",§);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    addr58:
                                    if(_loc7_)
                                    {
                                       addr54:
                                       §§push(§?%§.§",§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(this);
                                       §§push(this.§," §);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§," § = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§&!^§.§5J§(param1);
                                                loop2:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      this.§;!N§ = 0;
                                                      loop3:
                                                      while(true)
                                                      {
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc6_ && param1)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  this.§+J§(param1,_loc5_);
                                                                  continue loop0;
                                                               }
                                                               addr154:
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§[g§.§true §(this.§;!N§));
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr173:
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                           }
                                                                           addr173:
                                                                        }
                                                                        §§goto(addr173);
                                                                        addr178:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§;!N§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() + param1);
                                                                           }
                                                                           §§pop().§;!N§ = §§pop();
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§&!3§.update(param1,param4);
                                                                     addr161:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr178);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr69:
                                                               §§push(param1);
                                                               if(_loc7_ || this)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr58);
                              }
                              §§pop().speed = 0.2;
                              §§goto(addr58);
                           }
                           §§goto(addr54);
                        }
                     }
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr58);
         }
         §§goto(addr29);
      }
      
      private function §+!C§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§4!#§.§#!-§);
         if(_loc7_ || param2)
         {
            §§push(§§pop() * 1000);
            if(_loc7_ || param1)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_)
            {
               if(this.§8+§)
               {
                  if(!(_loc6_ && param2))
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(this.§8+§.speed);
                        addr344:
                        addr301:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr345:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr346:
                              while(true)
                              {
                                 param1 = §§pop();
                              }
                           }
                        }
                        addr301:
                        if(!(_loc7_ || param2))
                        {
                           continue;
                        }
                        addr309:
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param2))
                        {
                           _loc5_ = §§pop();
                           if(_loc6_)
                           {
                              while(true)
                              {
                                 §§push(this.§," §);
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(param1);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§goto(addr301);
                                          }
                                          §§goto(addr309);
                                       }
                                       else
                                       {
                                          §§goto(addr344);
                                       }
                                    }
                                    §§goto(addr346);
                                 }
                                 §§goto(addr301);
                              }
                              addr347:
                           }
                           loop26:
                           while(true)
                           {
                              §§push(this.§," §);
                              loop24:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 loop14:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop25:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                addr209:
                                                §§push(_loc5_);
                                                while(true)
                                                {
                                                   §§push(this.§0!?§);
                                                   if(!_loc6_)
                                                   {
                                                      addr214:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + _loc4_);
                                                      }
                                                      addr214:
                                                   }
                                                   loop2:
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop3:
                                                            for(; _loc7_ || param2; while(_loc7_ || this)
                                                            {
                                                               if(_loc6_ && param2)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc7_ || this)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(_loc5_);
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        §§push(§§pop() - this.§," §);
                                                                     }
                                                                     §§pop().§+#§(§§pop(),true,param2,param3);
                                                                     addr69:
                                                                     §§push(param1);
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ && param2)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr275:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§0!?§);
                                                                           addr277:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 §§goto(addr278);
                                                                              }
                                                                              addr245:
                                                                              while(true)
                                                                              {
                                                                                 this.§+#§(_loc4_,false,param2,param3);
                                                                                 addr252:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                     addr175:
                                                                     addr71:
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr252);
                                                            })
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(this.§8+§);
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     §§pop().step(this);
                                                                     §§push(this);
                                                                     §§push(this.§0!?§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() + _loc4_);
                                                                     }
                                                                     §§pop().§0!?§ = §§pop();
                                                                     continue;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr278:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8+§);
                                                                  }
                                                                  addr278:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().step(this);
                                                                  addr282:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§0!?§);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(§§pop() + _loc4_);
                                                                     }
                                                                     §§pop().§0!?§ = §§pop();
                                                                     break loop3;
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr245);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§," §);
                                                            addr103:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        §§goto(addr133);
                                                                     }
                                                                     §§goto(addr175);
                                                                  }
                                                                  §§goto(addr69);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     addr274:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr273:
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                addr210:
                                             }
                                             else
                                             {
                                                §§push(this.§," §);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr214);
                                    }
                                 }
                              }
                           }
                           addr319:
                        }
                        §§goto(addr345);
                     }
                  }
                  §§goto(addr347);
               }
               else
               {
                  §§push(this.§+#§(_loc4_,true,param2,param3));
                  if(_loc7_ || param3)
                  {
                     if(_loc7_ || this)
                     {
                        if(_loc7_)
                        {
                           return §§pop();
                        }
                        §§goto(addr210);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr319);
         }
         §§goto(addr37);
      }
      
      private function §+J§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            this.§+!S§.update(param1);
            while(true)
            {
               this.§&!^§.§?!%§(param1,param2);
            }
            addr305:
         }
         loop1:
         while(true)
         {
            this.§while§();
            loop2:
            while(true)
            {
               §§push(this.§&Q§);
               loop3:
               while(true)
               {
                  §§push(§8^§.§8!Y§);
                  loop4:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(this.§-"3§);
                        if(_loc6_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(this.§-"3§);
                                       while(true)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             §§pop().visible = false;
                                             loop22:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§%!K§);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr106:
                                                                     if(!this.§%!K§.§=#§(this.§ Y§,param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           this.§8!y§();
                                                                        }
                                                                        addr111:
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        this.§ Y§.updateCamera(param1);
                                                                        while(_loc6_ || param2)
                                                                        {
                                                                           continue loop5;
                                                                           for(; !(_loc5_ && this); this.§""4§.update(param1),if(_loc5_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           },if(!_loc5_)
                                                                           {
                                                                              return;
                                                                           },addr177:,while(true)
                                                                           {
                                                                              addr121:
                                                                              while(true)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           })
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr111);
                                                                           }
                                                                        }
                                                                        addr120:
                                                                        while(true)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     continue loop22;
                                                                     addr62:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this.§-"3§);
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    §§push(-Math.abs(this.§&Q§ - _loc3_));
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§8^§.§1!U§);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr203:
                                                                                                if(!(_loc6_ || param2))
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(§§pop() / _loc3_);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                addr220:
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      continue loop10;
                                                                                                      §§goto(addr220);
                                                                                                   }
                                                                                                   addr251:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§goto(addr203);
                                                                                    }
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§&Q§);
                                                                                       if(!(_loc5_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() + param1);
                                                                                       }
                                                                                       §§pop().§&Q§ = §§pop();
                                                                                       addr279:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§8^§.§8!Y§);
                                                                                          break loop10;
                                                                                       }
                                                                                    }
                                                                                    addr266:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / 2);
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§push(this.§-"3§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().alpha = _loc4_;
                                                                        §§goto(addr177);
                                                                     }
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                            }
                                                            §§goto(addr120);
                                                         }
                                                         §§goto(addr62);
                                                      }
                                                      §§goto(addr106);
                                                   }
                                                   addr82:
                                                }
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr175);
                                       }
                                       addr155:
                                    }
                                    §§goto(addr279);
                                 }
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr266);
                  }
               }
            }
         }
      }
      
      public function §?">§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               addr98:
               while(true)
               {
                  §§push(1000);
                  addr99:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr100:
                     while(true)
                     {
                        §§pop().§5J§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
            addr97:
         }
         while(true)
         {
            §§push(this.objects);
            if(_loc3_ || param1)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!(_loc2_ && param1))
                  {
                     §§push(1000);
                     if(_loc3_)
                     {
                        addr69:
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || param1)
                        {
                           §§pop().§,1§(§§pop());
                           while(!(_loc2_ && param1))
                           {
                              this.§7"?§();
                              if(_loc3_ || this)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr100);
               }
               §§goto(addr69);
            }
            else
            {
               §§goto(addr97);
            }
         }
      }
      
      public function §while§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]"5§ = null;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this.§," §);
            §§push(this.§5N§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!(_loc5_ && _loc2_))
               {
                  if(this.§1F§ != null)
                  {
                     §§goto(addr63);
                  }
                  this.§5N§ = this.§," §;
               }
            }
            §§goto(addr63);
         }
         addr63:
         for each(_loc1_ in this.§1F§)
         {
            if(!_loc5_)
            {
               _loc1_.addTrail();
            }
         }
         if(_loc5_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]"5§ = null;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!(_loc4_ && param1))
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc3_ || this)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!_loc4_)
                        {
                           addr56:
                           §§push(this.§&!^§);
                           if(!_loc4_)
                           {
                              §§push(true);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(this.§&!^§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(true);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr86:
                                                §§push(§§pop().§2!e§(§§pop()));
                                                if(_loc3_ || param1)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      _loc2_.§[!g§.mTryToScream = §<Y§.§^!7§;
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§&!^§.getPigCount()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                         addr143:
                                                         §§push(this);
                                                         §§push(this.mPigsAnimationTimer2);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().mPigsAnimationTimer2 = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr158);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                       addr158:
                                       §§goto(addr161);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr143);
                  }
                  addr161:
                  §§goto(addr160);
               }
               addr160:
               if(this.mPigsAnimationTimer2 <= 0)
               {
                  if(_loc3_)
                  {
                     addr164:
                     §§push(this.§&!^§);
                     if(!_loc4_)
                     {
                        addr168:
                        §§push(true);
                        if(_loc3_)
                        {
                           addr172:
                           if(§§pop().isPigsAlive(§§pop()))
                           {
                              addr177:
                              _loc2_ = this.§&!^§.§2!e§(true);
                              addr176:
                              if(_loc3_ || this)
                              {
                                 _loc2_.§[!g§.mTryToBlink = §<Y§.§?!§;
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(this);
                                    §§push(250 + Math.random() * 500);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(§§pop() + 2000 / (3 + this.§&!^§.getPigCount()));
                                    }
                                    §§pop().mPigsAnimationTimer2 = §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr176);
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
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
                     while(true)
                     {
                        §§push(§&!>§.§-]§);
                        addr164:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr165:
                           while(true)
                           {
                              param6 = §§pop();
                              addr166:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr162:
                  }
                  while(true)
                  {
                     §]"%§.addScore(param1,param2);
                     loop7:
                     while(true)
                     {
                        this.§4"9§.addScore(param1);
                        loop8:
                        while(true)
                        {
                           §§push(param3);
                           loop9:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§pop();
                                          loop13:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         loop14:
                                                         while(!(_loc8_ && param1))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr99:
                                                                        break;
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(this.§>"+§);
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§push(!§§pop());
                                                                        }
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc8_ && this)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§goto(addr52);
                                                                           continue loop14;
                                                                        }
                                                                        addr124:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                                  return;
                                                                  addr52:
                                                               }
                                                               §§goto(addr124);
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr164);
                                             }
                                             break;
                                          }
                                          §§goto(addr165);
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         this.§ '§(param1.toString(),param4,param5,800,param6,0,0);
         §§goto(addr99);
      }
      
      public function § '§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param2))
         {
            §§push(param5);
            if(_loc8_)
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§&!>§.§8"+§);
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr89:
                     }
                     while(true)
                     {
                        param5 = §§pop();
                        addr91:
                        while(true)
                        {
                        }
                     }
                     addr62:
                     if(_loc9_ && param1)
                     {
                        continue;
                     }
                     return;
                     addr69:
                  }
               }
               while(true)
               {
                  this.§""4§.§[b§(§&!>§.§^"%§,§-5§.§@S§,§&!>§.§,"+§,param2,param3,param4,param1,param5,param6,param7);
                  if(!(_loc8_ || this))
                  {
                     continue;
                  }
                  §§goto(addr62);
               }
               §§goto(addr69);
            }
            §§goto(addr89);
         }
         §§goto(addr91);
      }
      
      public function §;O§(param1:§]"5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§1F§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  this.§1F§ = new Array();
               }
               while(true)
               {
                  continue loop0;
                  addr43:
                  §§pop().push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §1!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§&!3§.§1!@§();
            while(true)
            {
               this.§&!^§.§?3§();
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§>"+§ = true;
                     if(!(_loc2_ && _loc1_))
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
      
      public function §5!H§(param1:§]"5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§""4§.§'!F§(§-5§.§@T§);
         }
         loop0:
         while(true)
         {
            §§push(this.§1F§);
            if(!_loc3_)
            {
               if(§§pop().indexOf(param1) < 0)
               {
                  while(true)
                  {
                     §§push(this.§1F§);
                     if(_loc2_ || param1)
                     {
                        if(§§pop().length == 0)
                        {
                           if(_loc2_ || this)
                           {
                              if(!(_loc2_ || this))
                              {
                                 continue loop0;
                              }
                              addr65:
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.§1F§ = null;
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(this.§1F§);
                                    addr87:
                                    while(true)
                                    {
                                       §§pop().splice(this.§1F§.indexOf(param1),1);
                                       continue loop0;
                                    }
                                    §§goto(addr65);
                                 }
                                 addr85:
                              }
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr87);
                     addr110:
                  }
                  return;
               }
               §§goto(addr85);
            }
            §§goto(addr87);
         }
      }
      
      public function §3"%§(param1:§>n§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§?!j§ = this.§&!^§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc7_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr43:
                  §§push(§[!6§.§`!W§);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        addr68:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr60:
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && this))
                     {
                        §§goto(addr68);
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc7_)
                  {
                     §§push(param1.§<"$§);
                     loop0:
                     while(true)
                     {
                        §§push(1);
                        loop1:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              addr149:
                              while(true)
                              {
                                 §§push(this.§?!j§);
                                 addr151:
                                 while(true)
                                 {
                                    §§pop().§;!t§(param1.§<"$§);
                                    addr154:
                                    loop4:
                                    while(true)
                                    {
                                       addr137:
                                       while(true)
                                       {
                                          §§push(this.§?!j§);
                                          if(!_loc7_)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    §§pop().§[!g§.§!!7§();
                                    addr144:
                                 }
                              }
                              addr149:
                           }
                           while(true)
                           {
                              §§push(param1.§[1§);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(0);
                                 if(!(_loc8_ || param2))
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(param1.§[1§);
                                             if(_loc8_ || this)
                                             {
                                                continue loop0;
                                             }
                                             addr117:
                                             _loc4_ = §§pop();
                                             addr118:
                                             if(_loc8_ || this)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr137);
                                                }
                                                else
                                                {
                                                   addr155:
                                                   §§push(_loc4_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(_loc8_ || param1)
                                                      {
                                                         §§push(§§pop() * param2);
                                                         if(_loc8_)
                                                         {
                                                            addr170:
                                                            §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   addr182:
                                                   var _loc5_:* = §§pop();
                                                   §§push(_loc4_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() * param2);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                         if(_loc8_ || param3)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      this.§?!j§.§ !K§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                   }
                                                   this.camera.§<a§(§`"=§.§=%§);
                                                   addr251:
                                                   addr271:
                                                   §§push(this.§,"1§);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               addr232:
                                                               this.§,"1§.§3"%§(this.§[g§.§?!Z§,param1.x,param1.y,param2,param3);
                                                               §§goto(addr242);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      addr242:
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr251);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr232);
                                                }
                                             }
                                             §§goto(addr144);
                                          }
                                          else
                                          {
                                             §§goto(addr149);
                                          }
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr155);
                              }
                              break;
                           }
                           §§goto(addr182);
                        }
                     }
                  }
                  §§goto(addr149);
               }
               else
               {
                  §§push(§[!6§.§]![§);
                  if(_loc8_ || this)
                  {
                     §§goto(addr60);
                  }
               }
               §§goto(addr68);
            }
         }
         §§goto(addr43);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§+F§ = true;
         }
      }
      
      private function §7"?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§+F§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr166);
               }
               loop1:
               while(true)
               {
                  this.§+F§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(this.activeObject);
                     while(true)
                     {
                        §§push(§§pop() is §>G§);
                        continue loop0;
                        loop11:
                        while(_loc1_ || _loc2_)
                        {
                           addr111:
                           §§push(§§pop().activateSpecialPower(this.§1!V§));
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       this.§3"9§ = true;
                                    }
                                 }
                                 while(_loc1_ || _loc2_)
                                 {
                                 }
                                 addr166:
                                 return;
                                 addr124:
                              }
                              addr54:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§,"1§);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§push(this.§,"1§);
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                addr102:
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr124);
                                                }
                                                addr60:
                                             }
                                          }
                                          addr53:
                                       }
                                       return;
                                    }
                                    break;
                                 }
                                 §§pop().§7!j§(this.§[g§.§?!Z§);
                                 §§goto(addr53);
                              }
                              §§goto(addr111);
                           }
                           loop6:
                           while(true)
                           {
                              §§push(this.activeObject);
                              if(!(_loc1_ || this))
                              {
                                 continue loop11;
                              }
                              §§push((§§pop() as §>G§).§6S§);
                              if(_loc1_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc2_)
                                    {
                                       addr98:
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§&!^§.§71§();
                                             §§goto(addr60);
                                          }
                                          §§goto(addr102);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr114);
                                    }
                                    §§goto(addr54);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop6;
                                    }
                                    addr146:
                                 }
                              }
                              §§goto(addr98);
                           }
                           addr114:
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §+j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§&!^§.§+j§();
         }
      }
      
      public function §3O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§&!^§.§5!F§();
         }
      }
      
      public function §49§() : §9"§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9"§ = new §9"§();
         if(_loc2_)
         {
            _loc1_.mScoreGold = this.§"!J§.mScoreGold;
            loop0:
            while(true)
            {
               _loc1_.mScoreSilver = this.§"!J§.mScoreSilver;
               while(true)
               {
                  this.§ Y§.writeCameraInformation(_loc1_);
                  while(!_loc3_)
                  {
                     while(!(_loc3_ && _loc1_))
                     {
                        if(!_loc3_)
                        {
                           this.§&!3§.writeSlingshotInformation(_loc1_);
                           while(_loc2_)
                           {
                              _loc1_.theme = this.§+!S§.getCurrentThemeName();
                              if(!_loc3_)
                              {
                                 return _loc1_;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§&!^§.writeObjectInformation(_loc1_);
            §§goto(addr60);
         }
      }
      
      public function §]#§() : int
      {
         return this.§"!J§.mScoreSilver;
      }
      
      public function §?@§() : int
      {
         return this.§"!J§.mScoreGold;
      }
      
      public function §>f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!J§.mScoreSilver = param1;
         }
      }
      
      public function §[!j§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!J§.mScoreGold = param1;
         }
      }
      
      public function §=V§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§?!f§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§?!f§);
                     addr78:
                     while(true)
                     {
                        §§pop().§""5§(param1,param2);
                        addr81:
                        while(true)
                        {
                        }
                     }
                  }
                  addr76:
               }
               while(true)
               {
                  §§push(this.§ Y§);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              §§push(this.§ Y§);
                              break;
                           }
                           §§goto(addr76);
                        }
                        addr60:
                     }
                     return;
                  }
                  break;
               }
               §§pop().updateCamera(0);
               §§goto(addr60);
            }
            §§goto(addr78);
         }
         §§goto(addr81);
      }
      
      public function get §]3§() : §9"§
      {
         return this.§"!J§;
      }
      
      public function get §1!V§() : §?"-§
      {
         return this.§&!^§;
      }
      
      protected function get §#" §() : §?%§
      {
         return this.§2g§;
      }
      
      public function get §#6§() : int
      {
         return §!!j§;
      }
   }
}
