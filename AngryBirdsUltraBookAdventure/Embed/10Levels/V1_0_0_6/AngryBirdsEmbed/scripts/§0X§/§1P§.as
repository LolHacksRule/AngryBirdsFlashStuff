package §0X§
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
   
   public class §1P§ extends EventDispatcher
   {
      
      static const §]h§:uint = 33639248;
      
      static const §8!+§:uint = 808471376;
      
      static const §"!;§:uint = 67324752;
      
      static const §9c§:uint = 84233040;
      
      static const §;R§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §`!>§:uint = 134695760;
      
      static const §;!H§:uint = 134630224;
      
      static const §!o§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]h§ = 33639248;
            §8!+§ = 808471376;
            if(!_loc2_)
            {
               §"!;§ = 67324752;
               §9c§ = 84233040;
               if(!_loc2_)
               {
                  addr44:
                  §;R§ = 101010256;
                  if(_loc1_ || _loc1_)
                  {
                     SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                  }
               }
               SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
               if(_loc1_ || _loc1_)
               {
                  §`!>§ = 134695760;
               }
               §;!H§ = 134630224;
               §!o§ = 134695760;
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected var §6r§:Array;
      
      protected var §1D§:Dictionary;
      
      protected var §3-§:URLStream;
      
      protected var §;Z§:String;
      
      protected var §%U§:Function;
      
      protected var §-B§:§;a§;
      
      protected var §^v§:ByteArray;
      
      protected var §]V§:uint;
      
      protected var §=!?§:uint;
      
      public function §1P§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            if(_loc3_ || param1)
            {
               this.§;Z§ = param1;
               if(_loc3_ || param1)
               {
                  this.§%U§ = this.§<]§;
               }
            }
         }
      }
      
      public function get active() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§%U§ === this.§<]§);
         if(!(_loc1_ && this))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!this.§3-§);
         if(_loc3_ || _loc3_)
         {
            if(§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  addr36:
                  §§pop();
                  §§push(this.§%U§ == this.§<]§);
               }
            }
            if(§§pop())
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§3-§ = new URLStream();
                  this.§3-§.endian = Endian.LITTLE_ENDIAN;
                  if(_loc3_)
                  {
                     this.§^g§();
                     if(!_loc2_)
                     {
                        this.§6r§ = [];
                        this.§1D§ = new Dictionary();
                        if(_loc3_ || _loc2_)
                        {
                           addr99:
                           this.§%U§ = this.§`]§;
                        }
                        §§goto(addr107);
                     }
                     this.§3-§.load(param1);
                     §§goto(addr107);
                  }
               }
               §§goto(addr99);
            }
            addr107:
            return;
         }
         §§goto(addr36);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!this.§3-§);
         if(!(_loc2_ && _loc2_))
         {
            if(§§pop())
            {
               if(!_loc2_)
               {
                  §§pop();
                  §§push(this.§%U§ == this.§<]§);
                  if(!_loc3_)
                  {
                  }
               }
               §§goto(addr109);
            }
            if(§§pop())
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§6r§ = [];
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§1D§ = new Dictionary();
                     addr71:
                     param1.position = 0;
                     if(!(_loc2_ && this))
                     {
                        addr81:
                        param1.endian = Endian.LITTLE_ENDIAN;
                        if(_loc3_ || param1)
                        {
                           this.§%U§ = this.§`]§;
                           addr106:
                           addr109:
                           if(§§pop())
                           {
                              this.§%U§ = this.§<]§;
                              if(!_loc2_)
                              {
                                 dispatchEvent(new Event(Event.COMPLETE));
                              }
                              addr122:
                           }
                           else
                           {
                              dispatchEvent(new §+B§(§+B§.§3!?§,"EOF"));
                           }
                           return;
                           §§push(this.parse(param1));
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr81);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr109);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§3-§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§%U§ = this.§<]§;
                  if(!_loc2_)
                  {
                     this.§^!<§();
                     if(!(_loc2_ && this))
                     {
                        this.§3-§.close();
                        if(_loc1_ || _loc1_)
                        {
                        }
                        §§goto(addr76);
                     }
                     this.§3-§ = null;
                  }
               }
            }
         }
         addr76:
      }
      
      public function §&b§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§;a§ = null;
         if(_loc10_ || this)
         {
            §§push(param1 == null);
            if(_loc10_)
            {
               §§push(!§§pop());
               if(!_loc11_)
               {
                  §§goto(addr48);
               }
               §§goto(addr57);
            }
            addr48:
            if(§§pop())
            {
               if(!(_loc11_ && _loc3_))
               {
                  addr57:
                  §§pop();
                  if(!(_loc11_ && param1))
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr77);
               }
            }
            addr70:
            if(this.§6r§.length > 0)
            {
               if(_loc10_)
               {
                  addr73:
                  _loc3_ = param1.endian;
                  addr77:
                  _loc4_ = new ByteArray();
                  if(_loc10_ || param2)
                  {
                     param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                     if(!(_loc11_ && param1))
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           §§push(uint(§§pop()));
                           if(_loc10_ || _loc3_)
                           {
                              _loc5_ = §§pop();
                              if(!(_loc11_ && param1))
                              {
                                 addr147:
                                 §§push(0);
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 _loc7_ = §§pop();
                                 addr148:
                                 while(_loc7_ < this.§6r§.length)
                                 {
                                    if((_loc8_ = this.§6r§[_loc7_] as §;a§) != null)
                                    {
                                       if(!(_loc10_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       _loc8_.§&b§(_loc4_,param2,true,_loc5_);
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc5_);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() + _loc8_.§&b§(param1,param2));
                                          if(_loc10_)
                                          {
                                             §§push(uint(§§pop()));
                                             if(!(_loc11_ && param1))
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc10_ || param1)
                                                {
                                                   addr207:
                                                   §§push(_loc6_);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      addr210:
                                                      _loc7_++;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§push(uint(§§pop()));
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr210);
                                 }
                                 if(_loc4_.length > 0)
                                 {
                                    if(_loc10_ || this)
                                    {
                                       param1.writeBytes(_loc4_);
                                       addr230:
                                       param1.writeUnsignedInt(§;R§);
                                       param1.writeShort(0);
                                    }
                                    param1.writeShort(0);
                                    if(_loc10_)
                                    {
                                       param1.writeShort(_loc6_);
                                       param1.writeShort(_loc6_);
                                       param1.writeUnsignedInt(_loc4_.length);
                                       if(_loc10_ || param2)
                                       {
                                          addr268:
                                          param1.writeUnsignedInt(_loc5_);
                                          if(!_loc11_)
                                          {
                                             param1.writeShort(0);
                                          }
                                       }
                                       param1.endian = _loc3_;
                                       §§goto(addr279);
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr230);
                              }
                              addr146:
                              §§goto(addr147);
                              §§push(0);
                           }
                           _loc6_ = §§pop();
                           if(!_loc11_)
                           {
                              §§goto(addr146);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr147);
               }
               §§goto(addr77);
            }
            addr279:
            return;
         }
         §§goto(addr73);
      }
      
      public function §@V§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§6r§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§6r§.length));
                  if(_loc1_)
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
         §§goto(addr41);
      }
      
      public function §-r§(param1:uint) : §;a§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§6r§);
            if(_loc2_)
            {
               return !!§§pop() ? this.§6r§[param1] as §;a§ : null;
            }
         }
         §§goto(addr25);
      }
      
      public function §<T§(param1:String) : §;a§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            return !!this.§1D§[param1] ? this.§1D§[param1] as §;a§ : null;
         }
         §§goto(addr24);
      }
      
      public function §5Z§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §;a§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         if(!(_loc5_ && param2))
         {
            §§push(this.§6r§);
            if(_loc4_ || param2)
            {
               if(§§pop())
               {
                  addr46:
                  §§push(uint(this.§6r§.length));
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§ k§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr46);
      }
      
      public function §8p§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §;a§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this);
         if(_loc6_ || param3)
         {
            §§push(this.§6r§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§6r§.length));
                  if(_loc6_ || this)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§"%§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr42);
      }
      
      public function § k§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §;a§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§6r§ == null)
            {
               if(!(_loc6_ && param1))
               {
                  this.§6r§ = [];
                  if(!(_loc6_ && param3))
                  {
                     addr40:
                     if(this.§1D§ == null)
                     {
                        this.§1D§ = new Dictionary();
                        if(!_loc6_)
                        {
                           addr50:
                        }
                     }
                     else if(this.§1D§[param2])
                     {
                        if(_loc7_ || param1)
                        {
                           §§goto(addr73);
                        }
                     }
                     var _loc5_:§;a§;
                     (_loc5_ = new §;a§()).§?s§ = param2;
                     if(!_loc6_)
                     {
                        _loc5_.§-!E§(param3,param4);
                        if(_loc7_)
                        {
                           if(param1 >= this.§6r§.length)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 addr118:
                                 §§push(this.§6r§);
                                 if(!_loc6_)
                                 {
                                    §§pop().push(_loc5_);
                                    if(_loc7_ || param2)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr134:
                                    §§pop().splice(param1,0,_loc5_);
                                    if(_loc6_)
                                    {
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr145);
                              }
                              this.§1D§[param2] = _loc5_;
                              addr145:
                              return _loc5_;
                           }
                           §§push(this.§6r§);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr73);
               }
               §§goto(addr50);
            }
            §§goto(addr40);
         }
         addr73:
         throw new Error("File already exists: " + param2 + ". Please remove first.");
      }
      
      public function §"%§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §;a§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(this.§6r§ == null)
         {
            this.§6r§ = [];
            if(_loc7_ || param3)
            {
               §§goto(addr30);
            }
            §§goto(addr34);
         }
         addr30:
         if(this.§1D§ == null)
         {
            addr34:
            this.§1D§ = new Dictionary();
         }
         else if(this.§1D§[param2])
         {
            if(_loc7_)
            {
               throw new Error("File already exists: " + param2 + ". Please remove first.");
            }
         }
         var _loc6_:§;a§;
         (_loc6_ = new §;a§()).§?s§ = param2;
         if(_loc7_)
         {
            _loc6_.§8b§(param3,param4,param5);
            if(!_loc8_)
            {
               if(param1 >= this.§6r§.length)
               {
                  if(!_loc8_)
                  {
                     §§push(this.§6r§);
                     if(!_loc8_)
                     {
                        §§pop().push(_loc6_);
                        if(_loc8_)
                        {
                        }
                     }
                     else
                     {
                        addr108:
                        §§pop().splice(param1,0,_loc6_);
                        if(_loc7_ || param2)
                        {
                           addr119:
                           this.§1D§[param2] = _loc6_;
                        }
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr119);
               }
               else
               {
                  §§push(this.§6r§);
               }
               §§goto(addr108);
            }
            §§goto(addr119);
         }
         addr124:
         return _loc6_;
      }
      
      public function §?u§(param1:uint) : §;a§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;a§ = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§6r§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() == null);
               if(_loc3_ || _loc3_)
               {
                  §§push(!§§pop());
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§1D§ == null);
                           if(!(_loc4_ && param1))
                           {
                              §§push(!§§pop());
                              if(!_loc4_)
                              {
                                 addr76:
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr93);
                           }
                           §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              addr88:
                              addr93:
                              if(§§pop())
                              {
                                 addr96:
                                 _loc2_ = this.§6r§[param1] as §;a§;
                                 §§goto(addr94);
                              }
                              addr146:
                              return null;
                              §§push(param1 < this.§6r§.length);
                           }
                           addr94:
                           if(_loc3_)
                           {
                              if(_loc2_ != null)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    this.§6r§.splice(param1,1);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       delete this.§1D§[_loc2_.§?s§];
                                       if(_loc4_)
                                       {
                                          §§goto(addr146);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr146);
                           }
                           return _loc2_;
                        }
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr93);
            }
            §§goto(addr96);
         }
         §§goto(addr88);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§%U§(param1))
         {
         }
         return this.§%U§ === this.§<]§;
      }
      
      protected function §<]§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §`]§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:uint = 0;
         if(_loc4_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr36:
                  if(_loc4_)
                  {
                     if(§"!;§ === _loc3_)
                     {
                        §§push(0);
                     }
                     else
                     {
                        §§push(§]h§);
                        if(!(_loc5_ && param1))
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 addr97:
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    addr220:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this.§%U§ = this.§5k§;
                                          if(!_loc5_)
                                          {
                                             this.§-B§ = new §;a§(this.§;Z§);
                                             if(_loc4_ || _loc3_)
                                             {
                                                break;
                                             }
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
                                          this.§%U§ = this.§<]§;
                                          break;
                                       default:
                                          throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                    }
                                    §§push(true);
                                    if(_loc4_ || param1)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr239);
                                 }
                                 else
                                 {
                                    addr215:
                                    §§goto(addr220);
                                 }
                                 §§goto(addr220);
                              }
                              else if(§;R§ === _loc3_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(2);
                                    if(!_loc4_)
                                    {
                                    }
                                    §§goto(addr220);
                                 }
                                 else
                                 {
                                    addr178:
                                    §§push(7);
                                 }
                                 addr179:
                                 §§goto(addr220);
                              }
                              else
                              {
                                 §§push(§8!+§);
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr220);
                                             §§push(3);
                                          }
                                          else
                                          {
                                             addr143:
                                             §§push(4);
                                             if(!_loc4_)
                                             {
                                                addr210:
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr220);
                                       }
                                       else
                                       {
                                          §§push(§9c§);
                                          if(_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr143);
                                                }
                                                else
                                                {
                                                   §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                   §§push(_loc3_);
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr220);
                                                         §§push(5);
                                                      }
                                                      else
                                                      {
                                                         addr155:
                                                         if(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR === _loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(6);
                                                               if(_loc4_ || this)
                                                               {
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr178);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§`!>§);
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                            }
                                                            addr213:
                                                            if(§§pop() === _loc3_)
                                                            {
                                                               addr214:
                                                               §§goto(addr215);
                                                               §§push(9);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr220);
                                                               §§push(10);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr213);
                                                }
                                             }
                                             §§goto(addr213);
                                          }
                                          if(§§pop() === _loc3_)
                                          {
                                             §§goto(addr178);
                                          }
                                          else
                                          {
                                             §§push(§;!H§);
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr213);
                                          }
                                       }
                                       §§goto(addr220);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(8);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr210);
                                          }
                                       }
                                       §§goto(addr220);
                                    }
                                    else
                                    {
                                       §§goto(addr213);
                                       §§push(§!o§);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr220);
                           }
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr97);
                  addr36:
               }
               §§goto(addr36);
            }
            else
            {
               §§push(false);
            }
            addr239:
            return §§pop();
         }
         §§goto(addr36);
      }
      
      protected function §5k§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§-B§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().parse(param1));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     addr40:
                     §§push(this.§-B§.§ I§);
                     if(_loc3_ || param1)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              this.§%U§ = this.§0h§;
                              this.§^v§ = new ByteArray();
                              if(!(_loc3_ || param1))
                              {
                                 addr105:
                                 this.§%!0§();
                                 if(this.§%U§ != this.§<]§)
                                 {
                                    addr112:
                                    this.§%U§ = this.§`]§;
                                    if(_loc3_ || param1)
                                    {
                                       addr123:
                                       §§push(true);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr131);
                                       }
                                       else
                                       {
                                          §§goto(addr133);
                                       }
                                    }
                                    else
                                    {
                                       addr132:
                                       addr133:
                                       return §§pop();
                                       §§push(false);
                                    }
                                    §§goto(addr133);
                                 }
                              }
                              §§goto(addr132);
                           }
                           this.§]V§ = 0;
                           this.§=!?§ = 0;
                           if(_loc3_)
                           {
                              §§push(true);
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr131);
                           }
                           else
                           {
                              §§goto(addr112);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr132);
               }
               addr131:
               return §§pop();
            }
            §§goto(addr40);
         }
         §§goto(addr123);
      }
      
      protected function §0h§(param1:IDataInput) : Boolean
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
            if(_loc4_)
            {
               _loc2_ = §§pop();
               §§push(this);
               §§push(this.§]V§);
               if(!_loc3_)
               {
                  §§push(8);
                  if(!_loc3_)
                  {
                     addr47:
                     §§push(§§pop() >>> §§pop());
                     §§push(_loc2_ << 24);
                  }
                  §§pop().§]V§ = §§pop() | §§pop();
                  if(_loc4_)
                  {
                     addr56:
                     if(this.§]V§ != §`!>§)
                     {
                        continue;
                     }
                  }
                  this.§^v§.length -= 3;
                  this.§%U§ = this.§0q§;
                  §§push(true);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
                  break;
               }
               §§goto(addr47);
            }
            §§goto(addr56);
         }
         return §§pop();
      }
      
      protected function §0q§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(param1.bytesAvailable >= 12)
         {
            §§push(uint(param1.readUnsignedInt()));
            if(_loc6_ || this)
            {
               _loc2_ = §§pop();
               §§push(uint(param1.readUnsignedInt()));
               if(_loc6_ || this)
               {
                  _loc3_ = §§pop();
                  §§push(uint(param1.readUnsignedInt()));
               }
            }
            _loc4_ = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               if(this.§^v§.length == _loc3_)
               {
                  if(!_loc5_)
                  {
                     this.§^v§.position = 0;
                     §§push(this.§-B§);
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        if(_loc6_ || _loc3_)
                        {
                           §§pop().§-!<§ = §§pop();
                           §§push(this.§-B§);
                           if(!(_loc5_ && this))
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr114:
                                 §§pop().§@W§ = §§pop();
                                 addr130:
                                 §§push(this.§-B§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr124:
                                    §§push(_loc4_);
                                 }
                                 §§pop().§@K§(this.§^v§);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr135);
                                 }
                                 §§goto(addr170);
                              }
                              §§pop().§=X§ = §§pop();
                              if(_loc6_)
                              {
                                 §§goto(addr130);
                                 §§push(this.§-B§);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr124);
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr164);
               }
               else
               {
                  this.§^v§.writeUnsignedInt(_loc2_);
                  this.§^v§.writeUnsignedInt(_loc3_);
                  if(_loc6_)
                  {
                     §§goto(addr164);
                  }
                  §§goto(addr178);
               }
            }
            addr135:
            this.§%!0§();
            this.§%U§ = this.§`]§;
            if(!_loc5_)
            {
               addr174:
               §§push(true);
               if(!_loc5_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr164:
               this.§^v§.writeUnsignedInt(_loc4_);
               if(!_loc5_)
               {
                  addr170:
                  this.§%U§ = this.§0h§;
                  §§goto(addr174);
               }
               else
               {
                  addr178:
                  §§push(false);
               }
            }
            return §§pop();
         }
         §§goto(addr178);
      }
      
      protected function §%!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§6r§.push(this.§-B§);
            if(!_loc2_)
            {
               if(this.§-B§.§?s§)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr81);
               }
               §§goto(addr71);
            }
            addr61:
            this.§1D§[this.§-B§.§?s§] = this.§-B§;
            if(!_loc2_)
            {
               addr71:
               dispatchEvent(new §+l§(§+l§.§]-§,this.§-B§));
               if(_loc1_)
               {
                  addr81:
                  this.§-B§ = null;
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      protected function §?!,§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var evt:Event = param1;
         if(_loc4_)
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§3-§))
            {
               if(!_loc5_)
               {
                  this.close();
                  if(_loc5_ && _loc3_)
                  {
                  }
                  addr112:
                  return;
                  addr62:
               }
               dispatchEvent(new Event(Event.COMPLETE));
            }
            §§goto(addr62);
         }
         catch(e:Error)
         {
            if(_loc4_)
            {
               close();
               if(!_loc5_)
               {
                  if(!hasEventListener(§+B§.§3!?§))
                  {
                     throw e;
                  }
               }
            }
            dispatchEvent(new §+B§(§+B§.§3!?§,e.message));
            if(!_loc4_)
            {
            }
         }
         §§goto(addr112);
      }
      
      protected function §5>§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §9!!§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.close();
            if(!_loc3_)
            {
               dispatchEvent(param1.clone());
            }
         }
      }
      
      protected function §^g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§3-§.addEventListener(Event.COMPLETE,this.§5>§);
            if(!(_loc2_ && _loc2_))
            {
               this.§3-§.addEventListener(Event.OPEN,this.§5>§);
               this.§3-§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5>§);
               if(!(_loc2_ && _loc2_))
               {
                  this.§3-§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!!§);
                  if(!_loc2_)
                  {
                     this.§3-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!!§);
                     addr94:
                     this.§3-§.addEventListener(ProgressEvent.PROGRESS,this.§?!,§);
                  }
                  §§goto(addr94);
               }
            }
            return;
         }
         §§goto(addr94);
      }
      
      protected function §^!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§3-§.removeEventListener(Event.COMPLETE,this.§5>§);
         if(!_loc2_)
         {
            this.§3-§.removeEventListener(Event.OPEN,this.§5>§);
            if(_loc1_ || _loc2_)
            {
               this.§3-§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5>§);
               this.§3-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!!§);
               this.§3-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!!§);
               §§goto(addr49);
            }
            §§goto(addr82);
         }
         addr49:
         if(_loc1_)
         {
            addr82:
            this.§3-§.removeEventListener(ProgressEvent.PROGRESS,this.§?!,§);
         }
      }
   }
}
