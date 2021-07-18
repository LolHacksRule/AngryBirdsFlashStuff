package §=U§
{
   import §0!-§.§5!<§;
   import §0!-§.Texture;
   import §7U§.§@!4§;
   import §7U§.§`L§;
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §3p§ extends EventDispatcher
   {
      
      private static const §=!#§:int = 2;
      
      private static const §]c§:int = 2048;
      
      private static var §+u§:§3p§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §3p§)
         {
            §=!#§ = 2;
            if(!_loc2_)
            {
               addr28:
               §]c§ = 2048;
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §;G§:Dictionary;
      
      private var §9!E§:Vector.<§`L§>;
      
      private var §2!+§:Dictionary;
      
      private var §2y§:Boolean;
      
      private var §%I§:String;
      
      private var §5!0§:Texture;
      
      private var §1!$§:int;
      
      private var §;c§:int;
      
      public function §3p§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               this.§9!E§ = new Vector.<§`L§>();
               if(_loc2_)
               {
                  §§goto(addr40);
               }
            }
            §§goto(addr52);
         }
         addr40:
         this.§;G§ = new Dictionary();
         if(!_loc3_)
         {
            this.§2!+§ = new Dictionary();
            if(!_loc3_)
            {
               addr52:
               this.§%I§ = param1;
            }
         }
      }
      
      public static function get §`!t§() : §3p§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§+u§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §+u§ = new §3p§();
                     addr48:
                     §§push(§+u§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function get §-O§() : int
      {
         return this.§1!$§;
      }
      
      public function get §]!g§() : int
      {
         return this.§;c§;
      }
      
      public function get id() : String
      {
         return this.§%I§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§>?§ = null;
         var _loc2_:§`L§ = null;
         if(!_loc5_)
         {
            if(this.§;G§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§;G§;
               loop1:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc5_)
                        {
                           this.§[!]§(_loc1_.texture.parent);
                           if(!(_loc5_ && _loc2_))
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           this.§;G§ = null;
                           addr90:
                           if(this.§9!E§)
                           {
                              _loc3_ = 0;
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr102:
                                 _loc4_ = this.§9!E§;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop1;
                                 }
                                 addr122:
                              }
                              this.§9!E§ = null;
                           }
                           if(this.§2!+§)
                           {
                              this.§2!+§ = null;
                              if(!_loc5_)
                              {
                                 addr137:
                                 §§push(this.§5!0§);
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr161:
                                          this.§5!0§.dispose();
                                          this.§5!0§ = null;
                                          §§goto(addr165);
                                       }
                                       §§goto(addr182);
                                    }
                                    addr165:
                                    this.§9!E§ = new Vector.<§`L§>();
                                    this.§;G§ = new Dictionary();
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr182:
                                       this.§2!+§ = new Dictionary();
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr102);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_ || _loc2_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr102);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr28);
      }
      
      public function §+t§(param1:§`L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§2y§)
            {
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
            else
            {
               if(this.§9!E§.indexOf(param1) >= 0)
               {
                  if(_loc2_ && _loc3_)
                  {
                     §§goto(addr77);
                  }
               }
               else
               {
                  this.§9!E§.push(param1);
                  §§goto(addr77);
               }
               §§goto(addr77);
            }
            return;
         }
         addr77:
      }
      
      private function §?_§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§`L§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc12_ || _loc2_)
            {
               if(_loc8_ == 0)
               {
                  if(!_loc11_)
                  {
                     §§push(_loc9_.scale);
                     if(!(_loc11_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc11_)
                        {
                           addr69:
                           _loc7_ = §§pop();
                           if(_loc11_ && _loc2_)
                           {
                              addr82:
                              break;
                           }
                           addr77:
                        }
                        else
                        {
                           addr80:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr82);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        §§push(_loc2_);
                        if(!(_loc11_ && _loc2_))
                        {
                           if(§§pop() + _loc10_.width + §=!#§ >= §]c§)
                           {
                              _loc2_ = 0;
                              if(!(_loc11_ && param1))
                              {
                                 addr122:
                                 §§push(_loc3_);
                                 §§push(_loc6_);
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(int(§§pop()));
                                       if(!(_loc11_ && param1))
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc12_ || _loc2_)
                                          {
                                             _loc6_ = 0;
                                             if(!_loc11_)
                                             {
                                                addr158:
                                                if(_loc3_ + _loc10_.height + §=!#§ < §]c§)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc12_ || _loc2_)
                                                   {
                                                      _loc2_ = §§pop() + (_loc10_.width + §=!#§);
                                                      if(!(_loc12_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(_loc2_);
                                                      §§push(_loc4_);
                                                      if(_loc12_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            §§push(int(_loc2_));
                                                            if(_loc12_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr199:
                                                               if(_loc10_.height + §=!#§ > _loc6_)
                                                               {
                                                                  addr235:
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     addr222:
                                                                     §§push(int(_loc10_.height + §=!#§));
                                                                  }
                                                                  _loc8_++;
                                                                  continue;
                                                               }
                                                               §§goto(addr235);
                                                            }
                                                            _loc6_ = §§pop();
                                                            addr232:
                                                            _loc5_ = _loc3_ + _loc6_;
                                                            addr230:
                                                            if(_loc11_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                   }
                                                   §§goto(addr230);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr222);
                                       }
                                    }
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr80);
            }
            §§goto(addr77);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §9%§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§`L§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§%j§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§@!4§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         loop0:
         while(true)
         {
            §§push(param1);
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(!(_loc14_ || _loc3_))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(!(_loc15_ && _loc3_))
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           addr75:
                           §§pop();
                           if(!_loc15_)
                           {
                              addr78:
                              §§push(_loc7_);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc14_ || this)
                                 {
                                    addr92:
                                    if(!§§pop())
                                    {
                                       if(_loc14_ || param1)
                                       {
                                          addr100:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc14_ || _loc3_)
                                       {
                                          addr111:
                                          _loc7_ = §§pop();
                                       }
                                       §§goto(addr111);
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    §§push(_loc3_);
                                    if(_loc14_ || param2)
                                    {
                                       if(§§pop() + _loc9_.width + §=!#§ > param2.width)
                                       {
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc14_ || param1)
                                             {
                                                §§push(_loc4_);
                                                if(_loc14_ || param1)
                                                {
                                                   addr151:
                                                   §§push(int(§§pop() + _loc5_));
                                                   if(_loc14_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      §§push(0);
                                                      if(_loc14_ || _loc3_)
                                                      {
                                                         addr175:
                                                         _loc5_ = §§pop();
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            addr184:
                                                            if(_loc4_ + _loc9_.height + §=!#§ <= param2.height)
                                                            {
                                                               param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                               addr205:
                                                               (_loc10_ = new §%j§()).offset = new Point(_loc3_,_loc4_);
                                                               if(_loc14_ || param2)
                                                               {
                                                                  _loc10_.§8!m§ = _loc8_;
                                                                  _loc6_.push(_loc10_);
                                                                  §§push(_loc8_.§]X§);
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           addr253:
                                                                           §§push(0);
                                                                           if(_loc14_)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              while(_loc12_ < _loc11_)
                                                                              {
                                                                                 (_loc13_ = _loc8_.§#Q§(_loc12_)).§5G§ = null;
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    _loc13_.§>Q§.offset(_loc3_,_loc4_);
                                                                                    if(!(_loc15_ && _loc3_))
                                                                                    {
                                                                                       _loc12_++;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(_loc3_);
                                                                           }
                                                                           §§push(int(§§pop() + (_loc9_.width + §=!#§)));
                                                                           if(_loc14_)
                                                                           {
                                                                              addr296:
                                                                              _loc3_ = §§pop();
                                                                              if(!_loc15_)
                                                                              {
                                                                                 if(_loc9_.height + §=!#§ > _loc5_)
                                                                                 {
                                                                                 }
                                                                                 addr328:
                                                                                 param1.splice(0,1);
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(int(_loc9_.height + §=!#§));
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(!(_loc14_ || param1))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§goto(addr184);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr100);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr75);
               }
               §§goto(addr78);
            }
            return _loc6_;
         }
      }
      
      public function §[!>§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§`L§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§%j§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§@!4§ = null;
         if(!_loc15_)
         {
            §§push(§7j§.§!m§());
            if(_loc14_ || this)
            {
               if(!§§pop())
               {
                  if(!_loc15_)
                  {
                     §§push(false);
                     if(!_loc15_)
                     {
                        §§goto(addr60);
                     }
                     else
                     {
                        addr72:
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              §§goto(addr76);
                           }
                        }
                        var _loc2_:Array = [];
                        var _loc12_:int = 0;
                        var _loc13_:* = this.§9!E§;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           if(_loc14_)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(_loc14_ || _loc2_)
                                 {
                                    if(_loc1_.§]X§ <= 0)
                                    {
                                       continue;
                                    }
                                    if(!(_loc14_ || _loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc2_.push(_loc1_);
                                 continue;
                              }
                              if(_loc14_ || _loc1_)
                              {
                                 if(!(_loc15_ && _loc1_))
                                 {
                                    if(_loc14_ || _loc2_)
                                    {
                                       while(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§?_§(_loc2_);
                                          _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                          if((_loc5_ = this.§9%§(_loc2_,_loc4_)).length == 0)
                                          {
                                             if(_loc14_)
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                          _loc6_ = this.§%!^§(_loc4_);
                                          if(_loc14_ || this)
                                          {
                                             §§push(0);
                                             if(!_loc15_)
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc14_)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                addr281:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr281))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§8!m§;
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(_loc1_.§]X§);
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc14_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            addr235:
                                                            §§push(0);
                                                            if(!_loc14_)
                                                            {
                                                            }
                                                            loop5:
                                                            while(§§pop() < _loc9_)
                                                            {
                                                               _loc11_ = _loc1_.§#Q§(_loc10_);
                                                               if(_loc14_ || this)
                                                               {
                                                                  this.§;!I§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                  if(_loc14_ || _loc2_)
                                                                  {
                                                                     _loc10_++;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            if(_loc14_ || _loc1_)
                                                            {
                                                               addr280:
                                                               _loc7_++;
                                                            }
                                                            addr271:
                                                         }
                                                         continue;
                                                      }
                                                      _loc10_ = §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr235);
                                             }
                                          }
                                       }
                                       if(_loc14_ || _loc3_)
                                       {
                                          _loc12_ = 0;
                                          if(!(_loc15_ && _loc2_))
                                          {
                                             _loc13_ = this.§9!E§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             addr333:
                                             if(!(_loc15_ && _loc1_))
                                             {
                                                §§goto(addr341);
                                             }
                                             addr332:
                                             addr330:
                                          }
                                          §§goto(addr333);
                                       }
                                       §§goto(addr349);
                                    }
                                    addr341:
                                    this.§9!E§ = new Vector.<§`L§>();
                                    if(_loc14_)
                                    {
                                       addr349:
                                       this.§2y§ = true;
                                    }
                                    return true;
                                 }
                                 §§goto(addr333);
                              }
                              §§goto(addr332);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(_loc14_)
                              {
                                 _loc1_.dispose();
                              }
                              continue;
                           }
                           §§goto(addr333);
                        }
                     }
                  }
                  else
                  {
                     addr63:
                     §§push(this.§2y§);
                     if(_loc14_ || _loc3_)
                     {
                        §§goto(addr72);
                     }
                  }
                  addr76:
                  return true;
               }
               §§goto(addr63);
            }
            addr60:
            return §§pop();
         }
         §§goto(addr63);
      }
      
      private function §;!I§(param1:§@!4§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§5!<§ = null;
         var _loc5_:§>?§;
         if(!(_loc5_ = this.§;G§[param1.mName]))
         {
            _loc6_ = param1.§>Q§.clone();
            _loc7_ = new §5!<§(param2,_loc6_,false);
            _loc5_ = new §>?§(_loc7_,param3,_loc6_,param1.§-!V§,param1.§;!A§,param4);
            if(_loc9_)
            {
               this.§;G§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §&k§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || this)
         {
            §§push(null);
            if(_loc5_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc6_ && _loc1_))
               {
                  addr47:
                  var texture:Texture = null;
                  if(_loc5_ || this)
                  {
                     if(!§7j§.§>!Z§)
                     {
                        addr69:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§2!+§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc5_ || this)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(!_loc6_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc6_)
                                    {
                                       §§pop().§§slot[2] = this.§2!+§[bd];
                                       if(_loc6_ && this)
                                       {
                                       }
                                    }
                                    addr120:
                                    §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                                 }
                                 catch(e:Error)
                                 {
                                    continue;
                                 }
                                 continue;
                              }
                              §§push(§§newactivation());
                           }
                           §§goto(addr120);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr69);
            }
         }
         §§goto(addr47);
      }
      
      public function §8!@§(param1:String) : §>?§
      {
         return this.§;G§[param1];
      }
      
      public function §%!^§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§2!+§[param1];
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §7j§.§[I§(param1,param2);
         if(!_loc4_)
         {
            this.§2!+§[param1] = _loc3_;
            if(!_loc4_)
            {
               this.§@e§(_loc3_,param1,true);
            }
         }
         return _loc3_;
      }
      
      public function §@e§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
               §§push(-1);
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  addr30:
                  if(param2)
                  {
                     if(!_loc8_)
                     {
                        §§push(this);
                        §§push(this.§;c§);
                        §§push(_loc4_ * param2.width);
                        if(_loc7_ || param3)
                        {
                           §§push(§§pop() * param2.height);
                           if(!(_loc8_ && this))
                           {
                              §§push(§§pop() * 4);
                           }
                        }
                        §§pop().§;c§ = §§pop() + §§pop();
                        if(_loc7_ || this)
                        {
                           addr69:
                           if(param1)
                           {
                              addr71:
                              §§push(param1.width);
                              if(!(_loc8_ && param2))
                              {
                                 §§push(int(§§pop()));
                                 if(_loc7_)
                                 {
                                    addr83:
                                    _loc5_ = §§pop();
                                    addr90:
                                    if(!_loc8_)
                                    {
                                       addr88:
                                       §§push(int(param1.height));
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc8_ && param3))
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§push(1);
                                             if(_loc7_)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc7_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            addr214:
                                                            §§pop();
                                                            if(!_loc8_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr218:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     addr219:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                     }
                                                                  }
                                                               }
                                                               addr217:
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§push(this);
                                                            §§push(this.§1!$§);
                                                            §§push(_loc4_ * _loc5_);
                                                            if(_loc7_ || param3)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     addr132:
                                                                     §§push(§§pop() * 4);
                                                                  }
                                                                  §§pop().§1!$§ = §§pop() + §§pop();
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc8_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() >> §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        §§push(_loc6_);
                                                                        if(_loc8_)
                                                                        {
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     §§push(1);
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() >> §§pop());
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr218);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         addr221:
                                                         return;
                                                         §§goto(addr219);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr214);
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr219);
                                          }
                                       }
                                       §§goto(addr218);
                                    }
                                 }
                                 _loc6_ = §§pop();
                                 §§goto(addr90);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr69);
               }
               §§goto(addr83);
            }
            §§goto(addr30);
         }
         §§goto(addr83);
      }
      
      public function §8r§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§5!0§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr45:
                     this.§5!0§ = this.§%!^§(new BitmapData(40,40,false,16711935));
                  }
               }
               §§push(this.§5!0§);
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function §[!]§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§2!+§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_ || param1)
               {
                  if(this.§2!+§[_loc2_] != param1)
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BitmapData;
               if(_loc7_)
               {
                  break;
               }
               this.§@e§(param1,_loc3_,false);
               if(!_loc7_)
               {
                  if(_loc3_)
                  {
                     _loc3_.dispose();
                     if(_loc7_ && _loc3_)
                     {
                     }
                     break;
                  }
                  delete this.§2!+§[_loc2_];
                  if(!_loc6_)
                  {
                     break;
                  }
                  param1.dispose();
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            return;
         }
      }
      
      public function §`E§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>?§ = this.§8!@§(param1);
         if(!(_loc3_ && this))
         {
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  §§push(this.§8!@§(param1 + "_1"));
                  if(!(_loc3_ && this))
                  {
                     _loc2_ = §§pop();
                     addr68:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           addr83:
                           _loc2_ = this.§8!@§(param1 + "_01");
                        }
                        §§goto(addr92);
                     }
                     if(_loc2_ == null)
                     {
                        if(!_loc3_)
                        {
                           return null;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr83);
               }
               §§goto(addr92);
            }
            §§goto(addr68);
         }
         addr92:
         return _loc2_.bitmapData;
      }
   }
}
