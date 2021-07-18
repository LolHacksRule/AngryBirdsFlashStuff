package §9t§
{
   import §+6§.§=!`§;
   import §+6§.§^j§;
   import §6;§.§%[§;
   import §]!a§.Texture;
   import §]!a§.§^!!§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §=!>§ extends EventDispatcher
   {
      
      private static const §@J§:int = 2;
      
      private static const §;s§:int = 2048;
      
      private static var §3!L§:§=!>§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@J§ = 2;
            do
            {
               §;s§ = 2048;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §9!M§:Dictionary;
      
      private var §&q§:Vector.<§^j§>;
      
      private var §1W§:Dictionary;
      
      private var §7G§:Boolean;
      
      private var §7Q§:String;
      
      private var §%!O§:Texture;
      
      private var §1!I§:int;
      
      private var §]Q§:int;
      
      public function §=!>§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            do
            {
               this.§&q§ = new Vector.<§^j§>();
               while(true)
               {
                  this.§9!M§ = new Dictionary();
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§1W§ = new Dictionary();
                     while(!(_loc2_ && this))
                     {
                        this.§7Q§ = param1;
                        if(!(_loc2_ && this))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public static function get §'I§() : §=!>§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§3!L§);
            if(_loc1_ || §=!>§)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §3!L§ = new §=!>§();
                     addr58:
                     §§push(§3!L§);
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr58);
      }
      
      public function get §true§() : int
      {
         return this.§1!I§;
      }
      
      public function get §?^§() : int
      {
         return this.§]Q§;
      }
      
      public function get id() : String
      {
         return this.§7Q§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§35§ = null;
         var _loc2_:§^j§ = null;
         if(!_loc5_)
         {
            if(this.§9!M§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§9!M§;
               loop13:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc5_)
                        {
                           this.§`E§(_loc1_.texture.parent);
                           if(!(_loc5_ && _loc3_))
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                              this.§9!M§ = null;
                              if(!_loc5_)
                              {
                                 addr79:
                                 if(this.§&q§)
                                 {
                                    if(_loc6_)
                                    {
                                       _loc3_ = 0;
                                       if(_loc6_)
                                       {
                                          _loc4_ = this.§&q§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop13;
                                          }
                                          addr121:
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             this.§&q§ = null;
                                             loop1:
                                             while(true)
                                             {
                                                addr215:
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc5_ && _loc1_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§%!O§);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§%!O§);
                                                               addr204:
                                                               while(true)
                                                               {
                                                                  §§pop().dispose();
                                                                  addr205:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     this.§%!O§ = null;
                                                                     while(true)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr202:
                                                         }
                                                         break loop7;
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   this.§&q§ = new Vector.<§^j§>();
                                                   while(_loc6_ || _loc3_)
                                                   {
                                                      this.§9!M§ = new Dictionary();
                                                      while(!_loc5_)
                                                      {
                                                         this.§1W§ = new Dictionary();
                                                         if(!(_loc6_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc6_ || _loc1_)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  break loop3;
                                                               }
                                                               addr212:
                                                               while(true)
                                                               {
                                                                  this.§1W§ = null;
                                                                  §§goto(addr215);
                                                               }
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                   }
                                                   §§goto(addr205);
                                                }
                                                return;
                                             }
                                             addr236:
                                          }
                                          §§goto(addr195);
                                          addr120:
                                          addr118:
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr195);
                                 }
                                 while(true)
                                 {
                                    if(this.§1W§)
                                    {
                                       §§goto(addr212);
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr120);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr28);
      }
      
      public function §;Y§(param1:§^j§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!this.§7G§)
            {
               while(true)
               {
                  if(this.§&q§.indexOf(param1) < 0)
                  {
                     do
                     {
                        this.§&q§.push(param1);
                     }
                     while(_loc2_);
                     
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc3_ || this)
                  {
                     return;
                  }
               }
               return;
            }
         }
      }
      
      private function §,!]§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§^j§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc11_)
            {
               if(_loc8_ == 0)
               {
                  if(_loc12_ || this)
                  {
                     §§push(_loc9_.scale);
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_ || param1)
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
                        if(_loc12_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §@J§ >= §;s§)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    addr296:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr297:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             §§push(_loc6_);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr284:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             addr283:
                                          }
                                          addr285:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr286:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr271:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr272:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr295:
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc12_ || this)
                                 {
                                    if(§§pop() + _loc10_.height + §@J§ >= §;s§)
                                    {
                                       if(_loc12_ || _loc3_)
                                       {
                                          break;
                                       }
                                       loop12:
                                       while(!_loc11_)
                                       {
                                          if(_loc12_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc11_ && param1))
                                             {
                                                if(_loc12_)
                                                {
                                                   §§push(_loc4_);
                                                   while(_loc12_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            §§push(_loc2_);
                                                            loop21:
                                                            while(true)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr224:
                                                                     loop14:
                                                                     while(!(_loc11_ && _loc3_))
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_.height + §@J§ > _loc6_)
                                                                           {
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(int(_loc10_.height + §@J§));
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       if(!(_loc11_ && this))
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             loop17:
                                                                                             while(_loc12_ || _loc3_)
                                                                                             {
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc11_ && _loc2_))
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   addr135:
                                                                                                   if(_loc11_ && this)
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   _loc5_ = §§pop();
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr90:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc8_++;
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               while(false)
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr96:
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop14;
                                                                                             addr189:
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       addr263:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          break loop15;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr295);
                                                                                 }
                                                                              }
                                                                              §§goto(addr189);
                                                                           }
                                                                           §§goto(addr90);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            addr220:
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr272);
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                    }
                                 }
                                 §§goto(addr257);
                              }
                              break loop0;
                           }
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr77);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr80);
            }
            §§goto(addr82);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §72§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§^j§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§0!_§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§=!`§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:* = Number(NaN);
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(_loc14_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc15_)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc15_)
                  {
                     if(§§pop())
                     {
                        if(_loc15_)
                        {
                           §§pop();
                           if(!_loc14_)
                           {
                              §§push(_loc7_);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc15_ || param1)
                                 {
                                    addr83:
                                    if(!§§pop())
                                    {
                                       if(_loc15_)
                                       {
                                          addr86:
                                          break;
                                       }
                                       addr93:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(_loc15_ || param2)
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §@J§ > param2.width)
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr207:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop() + _loc5_));
                                                            addr194:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr195:
                                                               while(true)
                                                               {
                                                                  addr164:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr166:
                                                                     while(!_loc14_)
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           while(_loc15_ || this)
                                                                           {
                                                                           }
                                                                           continue loop3;
                                                                           addr171:
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop6;
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
                                                §§push(_loc4_);
                                                if(_loc15_ || param2)
                                                {
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() + _loc9_.height + §@J§ > param2.height)
                                                      {
                                                         if(!(_loc14_ && this))
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               addr140:
                                                               break loop1;
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                         else
                                                         {
                                                            addr153:
                                                            if(!_loc14_)
                                                            {
                                                               if(_loc15_ || this)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                                  else
                                                                  {
                                                                     (_loc10_ = new §0!_§()).offset = new Point(_loc3_,_loc4_);
                                                                     if(_loc15_)
                                                                     {
                                                                        _loc10_.§1P§ = _loc8_;
                                                                        _loc6_.push(_loc10_);
                                                                        addr279:
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr247:
                                                                        §§push(_loc8_.§`!X§);
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc14_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              if(!(_loc14_ && _loc3_))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc15_ || param2)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(!(_loc15_ || _loc3_))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(!(_loc14_ && _loc3_))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                       addr305:
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(§§pop() < _loc11_)
                                                                                          {
                                                                                             (_loc13_ = _loc8_.§@9§(_loc12_)).§03§ = null;
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                _loc13_.§ k§.offset(_loc3_,_loc4_);
                                                                                                if(!(_loc14_ && _loc3_))
                                                                                                {
                                                                                                   addr304:
                                                                                                   _loc12_++;
                                                                                                }
                                                                                                §§goto(addr305);
                                                                                             }
                                                                                             §§goto(addr304);
                                                                                          }
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr315:
                                                                                                §§push(int(§§pop() + (_loc9_.width + §@J§)));
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr326:
                                                                                                      if(_loc9_.height + §@J§ > _loc5_)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            addr339:
                                                                                                            _loc5_ = int(_loc9_.height + §@J§);
                                                                                                            if(!(_loc15_ || param1))
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   param1.splice(0,1);
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr326);
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      else
                                                      {
                                                         param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr166);
                                             }
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc15_)
                                       {
                                          addr91:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                       §§goto(addr93);
                                    }
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr93);
                        }
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr86);
            }
            return _loc6_;
         }
      }
      
      public function §<h§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§^j§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§0!_§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§=!`§ = null;
         if(!_loc15_)
         {
            §§push(§%[§.§2U§());
            if(_loc14_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc14_)
                  {
                     §§push(false);
                     if(!_loc15_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr77:
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§&q§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(!_loc15_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(!_loc15_)
                              {
                                 if(_loc1_.§`!X§ > 0)
                                 {
                                    if(_loc14_ || _loc2_)
                                    {
                                       _loc2_.push(_loc1_);
                                    }
                                 }
                              }
                              continue;
                           }
                           if(!(_loc15_ && _loc2_))
                           {
                              if(_loc14_ || this)
                              {
                                 if(_loc14_)
                                 {
                                    while(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§,!]§(_loc2_);
                                       if(_loc14_)
                                       {
                                          if(_loc3_.width * _loc3_.height == 0)
                                          {
                                             if(!_loc15_)
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                       }
                                       _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                       if((_loc5_ = this.§72§(_loc2_,_loc4_)).length == 0)
                                       {
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             throw new Error("Found too large sprite sheet image!");
                                          }
                                       }
                                       _loc6_ = this.§0!U§(_loc4_);
                                       if(_loc14_ || _loc3_)
                                       {
                                          §§push(0);
                                          if(!_loc15_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc14_)
                                             {
                                                continue;
                                             }
                                             addr212:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                             }
                                             addr286:
                                          }
                                          for(; §§pop() < _loc5_.length; §§goto(addr286))
                                          {
                                             _loc1_ = (_loc8_ = _loc5_[_loc7_]).§1P§;
                                             if(_loc14_ || _loc1_)
                                             {
                                                §§push(_loc1_.§`!X§);
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc14_ || _loc1_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc14_)
                                                      {
                                                         §§push(0);
                                                         if(_loc14_)
                                                         {
                                                            _loc10_ = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         loop4:
                                                         while(§§pop() < _loc9_)
                                                         {
                                                            _loc11_ = _loc1_.§@9§(_loc10_);
                                                            if(_loc14_ || this)
                                                            {
                                                               this.§[!E§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                               if(!_loc15_)
                                                               {
                                                                  _loc10_++;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         if(!_loc15_)
                                                         {
                                                            addr285:
                                                            _loc7_++;
                                                         }
                                                         continue;
                                                         addr281:
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr285);
                                          }
                                          continue;
                                       }
                                       §§goto(addr212);
                                    }
                                    if(_loc14_)
                                    {
                                       _loc12_ = 0;
                                       if(!_loc15_)
                                       {
                                          _loc13_ = this.§&q§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr318:
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             this.§&q§ = new Vector.<§^j§>();
                                             do
                                             {
                                                this.§7G§ = true;
                                             }
                                             while(_loc15_ && _loc1_);
                                             
                                             addr326:
                                          }
                                          addr317:
                                          addr315:
                                       }
                                       §§goto(addr318);
                                    }
                                    return true;
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr318);
                           }
                           §§goto(addr317);
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
                        §§goto(addr318);
                     }
                  }
               }
               else
               {
                  §§push(this.§7G§);
                  if(_loc14_)
                  {
                     addr72:
                     if(§§pop())
                     {
                        if(!_loc15_)
                        {
                           §§goto(addr76);
                        }
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr72);
         }
         addr76:
         return true;
      }
      
      private function §[!E§(param1:§=!`§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§^!!§ = null;
         var _loc5_:§35§;
         if(!(_loc5_ = this.§9!M§[param1.mName]))
         {
            _loc6_ = param1.§ k§.clone();
            _loc7_ = new §^!!§(param2,_loc6_,false);
            _loc5_ = new §35§(_loc7_,param3,_loc6_,param1.§4!=§,param1.§>!D§,param4);
            if(_loc9_)
            {
               this.§9!M§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §3Z§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(_loc5_ || this)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  addr37:
                  var texture:Texture = null;
                  if(_loc5_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr44);
               }
               addr41:
               if(!§%[§.§[!e§)
               {
                  addr44:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§1W§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || _loc3_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(!(_loc6_ && this))
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§pop().§§slot[2] = this.§1W§[bd];
                                 if(!(_loc6_ && this))
                                 {
                                    addr105:
                                    texture.requestBaseTextureUpdate(bd as BitmapData);
                                 }
                              }
                              §§goto(addr105);
                           }
                           catch(e:Error)
                           {
                           }
                        }
                        continue;
                     }
                     §§goto(addr105);
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function §=!+§(param1:String) : §35§
      {
         return this.§9!M§[param1];
      }
      
      public function §0!U§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§1W§[param1];
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(_loc4_ || param1)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §%[§.§&!>§(param1,param2);
         if(!_loc5_)
         {
            this.§1W§[param1] = _loc3_;
            do
            {
               this.§9!-§(_loc3_,param1,true);
            }
            while(_loc5_);
            
         }
         return _loc3_;
      }
      
      public function §9!-§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc4_:* = 1;
         if(!_loc7_)
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
                  if(!(_loc7_ && param2))
                  {
                     §§push(this);
                     §§push(this.§]Q§);
                     §§push(_loc4_ * param2.width);
                     if(_loc8_ || param3)
                     {
                        §§push(§§pop() * param2.height);
                        if(!_loc7_)
                        {
                           addr225:
                           §§push(§§pop() * 4);
                        }
                        §§pop().§]Q§ = §§pop() + §§pop();
                        while(true)
                        {
                           §§goto(addr178);
                        }
                        addr239:
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr239);
               }
               addr178:
               for(; param1; continue loop4)
               {
                  if(!_loc7_)
                  {
                     if(_loc7_)
                     {
                        continue;
                     }
                     §§push(param1.width);
                     loop6:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr188:
                        while(!_loc7_)
                        {
                           _loc5_ = §§pop();
                           while(_loc8_)
                           {
                              if(!_loc7_)
                              {
                                 continue loop6;
                              }
                              §§goto(addr242);
                           }
                           continue loop3;
                        }
                        §§goto(addr243);
                     }
                  }
                  §§goto(addr191);
               }
               return;
            }
         }
         §§goto(addr177);
      }
      
      public function §93§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§%!O§);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§%!O§ = this.§0!U§(new BitmapData(40,40,false,16711935));
                     addr40:
                  }
               }
               return this.§%!O§;
            }
         }
         §§goto(addr40);
      }
      
      public function §`E§(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§1W§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(this.§1W§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!_loc6_)
         {
            this.§9!-§(param1,_loc3_,false);
            if(_loc3_)
            {
               while(true)
               {
                  _loc3_.dispose();
                  addr117:
                  while(true)
                  {
                  }
                  addr104:
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     param1.dispose();
                     if(!(_loc6_ && _loc3_))
                     {
                        break;
                     }
                     addr102:
                     while(!_loc6_)
                     {
                        §§goto(addr104);
                        continue loop5;
                     }
                     §§goto(addr117);
                  }
                  return;
                  addr111:
               }
            }
            while(true)
            {
               delete this.§1W§[_loc2_];
               §§goto(addr102);
               §§goto(addr117);
            }
         }
         §§goto(addr111);
      }
      
      public function §[!h§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§35§ = this.§=!+§(param1);
         if(_loc4_)
         {
            if(_loc2_ == null)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§=!+§(param1 + "_1"));
                  if(_loc4_ || this)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr58);
                  }
                  §§goto(addr68);
               }
               §§goto(addr90);
            }
            addr58:
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  addr68:
                  _loc2_ = this.§=!+§(param1 + "_01");
               }
               §§goto(addr90);
            }
            if(_loc2_ == null)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr90);
               }
            }
            return _loc2_.bitmapData;
         }
         addr90:
         return null;
      }
   }
}
