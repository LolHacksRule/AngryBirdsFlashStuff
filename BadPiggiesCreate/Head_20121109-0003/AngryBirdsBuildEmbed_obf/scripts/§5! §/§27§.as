package §5! §
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
   
   public class §27§ extends EventDispatcher
   {
      
      static const §'!7§:uint = 33639248;
      
      static const §2?§:uint = 808471376;
      
      static const §@!]§:uint = 67324752;
      
      static const §>%§:uint = 84233040;
      
      static const §6!Q§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §#]§:uint = 134695760;
      
      static const §5!d§:uint = 134630224;
      
      static const §7u§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §27§)
         {
            §'!7§ = 33639248;
            §2?§ = 808471376;
            §@!]§ = 67324752;
            §>%§ = 84233040;
            §6!Q§ = 101010256;
            if(_loc1_ || _loc2_)
            {
               addr65:
               SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
               SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
               §#]§ = 134695760;
            }
            §5!d§ = 134630224;
            if(_loc1_ || _loc1_)
            {
               §7u§ = 134695760;
            }
            return;
         }
         §§goto(addr65);
      }
      
      protected var §4T§:Array;
      
      protected var §7Y§:Dictionary;
      
      protected var §2!_§:URLStream;
      
      protected var §]!I§:String;
      
      protected var §&x§:Function;
      
      protected var §;H§:§#!E§;
      
      protected var §5!v§:ByteArray;
      
      protected var §5P§:uint;
      
      protected var §!w§:uint;
      
      public function §27§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_ || _loc3_)
            {
               this.§]!I§ = param1;
               if(_loc2_ || _loc2_)
               {
                  addr52:
                  this.§&x§ = this.§+!#§;
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function get active() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&x§ === this.§+!#§);
         if(!(_loc1_ && this))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(!this.§2!_§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr55);
                     }
                     §§goto(addr68);
                  }
               }
            }
            addr55:
            if(this.§&x§ == this.§+!#§)
            {
               if(!_loc3_)
               {
                  addr68:
                  this.§2!_§ = new URLStream();
                  this.§2!_§.endian = Endian.LITTLE_ENDIAN;
                  this.§6!'§();
               }
               this.§4T§ = [];
               this.§7Y§ = new Dictionary();
               if(_loc2_)
               {
                  this.§&x§ = this.§"`§;
                  this.§2!_§.load(param1);
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(!this.§2!_§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr38:
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(this.§&x§ == this.§+!#§);
                        if(!_loc2_)
                        {
                           §§goto(addr48);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr73);
                  }
               }
               addr48:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     this.§4T§ = [];
                     this.§7Y§ = new Dictionary();
                     param1.position = 0;
                     if(!_loc2_)
                     {
                        addr73:
                        param1.endian = Endian.LITTLE_ENDIAN;
                        if(_loc3_ || this)
                        {
                           this.§&x§ = this.§"`§;
                           addr88:
                           if(this.parse(param1))
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 this.§&x§ = this.§+!#§;
                                 if(_loc2_ && param1)
                                 {
                                 }
                                 §§goto(addr136);
                              }
                           }
                           else
                           {
                              dispatchEvent(new §]A§(§]A§.§&!3§,"EOF"));
                              §§goto(addr136);
                           }
                           §§goto(addr136);
                        }
                        dispatchEvent(new Event(Event.COMPLETE));
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr88);
               }
               addr136:
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr73);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§2!_§)
            {
               if(!_loc2_)
               {
                  this.§&x§ = this.§+!#§;
                  if(!(_loc2_ && _loc1_))
                  {
                     this.§?%§();
                     if(_loc1_)
                     {
                        addr63:
                        this.§2!_§.close();
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr71);
                     }
                  }
                  §§goto(addr71);
               }
               this.§2!_§ = null;
            }
            addr71:
            return;
         }
         §§goto(addr63);
      }
      
      public function §=&§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:int = 0;
         var _loc8_:§#!E§ = null;
         if(!_loc10_)
         {
            §§push(param1 == null);
            if(!_loc10_)
            {
               §§push(!§§pop());
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           addr56:
                           if(this.§4T§.length > 0)
                           {
                              if(!_loc10_)
                              {
                                 addr59:
                                 _loc3_ = param1.endian;
                                 addr63:
                                 _loc4_ = new ByteArray();
                                 if(_loc11_ || _loc3_)
                                 {
                                    param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                                    if(!_loc10_)
                                    {
                                       §§push(0);
                                       if(_loc11_)
                                       {
                                          §§push(uint(§§pop()));
                                          if(_loc11_ || this)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                addr100:
                                                §§push(0);
                                                if(!_loc10_)
                                                {
                                                   addr104:
                                                   _loc6_ = uint(§§pop());
                                                   if(_loc11_)
                                                   {
                                                      addr108:
                                                      _loc7_ = 0;
                                                   }
                                                }
                                                §§goto(addr108);
                                             }
                                             while(_loc7_ < this.§4T§.length)
                                             {
                                                if((_loc8_ = this.§4T§[_loc7_] as §#!E§) != null)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      _loc8_.§=&§(_loc4_,param2,true,_loc5_);
                                                      if(_loc10_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(_loc5_);
                                                      if(_loc11_ || this)
                                                      {
                                                         §§push(§§pop() + _loc8_.§=&§(param1,param2));
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               addr175:
                                                               _loc5_ = §§pop();
                                                               if(!_loc10_)
                                                               {
                                                                  addr178:
                                                                  §§push(_loc6_);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr186:
                                                                     §§push(uint(§§pop() + 1));
                                                                  }
                                                                  _loc6_ = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     addr191:
                                                                     _loc7_++;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr191);
                                             }
                                             if(_loc11_)
                                             {
                                                if(_loc4_.length > 0)
                                                {
                                                   addr203:
                                                   param1.writeBytes(_loc4_);
                                                }
                                                param1.writeUnsignedInt(§6!Q§);
                                                if(!_loc10_)
                                                {
                                                   param1.writeShort(0);
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                addr216:
                                                param1.writeShort(0);
                                                if(_loc11_)
                                                {
                                                   param1.writeShort(_loc6_);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      addr231:
                                                      param1.writeShort(_loc6_);
                                                      if(_loc11_)
                                                      {
                                                         addr246:
                                                         param1.writeUnsignedInt(_loc4_.length);
                                                         if(_loc10_ && this)
                                                         {
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      param1.writeUnsignedInt(_loc5_);
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                addr260:
                                                param1.writeShort(0);
                                                if(_loc11_ || param1)
                                                {
                                                   param1.endian = _loc3_;
                                                   §§goto(addr273);
                                                }
                                                addr273:
                                                return;
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr104);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr100);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr59);
                     }
                  }
               }
            }
            §§goto(addr56);
         }
         §§goto(addr59);
      }
      
      public function §-!p§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§4T§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr25:
                  §§push(uint(this.§4T§.length));
                  if(!_loc1_)
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
         §§goto(addr25);
      }
      
      public function §0!i§(param1:uint) : §#!E§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§4T§);
            if(!(_loc3_ && _loc3_))
            {
               return !!§§pop() ? this.§4T§[param1] as §#!E§ : null;
            }
         }
         §§goto(addr45);
      }
      
      public function §?w§(param1:String) : §#!E§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            return !!this.§7Y§[param1] ? this.§7Y§[param1] as §#!E§ : null;
         }
         §§goto(addr39);
      }
      
      public function §4!p§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §#!E§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(!(_loc4_ && param2))
         {
            §§push(this.§4T§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§4T§.length));
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§1!Q§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr42);
      }
      
      public function §,T§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §#!E§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(!(_loc6_ && this))
         {
            §§push(this.§4T§);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§4T§.length));
                  if(_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§1§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr41);
      }
      
      public function §1!Q§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §#!E§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            if(this.§4T§ == null)
            {
               this.§4T§ = [];
            }
         }
         if(this.§7Y§ == null)
         {
            if(_loc7_ || this)
            {
               this.§7Y§ = new Dictionary();
            }
            else
            {
               throw new Error("File already exists: " + param2 + ". Please remove first.");
               addr52:
            }
         }
         else if(this.§7Y§[param2])
         {
            §§goto(addr52);
         }
         var _loc5_:§#!E§;
         (_loc5_ = new §#!E§()).§%n§ = param2;
         if(!_loc6_)
         {
            _loc5_.§2!6§(param3,param4);
            if(!(_loc6_ && param1))
            {
               if(param1 >= this.§4T§.length)
               {
                  if(!_loc6_)
                  {
                     §§push(this.§4T§);
                     if(!(_loc6_ && param2))
                     {
                        §§pop().push(_loc5_);
                        if(_loc7_ || param3)
                        {
                           addr139:
                           this.§7Y§[param2] = _loc5_;
                           addr144:
                           return _loc5_;
                           addr125:
                        }
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr125);
               }
               else
               {
                  §§push(this.§4T§);
               }
               §§pop().splice(param1,0,_loc5_);
               if(!(_loc6_ && param3))
               {
                  §§goto(addr139);
               }
            }
         }
         §§goto(addr139);
      }
      
      public function §1§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §#!E§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            if(this.§4T§ == null)
            {
               if(_loc7_ || param2)
               {
                  this.§4T§ = [];
                  addr37:
                  if(this.§7Y§ == null)
                  {
                     if(!_loc8_)
                     {
                        this.§7Y§ = new Dictionary();
                        addr47:
                     }
                     else
                     {
                        throw new Error("File already exists: " + param2 + ". Please remove first.");
                        addr60:
                     }
                  }
                  else if(this.§7Y§[param2])
                  {
                     if(!(_loc8_ && param3))
                     {
                        §§goto(addr60);
                     }
                  }
                  var _loc6_:§#!E§;
                  (_loc6_ = new §#!E§()).§%n§ = param2;
                  if(_loc7_)
                  {
                     _loc6_.§super§(param3,param4,param5);
                     if(!_loc8_)
                     {
                        if(param1 >= this.§4T§.length)
                        {
                           if(!(_loc8_ && param2))
                           {
                              §§push(this.§4T§);
                              if(!(_loc8_ && param3))
                              {
                                 §§pop().push(_loc6_);
                                 if(_loc7_ || param1)
                                 {
                                    addr148:
                                    this.§7Y§[param2] = _loc6_;
                                    addr134:
                                 }
                              }
                              else
                              {
                                 addr137:
                                 §§pop().splice(param1,0,_loc6_);
                                 if(_loc7_ || this)
                                 {
                                    §§goto(addr148);
                                 }
                              }
                           }
                           return _loc6_;
                        }
                        §§push(this.§4T§);
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr134);
               }
               §§goto(addr47);
            }
            §§goto(addr37);
         }
         §§goto(addr60);
      }
      
      public function §4!G§(param1:uint) : §#!E§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#!E§ = null;
         if(_loc3_)
         {
            §§push(this.§4T§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() != null);
               §§push(§§pop() != null);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr47:
                           §§push(this.§7Y§ == null);
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 addr71:
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       §§goto(addr81);
                                    }
                                 }
                              }
                              §§goto(addr81);
                           }
                           addr81:
                           if(param1 < this.§4T§.length)
                           {
                              addr84:
                              _loc2_ = this.§4T§[param1] as §#!E§;
                              §§goto(addr82);
                           }
                           §§goto(addr139);
                        }
                        addr82:
                        if(_loc3_ || param1)
                        {
                           if(_loc2_ != null)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 this.§4T§.splice(param1,1);
                                 if(!_loc4_)
                                 {
                                    delete this.§7Y§[_loc2_.§%n§];
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       §§goto(addr139);
                                    }
                                 }
                              }
                              §§goto(addr139);
                           }
                           addr139:
                           return null;
                        }
                        return _loc2_;
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr84);
         }
         §§goto(addr47);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§&x§(param1))
         {
         }
         return this.§&x§ === this.§+!#§;
      }
      
      protected function §+!#§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"`§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(!(_loc4_ && _loc3_))
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc5_)
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr37:
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§@!]§);
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           §§push(0);
                        }
                        else
                        {
                           §§push(§'!7§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                       addr250:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§&x§ = this.§-!&§;
                                             if(!_loc4_)
                                             {
                                                this.§;H§ = new §#!E§(this.§]!I§);
                                                if(_loc4_ && param1)
                                                {
                                                   break;
                                                }
                                             }
                                             addr259:
                                             §§push(true);
                                             if(!(_loc4_ && param1))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr269);
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
                                             this.§&x§ = this.§+!#§;
                                             if(!(_loc4_ && param1))
                                             {
                                                break;
                                             }
                                             addr268:
                                             addr269:
                                             return §§pop();
                                             §§push(false);
                                             break;
                                          default:
                                             throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                       }
                                       §§goto(addr259);
                                    }
                                    else
                                    {
                                       addr167:
                                       §§goto(addr250);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§6!Q§);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr250);
                                          §§push(2);
                                       }
                                       else
                                       {
                                          §§push(§2?§);
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(3);
                                                   if(_loc4_)
                                                   {
                                                      addr197:
                                                   }
                                                }
                                                else
                                                {
                                                   addr227:
                                                   §§push(9);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr245:
                                                   }
                                                }
                                                §§goto(addr250);
                                             }
                                             else
                                             {
                                                §§push(§>%§);
                                             }
                                             §§goto(addr227);
                                          }
                                          addr193:
                                          if(§§pop() === §§pop())
                                          {
                                             §§push(6);
                                             if(_loc5_)
                                             {
                                                §§goto(addr197);
                                             }
                                             else
                                             {
                                                addr223:
                                                §§goto(addr250);
                                             }
                                          }
                                          else
                                          {
                                             if(§#]§ === _loc3_)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(7);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr216:
                                                      §§goto(addr250);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr245);
                                                   }
                                                }
                                                else
                                                {
                                                   addr222:
                                                   §§goto(addr223);
                                                   §§push(8);
                                                }
                                             }
                                             else
                                             {
                                                addr218:
                                                §§push(§5!d§);
                                                §§push(_loc3_);
                                                if(!_loc4_)
                                                {
                                                   addr221:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr222);
                                                   }
                                                   else
                                                   {
                                                      addr225:
                                                      §§push(§7u§);
                                                      §§push(_loc3_);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr227);
                                                }
                                                else
                                                {
                                                   §§goto(addr250);
                                                   §§push(10);
                                                }
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr250);
                                    }
                                    §§push(_loc3_);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          §§push(4);
                                          if(_loc5_ || param1)
                                          {
                                             §§goto(addr167);
                                          }
                                          else
                                          {
                                             §§goto(addr216);
                                          }
                                       }
                                       else
                                       {
                                          §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                          if(_loc5_ || this)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                addr179:
                                                if(§§pop() === §§pop())
                                                {
                                                   §§push(5);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr250);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr216);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr192:
                                                      §§goto(addr193);
                                                      §§push(_loc3_);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr250);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr250);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr250);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr227);
                  addr37:
               }
               §§goto(addr37);
            }
            §§goto(addr268);
         }
         §§goto(addr37);
      }
      
      protected function §-!&§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§;H§);
         if(_loc2_ || param1)
         {
            §§push(§§pop().parse(param1));
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr39:
                     §§push(this.§;H§.§1x§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              this.§&x§ = this.§9!Z§;
                              this.§5!v§ = new ByteArray();
                              if(_loc2_)
                              {
                                 this.§5P§ = 0;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr80:
                                    this.§!w§ = 0;
                                    if(!_loc3_)
                                    {
                                       §§push(true);
                                       if(_loc2_)
                                       {
                                          §§goto(addr98);
                                       }
                                    }
                                    else
                                    {
                                       addr117:
                                       this.§&x§ = this.§"`§;
                                       §§push(true);
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr125:
                                    §§push(false);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr125);
                        }
                        else
                        {
                           addr101:
                           this.§ !I§();
                           if(_loc2_ || _loc2_)
                           {
                              if(this.§&x§ != this.§+!#§)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr117);
                                 }
                                 else
                                 {
                                    §§goto(addr125);
                                 }
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr101);
               }
               §§goto(addr125);
            }
            addr98:
            return §§pop();
         }
         §§goto(addr39);
      }
      
      protected function §9!Z§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         while(param1.bytesAvailable > 0)
         {
            §§push(uint(param1.readUnsignedByte()));
            if(_loc4_)
            {
               _loc2_ = §§pop();
               if(!_loc3_)
               {
                  §§push(this);
                  §§push(this.§5P§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(8);
                     if(_loc4_ || _loc2_)
                     {
                        addr59:
                        §§push(§§pop() >>> §§pop());
                        §§push(_loc2_ << 24);
                     }
                     §§pop().§5P§ = §§pop() | §§pop();
                     if(!(_loc3_ && param1))
                     {
                        addr73:
                        if(this.§5P§ == §#]§)
                        {
                           if(_loc4_)
                           {
                              this.§5!v§.length -= 3;
                              §§goto(addr95);
                           }
                        }
                        else
                        {
                           this.§5!v§.writeByte(_loc2_);
                           if(_loc3_ && this)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr59);
               }
               addr95:
               this.§&x§ = this.§0h§;
               §§push(true);
               if(_loc4_)
               {
                  return §§pop();
               }
               addr119:
               return §§pop();
            }
            §§goto(addr73);
         }
         §§goto(addr119);
         §§push(false);
      }
      
      protected function §0h§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(_loc6_ || param1)
         {
            if(param1.bytesAvailable >= 12)
            {
               §§push(uint(param1.readUnsignedInt()));
               if(!_loc5_)
               {
                  _loc2_ = §§pop();
                  if(_loc6_ || _loc2_)
                  {
                     §§push(uint(param1.readUnsignedInt()));
                     if(_loc6_ || param1)
                     {
                        _loc3_ = §§pop();
                     }
                     addr64:
                     _loc4_ = §§pop();
                     if(this.§5!v§.length == _loc3_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§5!v§.position = 0;
                           §§push(this.§;H§);
                           if(_loc6_)
                           {
                              §§push(_loc2_);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§pop().§[!5§ = §§pop();
                                 if(_loc6_)
                                 {
                                    §§push(this.§;H§);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          addr113:
                                          §§pop().§2!t§ = §§pop();
                                          addr134:
                                          §§push(this.§;H§);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(_loc4_);
                                          }
                                          §§pop().§"r§(this.§5!v§);
                                          addr137:
                                          this.§ !I§();
                                          this.§&x§ = this.§"`§;
                                          if(_loc6_)
                                          {
                                             addr172:
                                             §§push(true);
                                             if(_loc6_ || this)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr182);
                                          }
                                          else
                                          {
                                             addr168:
                                             this.§&x§ = this.§9!Z§;
                                             §§goto(addr172);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§pop().§3!Q§ = §§pop();
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr134);
                                          §§push(this.§;H§);
                                       }
                                       else
                                       {
                                          addr160:
                                          this.§5!v§.writeUnsignedInt(_loc3_);
                                          this.§5!v§.writeUnsignedInt(_loc4_);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr137);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr172);
                     }
                     else
                     {
                        this.§5!v§.writeUnsignedInt(_loc2_);
                     }
                     §§goto(addr160);
                  }
                  §§push(uint(param1.readUnsignedInt()));
               }
               §§goto(addr64);
            }
            else
            {
               §§push(false);
            }
            addr182:
            return §§pop();
         }
         §§goto(addr172);
      }
      
      protected function § !I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4T§.push(this.§;H§);
            if(!_loc1_)
            {
               if(this.§;H§.§%n§)
               {
                  if(_loc2_ || this)
                  {
                     addr57:
                     this.§7Y§[this.§;H§.§%n§] = this.§;H§;
                     if(!(_loc1_ && this))
                     {
                        addr72:
                        dispatchEvent(new §4d§(§4d§.§&!4§,this.§;H§));
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr85);
                     }
                     this.§;H§ = null;
                  }
                  addr85:
                  return;
               }
            }
            §§goto(addr72);
         }
         §§goto(addr57);
      }
      
      protected function §+!8§(param1:Event) : void
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
            if(this.parse(this.§2!_§))
            {
               if(_loc5_ || _loc3_)
               {
                  this.close();
                  if(_loc4_)
                  {
                  }
                  addr128:
                  return;
                  addr63:
               }
               dispatchEvent(new Event(Event.COMPLETE));
            }
            §§goto(addr63);
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
            if(!(_loc4_ && _loc3_))
            {
               close();
               if(!(_loc4_ && _loc3_))
               {
                  if(!hasEventListener(§]A§.§&!3§))
                  {
                     throw e;
                  }
               }
            }
            dispatchEvent(new §]A§(§]A§.§&!3§,e.message));
            if(_loc4_ && this)
            {
            }
         }
         §§goto(addr128);
      }
      
      protected function §!C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §6!U§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.close();
            if(!_loc3_)
            {
               dispatchEvent(param1.clone());
            }
         }
      }
      
      protected function §6!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§2!_§.addEventListener(Event.COMPLETE,this.§!C§);
            if(!_loc2_)
            {
               this.§2!_§.addEventListener(Event.OPEN,this.§!C§);
               addr59:
               this.§2!_§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!C§);
               this.§2!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§6!U§);
            }
            this.§2!_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!U§);
            this.§2!_§.addEventListener(ProgressEvent.PROGRESS,this.§+!8§);
            return;
         }
         §§goto(addr59);
      }
      
      protected function §?%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2!_§.removeEventListener(Event.COMPLETE,this.§!C§);
            this.§2!_§.removeEventListener(Event.OPEN,this.§!C§);
            if(_loc1_ || _loc2_)
            {
               this.§2!_§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!C§);
               if(_loc1_ || _loc2_)
               {
                  addr73:
                  this.§2!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6!U§);
               }
               this.§2!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!U§);
               if(_loc1_)
               {
                  this.§2!_§.removeEventListener(ProgressEvent.PROGRESS,this.§+!8§);
               }
               §§goto(addr96);
            }
            §§goto(addr73);
         }
         addr96:
      }
   }
}
