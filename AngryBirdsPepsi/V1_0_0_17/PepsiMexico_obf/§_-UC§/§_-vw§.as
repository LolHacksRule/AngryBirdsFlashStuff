package §_-UC§
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
   
   public class §_-vw§ extends EventDispatcher
   {
      
      static const §_-VM§:uint = 33639248;
      
      static const §_-mz§:uint = 808471376;
      
      static const §_-9I§:uint = 67324752;
      
      static const §_-So§:uint = 84233040;
      
      static const §_-jS§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-L§:uint = 134695760;
      
      static const §_-Nv§:uint = 134630224;
      
      static const §_-HM§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-mz§ = 808471376;
            §_-9I§ = 67324752;
            §_-So§ = 84233040;
            if(!_loc1_)
            {
               §_-jS§ = 101010256;
            }
            SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
            if(!_loc1_)
            {
               SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
               §_-L§ = 134695760;
               addr53:
               if(_loc2_)
               {
                  §_-Nv§ = 134630224;
                  §_-HM§ = 134695760;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      protected var §_-4U§:Array;
      
      protected var §_-ei§:Dictionary;
      
      protected var §_-Oz§:URLStream;
      
      protected var §_-70§:String;
      
      protected var §_-jN§:Function;
      
      protected var §_-0o§:§_-o§;
      
      protected var §_-qq§:ByteArray;
      
      protected var §_-2h§:uint;
      
      protected var §_-6H§:uint;
      
      public function §_-vw§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            if(!_loc2_)
            {
               this.§_-70§ = param1;
               if(_loc3_ || param1)
               {
               }
               §§goto(addr53);
            }
            this.§_-jN§ = this.§_-V6§;
         }
         addr53:
      }
      
      public function get §_-TG§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-jN§ === this.§_-V6§);
         if(!(_loc1_ && _loc1_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(!this.§_-Oz§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr34:
                     §§pop();
                     §§push(this.§_-jN§ == this.§_-V6§);
                  }
               }
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     this.§_-Oz§ = new URLStream();
                     if(!(_loc3_ && this))
                     {
                        this.§_-Oz§.endian = Endian.LITTLE_ENDIAN;
                        if(!_loc3_)
                        {
                           this.§_-Kn§();
                           if(_loc2_)
                           {
                              this.§_-4U§ = [];
                              this.§_-ei§ = new Dictionary();
                              if(_loc2_)
                              {
                                 this.§_-jN§ = this.§_-pR§;
                              }
                           }
                        }
                     }
                     §§goto(addr101);
                  }
                  this.§_-Oz§.load(param1);
               }
               §§goto(addr101);
            }
            §§goto(addr34);
         }
         addr101:
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(!this.§_-Oz§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr34:
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(this.§_-jN§ == this.§_-V6§);
                        if(!_loc3_)
                        {
                           §§goto(addr44);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr94);
                  }
               }
               addr44:
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     this.§_-4U§ = [];
                     this.§_-ei§ = new Dictionary();
                     if(_loc2_ || this)
                     {
                        addr73:
                        param1.position = 0;
                        if(_loc2_)
                        {
                           param1.endian = Endian.LITTLE_ENDIAN;
                           this.§_-jN§ = this.§_-pR§;
                           if(_loc2_)
                           {
                              addr91:
                              if(this.§_-Qq§(param1))
                              {
                                 if(_loc2_)
                                 {
                                    addr94:
                                    this.§_-jN§ = this.§_-V6§;
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr121);
                                 }
                                 addr113:
                              }
                              else
                              {
                                 dispatchEvent(new §get §(§get §.§_-Vm§,"EOF"));
                              }
                              §§goto(addr121);
                           }
                        }
                        dispatchEvent(new Event(Event.COMPLETE));
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr73);
               }
               addr121:
               return;
            }
            §§goto(addr34);
         }
         §§goto(addr91);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§_-Oz§)
            {
               if(_loc1_)
               {
                  this.§_-jN§ = this.§_-V6§;
                  if(!_loc2_)
                  {
                     this.§_-JT§();
                     if(!_loc2_)
                     {
                        this.§_-Oz§.close();
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr52);
                     }
                     this.§_-Oz§ = null;
                  }
               }
            }
         }
         addr52:
      }
      
      public function §_-eo§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§_-o§ = null;
         if(_loc11_)
         {
            §§push(param1 == null);
            if(!_loc10_)
            {
               §§push(!§§pop());
               if(_loc11_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        addr50:
                        §§pop();
                        if(!_loc10_)
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr70);
                     }
                  }
               }
               addr58:
               if(this.§_-4U§.length > 0)
               {
                  if(_loc11_ || this)
                  {
                     addr66:
                     _loc3_ = param1.endian;
                     addr70:
                     _loc4_ = new ByteArray();
                     if(!_loc10_)
                     {
                        param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                        if(!_loc10_)
                        {
                           addr88:
                           §§push(0);
                           if(!(_loc10_ && param2))
                           {
                              §§push(uint(§§pop()));
                              if(_loc11_ || _loc3_)
                              {
                                 _loc5_ = §§pop();
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(0);
                                    if(_loc11_)
                                    {
                                       addr116:
                                       _loc6_ = uint(§§pop());
                                       addr121:
                                       addr115:
                                       if(!_loc10_)
                                       {
                                          addr119:
                                          §§push(0);
                                       }
                                       while(_loc7_ < this.§_-4U§.length)
                                       {
                                          if((_loc8_ = this.§_-4U§[_loc7_] as §_-o§) != null)
                                          {
                                             if(!_loc10_)
                                             {
                                                _loc8_.§_-eo§(_loc4_,param2,true,_loc5_);
                                                if(_loc11_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() + _loc8_.§_-eo§(param1,param2));
                                                      if(_loc11_)
                                                      {
                                                         §§push(uint(§§pop()));
                                                         if(_loc11_ || this)
                                                         {
                                                            addr169:
                                                            _loc5_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  addr180:
                                                                  §§push(uint(§§pop() + 1));
                                                               }
                                                               _loc6_ = §§pop();
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  addr190:
                                                                  _loc7_++;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr169);
                                                }
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       if(!(_loc10_ && this))
                                       {
                                          if(_loc4_.length > 0)
                                          {
                                             if(_loc11_ || param1)
                                             {
                                                param1.writeBytes(_loc4_);
                                                §§goto(addr217);
                                             }
                                             §§goto(addr232);
                                          }
                                          addr217:
                                          param1.writeUnsignedInt(§_-jS§);
                                          if(_loc11_ || param2)
                                          {
                                             addr227:
                                             param1.writeShort(0);
                                             if(!_loc10_)
                                             {
                                                addr232:
                                                param1.writeShort(0);
                                                if(_loc11_ || param2)
                                                {
                                                   param1.writeShort(_loc6_);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      param1.writeShort(_loc6_);
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         addr262:
                                                         param1.writeUnsignedInt(_loc4_.length);
                                                      }
                                                      param1.writeUnsignedInt(_loc5_);
                                                      §§goto(addr276);
                                                   }
                                                }
                                             }
                                             §§goto(addr262);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr227);
                                    }
                                    _loc7_ = §§pop();
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr70);
               }
               addr276:
               param1.writeShort(0);
               param1.endian = _loc3_;
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr66);
      }
      
      public function §_-pu§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§_-4U§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§_-4U§.length));
                  if(!_loc2_)
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
         §§goto(addr42);
      }
      
      public function §_-i1§(param1:uint) : §_-o§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§_-4U§);
            if(_loc3_ || param1)
            {
               return !!§§pop() ? this.§_-4U§[param1] as §_-o§ : null;
            }
         }
         §§goto(addr47);
      }
      
      public function §_-X9§(param1:String) : §_-o§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            return !!this.§_-ei§[param1] ? this.§_-ei§[param1] as §_-o§ : null;
         }
         §§goto(addr27);
      }
      
      public function §_-vo§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-o§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(_loc5_)
         {
            §§push(this.§_-4U§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  addr31:
                  §§push(uint(this.§_-4U§.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§_-qR§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr31);
      }
      
      public function §_-7f§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-o§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this);
         if(_loc6_ || param3)
         {
            §§push(this.§_-4U§);
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§_-4U§.length));
                  if(_loc6_ || param2)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§_-pA§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr41);
      }
      
      public function §_-qR§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-o§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            if(this.§_-4U§ == null)
            {
               this.§_-4U§ = [];
            }
         }
         if(this.§_-ei§ == null)
         {
            if(_loc7_ || this)
            {
               this.§_-ei§ = new Dictionary();
            }
         }
         else if(this.§_-ei§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-o§;
         (_loc5_ = new §_-o§()).§_-3K§ = param2;
         if(!(_loc6_ && param1))
         {
            _loc5_.§_-zk§(param3,param4);
            if(_loc7_)
            {
               if(param1 >= this.§_-4U§.length)
               {
                  if(!_loc6_)
                  {
                     addr91:
                     §§push(this.§_-4U§);
                     if(!_loc6_)
                     {
                        §§pop().push(_loc5_);
                        if(_loc7_)
                        {
                           addr120:
                           this.§_-ei§[param2] = _loc5_;
                        }
                     }
                     §§goto(addr125);
                  }
                  addr125:
                  return _loc5_;
               }
               §§push(this.§_-4U§);
               §§pop().splice(param1,0,_loc5_);
               if(_loc6_ && this)
               {
               }
               §§goto(addr120);
            }
            §§goto(addr91);
         }
         §§goto(addr120);
      }
      
      public function §_-pA§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-o§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            if(this.§_-4U§ == null)
            {
               if(!(_loc8_ && param2))
               {
                  addr31:
                  this.§_-4U§ = [];
                  if(!_loc8_)
                  {
                     addr36:
                     if(this.§_-ei§ == null)
                     {
                        this.§_-ei§ = new Dictionary();
                     }
                     else if(this.§_-ei§[param2])
                     {
                        throw new Error("File already exists: " + param2 + ". Please remove first.");
                     }
                  }
               }
               var _loc6_:§_-o§;
               (_loc6_ = new §_-o§()).§_-3K§ = param2;
               if(!(_loc8_ && this))
               {
                  _loc6_.§_-td§(param3,param4,param5);
                  if(!(_loc8_ && this))
                  {
                     addr91:
                     if(param1 >= this.§_-4U§.length)
                     {
                        if(_loc7_ || param2)
                        {
                           §§push(this.§_-4U§);
                           if(_loc7_ || this)
                           {
                              §§pop().push(_loc6_);
                              if(!_loc8_)
                              {
                                 addr137:
                                 this.§_-ei§[param2] = _loc6_;
                                 addr116:
                              }
                           }
                           else
                           {
                              addr119:
                              §§pop().splice(param1,0,_loc6_);
                              if(_loc7_ || this)
                              {
                                 §§goto(addr137);
                              }
                           }
                        }
                        return _loc6_;
                     }
                     §§push(this.§_-4U§);
                     §§goto(addr119);
                  }
                  §§goto(addr116);
               }
               §§goto(addr91);
            }
            §§goto(addr36);
         }
         §§goto(addr31);
      }
      
      public function §_-mQ§(param1:uint) : §_-o§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-o§ = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§_-4U§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  §§push(!§§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr69:
                              §§push(this.§_-ei§ != null);
                              if(_loc4_)
                              {
                                 §§goto(addr76);
                              }
                           }
                           §§goto(addr78);
                        }
                     }
                     addr76:
                     §§goto(addr77);
                  }
                  addr77:
                  if(§§pop())
                  {
                     addr78:
                     §§pop();
                     §§goto(addr87);
                  }
                  if(§§pop())
                  {
                     addr87:
                     if(!_loc3_)
                     {
                        §§push(param1 < this.§_-4U§.length);
                     }
                     _loc2_ = this.§_-4U§[param1] as §_-o§;
                     if(_loc4_)
                     {
                        if(_loc2_ != null)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              this.§_-4U§.splice(param1,1);
                              if(_loc3_)
                              {
                              }
                              §§goto(addr129);
                           }
                           delete this.§_-ei§[_loc2_.§_-3K§];
                           if(!_loc3_)
                           {
                              §§goto(addr129);
                           }
                        }
                        §§goto(addr131);
                     }
                     addr129:
                     return _loc2_;
                  }
                  addr131:
                  return null;
               }
            }
            §§goto(addr78);
         }
         §§goto(addr69);
      }
      
      protected function §_-Qq§(param1:IDataInput) : Boolean
      {
         while(this.§_-jN§(param1))
         {
         }
         return this.§_-jN§ === this.§_-V6§;
      }
      
      protected function §_-V6§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-pR§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(_loc5_ || _loc3_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc5_)
               {
                  addr30:
                  _loc2_ = param1.readUnsignedInt();
               }
               var _loc3_:* = _loc2_;
               if(_loc5_ || param1)
               {
                  §§push(§_-9I§);
                  if(!_loc4_)
                  {
                     if(§§pop() === _loc3_)
                     {
                        addr98:
                        §§push(0);
                        if(_loc4_ && _loc2_)
                        {
                           addr174:
                        }
                     }
                     else
                     {
                        §§push(§_-VM§);
                        §§push(_loc3_);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() === §§pop())
                           {
                              §§push(1);
                              if(_loc5_ || _loc2_)
                              {
                                 addr223:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.§_-jN§ = this.§_-kZ§;
                                       if(!(_loc4_ && param1))
                                       {
                                          this.§_-0o§ = new §_-o§(this.§_-70§);
                                          if(!(_loc5_ || param1))
                                          {
                                             break;
                                          }
                                          addr239:
                                          §§push(true);
                                          if(_loc5_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr244);
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
                                       this.§_-jN§ = this.§_-V6§;
                                       break;
                                    default:
                                       throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                 }
                                 §§goto(addr239);
                              }
                              else
                              {
                                 addr190:
                                 §§goto(addr223);
                              }
                           }
                           else
                           {
                              §§push(§_-jS§);
                              §§push(_loc3_);
                              if(_loc5_ || param1)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                       addr218:
                                    }
                                    §§goto(addr223);
                                 }
                                 else
                                 {
                                    §§push(§_-mz§);
                                    if(_loc5_)
                                    {
                                       addr151:
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr223);
                                          §§push(3);
                                       }
                                       else
                                       {
                                          §§push(§_-So§);
                                          if(!(_loc4_ && param1))
                                          {
                                             addr163:
                                             if(§§pop() === _loc3_)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(4);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr174);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr190);
                                                   }
                                                }
                                                else
                                                {
                                                   addr196:
                                                   §§push(7);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr223);
                                             }
                                             else
                                             {
                                                §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      §§push(5);
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr218);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr185:
                                                      §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            §§goto(addr190);
                                                            §§push(6);
                                                         }
                                                         else
                                                         {
                                                            addr192:
                                                            if(§_-L§ === _loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr196);
                                                               }
                                                               else
                                                               {
                                                                  addr212:
                                                                  §§goto(addr223);
                                                                  §§push(8);
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                            else
                                                            {
                                                               §§push(§_-Nv§);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§goto(addr212);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§_-HM§);
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                                  addr216:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     §§goto(addr218);
                                                                     §§push(9);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr223);
                                                                     §§push(10);
                                                                  }
                                                                  §§goto(addr223);
                                                               }
                                                               §§push(_loc3_);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr185);
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr192);
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr185);
               }
               §§goto(addr98);
            }
            else
            {
               §§push(false);
            }
            addr244:
            return §§pop();
         }
         §§goto(addr30);
      }
      
      protected function §_-kZ§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§_-0o§);
         if(_loc3_)
         {
            §§push(§§pop().§_-Qq§(param1));
            if(_loc3_)
            {
               if(§§pop())
               {
                  §§goto(addr25);
               }
               §§goto(addr113);
            }
            §§goto(addr28);
         }
         addr25:
         §§push(this.§_-0o§.§_-Yi§);
         if(!_loc2_)
         {
            addr28:
            if(§§pop())
            {
               if(_loc3_ || this)
               {
                  this.§_-jN§ = this.§_-sF§;
                  this.§_-qq§ = new ByteArray();
                  if(_loc3_ || this)
                  {
                     this.§_-2h§ = 0;
                     this.§_-6H§ = 0;
                     if(_loc3_)
                     {
                        §§push(true);
                        if(_loc3_ || _loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr97:
                        §§push(true);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr112);
                        }
                     }
                  }
                  else
                  {
                     addr113:
                     §§push(false);
                  }
                  §§goto(addr114);
               }
               §§goto(addr113);
            }
            this.§_-uo§();
            if(this.§_-jN§ != this.§_-V6§)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§_-jN§ = this.§_-pR§;
                  if(_loc3_)
                  {
                     §§goto(addr97);
                  }
                  else
                  {
                     §§goto(addr113);
                  }
               }
            }
            §§goto(addr113);
         }
         addr112:
         return §§pop();
      }
      
      protected function §_-sF§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         for(; param1.bytesAvailable > 0; this.§_-qq§.writeByte(_loc2_),if(!_loc3_)
         {
            break;
         })
         {
            §§push(uint(param1.readUnsignedByte()));
            if(_loc3_)
            {
               _loc2_ = §§pop();
               if(_loc3_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.§_-2h§);
                  if(!_loc4_)
                  {
                     addr54:
                     §§push(8);
                     if(!_loc4_)
                     {
                        addr40:
                        §§push(§§pop() >>> §§pop());
                        §§push(_loc2_ << 24);
                     }
                     §§pop().§_-2h§ = §§pop() | §§pop();
                     if(this.§_-2h§ == §_-L§)
                     {
                        addr56:
                        this.§_-qq§.length -= 3;
                        this.§_-jN§ = this.§_-T1§;
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(true);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           addr97:
                           return §§pop();
                        }
                     }
                     continue;
                  }
                  §§goto(addr40);
               }
               §§goto(addr56);
            }
            §§goto(addr54);
         }
         §§goto(addr97);
         §§push(false);
      }
      
      protected function §_-T1§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(param1.bytesAvailable >= 12)
         {
            §§push(uint(param1.readUnsignedInt()));
            if(_loc6_)
            {
               _loc2_ = §§pop();
               §§push(uint(param1.readUnsignedInt()));
               if(!(_loc5_ && param1))
               {
                  addr43:
                  _loc3_ = §§pop();
                  §§push(uint(param1.readUnsignedInt()));
               }
               _loc4_ = §§pop();
               if(this.§_-qq§.length == _loc3_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§_-qq§.position = 0;
                     if(_loc6_)
                     {
                        §§push(this.§_-0o§);
                        if(_loc6_)
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && param1))
                           {
                              §§pop().§_-YE§ = §§pop();
                              §§push(this.§_-0o§);
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(_loc6_)
                                 {
                                    addr93:
                                    §§pop().§_-fV§ = §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(this.§_-0o§);
                                       if(_loc6_)
                                       {
                                          addr101:
                                          §§pop().§_-wE§ = _loc4_;
                                          addr104:
                                          this.§_-0o§.§_-QG§(this.§_-qq§);
                                          addr100:
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             this.§_-uo§();
                                             this.§_-jN§ = this.§_-pR§;
                                          }
                                       }
                                       §§goto(addr104);
                                    }
                                    else
                                    {
                                       addr125:
                                       this.§_-qq§.writeUnsignedInt(_loc3_);
                                       this.§_-qq§.writeUnsignedInt(_loc4_);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr147:
                                          this.§_-jN§ = this.§_-sF§;
                                       }
                                    }
                                    §§push(true);
                                    if(_loc6_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr156);
                                 }
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr147);
                  }
                  else
                  {
                     addr155:
                     §§push(false);
                  }
                  addr156:
                  return §§pop();
               }
               this.§_-qq§.writeUnsignedInt(_loc2_);
               §§goto(addr125);
            }
            §§goto(addr43);
         }
         §§goto(addr155);
      }
      
      protected function §_-uo§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-4U§.push(this.§_-0o§);
            if(!_loc2_)
            {
               if(this.§_-0o§.§_-3K§)
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr82);
               }
               §§goto(addr60);
            }
            §§goto(addr82);
         }
         addr45:
         this.§_-ei§[this.§_-0o§.§_-3K§] = this.§_-0o§;
         if(_loc1_ || this)
         {
            addr60:
            dispatchEvent(new §_-uB§(§_-uB§.§_-Qs§,this.§_-0o§));
            if(!(_loc2_ && this))
            {
               addr82:
               this.§_-0o§ = null;
            }
         }
      }
      
      protected function §_-Yl§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var evt:Event = param1;
         if(!(_loc5_ && _loc3_))
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.§_-Qq§(this.§_-Oz§))
            {
               if(_loc4_ || _loc2_)
               {
                  this.close();
                  if(_loc4_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
         catch(e:Error)
         {
            if(_loc4_)
            {
               close();
               if(!(_loc5_ && this))
               {
                  if(!hasEventListener(§get §.§_-Vm§))
                  {
                     throw e;
                  }
               }
            }
            dispatchEvent(new §get §(§get §.§_-Vm§,e.message));
            if(_loc5_)
            {
            }
         }
      }
      
      protected function §_-ci§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §_-Eq§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.close();
            if(_loc2_ || param1)
            {
               dispatchEvent(param1.clone());
            }
         }
      }
      
      protected function §_-Kn§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§_-Oz§.addEventListener(Event.COMPLETE,this.§_-ci§);
         if(_loc1_ || this)
         {
            this.§_-Oz§.addEventListener(Event.OPEN,this.§_-ci§);
            this.§_-Oz§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ci§);
            this.§_-Oz§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Eq§);
            this.§_-Oz§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Eq§);
         }
         this.§_-Oz§.addEventListener(ProgressEvent.PROGRESS,this.§_-Yl§);
      }
      
      protected function §_-JT§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§_-Oz§.removeEventListener(Event.COMPLETE,this.§_-ci§);
         if(!(_loc2_ && _loc1_))
         {
            this.§_-Oz§.removeEventListener(Event.OPEN,this.§_-ci§);
            this.§_-Oz§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ci§);
         }
         this.§_-Oz§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Eq§);
         if(_loc1_)
         {
            this.§_-Oz§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Eq§);
            this.§_-Oz§.removeEventListener(ProgressEvent.PROGRESS,this.§_-Yl§);
         }
      }
   }
}
