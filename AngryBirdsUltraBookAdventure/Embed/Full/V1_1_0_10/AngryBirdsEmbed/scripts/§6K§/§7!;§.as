package §6K§
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
   
   public class §7!;§ extends EventDispatcher
   {
      
      static const §-!&§:uint = 33639248;
      
      static const §9@§:uint = 808471376;
      
      static const §&!M§:uint = 67324752;
      
      static const §4[§:uint = 84233040;
      
      static const §]X§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §8!-§:uint = 134695760;
      
      static const §>_§:uint = 134630224;
      
      static const §#!2§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-!&§ = 33639248;
            §9@§ = 808471376;
         }
         if(_loc1_)
         {
            §]X§ = 101010256;
            SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
            if(!(_loc2_ && _loc1_))
            {
               SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
               addr73:
               §8!-§ = 134695760;
            }
            §>_§ = 134630224;
            if(_loc1_)
            {
               §#!2§ = 134695760;
            }
            return;
         }
         §§goto(addr73);
      }
      
      protected var §set §:Array;
      
      protected var §7c§:Dictionary;
      
      protected var §;H§:URLStream;
      
      protected var §6I§:String;
      
      protected var §`i§:Function;
      
      protected var §!&§:§,$§;
      
      protected var §=_§:ByteArray;
      
      protected var §[%§:uint;
      
      protected var §;^§:uint;
      
      public function §7!;§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               this.§6I§ = param1;
               if(_loc2_)
               {
               }
               §§goto(addr32);
            }
            this.§`i§ = this.§#b§;
         }
         addr32:
      }
      
      public function get active() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`i§ === this.§#b§);
         if(_loc2_ || _loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(!this.§;H§);
         if(_loc2_)
         {
            if(§§pop())
            {
               if(!(_loc3_ && param1))
               {
                  §§goto(addr30);
               }
            }
            §§goto(addr53);
         }
         addr30:
         §§pop();
         if(!(_loc3_ && _loc3_))
         {
            addr53:
            if(this.§`i§ == this.§#b§)
            {
               this.§;H§ = new URLStream();
               this.§;H§.endian = Endian.LITTLE_ENDIAN;
               if(!(_loc3_ && param1))
               {
                  this.§"!%§();
                  if(_loc2_)
                  {
                     §§goto(addr84);
                  }
                  this.§7c§ = new Dictionary();
                  this.§`i§ = this.§62§;
                  this.§;H§.load(param1);
               }
            }
            §§goto(addr84);
         }
         addr84:
         this.§set § = [];
         if(_loc3_ && param1)
         {
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!this.§;H§);
         if(!(_loc2_ && this))
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr31:
                  §§pop();
                  if(_loc3_)
                  {
                     §§push(this.§`i§ == this.§#b§);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr60);
            }
            addr56:
            if(§§pop())
            {
               this.§set § = [];
               addr60:
               this.§7c§ = new Dictionary();
               param1.position = 0;
               param1.endian = Endian.LITTLE_ENDIAN;
               if(_loc3_)
               {
                  this.§`i§ = this.§62§;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr111);
               }
               addr92:
               if(this.parse(param1))
               {
                  this.§`i§ = this.§#b§;
                  dispatchEvent(new Event(Event.COMPLETE));
               }
               else
               {
                  dispatchEvent(new §'x§(§'x§.§2L§,"EOF"));
               }
            }
            addr111:
            return;
         }
         §§goto(addr31);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§;H§)
            {
               if(!_loc2_)
               {
                  this.§`i§ = this.§#b§;
                  if(!_loc2_)
                  {
                     this.§>g§();
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr63);
                     }
                     this.§;H§ = null;
                  }
                  §§goto(addr63);
               }
            }
            §§goto(addr63);
         }
         addr63:
         this.§;H§.close();
         if(_loc2_)
         {
         }
      }
      
      public function §[!A§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§,$§ = null;
         if(!(_loc11_ && param2))
         {
            §§push(param1 == null);
            if(!_loc11_)
            {
               §§push(!§§pop());
               if(!(_loc11_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        addr57:
                        §§pop();
                        addr77:
                        if(!_loc11_)
                        {
                           §§push(this.§set §.length > 0);
                        }
                        _loc4_ = new ByteArray();
                        if(!(_loc11_ && _loc3_))
                        {
                           param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                           if(!(_loc11_ && param2))
                           {
                              §§push(0);
                              if(_loc10_ || param2)
                              {
                                 §§push(uint(§§pop()));
                                 if(_loc10_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc10_)
                                    {
                                       addr132:
                                       addr119:
                                       §§push(0);
                                       if(_loc10_)
                                       {
                                          §§push(uint(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                       addr133:
                                       while(_loc7_ < this.§set §.length)
                                       {
                                          if((_loc8_ = this.§set §[_loc7_] as §,$§) != null)
                                          {
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                _loc8_.§[!A§(_loc4_,param2,true,_loc5_);
                                                if(_loc11_ && param1)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§push(_loc5_);
                                             if(_loc10_ || param2)
                                             {
                                                §§push(§§pop() + _loc8_.§[!A§(param1,param2));
                                                if(!(_loc11_ && this))
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(_loc10_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr210:
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc10_)
                                                         {
                                                            addr206:
                                                            §§push(uint(§§pop() + 1));
                                                         }
                                                      }
                                                      _loc7_++;
                                                      continue;
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr210);
                                                }
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr210);
                                       }
                                       if(_loc4_.length > 0)
                                       {
                                          param1.writeBytes(_loc4_);
                                          if(_loc10_ || param1)
                                          {
                                             addr230:
                                             param1.writeUnsignedInt(§]X§);
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                param1.writeShort(0);
                                                param1.writeShort(0);
                                                if(_loc10_ || param2)
                                                {
                                                   param1.writeShort(_loc6_);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      addr273:
                                                      param1.writeShort(_loc6_);
                                                      if(_loc10_)
                                                      {
                                                         param1.writeUnsignedInt(_loc4_.length);
                                                         if(_loc10_ || param2)
                                                         {
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      param1.writeUnsignedInt(_loc5_);
                                                      if(!_loc11_)
                                                      {
                                                         addr294:
                                                         param1.writeShort(0);
                                                         §§goto(addr297);
                                                      }
                                                   }
                                                }
                                                addr297:
                                                param1.endian = _loc3_;
                                                return;
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr133);
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(0);
                                 }
                                 §§goto(addr133);
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr119);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc11_ && param1))
                     {
                        _loc3_ = param1.endian;
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr294);
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §%!'§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§set §);
            if(_loc1_)
            {
               if(§§pop())
               {
                  addr40:
                  §§push(uint(this.§set §.length));
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop();
            }
         }
         §§goto(addr40);
      }
      
      public function §@_§(param1:uint) : §,$§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§set §);
            if(_loc2_)
            {
               return !!§§pop() ? this.§set §[param1] as §,$§ : null;
            }
         }
         §§goto(addr40);
      }
      
      public function § +§(param1:String) : §,$§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            return !!this.§7c§[param1] ? this.§7c§[param1] as §,$§ : null;
         }
         §§goto(addr24);
      }
      
      public function §>!L§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §,$§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         if(!(_loc5_ && param1))
         {
            §§push(this.§set §);
            if(_loc4_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§set §.length));
                  if(!_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§6o§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr41);
      }
      
      public function §-w§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §,$§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(_loc5_)
         {
            §§push(this.§set §);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§set §.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§!R§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr41);
      }
      
      public function §6o§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §,$§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(this.§set § == null)
         {
            if(_loc7_)
            {
               this.§set § = [];
               if(!(_loc6_ && param3))
               {
                  addr33:
                  if(this.§7c§ == null)
                  {
                     this.§7c§ = new Dictionary();
                     if(!(_loc6_ && param2))
                     {
                        addr48:
                     }
                  }
                  else if(this.§7c§[param2])
                  {
                     if(!(_loc6_ && param2))
                     {
                        throw new Error("File already exists: " + param2 + ". Please remove first.");
                        addr61:
                     }
                  }
                  var _loc5_:§,$§;
                  (_loc5_ = new §,$§()).§%;§ = param2;
                  if(!_loc6_)
                  {
                     _loc5_.§98§(param3,param4);
                     if(!(_loc6_ && param2))
                     {
                        if(param1 >= this.§set §.length)
                        {
                           if(!(_loc6_ && param3))
                           {
                              addr111:
                              §§push(this.§set §);
                              if(_loc7_)
                              {
                                 §§pop().push(_loc5_);
                                 if(!(_loc6_ && this))
                                 {
                                    addr148:
                                    this.§7c§[param2] = _loc5_;
                                    addr134:
                                 }
                              }
                              else
                              {
                                 addr137:
                                 §§pop().splice(param1,0,_loc5_);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§goto(addr148);
                                 }
                              }
                           }
                           return _loc5_;
                        }
                        §§push(this.§set §);
                        §§goto(addr137);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr134);
               }
               §§goto(addr61);
            }
            §§goto(addr48);
         }
         §§goto(addr33);
      }
      
      public function §!R§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §,$§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(this.§set § == null)
         {
            if(_loc8_)
            {
               this.§set § = [];
            }
         }
         if(this.§7c§ == null)
         {
            if(_loc8_ || param3)
            {
               this.§7c§ = new Dictionary();
            }
            else
            {
               throw new Error("File already exists: " + param2 + ". Please remove first.");
               addr54:
            }
         }
         else if(this.§7c§[param2])
         {
            if(_loc8_ || param2)
            {
               §§goto(addr54);
            }
         }
         var _loc6_:§,$§;
         (_loc6_ = new §,$§()).§%;§ = param2;
         if(!_loc7_)
         {
            _loc6_.§#h§(param3,param4,param5);
            if(!(_loc7_ && param2))
            {
               if(param1 >= this.§set §.length)
               {
                  if(!(_loc7_ && param1))
                  {
                     §§push(this.§set §);
                     if(_loc8_ || param3)
                     {
                        §§pop().push(_loc6_);
                        if(_loc7_)
                        {
                        }
                     }
                  }
                  §§goto(addr137);
               }
               else
               {
                  §§push(this.§set §);
               }
               §§pop().splice(param1,0,_loc6_);
               if(!_loc7_)
               {
                  §§goto(addr137);
               }
            }
            §§goto(addr137);
         }
         addr137:
         this.§7c§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §;3§(param1:uint) : §,$§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,$§ = null;
         if(!_loc3_)
         {
            §§push(this.§set §);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() != null);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              addr65:
                              §§push(this.§7c§ == null);
                              if(_loc4_)
                              {
                                 addr72:
                                 §§push(!§§pop());
                                 if(!§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr76);
                                    }
                                 }
                              }
                           }
                           §§goto(addr84);
                        }
                        addr76:
                        §§pop();
                        if(_loc4_)
                        {
                           addr84:
                           if(param1 < this.§set §.length)
                           {
                              addr87:
                              _loc2_ = this.§set §[param1] as §,$§;
                              §§goto(addr85);
                           }
                           §§goto(addr132);
                        }
                        addr85:
                        if(!_loc3_)
                        {
                           if(_loc2_ != null)
                           {
                              if(_loc4_)
                              {
                                 this.§set §.splice(param1,1);
                                 if(_loc4_ || _loc2_)
                                 {
                                    delete this.§7c§[_loc2_.§%;§];
                                    if(!_loc4_)
                                    {
                                       §§goto(addr132);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                           }
                           addr132:
                           return null;
                        }
                        return _loc2_;
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr84);
            }
            §§goto(addr87);
         }
         §§goto(addr65);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§`i§(param1))
         {
         }
         return this.§`i§ === this.§#b§;
      }
      
      protected function §#b§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §62§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(!(_loc4_ && param1))
         {
            if(param1.bytesAvailable >= 4)
            {
               if(!_loc4_)
               {
                  addr33:
                  _loc2_ = param1.readUnsignedInt();
               }
               var _loc3_:* = _loc2_;
               if(!(_loc4_ && param1))
               {
                  §§push(§&!M§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           §§push(0);
                        }
                        else
                        {
                           §§push(§-!&§);
                           if(_loc5_)
                           {
                              if(§§pop() === _loc3_)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(1);
                                 }
                                 else
                                 {
                                    addr242:
                                    §§push(9);
                                    if(_loc5_)
                                    {
                                       addr245:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§]X§);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr250:
                                          switch(2)
                                          {
                                             case 0:
                                                this.§`i§ = this.§;E§;
                                                this.§!&§ = new §,$§(this.§6I§);
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
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
                                                this.§`i§ = this.§#b§;
                                                break;
                                             default:
                                                throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                          }
                                          §§push(true);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr264);
                                       }
                                       else
                                       {
                                          addr237:
                                          §§goto(addr250);
                                          §§push(8);
                                       }
                                       §§goto(addr250);
                                    }
                                    else
                                    {
                                       §§push(§9@§);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr134:
                                          if(§§pop() === _loc3_)
                                          {
                                             §§push(3);
                                             if(_loc4_ && this)
                                             {
                                                addr186:
                                             }
                                             §§goto(addr250);
                                          }
                                          else
                                          {
                                             §§push(§4[§);
                                             if(_loc5_)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc4_ && param1))
                                                {
                                                   addr156:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§push(4);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr250);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                      §§push(_loc3_);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§push(5);
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr186);
                                                               }
                                                               else
                                                               {
                                                                  addr207:
                                                                  §§goto(addr250);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         else
                                                         {
                                                            §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                            if(!_loc4_)
                                                            {
                                                               addr190:
                                                               if(§§pop() === _loc3_)
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§push(6);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§goto(addr207);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr245);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr242);
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               else
                                                               {
                                                                  addr209:
                                                                  §§push(§8!-§);
                                                                  §§push(_loc3_);
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§goto(addr250);
                                                                        §§push(7);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§>_§);
                                                                        §§push(_loc3_);
                                                                        if(!_loc5_)
                                                                        {
                                                                        }
                                                                        addr241:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           §§goto(addr242);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr250);
                                                                           §§push(10);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr237);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr242);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr240:
                                                                     §§push(§#!2§);
                                                                     §§push(_loc3_);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr190);
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr250);
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr240);
               }
               §§goto(addr242);
            }
            else
            {
               §§push(false);
            }
            addr264:
            return §§pop();
         }
         §§goto(addr33);
      }
      
      protected function §;E§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§!&§);
            if(_loc2_ || param1)
            {
               §§push(§§pop().parse(param1));
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     addr54:
                     §§push(this.§!&§.§<!H§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              this.§`i§ = this.§2v§;
                              this.§=_§ = new ByteArray();
                              if(_loc2_ || this)
                              {
                                 this.§[%§ = 0;
                              }
                              else
                              {
                                 addr97:
                                 this.§ !4§();
                                 if(this.§`i§ != this.§#b§)
                                 {
                                    this.§`i§ = this.§62§;
                                    §§push(true);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr118);
                                 }
                                 else
                                 {
                                    addr117:
                                    addr118:
                                    return §§pop();
                                    §§push(false);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr118);
                           }
                           this.§;^§ = 0;
                           §§push(true);
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr117);
               }
               §§goto(addr118);
            }
            §§goto(addr54);
         }
         §§goto(addr97);
      }
      
      protected function §2v§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               §§push(false);
               break;
            }
            §§push(uint(param1.readUnsignedByte()));
            if(_loc4_ || param1)
            {
               _loc2_ = §§pop();
               if(_loc4_ || _loc3_)
               {
                  §§push(this);
                  §§push(this.§[%§);
                  if(_loc4_)
                  {
                     §§push(8);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr64:
                        §§push(§§pop() >>> §§pop());
                        §§push(_loc2_ << 24);
                     }
                     §§pop().§[%§ = §§pop() | §§pop();
                     if(!_loc3_)
                     {
                        addr83:
                        if(this.§[%§ != §8!-§)
                        {
                           continue;
                        }
                     }
                     this.§=_§.length -= 3;
                     this.§`i§ = this.§-b§;
                     addr97:
                     §§push(true);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  §§goto(addr64);
               }
               §§goto(addr97);
            }
            §§goto(addr83);
         }
         return §§pop();
      }
      
      protected function §-b§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:uint = 0;
         if(!_loc5_)
         {
            if(param1.bytesAvailable >= 12)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(uint(param1.readUnsignedInt()));
                  if(_loc6_ || _loc3_)
                  {
                     _loc2_ = §§pop();
                     §§push(uint(param1.readUnsignedInt()));
                     if(_loc6_ || this)
                     {
                        _loc3_ = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           addr71:
                           _loc4_ = param1.readUnsignedInt();
                           if(this.§=_§.length == _loc3_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 this.§=_§.position = 0;
                                 if(!(_loc6_ || this))
                                 {
                                    addr186:
                                    this.§=_§.writeUnsignedInt(_loc3_);
                                    this.§=_§.writeUnsignedInt(_loc4_);
                                 }
                                 §§goto(addr194);
                              }
                              §§push(this.§!&§);
                              if(!(_loc5_ && this))
                              {
                                 §§push(_loc2_);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§pop().§-!6§ = §§pop();
                                    §§push(this.§!&§);
                                    if(_loc6_ || param1)
                                    {
                                       addr132:
                                       §§push(_loc3_);
                                       if(_loc6_ || param1)
                                       {
                                          addr140:
                                          §§pop().§-y§ = §§pop();
                                          if(!_loc5_)
                                          {
                                             §§push(this.§!&§);
                                             if(_loc6_ || param1)
                                             {
                                                addr153:
                                                §§pop().§"!L§ = _loc4_;
                                                addr167:
                                                if(_loc6_)
                                                {
                                                   §§push(this.§!&§);
                                                }
                                                this.§`i§ = this.§62§;
                                                §§goto(addr200);
                                             }
                                             §§pop().§&i§(this.§=_§);
                                             if(!_loc5_)
                                             {
                                                this.§ !4§();
                                                if(_loc6_)
                                                {
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr167);
                                          }
                                          else
                                          {
                                             addr194:
                                             this.§`i§ = this.§2v§;
                                             if(_loc6_)
                                             {
                                                addr200:
                                                §§push(true);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr209:
                                                §§push(false);
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr200);
                                       }
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr132);
                           }
                           else
                           {
                              this.§=_§.writeUnsignedInt(_loc2_);
                           }
                        }
                        §§goto(addr186);
                     }
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr209);
         }
         §§goto(addr153);
      }
      
      protected function § !4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§set §.push(this.§!&§);
            if(_loc2_)
            {
               if(this.§!&§.§%;§)
               {
                  if(!_loc1_)
                  {
                     addr52:
                     this.§7c§[this.§!&§.§%;§] = this.§!&§;
                     if(_loc2_)
                     {
                        addr62:
                        dispatchEvent(new §#J§(§#J§.§ Y§,this.§!&§));
                        if(!_loc1_)
                        {
                           this.§!&§ = null;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr62);
            }
            §§goto(addr52);
         }
         §§goto(addr62);
      }
      
      protected function §"G§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var evt:Event = param1;
         if(!_loc4_)
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§;H§))
            {
               if(_loc5_)
               {
                  this.close();
                  if(_loc5_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
         catch(e:Error)
         {
            if(!_loc4_)
            {
               close();
               if(_loc4_ && _loc2_)
               {
               }
               addr96:
               dispatchEvent(new §'x§(§'x§.§2L§,e.message));
               if(_loc4_)
               {
               }
            }
            if(!hasEventListener(§'x§.§2L§))
            {
               throw e;
            }
            §§goto(addr96);
         }
      }
      
      protected function §9W§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function § J§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.close();
            if(!(_loc3_ && this))
            {
               dispatchEvent(param1.clone());
            }
         }
      }
      
      protected function §"!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§;H§.addEventListener(Event.COMPLETE,this.§9W§);
            if(!(_loc1_ && _loc2_))
            {
               this.§;H§.addEventListener(Event.OPEN,this.§9W§);
               if(_loc2_)
               {
                  §§goto(addr57);
               }
               §§goto(addr95);
            }
            §§goto(addr71);
         }
         addr57:
         this.§;H§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9W§);
         if(!(_loc1_ && _loc2_))
         {
            this.§;H§.addEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
            addr71:
            if(!(_loc1_ && _loc2_))
            {
               addr95:
               this.§;H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
               if(_loc2_)
               {
                  this.§;H§.addEventListener(ProgressEvent.PROGRESS,this.§"G§);
               }
            }
         }
      }
      
      protected function §>g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§;H§.removeEventListener(Event.COMPLETE,this.§9W§);
         this.§;H§.removeEventListener(Event.OPEN,this.§9W§);
         this.§;H§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9W§);
         if(_loc1_)
         {
            this.§;H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
            if(_loc1_)
            {
               §§goto(addr68);
            }
            §§goto(addr77);
         }
         addr68:
         this.§;H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
         if(!_loc2_)
         {
            addr77:
            this.§;H§.removeEventListener(ProgressEvent.PROGRESS,this.§"G§);
         }
      }
   }
}
