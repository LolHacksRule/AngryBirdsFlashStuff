package §7!F§
{
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §&v§.§]O§;
   import §2d§.§%$§;
   import §2d§.§+!g§;
   import §2d§.§;H§;
   import §4G§.§ #"§;
   import §6!A§.§`!4§;
   import §=]§.getNextPowerOfTwo;
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
   
   public class §7#5§ extends EventDispatcher
   {
      
      protected static const §6#G§:Number = 20;
      
      private static const §@"o§:int = 2048;
      
      private static const §,"f§:int = 8;
      
      private static var §"#>§:§7#5§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §6#G§ = 20;
            do
            {
               §@"o§ = 2048;
               do
               {
                  §,"f§ = 8;
               }
               while(_loc1_ && §7#5§);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private var §9!1§:Dictionary;
      
      private var §@n§:Vector.<String>;
      
      private var §%O§:Vector.<§+!g§>;
      
      private var §^"Z§:Dictionary;
      
      private var §5!S§:Boolean;
      
      private var §!!R§:Boolean;
      
      private var §<"i§:int;
      
      private var §6##§:String;
      
      private var §!"#§:Texture;
      
      private var §!"_§:int;
      
      private var §3"6§:int;
      
      private var §`""§:§ #"§;
      
      private var §1J§:Timer;
      
      private var §4$§:Vector.<BitmapData>;
      
      public function §7#5§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4$§ = new Vector.<BitmapData>();
            loop0:
            while(true)
            {
               super();
               addr127:
               while(true)
               {
                  this.§%O§ = new Vector.<§+!g§>();
               }
               loop4:
               while(true)
               {
                  if(_loc3_ || this)
                  {
                     this.§^"Z§ = new Dictionary();
                     loop5:
                     while(_loc3_)
                     {
                        this.§6##§ = param1;
                        continue loop4;
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        addr45:
                        if(_loc3_ || param1)
                        {
                           return;
                        }
                        addr113:
                        while(true)
                        {
                           this.§9!1§ = new Dictionary();
                           break loop5;
                           §§goto(addr45);
                        }
                     }
                     while(true)
                     {
                        this.§@n§ = new Vector.<String>();
                        continue loop4;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr113);
      }
      
      public static function get §%!E§() : §7#5§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§"#>§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && §7#5§))
                  {
                     addr50:
                     §"#>§ = new §7#5§("main");
                  }
               }
               return §"#>§;
            }
         }
         §§goto(addr50);
      }
      
      private static function §#!Q§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §#"p§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §3"w§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2 * 1000000);
         if(!(_loc4_ && param1))
         {
            return §§pop() + param1;
         }
      }
      
      public function get textureMemoryUsage() : int
      {
         return this.§!"_§;
      }
      
      public function get bitmapMemoryUsage() : int
      {
         return this.§3"6§;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§8!W§ = null;
         var _loc2_:§+!g§ = null;
         if(!(_loc5_ && this))
         {
            if(this.§9!1§)
            {
               addr33:
               var _loc3_:int = 0;
               var _loc4_:* = this.§9!1§;
               loop22:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || this)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(!(_loc6_ || _loc2_))
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        if(_loc6_ || _loc1_)
                        {
                           if(!_loc5_)
                           {
                              this.§9!1§ = null;
                              if(_loc6_)
                              {
                                 addr94:
                                 this.§@n§ = null;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(this.§%O§)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          _loc3_ = 0;
                                          if(_loc6_)
                                          {
                                             _loc4_ = this.§%O§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop22;
                                             }
                                             addr151:
                                             if(!_loc5_)
                                             {
                                                this.§%O§ = null;
                                                loop1:
                                                while(true)
                                                {
                                                   addr283:
                                                   while(true)
                                                   {
                                                      if(this.§^"Z§)
                                                      {
                                                         addr296:
                                                         while(true)
                                                         {
                                                            this.§^"Z§ = null;
                                                            addr299:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr296:
                                                      }
                                                      while(true)
                                                      {
                                                         if(this.§4$§)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§4$§ = null;
                                                               addr281:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr278:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§!"#§);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§!"#§);
                                                                     addr272:
                                                                     while(true)
                                                                     {
                                                                        §§pop().dispose();
                                                                        addr273:
                                                                        while(true)
                                                                        {
                                                                           this.§!"#§ = null;
                                                                           addr258:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr270:
                                                               }
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(this.§1J§)
                                                                  {
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ || _loc3_))
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§1J§.stop();
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ && _loc1_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 this.§1J§ = null;
                                                                                 loop9:
                                                                                 for(; _loc6_; if(_loc5_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 },if(!_loc5_)
                                                                                 {
                                                                                    return;
                                                                                    addr182:
                                                                                 },§§goto(addr273))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr193:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§%O§ = new Vector.<§+!g§>();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop8;
                                                                                             addr166:
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr299);
                                                                              }
                                                                              §§goto(addr296);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr281);
                                             addr150:
                                             addr148:
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr296);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr150);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc5_ && _loc1_))
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr151);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr33);
      }
      
      protected function §`z§(param1:String) : §+!g§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+!g§ = null;
         for each(_loc2_ in this.§%O§)
         {
            if(_loc5_)
            {
               if(_loc2_.name == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §5j§(param1:§;H§, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§5!S§)
            {
               if(!(_loc6_ && param2))
               {
                  return;
               }
            }
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§+!g§;
         if(!(_loc4_ = this.§`z§(_loc3_)))
         {
            if(!(_loc6_ && param1))
            {
               _loc4_ = new §+!g§(_loc3_);
               if(_loc5_ || param1)
               {
                  this.§%O§.push(_loc4_);
                  addr83:
                  _loc4_.§-5§(param1);
               }
               §§goto(addr83);
            }
            return;
         }
         §§goto(addr83);
      }
      
      private function §5"B§(param1:Vector.<§;H§>, param2:§ #"§, param3:int, param4:int, param5:int) : int
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc6_:* = 0;
         var _loc10_:§;H§ = null;
         var _loc11_:* = 0;
         var _loc12_:§%$§ = null;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc7_:* = int(param1.length + 1);
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         loop0:
         do
         {
            §§push(0);
            loop1:
            while(true)
            {
               _loc9_ = §§pop();
               if(!_loc16_)
               {
                  §§push(0);
                  if(_loc15_)
                  {
                     _loc8_ = §§pop();
                     if(!_loc16_)
                     {
                        §§push(_loc7_);
                        if(!_loc16_)
                        {
                           §§push(§§pop() - 1);
                           if(!_loc16_)
                           {
                              if(!_loc16_)
                              {
                                 _loc7_ = §§pop();
                                 if(!(_loc16_ && param2))
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       param2.reset(param3,param4,param5);
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc15_)
                                          {
                                             _loc6_ = §§pop();
                                             if(!_loc16_)
                                             {
                                                if(!_loc15_)
                                                {
                                                   continue;
                                                }
                                                if(false)
                                                {
                                                   continue loop2;
                                                }
                                                addr249:
                                                addr213:
                                                §§push(_loc6_);
                                                if(!(_loc16_ && this))
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc16_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         _loc10_ = param1[_loc6_];
                                                         if(_loc15_ || this)
                                                         {
                                                            §§push(0);
                                                            if(!_loc16_)
                                                            {
                                                               _loc11_ = §§pop();
                                                               if(!_loc16_)
                                                               {
                                                                  addr206:
                                                                  addr207:
                                                                  if(_loc11_ >= _loc10_.§0#a§)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        _loc6_++;
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  _loc12_ = _loc10_.§4y§(_loc11_);
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     addr204:
                                                                     _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                                                                  }
                                                                  addr205:
                                                                  §§push(Math.ceil(_loc12_.rect.height / param5) * param5);
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        _loc14_ = §§pop();
                                                                        param2.§&"M§(_loc13_,_loc14_,§3"w§(_loc11_,_loc6_));
                                                                        addr154:
                                                                        _loc9_++;
                                                                        _loc11_++;
                                                                        addr193:
                                                                        addr166:
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              if(!_loc16_)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr154);
                                                                                    }
                                                                                    §§goto(addr206);
                                                                                 }
                                                                                 §§goto(addr205);
                                                                              }
                                                                              §§goto(addr193);
                                                                           }
                                                                           §§goto(addr166);
                                                                        }
                                                                        addr156:
                                                                        §§goto(addr156);
                                                                     }
                                                                  }
                                                                  §§goto(addr204);
                                                                  addr112:
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr112);
                                                      }
                                                      if(_loc15_ || param2)
                                                      {
                                                         break loop1;
                                                      }
                                                      break loop0;
                                                   }
                                                   addr262:
                                                   _loc8_ = §§pop();
                                                   if(_loc15_)
                                                   {
                                                      addr265:
                                                      §§push(_loc9_);
                                                      continue loop0;
                                                   }
                                                }
                                                §§push(§§pop());
                                                if(!_loc15_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr262);
                                             }
                                             break loop1;
                                          }
                                          §§goto(addr268);
                                       }
                                    }
                                 }
                                 break;
                              }
                              continue;
                           }
                           addr241:
                           §§push(int(§§pop()));
                           if(!(_loc16_ && param3))
                           {
                              §§goto(addr249);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr249);
                     }
                     break loop0;
                  }
                  §§goto(addr241);
               }
               break;
            }
            §§push(param2.§+!_§());
            if(!(_loc16_ && this))
            {
               §§goto(addr241);
            }
            §§goto(addr265);
         }
         while(§§pop() < §§pop());
         
         addr268:
         _loc6_;
         return §§pop();
      }
      
      private function §<"g§(param1:Vector.<§;H§>, param2:§ #"§, param3:BitmapData) : §;H§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(0);
            loop1:
            while(true)
            {
               §§pop().§§slot[7] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[8] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(0);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[9] = §§pop();
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          §§pop().§§slot[10] = §§pop();
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                §§push(0);
                                                addr918:
                                                while(_loc6_)
                                                {
                                                   §§pop().§§slot[11] = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop9;
                                                   }
                                                }
                                                continue loop1;
                                                while(_loc6_ || param3)
                                                {
                                                   §§push(null);
                                                   while(!(_loc5_ && param1))
                                                   {
                                                      §§pop().§§slot[13] = §§pop();
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         while(!_loc5_)
                                                         {
                                                            §§push(null);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[14] = §§pop();
                                                               addr874:
                                                               while(!(_loc5_ && param3))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  continue loop22;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr748:
                                                         while(true)
                                                         {
                                                            if(_loc5_ && param2)
                                                            {
                                                               continue loop20;
                                                            }
                                                            §§goto(addr755);
                                                            §§goto(addr690);
                                                         }
                                                         continue loop7;
                                                      }
                                                      if(_loc5_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§pop().§§slot[15] = §§pop();
                                                      §§goto(addr864);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[12] = §§pop();
                                                      §§goto(addr914);
                                                      §§goto(addr892);
                                                   }
                                                   addr892:
                                                   if(_loc6_ || param1)
                                                   {
                                                      continue loop3;
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
                     }
                  }
               }
            }
         }
      }
      
      private function §6!o§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:Rectangle = null;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         if(!(_loc11_ && param1))
         {
            param2.copyPixels(param1,param3,param4.topLeft);
         }
         var _loc5_:int = param4.width - param3.width;
         var _loc6_:int = param4.height - param3.height;
         if(_loc10_)
         {
            if(_loc5_)
            {
               addr54:
               _loc7_ = new Rectangle(param3.right - 1,param3.y,1,param3.height);
               if(_loc10_)
               {
                  _loc8_ = 0;
               }
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     if(_loc8_ < _loc5_)
                     {
                        param2.copyPixels(param1,_loc7_,new Point(param4.right - 1 - _loc8_,param4.y));
                        while(true)
                        {
                           _loc8_++;
                           if(_loc11_ && param2)
                           {
                              break;
                           }
                           if(_loc10_ || this)
                           {
                              if(false)
                              {
                                 break loop6;
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
            }
            §§push(_loc6_);
            if(!_loc11_)
            {
               if(§§pop())
               {
                  if(!(_loc11_ && param2))
                  {
                     _loc7_ = new Rectangle(param3.x,param3.bottom - 1,param3.width,1);
                     if(_loc10_ || param3)
                     {
                        §§push(0);
                        if(!(_loc11_ && param2))
                        {
                           _loc9_ = §§pop();
                           if(!_loc11_)
                           {
                              while(true)
                              {
                                 addr203:
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                 }
                              }
                              addr164:
                           }
                           §§goto(addr206);
                        }
                        while(true)
                        {
                           if(§§pop() < _loc6_)
                           {
                              param2.copyPixels(param1,_loc7_,new Point(param4.x,param4.bottom - 1 - _loc9_));
                              while(true)
                              {
                                 _loc9_++;
                                 if(!(_loc10_ || param3))
                                 {
                                    break;
                                 }
                                 if(_loc11_)
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr206);
                           }
                           addr206:
                           addr207:
                           if(_loc5_ * _loc6_ > 0)
                           {
                           }
                           return;
                           §§goto(addr203);
                        }
                     }
                     while(true)
                     {
                        if(false)
                        {
                           §§goto(addr164);
                        }
                        §§goto(addr203);
                     }
                  }
               }
               §§goto(addr206);
            }
            §§goto(addr207);
         }
         §§goto(addr54);
      }
      
      public function initializeTextures() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§3#J§.§;[§());
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§!!R§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc1_ || this)
                           {
                              §§push(false);
                              break;
                           }
                           break loop0;
                        }
                        while(true)
                        {
                           addr49:
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§&t§());
                              if(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop1;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(!§§pop());
                              }
                              §§goto(addr34);
                           }
                        }
                        addr118:
                     }
                     while(true)
                     {
                        this.§!!R§ = true;
                        loop4:
                        while(_loc1_ || _loc2_)
                        {
                           while(true)
                           {
                              this.§<"i§ = getTimer();
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr49);
                           }
                           addr34:
                           return §§pop();
                        }
                        continue loop1;
                        §§goto(addr118);
                     }
                  }
                  break;
               }
               if(_loc1_ || _loc1_)
               {
                  return §§pop();
               }
               addr123:
               return §§pop();
            }
            §§goto(addr123);
            §§push(false);
         }
         §§goto(addr78);
      }
      
      private function §+!r§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.textureMemoryUsage);
         if(!_loc5_)
         {
            §§push(int(§§pop() / 1024));
         }
         var _loc1_:* = §§pop();
         §§push(this.bitmapMemoryUsage);
         if(!(_loc5_ && _loc2_))
         {
            §§push(int(§§pop() / 1024));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = getTimer();
         if(!_loc5_)
         {
            this.§%O§ = new Vector.<§+!g§>();
            while(true)
            {
               this.§5!S§ = true;
               loop1:
               for(; _loc4_; while(_loc4_ || this)
               {
                  while(true)
                  {
                     this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
                     §§goto(addr95);
                  }
               })
               {
                  if(!this.§1J§)
                  {
                     while(true)
                     {
                        dispatchEvent(new Event(Event.INIT));
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc4_ || this)
                           {
                              break;
                           }
                           addr95:
                           while(true)
                           {
                              if(_loc5_ && _loc2_)
                              {
                                 continue loop1;
                              }
                              this.§1J§ = null;
                           }
                        }
                        while(_loc5_)
                        {
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     this.§1J§.stop();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      private function §-K§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&t§();
         }
      }
      
      private function §&t§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:§+!g§ = null;
         var _loc3_:int = 0;
         if(_loc5_ || this)
         {
            if(this.§%O§.length > 0)
            {
               if(_loc5_)
               {
                  _loc1_ = getTimer();
                  if(!(_loc4_ && _loc2_))
                  {
                     _loc2_ = this.§%O§.pop();
                     if(_loc5_ || _loc1_)
                     {
                        this.§2"$§(_loc2_);
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              _loc2_.dispose();
                              do
                              {
                                 _loc3_ = getTimer();
                              }
                              while(_loc4_);
                              
                              if(!(_loc5_ || _loc1_))
                              {
                                 break;
                              }
                              while(false)
                              {
                                 continue loop1;
                              }
                              if(this.§%O§.length == 0)
                              {
                                 if(_loc5_)
                                 {
                                    this.§+!r§();
                                    if(_loc4_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          this.§1J§ = new Timer(§6#G§,0);
                                          loop7:
                                          while(true)
                                          {
                                             this.§1J§.addEventListener(TimerEvent.TIMER,this.§-K§);
                                             loop8:
                                             while(true)
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   this.§1J§.start();
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr137:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ || _loc2_))
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                                addr130:
                                             }
                                          }
                                       }
                                       addr170:
                                    }
                                    else
                                    {
                                       addr107:
                                    }
                                    return this.§%O§.length > 0;
                                 }
                              }
                              else if(this.§1J§)
                              {
                                 this.§1J§.stop();
                                 §§goto(addr137);
                              }
                              §§goto(addr170);
                           }
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr146);
               }
               §§goto(addr107);
            }
            §§goto(addr96);
         }
         §§goto(addr130);
      }
      
      private function §2"$§(param1:§+!g§) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:§;H§ = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§;H§ = null;
         var _loc10_:Texture = null;
         var _loc11_:* = 0;
         var _loc12_:§%$§ = null;
         var _loc3_:Vector.<§;H§> = new Vector.<§;H§>();
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc13_)
            {
               break;
            }
            if(§§pop() >= param1.§^"A§)
            {
               break;
            }
            _loc2_ = param1.§"#B§(_loc4_);
            if(_loc14_)
            {
               if(_loc2_.§0#a§ > 0)
               {
                  if(!_loc13_)
                  {
                     _loc3_.push(_loc2_);
                     if(!(_loc14_ || _loc3_))
                     {
                        continue;
                     }
                  }
               }
               _loc4_++;
            }
         }
         var _loc5_:* = §§pop();
         if(_loc14_ || param1)
         {
            loop1:
            while(true)
            {
               if(_loc3_.length <= 0)
               {
                  if(_loc14_)
                  {
                     addr285:
                     if(_loc5_ > 1)
                     {
                     }
                  }
                  return;
               }
               §§push(this.§5"B§(_loc3_,this.§`""§,§@"o§,§@"o§,§,"f§));
               loop2:
               while(true)
               {
                  §§push(0);
                  if(_loc14_ || param1)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr173);
                     }
                     loop3:
                     while(true)
                     {
                        §§push(int(getNextPowerOfTwo(this.§`""§.§@#E§)));
                        if(!(_loc13_ && this))
                        {
                           _loc6_ = §§pop();
                           while(true)
                           {
                              §§push(int(getNextPowerOfTwo(this.§`""§.§9Q§)));
                              if(_loc13_)
                              {
                                 break loop3;
                              }
                              continue loop2;
                              addr112:
                              if(_loc13_ && param1)
                              {
                                 continue;
                              }
                              if(!(_loc14_ || param1))
                              {
                                 addr173:
                                 throw new Error("Found too large sprite sheet image!");
                              }
                              if(false)
                              {
                                 continue loop3;
                              }
                              _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
                              _loc9_ = this.§<"g§(_loc3_,this.§`""§,_loc8_);
                              _loc10_ = this.getTextureFromBitmapData(_loc8_,true,1);
                              if(!_loc13_)
                              {
                                 this.§4$§.push(_loc8_);
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    addr221:
                                    §§push(0);
                                    if(!(_loc13_ && _loc2_))
                                    {
                                       _loc11_ = §§pop();
                                       if(!(_loc14_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc11_);
                                       }
                                       addr261:
                                    }
                                    while(§§pop() < _loc9_.§0#a§)
                                    {
                                       _loc12_ = _loc9_.§4y§(_loc11_);
                                       if(_loc14_)
                                       {
                                          this.§&!,§(_loc12_,_loc10_,_loc8_,_loc12_.§#"?§);
                                          if(!(_loc13_ && _loc2_))
                                          {
                                             _loc11_++;
                                          }
                                       }
                                       §§goto(addr261);
                                    }
                                    if(_loc13_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 _loc5_++;
                                 continue loop1;
                              }
                              §§goto(addr221);
                           }
                           addr153:
                        }
                        break;
                     }
                     §§goto(addr285);
                  }
                  break;
               }
               §§goto(addr285);
            }
         }
         §§goto(addr153);
      }
      
      private function §&!,§(param1:§%$§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§]O§ = null;
         var _loc5_:§8!W§;
         if(!(_loc5_ = this.§9!1§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §]O§(param2,_loc6_,false);
            _loc5_ = new §8!W§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            if(!(_loc8_ && this))
            {
               this.§9!1§[param1.name] = _loc5_;
               if(_loc8_ && param3)
               {
               }
               §§goto(addr101);
            }
            this.§@n§.push(param1.name);
         }
         addr101:
      }
      
      public function reInitializeTextures() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§push(null);
            if(_loc5_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc6_ && _loc1_))
               {
                  addr42:
                  var texture:Texture = null;
                  if(_loc5_ || _loc3_)
                  {
                     if(!§3#J§.§0§)
                     {
                        addr54:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§^"Z§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc5_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_ || _loc1_)
                                    {
                                       addr90:
                                       §§pop().§§slot[2] = this.§^"Z§[bd];
                                       addr111:
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          §§push(§§newactivation());
                                       }
                                       continue;
                                    }
                                    §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                                 }
                                 catch(e:Error)
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr90);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr54);
            }
         }
         §§goto(addr42);
      }
      
      public function getTexture(param1:String) : §8!W§
      {
         return this.§9!1§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§@n§.length;
      }
      
      public function getTextureWithIndex(param1:int) : §8!W§
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
               addr99:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr100:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§goto(addr82);
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return this.§9!1§[this.§@n§[param1]];
                        addr73:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         addr82:
         return null;
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Texture;
         if(_loc4_ = this.§^"Z§[param1])
         {
            if(_loc5_)
            {
               return _loc4_;
            }
         }
         _loc4_ = §3#J§.§%!"§(param1,param2,false,param3);
         if(_loc5_)
         {
            this.§^"Z§[param1] = _loc4_;
         }
         do
         {
            this.§9[§(_loc4_,param1,true);
         }
         while(_loc6_);
         
         return _loc4_;
      }
      
      protected function §9[§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc7_)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr257:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr258:
                     while(true)
                     {
                     }
                  }
               }
               addr256:
            }
            loop3:
            while(true)
            {
               if(param2)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§3"6§);
                     §§push(_loc4_ * param2.width);
                     if(_loc7_ || this)
                     {
                        §§push(§§pop() * param2.height);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * 4);
                        }
                     }
                     §§pop().§3"6§ = §§pop() + §§pop();
                     addr253:
                     while(true)
                     {
                        addr201:
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        if(!_loc7_)
                        {
                           continue loop3;
                        }
                        if(_loc7_)
                        {
                           §§push(param1.width);
                           loop7:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr215:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 continue loop7;
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr256);
                        }
                        §§goto(addr257);
                     }
                     if(!(_loc7_ || param2))
                     {
                        continue;
                     }
                     loop10:
                     while(true)
                     {
                        §§push(_loc5_);
                        loop11:
                        while(!(_loc8_ && param2))
                        {
                           §§push(1);
                           loop12:
                           for(; _loc7_; §§push(1),if(!(_loc7_ || param3))
                           {
                              continue;
                           },§§push(§§pop() >= §§pop()),if(!_loc8_)
                           {
                              §§goto(addr49);
                           },§§goto(addr86))
                           {
                              if(_loc7_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(_loc7_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       addr86:
                                       while(true)
                                       {
                                          §§pop();
                                          addr87:
                                          addr97:
                                          while(!_loc8_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc7_ || param1)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   addr111:
                                                   addr110:
                                                   addr109:
                                                   addr112:
                                                   _loc5_ = §§pop() >> 1;
                                                   §§push(_loc6_);
                                                }
                                                break loop12;
                                             }
                                             continue loop11;
                                          }
                                          if(_loc7_ || param1)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop10;
                                             }
                                             addr159:
                                             §§goto(addr109);
                                             §§push(_loc5_);
                                          }
                                          §§goto(addr112);
                                       }
                                       addr86:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                §§goto(addr58);
                                             }
                                             §§goto(addr87);
                                          }
                                          else
                                          {
                                             §§push(this);
                                             §§push(this.§!"_§);
                                             §§push(_loc4_ * _loc5_);
                                             if(_loc7_ || param2)
                                             {
                                                §§push(_loc6_);
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc8_ && this))
                                                   {
                                                      addr156:
                                                      §§push(§§pop() * 4);
                                                   }
                                                   §§pop().§!"_§ = §§pop() + §§pop();
                                                   break;
                                                }
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       addr49:
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr110);
                           }
                           §§push(§§pop() >> §§pop());
                           break;
                        }
                        while(true)
                        {
                           if(_loc7_)
                           {
                              _loc6_ = §§pop();
                              §§goto(addr97);
                           }
                           §§goto(addr111);
                           §§goto(addr93);
                        }
                     }
                  }
               }
               while(true)
               {
                  if(param1)
                  {
                     if(!_loc8_)
                     {
                        §§goto(addr201);
                     }
                     §§goto(addr216);
                  }
                  addr58:
                  return;
                  §§goto(addr253);
               }
            }
         }
         §§goto(addr216);
      }
      
      public function §,@§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!"#§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§!"#§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr61:
                     §§push(this.§!"#§);
                  }
               }
               §§goto(addr61);
            }
            return §§pop();
         }
         §§goto(addr61);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:* = this.§^"Z§;
         while(true)
         {
            for(_loc2_ in _loc6_)
            {
               if(_loc8_ && _loc3_)
               {
                  break;
               }
               if(this.§^"Z§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(_loc7_ || param1)
         {
            this.§9[§(param1,_loc3_,false);
            if(_loc3_)
            {
               while(true)
               {
                  _loc3_.dispose();
                  §§push(int(this.§4$§.indexOf(_loc3_)));
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        _loc4_ = §§pop();
                        addr132:
                        §§push(0);
                     }
                     if(§§pop() >= §§pop())
                     {
                        loop2:
                        for(; !_loc8_; while(true)
                        {
                           if(!(_loc8_ && _loc2_))
                           {
                              continue;
                           }
                           continue loop2;
                        },§§goto(addr141))
                        {
                           this.§4$§.splice(_loc4_,1);
                           while(true)
                           {
                              §§goto(addr101);
                           }
                        }
                        continue;
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr132);
               }
            }
            addr101:
            §§goto(addr100);
         }
         addr100:
         while(true)
         {
            delete this.§^"Z§[_loc2_];
            continue loop2;
         }
         addr100:
      }
      
      public function get §<"?§() : int
      {
         return this.§4$§.length;
      }
      
      public function §]!u§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§goto(addr52);
                        }
                     }
                     §§goto(addr59);
                  }
                  addr52:
                  §§pop();
                  if(_loc6_)
                  {
                     addr59:
                     if(param1 >= this.§<"?§)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr67);
                        }
                     }
                  }
                  var _loc2_:BitmapData = this.§4$§[param1];
                  var _loc3_:ByteArray = §`!4§.encode(_loc2_);
                  var _loc4_:FileReference;
                  (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
                  return;
               }
            }
            §§goto(addr59);
         }
         addr67:
      }
   }
}
