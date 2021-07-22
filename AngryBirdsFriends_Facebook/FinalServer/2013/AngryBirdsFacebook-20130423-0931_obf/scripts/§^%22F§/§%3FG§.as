package §^"F§
{
   import §!!=§.§"l§;
   import §!!=§.§=H§;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §,l§.§#!,§;
   import §-p§.§4!`§;
   import §-r§.§!"M§;
   import §0D§.§3!R§;
   import §2"'§.§6!K§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §4!<§.§ !X§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §4!<§.§-!5§;
   import §4!<§.§3+§;
   import §4!<§.§9"<§;
   import §4!<§.§]D§;
   import §4!<§.§^!Z§;
   import §4!<§.§`!o§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §6!^§.b2Vec2;
   import §7"G§.§7!n§;
   import §8m§.§7!>§;
   import §8m§.§@"M§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §;u§.§+"9§;
   import §@!"§.§?l§;
   import §`!G§.§2"L§;
   import §`!G§.§=!D§;
   import §`!G§.§>o§;
   import §`!G§.§[!8§;
   import §`!G§.§]"'§;
   import §`!G§.§true §;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §?G§ extends EventDispatcher
   {
       
      
      private var §'!W§:§9"<§;
      
      private var §0"=§:Boolean = false;
      
      private var §#!§:§`!o§;
      
      private var §2"K§:int = -1;
      
      private var §5u§:Number;
      
      private var § ";§:Function;
      
      private var §3k§:Array;
      
      private var §-!r§:Number = -1;
      
      private var §<U§:§=!D§;
      
      private var §3!i§:Number = -1;
      
      private var §?"-§:§7!>§;
      
      private var §"""§:Vector.<§=!D§>;
      
      private var §2!i§:§6!K§ = null;
      
      private var §%""§:§6!K§ = null;
      
      private var §?!1§:Vector.<§'4§>;
      
      private var §5"#§:§'4§;
      
      private var §%V§:§!"M§;
      
      private var §9b§:Array;
      
      private var §["0§:Boolean = false;
      
      public function §?G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§3k§ = [];
            do
            {
               this.§?!1§ = new Vector.<§'4§>();
               do
               {
                  super();
               }
               while(_loc2_ && this);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function get §<&§() : int
      {
         return this.§?!1§.length;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§2"K§ = -1;
            while(true)
            {
               this.§-!r§ = -1;
               loop1:
               while(true)
               {
                  this.§#!§ = null;
                  while(true)
                  {
                     this.§3!i§ = -1;
                     loop3:
                     for(; _loc1_ || _loc2_; if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     },this.§3k§ = [],§§goto(addr104))
                     {
                        this.§<U§ = null;
                        loop4:
                        while(true)
                        {
                           this.§ ";§ = null;
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr62:
                              while(!(_loc2_ && _loc1_))
                              {
                                 this.§'!W§ = new §9"<§();
                                 if(_loc1_ || this)
                                 {
                                    addr40:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr47:
                                       if(!(_loc1_ || this))
                                       {
                                          while(true)
                                          {
                                             this.§%V§.mouseEnabled = true;
                                             continue loop1;
                                             §§goto(addr47);
                                          }
                                          addr104:
                                       }
                                       return;
                                       addr54:
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.§"""§ = new Vector.<§=!D§>();
               §§goto(addr62);
            }
         }
         §§goto(addr54);
      }
      
      public function reset() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         do
         {
            if(this.§?!1§.length <= 0)
            {
               if(_loc2_ || _loc3_)
               {
                  §§push(this.§5"#§);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc3_)
                        {
                           this.§`"8§(this.§5"#§.§;"5§);
                           if(_loc2_ || _loc3_)
                           {
                              addr102:
                              try
                              {
                              }
                              catch(e:Error)
                              {
                              }
                              this.§5"#§ = null;
                              §§push(this.§5"#§);
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     break;
                  }
                  §§pop().§;"5§.close();
                  if(_loc2_)
                  {
                     §§goto(addr102);
                  }
                  break;
               }
               break;
            }
            this.§?!1§.shift();
         }
         while(_loc2_ || _loc3_);
         
      }
      
      public function setController(param1:§!"M§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§%V§);
            while(true)
            {
               if(§§pop() == param1)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr75:
               }
               while(true)
               {
                  §§push(this.§%V§);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                  }
                  loop3:
                  do
                  {
                     this.§%V§ = param1;
                     while(!_loc3_)
                     {
                        this.init();
                        if(!_loc3_)
                        {
                           continue loop3;
                        }
                     }
                     §§goto(addr75);
                  }
                  while(!_loc2_);
                  
               }
            }
            return;
         }
      }
      
      public function run(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = null;
         if(_loc3_ || this)
         {
            if(this.§%V§)
            {
               loop0:
               while(true)
               {
                  this.§>x§(param1);
                  loop1:
                  while(true)
                  {
                     this.§<x§(param1);
                     loop2:
                     while(true)
                     {
                        §§push(this.§-!r§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr108:
                           while(true)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 addr109:
                                 return;
                                 addr109:
                              }
                              else
                              {
                                 addr172:
                              }
                              while(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(this);
                                    §§push(this.§-!r§);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§-!r§ = §§pop();
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  addr146:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr145);
         }
         §§goto(addr146);
      }
      
      protected function §<x§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Point = null;
         var _loc3_:§&=§ = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param1)
         {
            if(this.§0"=§)
            {
               addr37:
               _loc2_ = §?l§.§'h§.slingshot.§@!]§();
               _loc3_ = §?l§.§'h§.slingshot;
               if(_loc7_ || _loc2_)
               {
                  §§push(_loc2_ == null);
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
                              addr207:
                              while(true)
                              {
                                 §§push(_loc3_.mDragging);
                                 if(_loc7_ || this)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(-Math.cos(_loc3_.§[h§ / (180 / Math.PI)));
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    addr199:
                                    while(true)
                                    {
                                       §§push(Number(Math.sin(_loc3_.§[h§ / (180 / Math.PI))));
                                       if(!(_loc7_ || param1))
                                       {
                                          continue;
                                       }
                                       _loc5_ = §§pop();
                                       while(_loc7_)
                                       {
                                          §§push(this.§'!W§);
                                          loop7:
                                          while(true)
                                          {
                                             §§pop().§;"E§(_loc2_,new Point(_loc4_,_loc5_),_loc3_.getLaunchSpeed());
                                             addr126:
                                             loop8:
                                             while(true)
                                             {
                                                addr100:
                                                while(true)
                                                {
                                                   §§push(this.§'!W§);
                                                   addr103:
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ || this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(true);
                                                      while(true)
                                                      {
                                                         §§pop().enabled = §§pop();
                                                         addr112:
                                                         §§goto(addr208);
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                              }
                              §§goto(addr199);
                           }
                           else
                           {
                              §§push(this.§'!W§);
                              if(_loc7_)
                              {
                                 §§push(false);
                                 if(_loc7_)
                                 {
                                    §§pop().enabled = §§pop();
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             if(false)
                                             {
                                                §§goto(addr100);
                                             }
                                             §§goto(addr208);
                                          }
                                          else
                                          {
                                             §§goto(addr199);
                                          }
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr103);
                        }
                     }
                  }
               }
               §§goto(addr199);
            }
            addr208:
            while(_loc6_)
            {
               continue loop6;
            }
            addr208:
            return;
         }
         §§goto(addr37);
      }
      
      protected function §>x§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§=!D§ = null;
         if(_loc4_ || this)
         {
            if(this.§"""§)
            {
               if(_loc4_)
               {
                  _loc2_ = int(this.§"""§.length - 1);
                  addr39:
                  loop0:
                  while(_loc2_ >= 0)
                  {
                     _loc3_ = this.§"""§[_loc2_];
                     if(!(_loc5_ && this))
                     {
                        if(_loc3_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§&"+§)
                              {
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§"""§.splice(_loc2_,1);
                                    }
                                    addr118:
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       addr65:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ && this))
                                          {
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                       continue loop0;
                                       addr87:
                                    }
                                 }
                                 addr123:
                              }
                              else
                              {
                                 _loc3_.§>x§(param1);
                              }
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr123);
                              }
                           }
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr39);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         §§push(§#!,§.§&"5§.§]![§(§4!2§.§6"O§.§1!#§));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            if(_loc1_ > 0)
            {
               loop0:
               while(true)
               {
                  §#!,§.§&"5§.usePowerup(§4!2§.§6"O§.§1!#§);
                  while(true)
                  {
                     this.§41§(§4!2§.§6"O§.§1!#§);
                     loop2:
                     while(true)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           while(true)
                           {
                              §§push(LevelManager.§ T§);
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                              }
                              _loc2_ = §§pop();
                              continue loop2;
                           }
                           §§push(true);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           addr118:
                           return §§pop();
                           addr66:
                           addr107:
                        }
                        if(_loc4_ || _loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr135:
                     §§goto(addr118);
                  }
               }
            }
            §9"6§.§;!w§(§4!2§.§6"O§.§1!#§);
            §§goto(addr135);
         }
         §§goto(addr107);
      }
      
      public function §1"V§(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:b2Vec2 = null;
         if(_loc7_ || param1)
         {
            §§push(this.§2"K§);
            if(!_loc8_)
            {
               §§push(0);
               loop0:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc8_)
                  {
                     if(!§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§2"K§);
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(Number(Math.sin(this.§2"K§ / §^!Z§.§9y§ * (Math.PI * §^!Z§.§var §) + this.§5u§)));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() * §^!Z§.§5!k§);
                                       if(_loc7_)
                                       {
                                          if(!(_loc7_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop2;
                                       }
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§2"K§);
                                             if(!_loc7_)
                                             {
                                                break loop1;
                                             }
                                             §§push(§^!Z§.§9y§);
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                             addr145:
                                          }
                                          addr203:
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                this.§2"K§ = -1;
                                                if(!_loc8_)
                                                {
                                                   addr211:
                                                   §?l§.§'h§.mLevelEngine.mWorld.§&!@§(new b2Vec2(0,§?l§.§'h§.mLevelEngine.mWorld.§1_§().y));
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       _loc4_ = new b2Vec2(_loc3_,§?l§.§'h§.mLevelEngine.mWorld.§1_§().y);
                                       if(_loc7_ || _loc2_)
                                       {
                                          §?l§.§'h§.mLevelEngine.mWorld.§&!@§(_loc4_);
                                          if(!_loc8_)
                                          {
                                             var _loc5_:*;
                                             §§push((_loc5_ = this).§2"K§);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc6_:* = §§pop();
                                             if(!_loc8_)
                                             {
                                                _loc5_.§2"K§ = _loc6_;
                                             }
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                this.§5X§();
                                                if(!_loc8_)
                                                {
                                                   addr198:
                                                   break;
                                                }
                                                §§goto(addr269);
                                             }
                                             addr242:
                                             §§push(this.§#!§);
                                             §§push(§?l§.§'h§.camera);
                                             §§push(param1);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() * 1000);
                                             }
                                             if(!§§pop().§2r§(§§pop(),§§pop()))
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr266:
                                                   this.§#!§ = null;
                                                }
                                             }
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr198);
                                    }
                                    break;
                                 }
                                 break;
                              }
                              addr225:
                              §§push(this.§#!§);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       §§goto(addr242);
                                    }
                                    §§goto(addr266);
                                 }
                                 addr269:
                                 return;
                              }
                              §§goto(addr242);
                           }
                           addr81:
                           §§push(§§pop() < §§pop());
                           if(_loc7_ || _loc2_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§pop();
                              if(_loc7_ || this)
                              {
                                 §§goto(addr145);
                              }
                              §§goto(addr225);
                           }
                           addr137:
                        }
                        addr201:
                        §§goto(addr203);
                        §§push(§^!Z§.§9y§);
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr137);
               }
            }
            §§goto(addr201);
         }
         §§goto(addr211);
      }
      
      private function §5X§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§?l§.§'h§.camera.§;!s§());
         if(_loc7_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§"l§.§8! §);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / §"l§.§@!>§);
            if(!_loc6_)
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(§"l§.§,",§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() / §"l§.§@!>§);
               if(_loc7_)
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Math.random() - 0.5);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               var _loc5_:§="@§ = §?l§.§'h§.particles as §="@§;
               if(!(_loc6_ && _loc3_))
               {
                  §§push(this.§2"K§ % 2);
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           _loc5_.§="9§(_loc4_,§?l§.§'h§.§-!z§.§]2§);
                           addr210:
                           while(true)
                           {
                           }
                        }
                        addr203:
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc7_ || this)
                        {
                           §§push(Math.random() - 0.5);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(§§pop() * _loc2_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              addr193:
                              §§push(Number(§§pop()));
                           }
                           if(!_loc7_)
                           {
                              break;
                           }
                           _loc4_ = §§pop();
                           do
                           {
                              §§push(_loc5_);
                              §§push(_loc4_);
                              §§push(§?l§.§'h§.§-!z§.§]2§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(Math.random() * _loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() / 20);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§;C§(§§pop(),§§pop());
                           }
                           while(_loc6_ && _loc3_);
                           
                           if(!(_loc6_ && _loc2_))
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 return;
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr193);
                     }
                  }
               }
               §§goto(addr210);
            }
            §§goto(addr60);
         }
         §§goto(addr44);
      }
      
      private function §3p§(param1:Function, param2:Boolean = true, param3:Number = 600) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(this.§ ";§ == null)
            {
               this.§ ";§ = param1;
               loop0:
               while(true)
               {
                  (§?l§.§5-§ as §4!`§).mouseEnabled = false;
                  while(true)
                  {
                     this.§-!r§ = param3;
                     loop2:
                     for(; !_loc4_; while(true)
                     {
                        if(!(_loc5_ || param3))
                        {
                           continue loop2;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(_loc5_ || param1)
                        {
                           continue;
                        }
                     },§§goto(addr25))
                     {
                        §§push(§?l§.§'h§.camera);
                        if(!(_loc4_ && param2))
                        {
                           if(param2)
                           {
                              addr57:
                              §§push(§"l§.§',§);
                              if(_loc5_ || param3)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr89:
                                 §§push(int(§§pop()));
                              }
                           }
                           else
                           {
                              §§push(§"l§.§9!E§);
                              if(_loc5_ || param3)
                              {
                                 §§goto(addr89);
                              }
                           }
                           §§pop().§5"@§(§§pop());
                           continue;
                        }
                        §§goto(addr57);
                     }
                  }
               }
            }
            this.§3k§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         §§goto(addr152);
      }
      
      private function § A§(param1:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§+"9§ = null;
         if(!(_loc6_ && _loc3_))
         {
            if(!§8y§.isOpen)
            {
               if(!_loc6_)
               {
                  _loc2_ = null;
                  var _loc4_:* = param1;
                  addr214:
                  if(!_loc6_)
                  {
                     if(this.§[]§ === _loc4_)
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr334:
                           }
                        }
                        else
                        {
                           addr268:
                           §§push(2);
                           if(!_loc5_)
                           {
                           }
                        }
                     }
                     else if(this.§?",§ === _loc4_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(1);
                           if(_loc6_)
                           {
                              addr286:
                           }
                        }
                        else
                        {
                           §§goto(addr268);
                        }
                     }
                     else if(this.§2!D§ === _loc4_)
                     {
                        if(_loc5_ || this)
                        {
                           §§goto(addr268);
                        }
                        else
                        {
                           addr293:
                           §§push(4);
                           if(_loc6_)
                           {
                              addr311:
                           }
                        }
                     }
                     else
                     {
                        if(this.§-!]§ === _loc4_)
                        {
                           if(_loc5_)
                           {
                              §§push(3);
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr286);
                              }
                           }
                           else
                           {
                              addr331:
                              §§push(7);
                              if(!_loc6_)
                              {
                                 §§goto(addr334);
                              }
                           }
                        }
                        else
                        {
                           if(this.§<""§ === _loc4_)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr293);
                              }
                              else
                              {
                                 §§goto(addr331);
                              }
                           }
                           else if(this.§0!Z§ === _loc4_)
                           {
                              if(!_loc6_)
                              {
                                 §§push(5);
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr311);
                                 }
                              }
                              else
                              {
                                 addr318:
                                 §§push(6);
                                 if(_loc6_ && param1)
                                 {
                                    §§goto(addr334);
                                 }
                              }
                           }
                           else
                           {
                              if(this.§;!v§ === _loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr318);
                                 }
                                 else
                                 {
                                    §§goto(addr331);
                                 }
                              }
                              else if(this.§>"&§ === _loc4_)
                              {
                                 §§goto(addr331);
                              }
                              else
                              {
                                 §§push(8);
                              }
                              §§goto(addr331);
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr331);
                     }
                     switch(§§pop())
                     {
                        case 0:
                           addr204:
                           _loc2_ = §4!2§.§`!4§.§1!#§;
                           break;
                           addr205:
                           addr203:
                        case 1:
                           addr188:
                           _loc2_ = §4!2§.§8"1§.§1!#§;
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr205);
                           break;
                           addr187:
                        case 2:
                           addr167:
                           §§push(§4!2§.§<"O§.§1!#§);
                           if(!_loc6_)
                           {
                              addr170:
                              §§push(§§pop());
                              if(!(_loc6_ && this))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 break;
                              }
                              §§goto(addr204);
                           }
                           else
                           {
                              §§goto(addr188);
                           }
                           §§goto(addr204);
                        case 3:
                           addr149:
                           §§push(§4!2§.§3"$§.§1!#§);
                           if(_loc5_ || _loc2_)
                           {
                              addr157:
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 _loc2_ = §§pop();
                                 addr160:
                                 break;
                                 addr160:
                              }
                              else
                              {
                                 §§goto(addr170);
                              }
                           }
                           else
                           {
                              §§goto(addr167);
                           }
                           §§goto(addr204);
                        case 4:
                           addr134:
                           §§push(§4!2§.§-Y§.§1!#§);
                           if(!_loc6_)
                           {
                              addr137:
                              _loc2_ = §§pop();
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr188);
                              }
                              break;
                           }
                           §§goto(addr203);
                           §§goto(addr204);
                        case 5:
                           addr116:
                           §§push(§4!2§.§%!U§.§1!#§);
                           if(!_loc6_)
                           {
                              addr119:
                              §§push(§§pop());
                              if(!(_loc6_ && this))
                              {
                                 _loc2_ = §§pop();
                                 addr70:
                                 break;
                                 addr127:
                              }
                              else
                              {
                                 §§goto(addr149);
                              }
                           }
                           else
                           {
                              §§goto(addr137);
                           }
                           §§goto(addr188);
                        case 6:
                           §§push(§4!2§.§-Y§);
                           if(!(_loc6_ && param1))
                           {
                              addr83:
                              §§push(§§pop().§1!#§);
                              if(!_loc6_)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr102:
                                          _loc2_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr160);
                                             }
                                             else
                                             {
                                                §§goto(addr127);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr187);
                                    }
                                    else
                                    {
                                       §§goto(addr157);
                                    }
                                    §§goto(addr204);
                                 }
                                 else
                                 {
                                    §§goto(addr134);
                                 }
                              }
                              else
                              {
                                 §§goto(addr119);
                              }
                              §§goto(addr188);
                           }
                           else
                           {
                              §§goto(addr134);
                           }
                        case 7:
                           §§push(§4!2§.§!! §.§1!#§);
                           if(!(_loc6_ && _loc3_))
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_ || this)
                                 {
                                    addr53:
                                    §§push(§§pop());
                                    if(_loc5_ || param1)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr102);
                                    §§goto(addr70);
                                 }
                                 else
                                 {
                                    §§goto(addr116);
                                 }
                              }
                              else
                              {
                                 §§goto(addr83);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr53);
                     }
                     _loc3_ = §%"S§.§!C§.§2!d§() as §+"9§;
                     if(_loc5_)
                     {
                        §§push(Boolean(_loc3_));
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§pop();
                                 addr477:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr457:
                                    do
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    while(!_loc6_);
                                    
                                    continue loop1;
                                 }
                              }
                              addr476:
                           }
                           loop0:
                           while(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(_loc3_.§>"X§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§7!n§.§?"?§);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§&M§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc3_.§>"X§);
                                          loop8:
                                          for(; !(_loc6_ && param1); loop11:
                                          while(true)
                                          {
                                             §§push(_loc3_.§>"X§);
                                             if(!(_loc5_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(_loc2_);
                                             if(!_loc6_)
                                             {
                                                if(_loc6_ && _loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                §§pop().§ A§(§§pop());
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc6_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() == §4!2§.§-Y§.§1!#§)
                                                      {
                                                         break loop0;
                                                      }
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr396:
                                                      if(_loc5_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr457);
                                             }
                                             else
                                             {
                                                §§goto(addr451);
                                             }
                                          })
                                          {
                                             §§push(§7!n§.§+F§);
                                             while(true)
                                             {
                                                §§pop().addEventListener(§§pop(),this.§5!M§);
                                                addr454:
                                                while(true)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(_loc5_ || this)
                                 {
                                    §@"M§.§3"C§("Powerup_Intro","ChannelPowerups");
                                    §§goto(addr396);
                                 }
                                 §§goto(addr477);
                              }
                           }
                           §§goto(addr478);
                        }
                        §§goto(addr476);
                     }
                     §§goto(addr462);
                  }
                  §§goto(addr331);
                  addr214:
               }
               §§goto(addr214);
            }
            addr478:
            return;
         }
         §§goto(addr214);
      }
      
      protected function §5!M§(param1:§7!n§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.movieClip.name == "MovieClip_PowerUp_Wingman")
            {
            }
         }
      }
      
      protected function §&M§(param1:§7!n§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§%"S§.§!C§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop().§2!d§() as §+"9§)
               {
                  if(!(_loc2_ && this))
                  {
                     addr91:
                     (§%"S§.§!C§.§2!d§() as §+"9§).§>"X§.removeEventListener(§7!n§.§?"?§,this.§&M§);
                  }
                  while(true)
                  {
                     addr37:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     §@"M§.§3"C§("Bird_Wingman_Animation","ChannelWingman");
                     addr20:
                     return;
                     addr58:
                  }
                  addr100:
               }
               while(true)
               {
                  if(param1.movieClip.name == "MovieClip_PowerUp_Wingman")
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr37);
                     }
                     §§goto(addr58);
                  }
                  break;
                  §§goto(addr100);
               }
               §§goto(addr20);
            }
            §§goto(addr91);
         }
         §§goto(addr20);
      }
      
      private function §[]§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = null;
         var _loc1_:§3+§ = §?l§.§'h§.slingshot as §3+§;
         var _loc2_:§]D§ = _loc1_.§9!L§[_loc1_.§<"§] as §]D§;
         if(_loc14_)
         {
            _loc2_.§;"F§ = true;
         }
         §§push(§^!Z§.§]"-§);
         if(!(_loc13_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc12_:* = _loc2_.name;
         if(_loc14_)
         {
            §§push("BIRD_BLACK");
            if(_loc14_ || _loc2_)
            {
               if(§§pop() === _loc12_)
               {
                  if(!(_loc13_ && this))
                  {
                     §§push(0);
                     if(_loc13_ && _loc2_)
                     {
                        addr426:
                     }
                  }
                  else
                  {
                     addr476:
                     §§push(8);
                     if(_loc14_)
                     {
                        addr479:
                     }
                  }
               }
               else
               {
                  §§push("BIRD_BLUE");
                  if(!_loc13_)
                  {
                     if(§§pop() === _loc12_)
                     {
                        if(!(_loc13_ && _loc2_))
                        {
                           §§push(1);
                           if(!(_loc13_ && this))
                           {
                              addr496:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr276:
                                    _loc3_ = Number(§^!Z§.§?"8§);
                                    addr505:
                                    §@"M§.§3"C§("Powerup_Superseed","ChannelPowerups");
                                    if(_loc14_ || this)
                                    {
                                       break;
                                    }
                                    var _loc4_:Vector.<§ !X§>;
                                    if((_loc4_ = _loc1_.§9!L§).length > 0)
                                    {
                                       if(_loc14_)
                                       {
                                          §§push(5);
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(§§pop() + Math.random() * 10);
                                             if(_loc14_ || _loc1_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc14_)
                                                {
                                                   addr552:
                                                   _loc5_ = §§pop();
                                                   if(_loc14_ || _loc1_)
                                                   {
                                                      §§push(8);
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                      }
                                                      addr798:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      addr792:
                                                      while(!_loc13_)
                                                      {
                                                      }
                                                      §§goto(addr798);
                                                   }
                                                   addr799:
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop1:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         loop3:
                                                         while(!(_loc13_ && _loc1_))
                                                         {
                                                            _loc8_ = §§pop();
                                                            loop20:
                                                            while(true)
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc14_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(§§pop() >= _loc5_)
                                                                  {
                                                                     if(!(_loc13_ && _loc1_))
                                                                     {
                                                                        while(_loc4_.length > 0)
                                                                        {
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §2"L§.§"x§(_loc1_.§4!K§,_loc1_.§7!#§,10,5,15);
                                                                                    addr626:
                                                                                    loop13:
                                                                                    while(_loc14_)
                                                                                    {
                                                                                       _loc1_.§=a§(_loc1_.§4!K§,_loc1_.§7!#§);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc14_ || _loc1_)
                                                                                       {
                                                                                          if(_loc14_ || this)
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       addr735:
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          if(_loc14_ || _loc3_)
                                                                                          {
                                                                                             if(_loc14_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr727:
                                                                                                      §§push(§§pop() + _loc6_ * (Math.random() * 0.5));
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         _loc10_ = §§pop();
                                                                                                         addr739:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc14_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§push(_loc4_[0].name);
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc11_ = §§pop());
                                                                                                               }
                                                                                                               if(§§pop() == "BIRD_WINGMAN")
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc11_ = "BIRD_RED";
                                                                                                                     addr703:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr701:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §?l§.§'h§.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.§4!K§,_loc1_.§7!#§,1250,"",§0i§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
                                                                                                                  break loop13;
                                                                                                                  §§goto(addr703);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr799);
                                                                                                            }
                                                                                                         }
                                                                                                         addr739:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr770:
                                                                                                            while(!(_loc13_ && _loc1_))
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr769:
                                                                                                      }
                                                                                                   }
                                                                                                   addr736:
                                                                                                }
                                                                                                §§goto(addr727);
                                                                                             }
                                                                                             §§goto(addr770);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr736);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          _loc8_++;
                                                                                          while(!(_loc13_ && _loc3_))
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          addr631:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr701);
                                                                                       }
                                                                                       §§goto(addr703);
                                                                                    }
                                                                                    addr626:
                                                                                 }
                                                                                 §§goto(addr739);
                                                                              }
                                                                              §§goto(addr631);
                                                                           }
                                                                           §§goto(addr626);
                                                                        }
                                                                        addr561:
                                                                        return;
                                                                        addr602:
                                                                     }
                                                                     §§goto(addr626);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr769);
                                                                     §§push(Math.random() * (Math.PI * 2));
                                                                  }
                                                                  §§goto(addr739);
                                                               }
                                                               §§goto(addr561);
                                                            }
                                                         }
                                                         §§goto(addr792);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr735);
                                          }
                                          §§goto(addr552);
                                       }
                                       §§goto(addr789);
                                    }
                                    §§goto(addr602);
                                    addr275:
                                    addr277:
                                 case 1:
                                    addr267:
                                    _loc3_ = Number(§^!Z§.§1R§);
                                    addr266:
                                    if(!_loc13_)
                                    {
                                       §§goto(addr505);
                                    }
                                    break;
                                 case 2:
                                    addr257:
                                    _loc3_ = Number(§^!Z§.§&"1§);
                                    if(_loc13_)
                                    {
                                    }
                                    §§goto(addr505);
                                 case 3:
                                    addr239:
                                    §§push(§^!Z§.§"7§);
                                    if(_loc14_)
                                    {
                                       if(!(_loc13_ && _loc1_))
                                       {
                                          addr249:
                                          _loc3_ = Number(§§pop());
                                          addr250:
                                       }
                                       else
                                       {
                                          §§goto(addr275);
                                       }
                                       §§goto(addr505);
                                    }
                                    §§goto(addr276);
                                 case 4:
                                    addr208:
                                    §§push(§^!Z§.§,=§);
                                    if(!_loc13_)
                                    {
                                       addr211:
                                       §§push(Number(§§pop()));
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          if(_loc14_ || _loc2_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc14_ || _loc1_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr266);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr257);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr249);
                                    }
                                    §§goto(addr276);
                                 case 5:
                                    addr186:
                                    §§push(Number(§^!Z§.§+!V§));
                                    if(_loc14_ || _loc2_)
                                    {
                                       if(!(_loc13_ && this))
                                       {
                                          _loc3_ = §§pop();
                                          addr202:
                                       }
                                       else
                                       {
                                          §§goto(addr257);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr208);
                                    }
                                    §§goto(addr276);
                                 case 6:
                                    addr172:
                                    §§push(Number(§^!Z§.§44§));
                                    if(_loc14_)
                                    {
                                       _loc3_ = §§pop();
                                       addr176:
                                       if(_loc14_)
                                       {
                                          if(!_loc14_)
                                          {
                                             §§goto(addr250);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr202);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr211);
                                    }
                                    §§goto(addr276);
                                 case 7:
                                    addr157:
                                    §§push(Number(§^!Z§.§21§));
                                    if(_loc14_ || _loc1_)
                                    {
                                       _loc3_ = §§pop();
                                       addr166:
                                    }
                                    else
                                    {
                                       §§goto(addr186);
                                    }
                                    §§goto(addr276);
                                 case 8:
                                    §§push(§^!Z§.§9!o§);
                                    if(!_loc13_)
                                    {
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          if(_loc14_)
                                          {
                                             if(_loc14_)
                                             {
                                                addr120:
                                                §§push(Number(§§pop()));
                                                if(_loc14_ || _loc2_)
                                                {
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               §§goto(addr276);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr277);
                                                            }
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr267);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr157);
                                             }
                                             else
                                             {
                                                §§goto(addr239);
                                             }
                                          }
                                          §§goto(addr186);
                                       }
                                       else
                                       {
                                          §§goto(addr172);
                                       }
                                    }
                                    §§goto(addr120);
                                 case 9:
                                    §§push(§^!Z§.§;"N§);
                                    if(!_loc13_)
                                    {
                                       if(_loc14_)
                                       {
                                          addr75:
                                          §§push(Number(§§pop()));
                                          if(!(_loc13_ && this))
                                          {
                                             _loc3_ = §§pop();
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                if(_loc14_)
                                                {
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      if(true)
                                                      {
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr176);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr166);
                                             }
                                             §§goto(addr276);
                                          }
                                          else
                                          {
                                             §§goto(addr172);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr120);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr75);
                                 default:
                                    §§goto(addr276);
                              }
                              _loc1_.§;!q§(_loc3_);
                              §§goto(addr276);
                           }
                           §§goto(addr496);
                        }
                        else
                        {
                           addr397:
                           §§push(4);
                           if(!(_loc13_ && _loc2_))
                           {
                              addr405:
                              §§goto(addr496);
                           }
                           else
                           {
                              §§goto(addr426);
                           }
                        }
                        §§goto(addr496);
                     }
                     else
                     {
                        §§push("BIRD_GREEN");
                        if(_loc14_ || _loc2_)
                        {
                           addr341:
                           if(§§pop() === _loc12_)
                           {
                              if(!_loc13_)
                              {
                                 §§push(2);
                                 if(!(_loc14_ || _loc3_))
                                 {
                                    addr442:
                                 }
                                 §§goto(addr496);
                              }
                              else
                              {
                                 §§goto(addr397);
                              }
                           }
                           else
                           {
                              §§push("BIRD_WHITE");
                              if(!_loc13_)
                              {
                                 if(§§pop() === _loc12_)
                                 {
                                    if(_loc14_ || _loc2_)
                                    {
                                       §§push(3);
                                       if(_loc13_ && this)
                                       {
                                       }
                                       §§goto(addr496);
                                    }
                                    else
                                    {
                                       §§goto(addr397);
                                    }
                                 }
                                 else
                                 {
                                    §§push("BIRD_YELLOW");
                                    if(_loc14_)
                                    {
                                       addr378:
                                       if(§§pop() === _loc12_)
                                       {
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§goto(addr397);
                                          }
                                          else
                                          {
                                             addr434:
                                             §§push(6);
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                §§goto(addr442);
                                             }
                                             else
                                             {
                                                addr463:
                                                §§goto(addr496);
                                             }
                                          }
                                          §§goto(addr496);
                                       }
                                       else
                                       {
                                          §§push("BIRD_RED");
                                          if(!(_loc13_ && this))
                                          {
                                             if(§§pop() === _loc12_)
                                             {
                                                if(!_loc13_)
                                                {
                                                   §§push(5);
                                                   if(!(_loc13_ && _loc1_))
                                                   {
                                                      §§goto(addr426);
                                                   }
                                                }
                                                else
                                                {
                                                   addr455:
                                                   §§push(7);
                                                   if(_loc13_ && _loc2_)
                                                   {
                                                      §§goto(addr479);
                                                   }
                                                }
                                                §§goto(addr496);
                                             }
                                             else
                                             {
                                                §§push("BIRD_ORANGE");
                                                if(_loc14_)
                                                {
                                                   addr430:
                                                   if(§§pop() === _loc12_)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr434);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr455);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("BIRD_VANTERRENCE");
                                                      if(_loc14_ || _loc3_)
                                                      {
                                                         addr451:
                                                         if(§§pop() === _loc12_)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               §§goto(addr455);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr476);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("BIRD_RED_BIG");
                                                            if(!(_loc13_ && _loc1_))
                                                            {
                                                               addr472:
                                                               if(§§pop() === _loc12_)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§goto(addr476);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr481:
                                                                  if("BIRD_WINGMAN" !== _loc12_)
                                                                  {
                                                                     §§goto(addr496);
                                                                     §§push(10);
                                                                  }
                                                               }
                                                               §§goto(addr496);
                                                               §§goto(addr496);
                                                            }
                                                         }
                                                         §§goto(addr496);
                                                      }
                                                      §§goto(addr481);
                                                   }
                                                   §§goto(addr496);
                                                }
                                             }
                                             §§goto(addr496);
                                          }
                                          §§goto(addr472);
                                       }
                                    }
                                    §§goto(addr451);
                                 }
                                 §§goto(addr496);
                              }
                              §§goto(addr430);
                           }
                           §§goto(addr496);
                        }
                        §§goto(addr378);
                     }
                  }
                  §§goto(addr451);
               }
               §§goto(addr496);
            }
            §§goto(addr341);
         }
         §§goto(addr476);
      }
      
      private function §2!D§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(!(_loc9_ && this))
         {
            §@"M§.§3"C§("Powerup_SuperSlingshot","ChannelPowerups");
            if(!(_loc9_ && _loc2_))
            {
               §§push(§?l§.§'h§);
               if(_loc8_)
               {
                  §§push(§§pop().slingshot);
                  if(!_loc9_)
                  {
                     (§§pop() as §3+§).§"T§();
                     addr58:
                     §§push(§?l§.§'h§.slingshot);
                  }
                  var _loc1_:Vector.<§ !X§> = §§pop().§9!L§;
                  if(!(_loc9_ && _loc2_))
                  {
                     if(_loc1_.length > 0)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           addr337:
                           §§push(50);
                           while(true)
                           {
                              §§push(§§pop() + Math.random() * 5);
                              addr343:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr344:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                           addr338:
                        }
                        loop0:
                        while(true)
                        {
                           §§push(8);
                           loop1:
                           while(!_loc9_)
                           {
                              if(_loc8_)
                              {
                                 _loc3_ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(1);
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       §§push(0);
                                       addr317:
                                       continue loop2;
                                       if(_loc9_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc9_)
                                       {
                                          continue loop1;
                                       }
                                       _loc5_ = §§pop();
                                       if(_loc9_ && _loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc8_ || this))
                                       {
                                          continue loop0;
                                       }
                                       addr70:
                                       if(_loc5_ >= _loc2_)
                                       {
                                          if(_loc9_)
                                          {
                                             addr82:
                                             if(_loc8_ || this)
                                             {
                                                §§goto(addr70);
                                             }
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                _loc5_++;
                                                §§goto(addr82);
                                             }
                                             addr246:
                                             if(_loc8_ || _loc3_)
                                             {
                                                §§push(§?l§.§'h§.particles);
                                                §§push(§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES);
                                                §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                                                §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                                                §§push(§?l§.§'h§.slingshot.§4!K§);
                                                §§push(§?l§.§'h§.slingshot.§7!#§);
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   §§push(Math.random() * 6);
                                                   if(_loc8_)
                                                   {
                                                      addr122:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(1250 + Math.random() * 500);
                                                   }
                                                   §§push("");
                                                   §§push(§0i§.§2!&§);
                                                   §§push(_loc7_);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * Math.cos(_loc6_));
                                                      if(!(_loc9_ && _loc1_))
                                                      {
                                                         addr150:
                                                         §§push(_loc4_);
                                                         if(!_loc9_)
                                                         {
                                                            addr154:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc7_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc8_)
                                                               {
                                                                  addr170:
                                                                  §§push(§§pop() * Math.sin(_loc6_));
                                                                  if(_loc9_ && this)
                                                                  {
                                                                  }
                                                                  addr183:
                                                                  §§push(5);
                                                                  §§push(_loc7_);
                                                                  if(_loc8_ || _loc1_)
                                                                  {
                                                                     §§push(§§pop() * 20);
                                                                  }
                                                                  §§pop().§"!J§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc4_));
                                                                  §§goto(addr82);
                                                               }
                                                               §§push(§§pop() * _loc4_);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr122);
                                             }
                                             addr266:
                                             §§push(0.2);
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc9_ && _loc1_))
                                                   {
                                                      addr227:
                                                      §§push(§§pop() + _loc3_ * (Math.random() * 0.8));
                                                      if(_loc8_ || _loc1_)
                                                      {
                                                         addr240:
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               addr245:
                                                               _loc7_ = §§pop();
                                                               §§goto(addr246);
                                                            }
                                                            addr264:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc6_ = §§pop();
                                                         §§goto(addr266);
                                                      }
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr76);
                                       }
                                       §§goto(addr264);
                                       §§push(Math.random() * (Math.PI * 2));
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr338);
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr344);
                        }
                     }
                     addr76:
                     return;
                  }
                  §§goto(addr337);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr58);
      }
      
      private function §-!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@"M§.§3"C§("Menu_Confirm","ChannelPowerups");
         }
         while(true)
         {
            this.§0"=§ = true;
            while(!_loc2_)
            {
               (§?l§.§'h§.slingshot as §3+§).§6"G§();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §0!Z§() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:§[!8§ = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:§=!D§ = null;
         var _loc1_:Point = this.§%V§.§'"R§();
         _loc1_ = §?l§.§'h§.screenToBox2D(_loc1_.x,_loc1_.y);
         if(!(_loc12_ && this))
         {
            this.§?"-§ = §@"M§.§3"C§("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         }
         §§push((§?l§.§'h§.camera as §=H§).§"!4§());
         if(_loc13_)
         {
            §§push(§^!Z§.§2!b§);
            if(_loc13_)
            {
               §§push(§§pop() / 2);
            }
            §§push(§§pop() + §§pop());
            if(_loc13_)
            {
               addr71:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push((§?l§.§'h§.camera as §=H§).§@"A§());
            if(_loc13_)
            {
               §§push(§^!Z§.§2!b§);
               if(_loc13_)
               {
                  §§push(§§pop() / 2);
               }
               §§push(§§pop() + §§pop());
               if(!_loc12_)
               {
                  addr90:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               var _loc4_:Number = §?l§.§'h§.screenToBox2D(0,0).y;
               if(_loc13_ || this)
               {
                  §§push(§?l§.§'h§);
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(§§pop().camera);
                     if(_loc13_ || this)
                     {
                        §§push(§§pop().§=#§);
                        if(_loc13_)
                        {
                           if(§§pop() < _loc4_)
                           {
                              addr133:
                              addr132:
                              addr130:
                              §§push(§?l§.§'h§.camera.§=#§);
                              if(!_loc12_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc12_)
                                 {
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr148);
                           }
                           else
                           {
                              §§push(_loc4_);
                              if(_loc13_ || this)
                              {
                                 addr148:
                                 §§push(Number(§§pop()));
                                 if(_loc12_ && _loc1_)
                                 {
                                 }
                                 addr157:
                                 var _loc5_:Number = §§pop();
                                 var _loc6_:Vector.<§[!8§> = (§?l§.§'h§.§?x§ as §]"'§).§+!T§(3);
                                 var _loc7_:int = 0;
                                 §§goto(addr156);
                              }
                           }
                           addr156:
                           loop0:
                           while(_loc7_ < 3)
                           {
                              _loc8_ = _loc6_[_loc7_];
                              if(_loc13_)
                              {
                                 §§push(_loc5_);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(Math.random() * 30);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc7_ * 10);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop4:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc8_ == null)
                                                      {
                                                         if(!(_loc12_ && this))
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(_loc2_);
                                                         }
                                                         addr332:
                                                         _loc11_ = this.§'i§().§[[§(_loc9_,_loc10_,0);
                                                         if(!_loc12_)
                                                         {
                                                            this.§"""§[_loc7_] = _loc11_;
                                                            if(_loc13_)
                                                            {
                                                               _loc7_++;
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr306:
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc8_.§?!l§);
                                                         if(!(_loc12_ && this))
                                                         {
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               §§push(Math.random() * §^!Z§.§2!b§);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§^!Z§.§2!b§);
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                  }
                                                                  if(!(_loc12_ && _loc2_))
                                                                  {
                                                                     if(!(_loc13_ || _loc3_))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr241:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           if(_loc13_ || _loc1_)
                                                                           {
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    addr262:
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr306);
                                                                                       }
                                                                                       §§goto(addr332);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr289:
                                                                                       §§push(_loc3_ - _loc2_);
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          addr301:
                                                                                          §§push(§§pop() + §§pop() * Math.random());
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            addr303:
                                                            if(_loc12_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            _loc9_ = §§pop();
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr303);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr332);
                           }
                           return;
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr132);
               }
               §§goto(addr130);
            }
            §§goto(addr90);
         }
         §§goto(addr71);
      }
      
      private function §?",§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[!8§ = null;
         if(_loc4_)
         {
            this.§%V§.§6!#§(Math.round(1000 * §-!5§.§-"V§ * §^!Z§.§9y§));
         }
         loop0:
         while(true)
         {
            §@"M§.§3"C§("Powerup_Earthquake","ChannelPowerups");
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  this.§2"K§ = 0;
                  while(_loc4_)
                  {
                     this.§5u§ = Math.random() * (Math.PI * 2);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        break loop2;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     §§push(§?l§.§'h§.objects.§57§());
                     if(_loc4_ || _loc1_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     var _loc2_:int = 0;
                     addr201:
                     if(_loc2_ < _loc1_)
                     {
                        §§push(§?l§.§'h§);
                        if(!(_loc5_ && this))
                        {
                           _loc3_ = §§pop().objects.§,!§(_loc2_);
                           if(_loc4_)
                           {
                              §§push(_loc3_ is §>o§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr164:
                                 if(§§pop() || _loc3_ is §true §)
                                 {
                                    addr165:
                                    _loc3_.getBody().SetAwake(true);
                                    if(!(_loc5_ && this))
                                    {
                                       addr126:
                                       §§push(_loc3_ is §true §);
                                       if(!(_loc5_ && this))
                                       {
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             if(§§pop())
                                             {
                                                addr145:
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      (_loc3_ as §true §).§7!;§();
                                                      addr98:
                                                      _loc2_++;
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr126);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      addr158:
                                                      §§goto(addr158);
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr98);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr164);
                                       addr176:
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr228);
                     }
                     if(!(_loc5_ && this))
                     {
                        this.§#!§ = new §`!o§(§^!Z§.§%C§,§^!Z§.§#!J§);
                        if(_loc4_ || this)
                        {
                           addr226:
                           addr228:
                           §§pop().§<;§();
                           return;
                           §§push(§?l§.§'h§);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr226);
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §<""§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§ !X§ = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§&=§ = §?l§.§'h§.slingshot;
         if(_loc6_ || this)
         {
            if(_loc1_.§9!L§.length > 0)
            {
               addr40:
               _loc3_ = _loc1_.§9!L§[_loc1_.§<"§];
               if(_loc6_ || this)
               {
                  §§push(_loc3_.§[q§);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr224:
                     while(true)
                     {
                        _loc4_ = §§pop();
                     }
                     addr160:
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                     _loc4_ = §§pop();
                     while(true)
                     {
                        addr78:
                        §§goto(addr226);
                     }
                  }
               }
               §§goto(addr225);
            }
            addr226:
            while(true)
            {
               _loc3_.§,";§();
               continue loop10;
            }
            §§push(§?l§.§'h§.slingshot);
            §§push("BIRD_CHRISTMAS");
            §§push(_loc1_.§4!K§);
            if(!_loc7_)
            {
               §§push(0.7);
               if(!_loc7_)
               {
                  §§goto(addr238);
               }
               §§goto(addr242);
            }
            addr238:
            §§push(§§pop() + §§pop());
            §§push(_loc1_.§7!#§);
            if(!_loc7_)
            {
               addr242:
               §§push(§§pop() + 0.1);
            }
            var _loc2_:§ !X§ = §§pop().§<-§(§§pop(),§§pop(),§§pop(),0);
            if(_loc6_ || _loc1_)
            {
               §@"M§.§3"C§("Sound_Santa_Bomb_Bird_Arrival");
               do
               {
                  (§?l§.§'h§.getController() as §4!`§).§=!q§();
               }
               while(!(_loc6_ || _loc2_));
               
            }
            return;
         }
         §§goto(addr40);
      }
      
      private function §;!v§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3+§ = §?l§.§'h§.slingshot as §3+§;
         if(_loc3_ || _loc2_)
         {
            if(_loc1_.§&"F§())
            {
               if(_loc3_)
               {
                  addr46:
                  this.§[]§();
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      private function §'i§() : §]"'§
      {
         return §?l§.§'h§.§?x§ as §]"'§;
      }
      
      public function usePowerup(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && this))
         {
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(§4!2§.§`!4§.§1!#§);
               if(!(_loc5_ && param1))
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(_loc5_ && _loc3_)
                           {
                              addr290:
                           }
                        }
                        else
                        {
                           addr233:
                           §§push(3);
                           if(_loc5_)
                           {
                              addr256:
                           }
                        }
                     }
                     else
                     {
                        §§push(§4!2§.§<"O§.§1!#§);
                        if(_loc4_)
                        {
                           §§push(_loc3_);
                           if(_loc4_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       addr295:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§3p§(this.§[]§,false);
                                             break;
                                             addr108:
                                          case 1:
                                             this.§3p§(this.§2!D§,false);
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             addr304:
                                             break;
                                          case 2:
                                             this.§3p§(this.§-!]§,false);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                this.§41§(param1);
                                                while(true)
                                                {
                                                   §§goto(addr321);
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   (§?l§.§'h§ as §%6§).usePowerup(param1);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         if(false)
                                                         {
                                                            addr321:
                                                            §§goto(addr355);
                                                         }
                                                         else
                                                         {
                                                            addr355:
                                                            while(true)
                                                            {
                                                               §#!,§.§&"5§.usePowerup(param1);
                                                               continue loop1;
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                      }
                                                      addr319:
                                                   }
                                                   §§goto(addr326);
                                                }
                                                addr360:
                                                §§push(LevelManager.§ T§);
                                                if(_loc4_)
                                                {
                                                   addr359:
                                                   §§push(§§pop());
                                                }
                                                var _loc2_:* = §§pop();
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §@q§.§5! §(param1,_loc2_);
                                                }
                                                return true;
                                                addr345:
                                             }
                                             break;
                                             addr354:
                                          case 3:
                                             this.§3p§(this.§?",§,true);
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§goto(addr345);
                                          case 4:
                                             this.§3p§(this.§0!Z§,true);
                                             if(_loc4_ || this)
                                             {
                                                addr43:
                                                break;
                                             }
                                             §§goto(addr319);
                                          case 5:
                                             this.§3p§(this.§;!v§,false);
                                             break;
                                             addr51:
                                          case 6:
                                             this.§3p§(this.§>"&§,true);
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr43);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr108);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr51);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr304);
                                             }
                                       }
                                       this.§-!&§(param1);
                                       §§goto(addr354);
                                    }
                                    else
                                    {
                                       addr211:
                                       §§goto(addr295);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr233);
                                 }
                                 §§goto(addr295);
                              }
                              else
                              {
                                 §§push(§4!2§.§3"$§.§1!#§);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_ || param1)
                                    {
                                       addr200:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr211);
                                             }
                                             else
                                             {
                                                §§goto(addr290);
                                             }
                                          }
                                          §§goto(addr295);
                                       }
                                       else
                                       {
                                          §§push(§4!2§.§8"1§.§1!#§);
                                          if(_loc4_ || this)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr233);
                                                   }
                                                   else
                                                   {
                                                      addr253:
                                                      §§push(4);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr295);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§4!2§.§%!U§.§1!#§);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr247:
                                                      §§push(_loc3_);
                                                      if(_loc4_)
                                                      {
                                                         addr250:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr253);
                                                            }
                                                            else
                                                            {
                                                               addr278:
                                                               §§push(5);
                                                               if(_loc5_)
                                                               {
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§4!2§.§-Y§.§1!#§);
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr278);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr286:
                                                                     if(§4!2§.§!! §.§1!#§ !== _loc3_)
                                                                     {
                                                                        §§goto(addr295);
                                                                        §§push(7);
                                                                     }
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr295);
                                             }
                                          }
                                          §§goto(addr286);
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr247);
                              }
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr200);
               }
               §§goto(addr286);
            }
            §§goto(addr233);
         }
         §§goto(addr359);
      }
      
      private function §>"&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§%V§.§6!#§(Math.round(3000 * §-!5§.§-"V§ * §^!Z§.§9y§));
            do
            {
               (§?l§.§'h§.§?x§ as §]"'§).§%u§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §41§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = (§?l§.§'h§ as §%6§).§'!>§();
         var _loc3_:§3d§ = new §3d§();
         if(_loc5_)
         {
            _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc4_:§'4§ = new §'4§(param1,_loc2_,_loc3_);
         if(!_loc6_)
         {
            if(this.§5"#§ == null)
            {
               this.§<H§(_loc4_);
               if(!(_loc6_ && _loc3_))
               {
                  if(_loc6_ && param1)
                  {
                     addr92:
                     this.§?!1§.push(_loc4_);
                     addr96:
                  }
                  return;
               }
               §§goto(addr96);
            }
         }
         §§goto(addr92);
      }
      
      protected function §<H§(param1:§'4§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(LevelManager.§ T§);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(§!J§.§;6§(_loc2_));
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         if((_loc4_ = §3!R§.§&"5§.§8I§.indexOf(_loc2_)) > -1)
         {
            if(_loc9_ || _loc3_)
            {
               _loc3_ = String(§3!R§.§&"5§.§5K§(_loc2_));
            }
         }
         var _loc5_:§3-§;
         if(_loc5_ = LevelManager.§5!T§(_loc2_))
         {
            §§push(_loc5_.name);
            if(_loc9_)
            {
               §§push(§§pop());
               if(!(_loc10_ && _loc3_))
               {
                  addr75:
                  §§push(§§pop());
                  addr73:
               }
               var _loc6_:* = §§pop();
               §§push(AngryBirdsFP11.§?8§);
               if(!_loc10_)
               {
                  §§push(§§pop() + "/useitem/");
                  if(_loc9_)
                  {
                     §§push(param1.§3!V§);
                     if(_loc9_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc9_ || param1)
                        {
                           §§push("/");
                           if(_loc9_ || _loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc9_ || _loc3_)
                              {
                                 addr123:
                                 §§push(LevelManager.§ T§);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push("/");
                                       if(_loc9_ || _loc3_)
                                       {
                                          addr143:
                                          §§push(§§pop() + §§pop());
                                          if(_loc9_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc10_)
                                                {
                                                   §§push("/");
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc9_)
                                                         {
                                                            addr171:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr179:
                                                               §§push("/");
                                                               if(_loc9_)
                                                               {
                                                                  addr199:
                                                                  addr206:
                                                                  addr182:
                                                                  addr207:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     addr185:
                                                                     §§push(§+"9§.§%?§);
                                                                  }
                                                                  var _loc7_:String = §§pop() + escape(JSON.stringify(param1.§-c§));
                                                                  var _loc8_:URLRequest = §9!7§.§,!l§(_loc7_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     this.§5"#§ = param1;
                                                                     while(true)
                                                                     {
                                                                        this.§ !Y§(param1.§;"5§);
                                                                        while(_loc9_)
                                                                        {
                                                                           param1.§;"5§.load(_loc8_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              return;
                                                                              addr237:
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               addr196:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  §§goto(addr199);
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            addr195:
                                                            §§goto(addr196);
                                                            §§push("/");
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§goto(addr195);
                                                         }
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr199);
                                 }
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr179);
               }
               §§goto(addr207);
            }
            §§goto(addr73);
         }
         else
         {
            §§push("unknownEpisode");
         }
         §§goto(addr75);
      }
      
      protected function § !Y§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`"8§(param1);
            while(true)
            {
               param1.addEventListener(Event.COMPLETE,this.§[!j§);
               loop1:
               while(true)
               {
                  param1.addEventListener(IOErrorEvent.IO_ERROR,this.§'!9§);
                  addr84:
                  while(true)
                  {
                     param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!9§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §`"8§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§[!j§);
            loop0:
            while(true)
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!9§);
               while(true)
               {
                  param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!9§);
                  while(_loc2_)
                  {
                     continue loop0;
                     param1.removeEventListener(§9G§.§33§,this.§'!9§);
                     if(!_loc3_)
                     {
                        return;
                        addr42:
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      protected function §[!j§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = this.§5"#§;
                        while(_loc4_)
                        {
                           this.§`"8§(request.§;"5§);
                           loop6:
                           while(_loc4_ || this)
                           {
                              while(true)
                              {
                                 this.§5"#§ = null;
                                 continue loop6;
                                 addr38:
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc4_ || param1)
                                    {
                                       §§pop().§§slot[4] = JSON.parse(request.§;"5§.data);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr203:
                                          if(response.updatedItems)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §#!,§.§&"5§.§6"M§(response.updatedItems);
                                                addr229:
                                                §§push(Boolean(response.allowed));
                                                if(Boolean(response.allowed))
                                                {
                                                   addr198:
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      addr163:
                                                      §§push(§§newactivation());
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop().§§slot[4].playSessionToken == §+"9§.§%?§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr177:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §+"9§.§%?§ = response.playSessionToken;
                                                                     if(!_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     addr147:
                                                                     §§push(§§newactivation());
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc4_ || this))
                                                                        {
                                                                           §§goto(addr203);
                                                                        }
                                                                        §§pop().§§slot[3] = true;
                                                                        addr249:
                                                                        this.§]r§(allowed);
                                                                        addr253:
                                                                        return;
                                                                        addr230:
                                                                        addr160:
                                                                     }
                                                                     §§goto(addr163);
                                                                     addr190:
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §9"6§.§>_§();
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr147);
                                                                     }
                                                                     §§goto(addr230);
                                                                  }
                                                                  §§goto(addr160);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr203);
                                 }
                                 catch(e:Error)
                                 {
                                    if(!_loc5_)
                                    {
                                       var allowed:Boolean = false;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                                 §§goto(addr249);
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  §§pop().§§slot[3] = false;
                  if(!_loc5_)
                  {
                     §§goto(addr38);
                  }
                  §§goto(addr51);
               }
            }
         }
      }
      
      protected function §'!9§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'4§ = this.§5"#§;
         if(!(_loc4_ && _loc2_))
         {
            this.§`"8§(_loc2_.§;"5§);
            do
            {
               this.§5"#§ = null;
               do
               {
                  if(param1.type == §9G§.§33§)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §9"6§.§>_§(§]!I§.§`'§);
                     }
                     continue;
                  }
                  this.§]r§(false);
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               while(_loc4_ && this);
               
            }
            while(!(_loc3_ || _loc3_));
            
            §§goto(addr28);
         }
         addr28:
      }
      
      protected function §]r§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'4§ = null;
         if(_loc4_)
         {
            if(!param1)
            {
               if(!(_loc3_ && this))
               {
                  §9"6§.§#!o§();
                  if(_loc4_ || _loc3_)
                  {
                  }
               }
               §§goto(addr94);
            }
            if(this.§?!1§.length > 0)
            {
               if(_loc4_ || this)
               {
                  _loc2_ = this.§?!1§.shift();
                  if(_loc4_ || this)
                  {
                     this.§<H§(_loc2_);
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         addr94:
      }
      
      public function get §each §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5"#§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§%V§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%V§);
                     addr142:
                     while(true)
                     {
                        §§pop().mouseEnabled = true;
                        addr144:
                        while(true)
                        {
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc1_ || _loc2_))
                        {
                           continue loop0;
                        }
                        this.§#!§ = null;
                        loop7:
                        while(true)
                        {
                           this.§<U§ = null;
                           loop8:
                           for(; _loc1_; if(_loc2_)
                           {
                              continue;
                           },if(!_loc1_)
                           {
                              continue loop7;
                           },if(_loc1_)
                           {
                              this.§?"-§ = null;
                              addr71:
                              if(_loc1_ || _loc2_)
                              {
                                 return;
                                 addr46:
                              }
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr48);
                                 §§goto(addr71);
                              }
                              continue loop7;
                              addr19:
                           },while(true)
                           {
                              this.§-!r§ = -1;
                              continue loop4;
                           },addr129:)
                           {
                              this.§ ";§ = null;
                              while(true)
                              {
                                 this.§3k§ = [];
                                 continue loop4;
                                 addr48:
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue loop8;
                                 }
                              }
                           }
                           addr134:
                           while(true)
                           {
                              this.§3!i§ = -1;
                              §§goto(addr129);
                           }
                        }
                     }
                     §§goto(addr144);
                  }
               }
               while(true)
               {
                  this.§2"K§ = -1;
                  §§goto(addr134);
                  §§goto(addr144);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr102);
      }
      
      public function §]W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§2!i§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§2!i§);
                     addr96:
                     while(true)
                     {
                        §§pop().§7!d§();
                        addr97:
                        while(true)
                        {
                           this.§2!i§ = null;
                           addr88:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr94:
               }
               loop1:
               while(true)
               {
                  §§push(this.§%""§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              §§push(this.§%""§);
                              loop3:
                              while(true)
                              {
                                 §§pop().§7!d§();
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       break loop2;
                                    }
                                    this.§%""§ = null;
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                              addr68:
                           }
                           else
                           {
                              §§goto(addr94);
                           }
                        }
                        §§goto(addr97);
                     }
                     return;
                  }
                  §§goto(addr68);
               }
            }
            §§goto(addr96);
         }
         §§goto(addr68);
      }
      
      public function §+"#§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§9b§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr49:
                        §§pop();
                        return this.§9b§.indexOf(param1) > -1;
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §'k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9b§ = null;
         }
      }
      
      private function §-!&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§9b§);
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§9b§ = new Array();
                     addr71:
                     while(true)
                     {
                     }
                     addr71:
                  }
                  §§goto(addr71);
               }
               while(true)
               {
                  §§push(this.§9b§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop()[this.§9b§.length] = param1;
                  if(!(_loc2_ && param1))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function get §0-§() : Boolean
      {
         return this.§["0§;
      }
      
      public function set §0-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§["0§ = param1;
         }
      }
   }
}
