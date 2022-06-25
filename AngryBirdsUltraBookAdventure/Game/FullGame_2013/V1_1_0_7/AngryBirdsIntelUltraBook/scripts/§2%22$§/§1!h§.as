package §2"$§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   public class §1!h§ extends EventDispatcher
   {
      
      static const §?!2§:uint = 33639248;
      
      static const §=!$§:uint = 808471376;
      
      static const §<D§:uint = 67324752;
      
      static const §&2§:uint = 84233040;
      
      static const §^!L§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §;t§:uint = 134695760;
      
      static const §2K§:uint = 134630224;
      
      static const §?!6§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!2§ = 33639248;
            loop0:
            while(true)
            {
               §=!$§ = 808471376;
               while(true)
               {
                  §<D§ = 67324752;
                  loop2:
                  while(true)
                  {
                     §&2§ = 84233040;
                     loop3:
                     while(true)
                     {
                        §^!L§ = 101010256;
                        loop4:
                        while(true)
                        {
                           SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                           while(true)
                           {
                              SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                              continue loop2;
                              addr48:
                              while(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §?!6§ = 134695760;
                                    if(!_loc2_)
                                    {
                                       addr29:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr36:
                                          if(_loc1_ || _loc2_)
                                          {
                                             return;
                                             addr43:
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     §;t§ = 134695760;
                     §§goto(addr72);
                  }
                  §§goto(addr43);
               }
            }
         }
         §§goto(addr105);
      }
      
      protected var §7>§:Array;
      
      protected var §^!i§:Dictionary;
      
      protected var §^!I§:URLStream;
      
      protected var §^![§:String;
      
      protected var §<!o§:Function;
      
      protected var §<;§:§=!,§;
      
      protected var §<+§:ByteArray;
      
      protected var §^l§:uint;
      
      protected var §%U§:uint;
      
      public function §1!h§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§^![§ = param1;
            do
            {
               this.§<!o§ = this.§+y§;
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
      }
      
      public function get §6!@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§<!o§ === this.§+y§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(!this.§^!I§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop7:
                     while(true)
                     {
                        §§push(this.§<!o§ == this.§+y§);
                        if(_loc2_ || _loc3_)
                        {
                           loop0:
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§^!I§ = new URLStream();
                                 loop2:
                                 while(true)
                                 {
                                    this.§^!I§.endian = Endian.LITTLE_ENDIAN;
                                    loop3:
                                    while(true)
                                    {
                                       this.§7b§();
                                       loop4:
                                       while(true)
                                       {
                                          this.§7>§ = [];
                                          loop5:
                                          for(; !_loc3_; if(_loc3_ && _loc2_)
                                          {
                                             continue;
                                          },if(_loc3_ && this)
                                          {
                                             continue loop1;
                                          },§§goto(addr72))
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                this.§^!i§ = new Dictionary();
                                                loop9:
                                                while(!_loc3_)
                                                {
                                                   this.§<!o§ = this.§?w§;
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue loop9;
                                                      addr72:
                                                      this.§^!I§.load(param1);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           return;
                           addr131:
                        }
                        break;
                     }
                  }
                  addr150:
               }
               §§goto(addr131);
            }
            §§goto(addr150);
         }
         §§goto(addr96);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(!this.§^!I§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        this.§7>§ = [];
                        loop6:
                        while(_loc3_ || _loc3_)
                        {
                           this.§^!i§ = new Dictionary();
                           loop7:
                           do
                           {
                              param1.position = 0;
                              do
                              {
                                 param1.endian = Endian.LITTLE_ENDIAN;
                                 loop9:
                                 while(true)
                                 {
                                    this.§<!o§ = this.§?w§;
                                    while(true)
                                    {
                                       §§push(this.parse(param1));
                                       if(!_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop9;
                                          }
                                          dispatchEvent(new §9!$§(§9!$§.§?B§,"EOF"));
                                          if(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   continue loop7;
                                                }
                                                continue loop9;
                                             }
                                             addr122:
                                             dispatchEvent(new Event(Event.COMPLETE));
                                          }
                                          continue;
                                       }
                                       addr194:
                                       addr152:
                                       while(_loc3_ || this)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          break loop6;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              while(!(_loc3_ || this));
                              
                              if(!(_loc2_ && _loc2_))
                              {
                                 break loop4;
                              }
                              continue loop6;
                           }
                           while(_loc2_ && this);
                           
                           break loop4;
                        }
                        while(true)
                        {
                           §§goto(addr152);
                        }
                     }
                  }
                  return;
                  addr176:
               }
               §§goto(addr194);
            }
         }
         §§goto(addr178);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§^!I§)
            {
               loop0:
               while(true)
               {
                  this.§<!o§ = this.§+y§;
                  loop1:
                  while(true)
                  {
                     this.§^?§();
                     while(!_loc1_)
                     {
                        this.§^!I§.close();
                        while(!(_loc1_ && this))
                        {
                           this.§^!I§ = null;
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
                  addr62:
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §,!4§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:int = 0;
         var _loc8_:§=!,§ = null;
         if(!_loc11_)
         {
            §§push(param1 == null);
            if(!_loc11_)
            {
               §§push(!§§pop());
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(!(_loc11_ && this))
                     {
                        addr52:
                        §§pop();
                        if(!(_loc11_ && this))
                        {
                           §§goto(addr65);
                        }
                        §§goto(addr72);
                     }
                  }
                  addr65:
                  if(this.§7>§.length > 0)
                  {
                     if(!_loc11_)
                     {
                        addr68:
                        _loc3_ = param1.endian;
                        addr72:
                        _loc4_ = new ByteArray();
                        if(!(_loc11_ && this))
                        {
                           param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                           if(_loc10_)
                           {
                              §§push(0);
                              loop0:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 loop1:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    while(true)
                                    {
                                       addr122:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop4:
                                          while(!_loc11_)
                                          {
                                             §§push(uint(§§pop()));
                                             if(_loc11_)
                                             {
                                                continue loop1;
                                             }
                                             _loc6_ = §§pop();
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!(_loc11_ && this))
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           while(false)
                           {
                              §§goto(addr122);
                           }
                           loop6:
                           while(_loc7_ < this.§7>§.length)
                           {
                              if((_loc8_ = this.§7>§[_loc7_] as §=!,§) != null)
                              {
                                 if(_loc10_)
                                 {
                                    _loc8_.§,!4§(_loc4_,param2,true,_loc5_);
                                    if(_loc10_)
                                    {
                                       §§push(_loc5_);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() + _loc8_.§,!4§(param1,param2));
                                          loop8:
                                          while(true)
                                          {
                                             §§push(uint(§§pop()));
                                             loop9:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr214:
                                                loop13:
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!(_loc10_ || param2))
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(uint(§§pop()));
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      _loc6_ = §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         addr170:
                                                         while(true)
                                                         {
                                                            _loc7_++;
                                                            if(!(_loc11_ && this))
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  while(false)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  continue loop6;
                                                                  addr180:
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr170);
                           }
                           if(!_loc11_)
                           {
                              if(_loc4_.length > 0)
                              {
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    param1.writeBytes(_loc4_);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       addr327:
                                       param1.writeUnsignedInt(§^!L§);
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       param1.writeShort(0);
                                       loop16:
                                       while(true)
                                       {
                                          param1.writeShort(0);
                                          while(true)
                                          {
                                             param1.writeShort(_loc6_);
                                             loop18:
                                             while(_loc10_ || param1)
                                             {
                                                while(true)
                                                {
                                                   param1.writeShort(_loc6_);
                                                   loop20:
                                                   while(true)
                                                   {
                                                      param1.writeUnsignedInt(_loc4_.length);
                                                      loop21:
                                                      while(!_loc11_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            param1.writeUnsignedInt(_loc5_);
                                                            while(true)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  break;
                                                                  addr259:
                                                               }
                                                               while(true)
                                                               {
                                                                  param1.writeShort(0);
                                                                  addr263:
                                                                  while(_loc10_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               addr250:
                                                               if(!(_loc10_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(true)
                                                               {
                                                                  §§goto(addr331);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr327);
                           }
                           §§goto(addr316);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr72);
                  }
                  addr331:
                  return;
               }
            }
            §§goto(addr52);
         }
         §§goto(addr68);
      }
      
      public function §]r§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§7>§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  addr46:
                  §§push(uint(this.§7>§.length));
                  if(!_loc2_)
                  {
                  }
               }
               else
               {
                  return uint(0);
               }
               return §§pop();
            }
         }
         §§goto(addr46);
      }
      
      public function §2t§(param1:uint) : §=!,§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§7>§);
            if(_loc2_)
            {
               return !!§§pop() ? this.§7>§[param1] as §=!,§ : null;
            }
         }
         §§goto(addr40);
      }
      
      public function §+!L§(param1:String) : §=!,§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            return !!this.§^!i§[param1] ? this.§^!i§[param1] as §=!,§ : null;
         }
         §§goto(addr39);
      }
      
      public function §8!3§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §=!,§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(!_loc4_)
         {
            §§push(this.§7>§);
            if(_loc5_ || param3)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§7>§.length));
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§!!;§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr42);
      }
      
      public function §9B§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §=!,§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(_loc5_)
         {
            §§push(this.§7>§);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  addr36:
                  §§push(uint(this.§7>§.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§?!h§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr36);
      }
      
      public function §!!;§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §=!,§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.§7>§ == null)
            {
               if(_loc7_)
               {
                  this.§7>§ = [];
                  addr85:
                  while(true)
                  {
                  }
                  addr85:
               }
               §§goto(addr85);
            }
            while(this.§^!i§ != null)
            {
               if(this.§^!i§[param2])
               {
                  if(_loc7_)
                  {
                     if(!(_loc6_ && param3))
                     {
                        if(_loc6_ && this)
                        {
                           break;
                        }
                        if(_loc7_)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        §§goto(addr85);
                     }
                     addr65:
                  }
                  else if(false)
                  {
                     continue;
                  }
               }
               var _loc5_:§=!,§;
               (_loc5_ = new §=!,§()).§=!;§ = param2;
               if(_loc7_ || param2)
               {
                  _loc5_.§^4§(param3,param4);
                  while(true)
                  {
                     if(param1 < this.§7>§.length)
                     {
                        §§push(this.§7>§);
                        if(!(_loc6_ && param1))
                        {
                           §§pop().splice(param1,0,_loc5_);
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    this.§^!i§[param2] = _loc5_;
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       return _loc5_;
                                    }
                                    addr154:
                                    addr158:
                                    while(true)
                                    {
                                       §§push(this.§7>§);
                                    }
                                    addr158:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr158);
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§pop().push(_loc5_);
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr154);
                  }
               }
               §§goto(addr158);
            }
            this.§^!i§ = new Dictionary();
            §§goto(addr65);
         }
         §§goto(addr85);
      }
      
      public function §?!h§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §=!,§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            if(this.§7>§ == null)
            {
               while(true)
               {
                  this.§7>§ = [];
                  addr99:
                  while(true)
                  {
                  }
               }
               addr96:
            }
            while(true)
            {
               if(this.§^!i§ != null)
               {
                  if(this.§^!i§[param2])
                  {
                     if(_loc7_ || param2)
                     {
                        if(_loc7_ || param3)
                        {
                           if(!_loc8_)
                           {
                              throw new Error("File already exists: " + param2 + ". Please remove first.");
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        if(_loc8_ && param1)
                        {
                           break;
                        }
                        if(true)
                        {
                           break;
                        }
                        continue;
                        addr91:
                     }
                  }
                  break;
               }
               if(!(_loc8_ && param3))
               {
                  this.§^!i§ = new Dictionary();
               }
               §§goto(addr91);
            }
            var _loc6_:§=!,§;
            (_loc6_ = new §=!,§()).§=!;§ = param2;
            if(!(_loc8_ && param2))
            {
               _loc6_.§&p§(param3,param4,param5);
               loop2:
               while(true)
               {
                  if(param1 < this.§7>§.length)
                  {
                     §§push(this.§7>§);
                     if(!_loc8_)
                     {
                        §§pop().splice(param1,0,_loc6_);
                        while(true)
                        {
                           addr120:
                           §§goto(addr137);
                        }
                     }
                     while(true)
                     {
                        §§pop().push(_loc6_);
                        continue loop2;
                     }
                  }
                  §§goto(addr166);
               }
            }
            addr137:
            while(true)
            {
               this.§^!i§[param2] = _loc6_;
               if(_loc8_)
               {
                  continue loop3;
               }
               if(!(_loc7_ || param2))
               {
                  continue loop2;
               }
               if(!_loc8_)
               {
                  break;
               }
               addr166:
               while(true)
               {
                  §§push(this.§7>§);
               }
            }
            return _loc6_;
         }
         §§goto(addr99);
      }
      
      public function §6!-§(param1:uint) : §=!,§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=!,§ = null;
         if(_loc4_)
         {
            §§push(this.§7>§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() == null);
               if(_loc4_ || _loc3_)
               {
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && this))
                           {
                              §§pop();
                              if(_loc4_ || param1)
                              {
                                 §§push(this.§^!i§ == null);
                                 if(!(_loc3_ && this))
                                 {
                                    addr88:
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                       §§goto(addr91);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr88);
                        }
                        addr91:
                        §§goto(addr92);
                     }
                     addr92:
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr95:
                           §§pop();
                           §§goto(addr109);
                        }
                     }
                     if(§§pop())
                     {
                        addr109:
                        §§goto(addr111);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr91);
               }
               §§goto(addr95);
            }
            addr111:
            if(!(_loc3_ && _loc3_))
            {
               addr103:
               §§push(param1 < this.§7>§.length);
            }
            _loc2_ = this.§7>§[param1] as §=!,§;
            if(!(_loc3_ && param1))
            {
               if(_loc2_ == null)
               {
                  addr173:
                  return null;
               }
               if(!(_loc3_ && param1))
               {
                  this.§7>§.splice(param1,1);
               }
               delete this.§^!i§[_loc2_.§=!;§];
            }
            return _loc2_;
         }
         §§goto(addr95);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§<!o§(param1))
         {
         }
         return this.§<!o§ === this.§+y§;
      }
      
      protected function §+y§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?w§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(_loc5_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc5_)
               {
                  addr84:
                  _loc2_ = param1.readUnsignedInt();
               }
               var _loc3_:* = _loc2_;
               if(_loc5_)
               {
                  §§push(§<D§);
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc3_);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              §§push(0);
                              if(!(_loc5_ || this))
                              {
                                 addr310:
                              }
                           }
                           else
                           {
                              addr164:
                              §§push(2);
                              if(_loc5_ || _loc2_)
                              {
                                 addr182:
                              }
                              else
                              {
                                 addr246:
                              }
                           }
                        }
                        else
                        {
                           §§push(§?!2§);
                           if(_loc5_)
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(1);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr337:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§<!o§ = this.§?a§;
                                                if(_loc4_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                this.§<;§ = new §=!,§(this.§^![§);
                                                if(!_loc5_)
                                                {
                                                }
                                                addr346:
                                                §§push(true);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr356);
                                                break;
                                             case 1:
                                             case 2:
                                             case 3:
                                             case 4:
                                             case 5:
                                             case 6:
                                             case 7:
                                             case 8:
                                             case 9:
                                                this.§<!o§ = this.§+y§;
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr346);
                                                break;
                                             default:
                                                throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                          }
                                          addr356:
                                          return §§pop();
                                          §§push(false);
                                       }
                                       else
                                       {
                                          §§goto(addr182);
                                       }
                                    }
                                    else
                                    {
                                       addr215:
                                       §§push(4);
                                       if(!_loc5_)
                                       {
                                          addr259:
                                       }
                                    }
                                    §§goto(addr337);
                                 }
                                 else
                                 {
                                    §§push(§^!L§);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(_loc3_);
                                       if(!_loc4_)
                                       {
                                          addr161:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§goto(addr164);
                                             }
                                             else
                                             {
                                                addr302:
                                                §§push(8);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr337);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§=!$§);
                                             if(!_loc4_)
                                             {
                                                addr186:
                                                §§push(_loc3_);
                                                if(!_loc4_)
                                                {
                                                   addr189:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(3);
                                                         if(_loc5_ || this)
                                                         {
                                                            §§goto(addr337);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr246);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr302);
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   else
                                                   {
                                                      §§push(§&2§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr302);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr227:
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr230:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(5);
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§goto(addr246);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr332:
                                                                              §§goto(addr337);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr274:
                                                                           §§push(7);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§goto(addr337);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr310);
                                                                           }
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr253:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr332);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr302);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§;t§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr263:
                                                                                    §§push(_loc3_);
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       addr271:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr274);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§2K§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr286:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      §§goto(addr302);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr314:
                                                                                                      §§push(9);
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr332);
                                                                                                      }
                                                                                                      §§goto(addr337);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§?!6§);
                                                                                                }
                                                                                                §§goto(addr314);
                                                                                             }
                                                                                             addr313:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                §§goto(addr314);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr337);
                                                                                                §§push(10);
                                                                                             }
                                                                                             §§goto(addr337);
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                              }
                                                                              §§goto(addr337);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr337);
                                       }
                                       §§goto(addr253);
                                    }
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr263);
                        }
                        §§goto(addr337);
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr263);
               }
               §§goto(addr215);
            }
            §§goto(addr337);
         }
         §§goto(addr84);
      }
      
      protected function §?a§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§<;§);
            if(_loc3_)
            {
               §§push(§§pop().parse(param1));
               loop0:
               do
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§<;§);
                        addr166:
                        while(true)
                        {
                           §§push(§§pop().§#U§);
                           loop5:
                           while(!§§pop())
                           {
                              loop6:
                              do
                              {
                                 this.§,!#§();
                                 while(!_loc2_)
                                 {
                                    if(this.§<!o§ == this.§+y§)
                                    {
                                       do
                                       {
                                          §§push(false);
                                       }
                                       while(!_loc3_);
                                       
                                       continue loop0;
                                       addr25:
                                    }
                                    if(_loc3_)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break loop5;
                                          }
                                          this.§<!o§ = this.§?w§;
                                          addr97:
                                          if(!(_loc3_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(true);
                                             while(!(_loc3_ || _loc2_))
                                             {
                                                while(!(_loc3_ || _loc3_))
                                                {
                                                   continue loop5;
                                                }
                                                return §§pop();
                                             }
                                             return §§pop();
                                             addr36:
                                          }
                                          else
                                          {
                                             this.§^l§ = 0;
                                             this.§%U§ = 0;
                                             break;
                                             addr156:
                                          }
                                       }
                                       this.§<+§ = new ByteArray();
                                       §§goto(addr156);
                                    }
                                    §§goto(addr97);
                                    §§goto(addr36);
                                 }
                                 addr145:
                                 while(true)
                                 {
                                    §§goto(addr120);
                                 }
                              }
                              while(_loc3_);
                              
                              continue loop1;
                           }
                           this.§<!o§ = this.§5!=§;
                           §§goto(addr172);
                        }
                     }
                  }
                  §§goto(addr25);
               }
               while(!_loc3_);
               
               return §§pop();
            }
            §§goto(addr166);
         }
         §§goto(addr145);
      }
      
      protected function §5!=§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:uint = 0;
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(_loc4_ || _loc3_)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(false);
                        if(!(_loc3_ && _loc2_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           this.§<+§.length -= 3;
                           loop2:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§<!o§ = this.§9r§;
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§^l§);
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(8);
                                       if(!(_loc3_ && this))
                                       {
                                          addr143:
                                          §§push(§§pop() >>> §§pop());
                                          §§push(_loc2_ << 24);
                                       }
                                       §§pop().§^l§ = §§pop() | §§pop();
                                       while(true)
                                       {
                                          §§push(this.§^l§);
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       if(§§pop() == §;t§)
                                       {
                                          continue loop1;
                                       }
                                       addr58:
                                       while(true)
                                       {
                                          this.§<+§.writeByte(_loc2_);
                                          addr73:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop2;
                                             }
                                             if(_loc4_ || param1)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop0;
                                       }
                                       addr148:
                                    }
                                    §§goto(addr143);
                                 }
                              }
                              §§goto(addr148);
                           }
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr58);
               }
               §§goto(addr73);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr154);
         }
      }
      
      protected function §9r§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(_loc5_)
         {
            if(param1.bytesAvailable < 12)
            {
               §§push(false);
               if(!_loc6_)
               {
                  return §§pop();
               }
               addr37:
               return true;
            }
            loop0:
            while(true)
            {
               §§push(uint(param1.readUnsignedInt()));
               loop1:
               while(true)
               {
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(uint(param1.readUnsignedInt()));
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(uint(param1.readUnsignedInt()));
                           if(!(_loc5_ || _loc3_))
                           {
                              break;
                           }
                           if(!(_loc6_ && _loc3_))
                           {
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(this.§<+§.length != _loc3_)
                                 {
                                    this.§<+§.writeUnsignedInt(_loc2_);
                                    if(!(_loc6_ && param1))
                                    {
                                       this.§<+§.writeUnsignedInt(_loc3_);
                                       this.§<+§.writeUnsignedInt(_loc4_);
                                       loop6:
                                       while(!(_loc6_ && _loc3_))
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             this.§<!o§ = this.§5!=§;
                                             if(_loc5_ || param1)
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   break loop5;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(this.§<;§);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§pop().§<6§(this.§<+§);
                                                         while(_loc5_)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  this.§,!#§();
                                                                  break loop6;
                                                                  continue;
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop5;
                                                         }
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(this.§<;§);
                                                            addr172:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               addr191:
                                                               while(true)
                                                               {
                                                                  §§pop().§!!f§ = §§pop();
                                                                  addr192:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§<;§);
                                                                  }
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr157:
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr185);
                                                            §§push(_loc3_);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr190:
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                   }
                                                   §§goto(addr172);
                                                }
                                                continue loop5;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          this.§<!o§ = this.§?w§;
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                break loop5;
                                             }
                                             addr199:
                                             while(true)
                                             {
                                                this.§<+§.position = 0;
                                                continue loop5;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr157);
                                          }
                                       }
                                       addr141:
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr37);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      protected function §,!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7>§.push(this.§<;§);
            loop0:
            while(true)
            {
               if(this.§<;§.§=!;§)
               {
                  while(true)
                  {
                     this.§^!i§[this.§<;§.§=!;§] = this.§<;§;
                     addr94:
                     while(true)
                     {
                     }
                     addr56:
                     if(_loc1_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  dispatchEvent(new §<!0§(§<!0§.§5!-§,this.§<;§));
                  while(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr56);
                     this.§<;§ = null;
                     if(!_loc2_)
                     {
                        return;
                        addr29:
                     }
                  }
                  §§goto(addr94);
               }
            }
         }
         §§goto(addr29);
      }
      
      protected function §!!$§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var evt:Event = param1;
         if(_loc5_ || _loc2_)
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§^!I§))
            {
               if(_loc5_)
               {
                  this.close();
                  if(!_loc4_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
            if(!(_loc4_ && param1))
            {
               close();
               do
               {
                  if(!hasEventListener(§9!$§.§?B§))
                  {
                     throw e;
                  }
               }
               while(_loc4_ && _loc3_);
               
            }
            dispatchEvent(new §9!$§(§9!$§.§?B§,e.message));
         }
      }
      
      protected function §;!&§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §7`§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      protected function §7b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!I§.addEventListener(Event.COMPLETE,this.§;!&§);
         }
         loop0:
         while(true)
         {
            this.§^!I§.addEventListener(Event.OPEN,this.§;!&§);
            loop1:
            while(true)
            {
               this.§^!I§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!&§);
               while(true)
               {
                  this.§^!I§.addEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                     this.§^!I§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
                     do
                     {
                        this.§^!I§.addEventListener(ProgressEvent.PROGRESS,this.§!!$§);
                     }
                     while(!_loc2_);
                     
                     if(!(_loc1_ && this))
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function §^?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!I§.removeEventListener(Event.COMPLETE,this.§;!&§);
            while(true)
            {
               this.§^!I§.removeEventListener(Event.OPEN,this.§;!&§);
               loop1:
               while(true)
               {
                  this.§^!I§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!&§);
                  loop2:
                  while(true)
                  {
                     this.§^!I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
                     loop3:
                     while(!_loc2_)
                     {
                        this.§^!I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
                        while(true)
                        {
                           this.§^!I§.removeEventListener(ProgressEvent.PROGRESS,this.§!!$§);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr68);
      }
   }
}
