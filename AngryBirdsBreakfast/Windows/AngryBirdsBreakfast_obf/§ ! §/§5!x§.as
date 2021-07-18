package § ! §
{
   import §%q§.§<w§;
   import §%q§.Texture;
   import §'!l§.§5K§;
   import §'!l§.§9!#§;
   import §'!l§.§]!e§;
   import §+o§.getNextPowerOfTwo;
   import §1"%§.§?#§;
   import §[O§.§3!$§;
   import §`!a§.§1"&§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §5!x§ extends EventDispatcher
   {
      
      protected static const §+]§:Number = 20;
      
      private static const §&!'§:int = 2048;
      
      private static const § 2§:int = 8;
      
      private static var §0!§:§5!x§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §+]§ = 20;
         }
         while(true)
         {
            §&!'§ = 2048;
            while(!_loc1_)
            {
               § 2§ = 8;
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      private var §"^§:Dictionary;
      
      private var §&!6§:Vector.<String>;
      
      private var §-!0§:Vector.<§]!e§>;
      
      private var §6e§:Dictionary;
      
      private var §5C§:Boolean;
      
      private var §8!G§:Boolean;
      
      private var §#U§:int;
      
      private var §>6§:String;
      
      private var § !e§:Texture;
      
      private var §[!>§:int;
      
      private var §'4§:int;
      
      private var §["'§:§?#§;
      
      private var §="#§:Timer;
      
      private var §+!Z§:Vector.<BitmapData>;
      
      public function §5!x§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§+!Z§ = new Vector.<BitmapData>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§-!0§ = new Vector.<§]!e§>();
                  loop2:
                  while(true)
                  {
                     this.§"^§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        this.§&!6§ = new Vector.<String>();
                        while(_loc2_)
                        {
                           this.§6e§ = new Dictionary();
                           while(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              while(_loc2_ || param1)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§["'§ = new §?#§(§&!'§,§&!'§);
                                    if(_loc2_ || param1)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§>6§ = param1;
            §§goto(addr64);
         }
         §§goto(addr49);
      }
      
      public static function get §2Z§() : §5!x§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§0!§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr50:
                     §0!§ = new §5!x§("main");
                  }
               }
               return §0!§;
            }
         }
         §§goto(addr50);
      }
      
      private static function § !?§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §4!V§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §<P§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2 * 1000000);
         if(_loc4_)
         {
            return §§pop() + param1;
         }
      }
      
      public function get §[5§() : int
      {
         return this.§[!>§;
      }
      
      public function get §]-§() : int
      {
         return this.§'4§;
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§8-§ = null;
         var _loc2_:§]!e§ = null;
         if(!_loc5_)
         {
            if(this.§"^§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§"^§;
               loop21:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc1_)
                        {
                           this.§ !A§(_loc1_.texture.parent);
                           if(_loc5_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc6_ || _loc1_)
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           if(_loc6_ || this)
                           {
                              this.§"^§ = null;
                              if(!(_loc5_ && this))
                              {
                                 addr99:
                                 this.§&!6§ = null;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(this.§-!0§)
                                    {
                                       if(_loc6_)
                                       {
                                          addr114:
                                          _loc3_ = 0;
                                          if(!_loc5_)
                                          {
                                             addr118:
                                             _loc4_ = this.§-!0§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop21;
                                             }
                                             addr133:
                                          }
                                          if(_loc6_ || _loc2_)
                                          {
                                             this.§-!0§ = null;
                                             loop20:
                                             while(true)
                                             {
                                                addr298:
                                                while(true)
                                                {
                                                   if(this.§6e§)
                                                   {
                                                      addr311:
                                                      while(true)
                                                      {
                                                         this.§6e§ = null;
                                                         addr314:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr311:
                                                   }
                                                   while(true)
                                                   {
                                                      if(this.§+!Z§)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§+!Z§ = null;
                                                            addr296:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr293:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§ !e§);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ !e§);
                                                                  addr280:
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           this.§ !e§ = null;
                                                                           while(!_loc6_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           addr266:
                                                                           while(true)
                                                                           {
                                                                              if(this.§="#§)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§="#§.stop();
                                                                                    addr257:
                                                                                    loop8:
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       this.§="#§.removeEventListener(TimerEvent.TIMER,this.§`%§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ || _loc1_))
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(!(_loc6_ || _loc3_))
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§="#§ = null;
                                                                                                addr210:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc6_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr264);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                             addr249:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 addr254:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§-!0§ = new Vector.<§]!e§>();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          this.§"^§ = new Dictionary();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr233);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr254);
                                                                                       }
                                                                                       §§goto(addr257);
                                                                                    }
                                                                                    break;
                                                                                    if(_loc5_ && _loc1_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 §§goto(addr210);
                                                                              }
                                                                              §§goto(addr266);
                                                                           }
                                                                           addr264:
                                                                           addr250:
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr314);
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr249);
                        }
                     }
                     §§goto(addr118);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!_loc5_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr28);
      }
      
      protected function §>r§(param1:String) : §]!e§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]!e§ = null;
         for each(_loc2_ in this.§-!0§)
         {
            if(_loc6_)
            {
               if(_loc2_.name == param1)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §5!"§(param1:§9!#§, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§5C§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§]!e§;
         if(!(_loc4_ = this.§>r§(_loc3_)))
         {
            if(!(_loc6_ && param1))
            {
               _loc4_ = new §]!e§(_loc3_);
               if(_loc5_ || param2)
               {
                  this.§-!0§.push(_loc4_);
                  addr78:
                  _loc4_.§1!u§(param1);
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §#!-§(param1:Vector.<§9!#§>, param2:§?#§, param3:int, param4:int, param5:int) : int
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§9!#§ = null;
         var _loc12_:int = 0;
         var _loc13_:§5K§ = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc7_:* = int(param1.length + 1);
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         while(true)
         {
            §§push(0);
            if(!(_loc16_ && this))
            {
               _loc9_ = §§pop();
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_);
                        if(!_loc16_)
                        {
                           §§push(§§pop() - 1);
                           loop4:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              addr107:
                              while(true)
                              {
                                 §§push(1);
                                 if(!_loc16_)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  if(!(_loc17_ || param2))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr69);
                  }
                  §§goto(addr313);
               }
            }
            §§goto(addr314);
         }
      }
      
      private function §,N§(param1:Vector.<§9!#§>, param2:§?#§, param3:BitmapData) : §9!#§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(0);
            addr887:
            while(true)
            {
               §§pop().§§slot[7] = §§pop();
               addr888:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      private function §6$§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:Rectangle = null;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         if(_loc10_)
         {
            param2.copyPixels(param1,param3,param4.topLeft);
         }
         var _loc5_:int = param4.width - param3.width;
         var _loc6_:int = param4.height - param3.height;
         if(_loc10_)
         {
            if(_loc5_)
            {
               addr49:
               _loc7_ = new Rectangle(param3.right - 1,param3.y,1,param3.height);
               if(!(_loc11_ && param3))
               {
                  _loc8_ = 0;
               }
               loop4:
               while(true)
               {
                  while(_loc8_ < _loc5_)
                  {
                     param2.copyPixels(param1,_loc7_,new Point(param4.right - 1 - _loc8_,param4.y));
                     if(_loc11_)
                     {
                        break;
                     }
                     _loc8_++;
                     if(!(_loc10_ || param3))
                     {
                        break;
                     }
                     if(false)
                     {
                        continue loop4;
                     }
                  }
               }
            }
            §§push(_loc6_);
            if(!(_loc11_ && param2))
            {
               if(§§pop())
               {
                  if(!_loc11_)
                  {
                     _loc7_ = new Rectangle(param3.x,param3.bottom - 1,param3.width,1);
                     if(_loc10_ || param3)
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           _loc9_ = §§pop();
                           if(_loc10_ || this)
                           {
                              while(true)
                              {
                                 addr193:
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                 }
                              }
                              addr152:
                           }
                           §§goto(addr196);
                        }
                        while(true)
                        {
                           if(§§pop() < _loc6_)
                           {
                              param2.copyPixels(param1,_loc7_,new Point(param4.x,param4.bottom - 1 - _loc9_));
                              if(_loc10_)
                              {
                                 _loc9_++;
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                              }
                              break;
                           }
                           break;
                           §§goto(addr193);
                        }
                        §§goto(addr196);
                     }
                     while(true)
                     {
                        if(false)
                        {
                           §§goto(addr152);
                        }
                        §§goto(addr193);
                     }
                  }
                  §§goto(addr196);
               }
               addr196:
               §§goto(addr197);
            }
            addr197:
            if(_loc5_ * _loc6_ > 0)
            {
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §0"&§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§1"&§.§ !R§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  do
                  {
                     §§push(this.§8!G§);
                     loop2:
                     while(!§§pop())
                     {
                        while(true)
                        {
                           this.§8!G§ = true;
                           while(_loc1_ || _loc2_)
                           {
                              this.§#U§ = getTimer();
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(this.§4c§());
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr95:
                                       if(_loc1_ || _loc2_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr118);
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr117);
                           }
                        }
                     }
                  }
                  while(_loc2_ && _loc1_);
                  
                  addr94:
                  §§goto(addr95);
                  §§push(false);
               }
               addr117:
               §§push(false);
               addr118:
               return §§pop();
            }
         }
         §§goto(addr94);
      }
      
      private function §?D§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§[5§);
         if(!_loc4_)
         {
            §§push(int(§§pop() / 1024));
         }
         var _loc1_:* = §§pop();
         §§push(this.§]-§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop() / 1024));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = getTimer();
         if(!_loc4_)
         {
            this.§-!0§ = new Vector.<§]!e§>();
            while(true)
            {
               this.§5C§ = true;
               addr70:
               if(_loc4_ && this)
               {
                  continue;
               }
               return;
               addr77:
            }
         }
         while(true)
         {
            if(this.§="#§)
            {
               if(!(_loc4_ && _loc1_))
               {
                  this.§="#§.stop();
               }
               loop2:
               for(; _loc5_; if(_loc4_)
               {
                  continue;
               },§§goto(addr70))
               {
                  this.§="#§.removeEventListener(TimerEvent.TIMER,this.§`%§);
                  while(true)
                  {
                     this.§="#§ = null;
                     loop4:
                     while(_loc5_ || this)
                     {
                        while(true)
                        {
                           dispatchEvent(new Event(Event.INIT));
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                           continue loop4;
                        }
                        §§goto(addr70);
                     }
                  }
               }
               continue;
            }
            §§goto(addr49);
         }
         §§goto(addr77);
      }
      
      private function §`%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4c§();
         }
      }
      
      private function §4c§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:§]!e§ = null;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            if(this.§-!0§.length > 0)
            {
               if(_loc5_)
               {
                  _loc1_ = getTimer();
                  if(_loc5_)
                  {
                     _loc2_ = this.§-!0§.pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        this.§`6§(_loc2_);
                        loop0:
                        while(true)
                        {
                           addr66:
                           while(true)
                           {
                              _loc2_.dispose();
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    _loc3_ = getTimer();
                                    if(_loc5_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     while(false)
                     {
                        §§goto(addr66);
                     }
                     addr86:
                     if(this.§-!0§.length == 0)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§goto(addr98);
                        }
                        §§goto(addr134);
                     }
                     else if(this.§="#§)
                     {
                        this.§="#§.stop();
                        §§goto(addr132);
                     }
                     §§goto(addr160);
                  }
                  addr98:
                  this.§?D§();
                  if(_loc4_)
                  {
                     loop4:
                     while(true)
                     {
                        this.§="#§ = new Timer(§+]§,0);
                        addr166:
                        loop5:
                        while(true)
                        {
                           this.§="#§.addEventListener(TimerEvent.TIMER,this.§`%§);
                           while(!_loc4_)
                           {
                              loop7:
                              while(true)
                              {
                                 this.§="#§.start();
                                 if(_loc5_ || this)
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop5;
                                    }
                                    continue loop5;
                                 }
                                 addr132:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       break loop7;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                           continue loop4;
                        }
                     }
                     addr160:
                  }
                  else
                  {
                     addr102:
                  }
                  return this.§-!0§.length > 0;
               }
               §§goto(addr166);
            }
            §§goto(addr86);
         }
         §§goto(addr102);
      }
      
      private function §`6§(param1:§]!e§) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:§9!#§ = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§9!#§ = null;
         var _loc10_:Texture = null;
         var _loc11_:* = 0;
         var _loc12_:§5K§ = null;
         var _loc3_:Vector.<§9!#§> = new Vector.<§9!#§>();
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc13_ && _loc3_))
            {
               if(§§pop() >= param1.§]!M§)
               {
                  break;
               }
               _loc2_ = param1.§-!d§(_loc4_);
               if(_loc14_ || this)
               {
                  if(_loc2_.§^%§ > 0)
                  {
                     if(!_loc14_)
                     {
                        continue;
                     }
                     addr66:
                     _loc3_.push(_loc2_);
                     if(!_loc14_)
                     {
                        continue;
                     }
                  }
                  _loc4_++;
                  continue;
               }
               §§goto(addr66);
            }
            break;
         }
         var _loc5_:* = §§pop();
         if(!(_loc13_ && this))
         {
            loop1:
            while(true)
            {
               if(_loc3_.length <= 0)
               {
                  if(_loc14_)
                  {
                     addr282:
                     if(_loc5_ > 1)
                     {
                     }
                  }
                  §§goto(addr285);
               }
               §§push(this.§#!-§(_loc3_,this.§["'§,§&!'§,§&!'§,§ 2§));
               loop2:
               while(true)
               {
                  §§push(0);
                  if(!(_loc13_ && param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc14_ || _loc3_)
                        {
                           throw new Error("Found too large sprite sheet image!");
                        }
                        addr179:
                        while(true)
                        {
                        }
                        addr179:
                     }
                     while(true)
                     {
                        §§push(int(getNextPowerOfTwo(this.§["'§.§9!J§)));
                        if(_loc14_ || _loc3_)
                        {
                           if(_loc13_)
                           {
                              continue loop2;
                           }
                           _loc6_ = §§pop();
                           if(_loc14_)
                           {
                              if(_loc14_ || this)
                              {
                                 §§push(int(getNextPowerOfTwo(this.§["'§.§&;§)));
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 _loc7_ = §§pop();
                                 if(_loc13_ && this)
                                 {
                                    addr285:
                                    return;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
                                 _loc9_ = this.§,N§(_loc3_,this.§["'§,_loc8_);
                                 _loc10_ = this.§%^§(_loc8_);
                                 if(!(_loc13_ && this))
                                 {
                                    this.§+!Z§.push(_loc8_);
                                    if(_loc13_ && this)
                                    {
                                       continue loop1;
                                    }
                                    §§push(0);
                                    if(!(_loc13_ && this))
                                    {
                                       _loc11_ = §§pop();
                                       if(_loc14_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc11_);
                                          }
                                          addr254:
                                       }
                                       addr265:
                                       _loc5_++;
                                       continue loop1;
                                    }
                                    while(§§pop() < _loc9_.§^%§)
                                    {
                                       _loc12_ = _loc9_.§ k§(_loc11_);
                                       if(!_loc13_)
                                       {
                                          this.§@?§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
                                          if(!_loc13_)
                                          {
                                             _loc11_++;
                                          }
                                       }
                                       §§goto(addr254);
                                    }
                                    if(!(_loc14_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr265);
                              }
                              else
                              {
                                 §§goto(addr179);
                              }
                           }
                           else
                           {
                              §§goto(addr282);
                           }
                        }
                        break;
                     }
                     §§goto(addr282);
                  }
                  break;
               }
               §§goto(addr282);
            }
         }
         §§goto(addr179);
      }
      
      private function §@?§(param1:§5K§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§<w§ = null;
         var _loc5_:§8-§;
         if(!(_loc5_ = this.§"^§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §<w§(param2,_loc6_,false);
            _loc5_ = new §8-§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            if(_loc9_)
            {
               this.§"^§[param1.name] = _loc5_;
               if(_loc9_ || param3)
               {
                  this.§&!6§.push(param1.name);
               }
            }
         }
      }
      
      public function reInitializeTextures() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc2_)
         {
            §§push(null);
            if(_loc6_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc1_))
               {
                  addr48:
                  var texture:Texture = null;
                  if(_loc6_)
                  {
                     if(!§1"&§.§;J§)
                     {
                        addr55:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§6e§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(!_loc5_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[2] = this.§6e§[bd];
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          addr101:
                                          texture.requestBaseTextureUpdate(bd as BitmapData);
                                       }
                                    }
                                    §§goto(addr101);
                                 }
                                 catch(e:Error)
                                 {
                                 }
                              }
                              continue;
                           }
                           §§goto(addr101);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr55);
            }
         }
         §§goto(addr48);
      }
      
      public function §`I§(param1:String) : §8-§
      {
         return this.§"^§[param1];
      }
      
      public function get §'?§() : int
      {
         return this.§&!6§.length;
      }
      
      public function §[!X§(param1:int) : §8-§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr72:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr69:
                           if(!_loc3_)
                           {
                              return null;
                           }
                           continue loop0;
                        }
                        return this.§"^§[this.§&!6§[param1]];
                        addr61:
                     }
                  }
                  addr92:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §%^§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§6e§[param1];
         if(_loc5_ || this)
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  §§goto(addr34);
               }
            }
            _loc3_ = §1"&§.§7!#§(param1,param2);
            if(!(_loc4_ && param1))
            {
               this.§6e§[param1] = _loc3_;
            }
            do
            {
               this.§-X§(_loc3_,param1,true);
            }
            while(!(_loc5_ || param2));
            
            return _loc3_;
         }
         addr34:
         return _loc3_;
      }
      
      protected function §-X§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc8_ || param3)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr243:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr244:
                     while(true)
                     {
                     }
                  }
               }
               addr242:
            }
            loop3:
            while(true)
            {
               if(param2)
               {
                  loop4:
                  while(true)
                  {
                     if(_loc8_)
                     {
                        §§push(this);
                        §§push(this.§'4§);
                        §§push(_loc4_ * param2.width);
                        if(_loc8_)
                        {
                           §§push(§§pop() * param2.height);
                           if(!_loc7_)
                           {
                              addr218:
                              §§push(§§pop() * 4);
                           }
                           §§pop().§'4§ = §§pop() + §§pop();
                           while(true)
                           {
                              if(_loc8_ || param3)
                              {
                                 while(param1)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(param1.width);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr197:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             continue loop7;
                                          }
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                                 addr61:
                                 return;
                                 addr182:
                              }
                              break;
                              if(!(_loc8_ || this))
                              {
                                 continue;
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 loop11:
                                 while(_loc8_)
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       §§push(1);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          addr78:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr81:
                                                   while(_loc8_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         addr128:
                                                         §§push(_loc6_);
                                                      }
                                                      §§push(_loc6_);
                                                      if(_loc7_)
                                                      {
                                                         continue loop11;
                                                         if(_loc8_ || param2)
                                                         {
                                                            if(_loc8_ || param2)
                                                            {
                                                               addr103:
                                                               §§push(1);
                                                               if(!(_loc8_ || param3))
                                                               {
                                                                  addr127:
                                                                  _loc5_ = §§pop() >> §§pop();
                                                                  §§goto(addr128);
                                                               }
                                                               §§push(§§pop() >> §§pop());
                                                               break loop11;
                                                            }
                                                            §§goto(addr127);
                                                         }
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop10;
                                                }
                                                addr80:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr61);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr81);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(this.§[!>§);
                                                      §§push(_loc4_ * _loc5_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc8_ || this)
                                                            {
                                                               addr152:
                                                               §§push(§§pop() * 4);
                                                            }
                                                            §§pop().§[!>§ = §§pop() + §§pop();
                                                            break;
                                                         }
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                }
                                                addr125:
                                                §§push(_loc5_);
                                                §§push(1);
                                                addr55:
                                             }
                                             §§goto(addr127);
                                          }
                                       }
                                    }
                                    §§goto(addr125);
                                 }
                                 _loc6_ = §§pop();
                              }
                           }
                           continue loop3;
                        }
                        §§goto(addr218);
                     }
                     else
                     {
                        §§goto(addr242);
                     }
                  }
                  §§goto(addr243);
               }
               §§goto(addr182);
            }
         }
         §§goto(addr198);
      }
      
      public function §2!;§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§ !e§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     this.§ !e§ = this.§%^§(new BitmapData(40,40,false,16711935));
                     addr60:
                     §§push(this.§ !e§);
                  }
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function § !A§(param1:Texture) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:* = this.§6e§;
         while(true)
         {
            for(_loc2_ in _loc6_)
            {
               if(_loc8_ && _loc2_)
               {
                  break;
               }
               if(this.§6e§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(_loc7_ || _loc3_)
         {
            this.§-X§(param1,_loc3_,false);
            loop1:
            while(true)
            {
               if(_loc3_)
               {
                  loop2:
                  while(true)
                  {
                     _loc3_.dispose();
                     §§push(int(this.§+!Z§.indexOf(_loc3_)));
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(_loc7_ || _loc2_)
                        {
                           _loc4_ = §§pop();
                           addr137:
                           §§push(0);
                        }
                        if(§§pop() >= §§pop())
                        {
                           continue loop1;
                        }
                        addr111:
                        addr111:
                        while(true)
                        {
                           delete this.§6e§[_loc2_];
                           loop4:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 param1.dispose();
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr137);
                  }
                  continue;
               }
               §§goto(addr111);
            }
         }
         §§goto(addr119);
      }
      
      public function get §"!e§() : int
      {
         return this.§+!Z§.length;
      }
      
      public function §-?§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || this)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_ || this)
                        {
                           §§pop();
                           if(!(_loc6_ && param1))
                           {
                              §§goto(addr63);
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr63);
            }
            addr63:
            if(param1 >= this.§"!e§)
            {
               if(_loc6_ && param1)
               {
                  §§goto(addr72);
               }
            }
            §§goto(addr72);
         }
         addr72:
         var _loc2_:BitmapData = this.§+!Z§[param1];
         var _loc3_:ByteArray = §3!$§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
