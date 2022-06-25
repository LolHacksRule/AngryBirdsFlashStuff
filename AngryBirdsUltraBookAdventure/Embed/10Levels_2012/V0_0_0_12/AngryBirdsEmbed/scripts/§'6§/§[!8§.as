package §'6§
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
   
   public class §[!8§ extends EventDispatcher
   {
      
      static const §1v§:uint = 33639248;
      
      static const §]!A§:uint = 808471376;
      
      static const §==§:uint = 67324752;
      
      static const §=!2§:uint = 84233040;
      
      static const §"! §:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §<0§:uint = 134695760;
      
      static const §-b§:uint = 134630224;
      
      static const §"!0§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
            if(_loc2_ || _loc2_)
            {
               SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
               if(!_loc1_)
               {
                  §§goto(addr69);
               }
               §§goto(addr79);
            }
            §§goto(addr89);
         }
         addr69:
         if(_loc2_ || §[!8§)
         {
            addr79:
            §-b§ = 134630224;
            if(_loc2_ || _loc2_)
            {
               addr89:
               §"!0§ = 134695760;
            }
         }
      }
      
      protected var §+7§:Array;
      
      protected var § K§:Dictionary;
      
      protected var §?5§:URLStream;
      
      protected var §[B§:String;
      
      protected var §5!8§:Function;
      
      protected var §&8§:§7!>§;
      
      protected var §&W§:ByteArray;
      
      protected var §7@§:uint;
      
      protected var §9<§:uint;
      
      public function §[!8§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_ || param1)
            {
               this.§[B§ = param1;
               if(!_loc3_)
               {
                  addr42:
                  this.§5!8§ = this.§ J§;
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function get active() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5!8§ === this.§ J§);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(!this.§?5§);
         if(!(_loc3_ && param1))
         {
            if(§§pop())
            {
               if(_loc2_ || _loc2_)
               {
                  §§pop();
                  §§push(this.§5!8§ == this.§ J§);
               }
            }
         }
         if(§§pop())
         {
            if(_loc2_)
            {
               this.§?5§ = new URLStream();
               this.§?5§.endian = Endian.LITTLE_ENDIAN;
               this.§4S§();
               this.§+7§ = [];
               if(_loc2_ || this)
               {
                  this.§ K§ = new Dictionary();
                  if(_loc2_ || _loc3_)
                  {
                     this.§5!8§ = this.§7U§;
                     this.§?5§.load(param1);
                  }
               }
            }
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!this.§?5§);
         if(!(_loc2_ && param1))
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr31:
                  §§pop();
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§5!8§ == this.§ J§);
                     if(!_loc2_)
                     {
                        addr56:
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              this.§+7§ = [];
                              addr62:
                              this.§ K§ = new Dictionary();
                              param1.position = 0;
                              param1.endian = Endian.LITTLE_ENDIAN;
                              this.§5!8§ = this.§7U§;
                              if(_loc3_)
                              {
                                 addr92:
                                 if(this.parse(param1))
                                 {
                                    if(!_loc3_)
                                    {
                                    }
                                    addr115:
                                    return;
                                    addr107:
                                 }
                                 else
                                 {
                                    dispatchEvent(new §"!E§(§"!E§.§^@§,"EOF"));
                                    §§goto(addr115);
                                 }
                                 §§goto(addr115);
                              }
                              this.§5!8§ = this.§ J§;
                              dispatchEvent(new Event(Event.COMPLETE));
                              if(_loc2_)
                              {
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr62);
               }
               §§goto(addr92);
            }
            §§goto(addr56);
         }
         §§goto(addr31);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§?5§)
            {
               if(!_loc1_)
               {
                  addr34:
                  this.§5!8§ = this.§ J§;
                  if(_loc2_)
                  {
                     this.§?<§();
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr52);
                  }
                  this.§?5§.close();
                  if(_loc1_)
                  {
                  }
                  §§goto(addr52);
               }
               this.§?5§ = null;
            }
            addr52:
            return;
         }
         §§goto(addr34);
      }
      
      public function § ^§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§7!>§ = null;
         if(!(_loc11_ && param2))
         {
            §§push(param1 == null);
            if(!(_loc11_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(!(_loc11_ && param1))
                     {
                        §§pop();
                        if(_loc10_ || this)
                        {
                           §§goto(addr75);
                        }
                        §§goto(addr83);
                     }
                  }
               }
            }
            addr75:
            if(this.§+7§.length > 0)
            {
               if(_loc10_ || _loc3_)
               {
                  addr83:
                  _loc3_ = param1.endian;
                  addr87:
                  _loc4_ = new ByteArray();
                  if(!(_loc11_ && param1))
                  {
                     param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                     if(_loc10_)
                     {
                        §§push(0);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(uint(§§pop()));
                           if(_loc10_ || param1)
                           {
                              _loc5_ = §§pop();
                              if(_loc10_ || _loc3_)
                              {
                                 addr157:
                                 addr134:
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 _loc7_ = §§pop();
                                 addr158:
                                 while(_loc7_ < this.§+7§.length)
                                 {
                                    if((_loc8_ = this.§+7§[_loc7_] as §7!>§) != null)
                                    {
                                       if(!_loc11_)
                                       {
                                          _loc8_.§ ^§(_loc4_,param2,true,_loc5_);
                                          if(_loc10_ || param1)
                                          {
                                             §§push(_loc5_);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + _loc8_.§ ^§(param1,param2));
                                                if(_loc10_)
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      addr204:
                                                      _loc5_ = §§pop();
                                                      addr230:
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         addr212:
                                                         §§push(_loc6_);
                                                         if(_loc10_ || this)
                                                         {
                                                            addr221:
                                                            §§push(uint(§§pop() + 1));
                                                         }
                                                      }
                                                      _loc7_++;
                                                      continue;
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(_loc11_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr221);
                                             }
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr204);
                                 }
                                 if(_loc10_ || this)
                                 {
                                    if(_loc4_.length > 0)
                                    {
                                       if(!(_loc11_ && param1))
                                       {
                                          param1.writeBytes(_loc4_);
                                          addr257:
                                          param1.writeUnsignedInt(§"! §);
                                          param1.writeShort(0);
                                          if(_loc10_)
                                          {
                                             param1.writeShort(0);
                                             §§goto(addr268);
                                          }
                                          §§goto(addr297);
                                       }
                                       addr268:
                                       param1.writeShort(_loc6_);
                                       if(!(_loc11_ && param2))
                                       {
                                          param1.writeShort(_loc6_);
                                          param1.writeUnsignedInt(_loc4_.length);
                                          if(!_loc11_)
                                          {
                                             addr297:
                                             param1.writeUnsignedInt(_loc5_);
                                             if(!_loc11_)
                                             {
                                                param1.writeShort(0);
                                                if(!_loc10_)
                                                {
                                                }
                                             }
                                          }
                                          §§goto(addr310);
                                       }
                                       param1.endian = _loc3_;
                                       §§goto(addr310);
                                    }
                                 }
                                 §§goto(addr257);
                              }
                              addr156:
                              §§goto(addr157);
                              §§push(0);
                           }
                           _loc6_ = §§pop();
                           if(!(_loc11_ && param1))
                           {
                              §§goto(addr156);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr134);
               }
               §§goto(addr87);
            }
            addr310:
            return;
         }
         §§goto(addr83);
      }
      
      public function §+$§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§+7§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr35:
                  §§push(uint(this.§+7§.length));
                  if(_loc1_ || _loc1_)
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
         §§goto(addr35);
      }
      
      public function §=$§(param1:uint) : §7!>§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§+7§);
            if(!(_loc3_ && param1))
            {
               return !!§§pop() ? this.§+7§[param1] as §7!>§ : null;
            }
         }
         §§goto(addr45);
      }
      
      public function §5j§(param1:String) : §7!>§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            return !!this.§ K§[param1] ? this.§ K§[param1] as §7!>§ : null;
         }
         §§goto(addr39);
      }
      
      public function §3X§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §7!>§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         if(!_loc5_)
         {
            §§push(this.§+7§);
            if(!(_loc5_ && param3))
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§+7§.length));
                  if(_loc4_ || param2)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§!N§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr41);
      }
      
      public function §39§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §7!>§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(!_loc6_)
         {
            §§push(this.§+7§);
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§+7§.length));
                  if(_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§[`§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr41);
      }
      
      public function §!N§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §7!>§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.§+7§ == null)
            {
               if(!_loc6_)
               {
                  this.§+7§ = [];
                  if(!(_loc6_ && param3))
                  {
                     addr35:
                     if(this.§ K§ == null)
                     {
                        if(!_loc6_)
                        {
                           this.§ K§ = new Dictionary();
                        }
                     }
                     else if(this.§ K§[param2])
                     {
                        if(!_loc6_)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                           addr53:
                        }
                     }
                     var _loc5_:§7!>§;
                     (_loc5_ = new §7!>§()).§`"§ = param2;
                     if(_loc7_ || param1)
                     {
                        _loc5_.§'r§(param3,param4);
                        if(_loc7_ || param2)
                        {
                           addr96:
                           if(param1 >= this.§+7§.length)
                           {
                              if(_loc7_)
                              {
                                 §§goto(addr113);
                              }
                              §§goto(addr135);
                           }
                           else
                           {
                              §§push(this.§+7§);
                           }
                           §§goto(addr129);
                        }
                        addr113:
                        §§push(this.§+7§);
                        if(!(_loc6_ && this))
                        {
                           §§pop().push(_loc5_);
                           if(_loc7_)
                           {
                              addr135:
                              this.§ K§[param2] = _loc5_;
                           }
                        }
                        else
                        {
                           addr129:
                           §§pop().splice(param1,0,_loc5_);
                           if(_loc7_)
                           {
                              §§goto(addr135);
                           }
                        }
                        return _loc5_;
                     }
                     §§goto(addr96);
                  }
               }
               §§goto(addr53);
            }
         }
         §§goto(addr35);
      }
      
      public function §[`§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §7!>§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(this.§+7§ == null)
         {
            this.§+7§ = [];
            if(_loc7_)
            {
               §§goto(addr25);
            }
            §§goto(addr46);
         }
         addr25:
         if(this.§ K§ == null)
         {
            this.§ K§ = new Dictionary();
         }
         else if(this.§ K§[param2])
         {
            if(_loc7_ || param2)
            {
               throw new Error("File already exists: " + param2 + ". Please remove first.");
               addr46:
            }
         }
         var _loc6_:§7!>§;
         (_loc6_ = new §7!>§()).§`"§ = param2;
         if(_loc7_)
         {
            _loc6_.§ j§(param3,param4,param5);
            if(!(_loc8_ && this))
            {
               if(param1 >= this.§+7§.length)
               {
                  if(!_loc8_)
                  {
                     §§goto(addr102);
                  }
                  §§goto(addr115);
               }
               else
               {
                  §§push(this.§+7§);
               }
               §§goto(addr118);
            }
            §§goto(addr124);
         }
         addr102:
         §§push(this.§+7§);
         if(!(_loc8_ && param1))
         {
            §§pop().push(_loc6_);
            if(!_loc8_)
            {
               addr124:
               this.§ K§[param2] = _loc6_;
               addr115:
            }
         }
         else
         {
            addr118:
            §§pop().splice(param1,0,_loc6_);
            if(_loc7_)
            {
               §§goto(addr124);
            }
         }
         return _loc6_;
      }
      
      public function §5h§(param1:uint) : §7!>§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!>§ = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§+7§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() != null);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           addr53:
                           §§push(this.§ K§ != null);
                           if(this.§ K§ != null)
                           {
                              §§pop();
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr78);
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr78);
                        }
                        addr78:
                        if(param1 < this.§+7§.length)
                        {
                           addr81:
                           _loc2_ = this.§+7§[param1] as §7!>§;
                           addr79:
                           if(!_loc3_)
                           {
                              if(_loc2_ != null)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§+7§.splice(param1,1);
                                    if(_loc4_ || param1)
                                    {
                                       delete this.§ K§[_loc2_.§`"§];
                                       if(_loc3_ && _loc2_)
                                       {
                                          §§goto(addr136);
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 return _loc2_;
                              }
                           }
                        }
                        addr136:
                        return null;
                     }
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr81);
         }
         §§goto(addr53);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§5!8§(param1))
         {
         }
         return this.§5!8§ === this.§ J§;
      }
      
      protected function § J§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §7U§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(!_loc4_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(!(_loc4_ && this))
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr37:
                  if(!_loc4_)
                  {
                     if(§==§ === _loc3_)
                     {
                        if(!_loc4_)
                        {
                           addr96:
                           §§push(0);
                           if(_loc4_ && _loc2_)
                           {
                              addr205:
                           }
                        }
                        else
                        {
                           addr148:
                           §§push(3);
                        }
                     }
                     else
                     {
                        §§push(§1v§);
                        if(_loc5_)
                        {
                           if(§§pop() === _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 addr236:
                                 switch(1)
                                 {
                                    case 0:
                                       this.§5!8§ = this.§!§;
                                       if(_loc5_ || _loc3_)
                                       {
                                          this.§&8§ = new §7!>§(this.§[B§);
                                          if(_loc5_ || param1)
                                          {
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
                                       this.§5!8§ = this.§ J§;
                                       break;
                                    default:
                                       throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                 }
                                 §§push(true);
                                 if(_loc5_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr245);
                              }
                              else
                              {
                                 addr162:
                                 §§push(4);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§goto(addr236);
                                 }
                                 else
                                 {
                                    §§goto(addr205);
                                 }
                              }
                              §§goto(addr236);
                           }
                           else
                           {
                              §§push(§"! §);
                              §§push(_loc3_);
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr236);
                                       §§push(2);
                                    }
                                    else
                                    {
                                       §§goto(addr162);
                                    }
                                    §§goto(addr236);
                                 }
                                 else
                                 {
                                    §§push(§]!A§);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr148);
                                       }
                                       else
                                       {
                                          §§push(§=!2§);
                                          if(_loc5_ || _loc2_)
                                          {
                                             if(§§pop() === _loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr162);
                                                }
                                                else
                                                {
                                                   addr197:
                                                   §§push(7);
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      addr231:
                                                   }
                                                   §§goto(addr236);
                                                }
                                             }
                                             else if(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY === _loc3_)
                                             {
                                                §§push(5);
                                                if(!_loc5_)
                                                {
                                                   addr189:
                                                }
                                                §§goto(addr236);
                                             }
                                             else
                                             {
                                                §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                §§push(_loc3_);
                                                if(_loc5_ || param1)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr189);
                                                      §§push(6);
                                                   }
                                                   else
                                                   {
                                                      §§push(§<0§);
                                                      if(_loc5_)
                                                      {
                                                         addr193:
                                                         §§push(_loc3_);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr197);
                                                            }
                                                            else
                                                            {
                                                               §§push(§-b§);
                                                               if(!_loc4_)
                                                               {
                                                                  addr219:
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr222:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr236);
                                                                           §§push(8);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr228:
                                                                        if(§"!0§ !== _loc3_)
                                                                        {
                                                                           §§goto(addr236);
                                                                           §§push(10);
                                                                        }
                                                                     }
                                                                     §§goto(addr236);
                                                                     §§push(9);
                                                                  }
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr228);
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                              }
                              §§goto(addr222);
                           }
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr96);
                  addr37:
               }
               §§goto(addr37);
            }
            else
            {
               §§push(false);
            }
            addr245:
            return §§pop();
         }
         §§goto(addr37);
      }
      
      protected function §!§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§&8§);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop().parse(param1));
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr33:
                  §§push(this.§&8§.§%!2§);
                  if(_loc3_ || param1)
                  {
                     if(§§pop())
                     {
                        this.§5!8§ = this.§2!'§;
                        if(!_loc2_)
                        {
                           this.§&W§ = new ByteArray();
                           if(_loc2_ && param1)
                           {
                           }
                           addr111:
                           return false;
                           addr110:
                        }
                        this.§7@§ = 0;
                        if(!_loc2_)
                        {
                           this.§9<§ = 0;
                           §§push(true);
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           §§goto(addr110);
                        }
                     }
                     else
                     {
                        this.§&j§();
                        if(_loc3_)
                        {
                           if(this.§5!8§ != this.§ J§)
                           {
                              if(_loc3_)
                              {
                                 this.§5!8§ = this.§7U§;
                              }
                              §§push(true);
                              if(!_loc2_)
                              {
                                 §§goto(addr109);
                              }
                           }
                           else
                           {
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr111);
            }
            addr109:
            return §§pop();
         }
         §§goto(addr33);
      }
      
      protected function §2!'§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               §§push(false);
               break;
            }
            §§push(uint(param1.readUnsignedByte()));
            if(_loc3_)
            {
               _loc2_ = §§pop();
               §§push(this);
               §§push(this.§7@§);
               if(!(_loc4_ && param1))
               {
                  §§push(8);
                  if(!_loc4_)
                  {
                     addr51:
                     §§push(§§pop() >>> §§pop());
                     §§push(_loc2_ << 24);
                  }
                  §§pop().§7@§ = §§pop() | §§pop();
                  if(_loc3_)
                  {
                     addr60:
                     if(this.§7@§ != §<0§)
                     {
                        this.§&W§.writeByte(_loc2_);
                        continue;
                     }
                  }
                  this.§&W§.length -= 3;
                  this.§5!8§ = this.§`4§;
                  if(_loc3_ || _loc2_)
                  {
                     §§push(true);
                     if(_loc3_ || _loc2_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr51);
            }
            §§goto(addr60);
         }
         return §§pop();
      }
      
      protected function §`4§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(param1.bytesAvailable >= 12)
         {
            if(_loc6_ || param1)
            {
               §§push(uint(param1.readUnsignedInt()));
               if(_loc6_ || param1)
               {
                  _loc2_ = §§pop();
                  §§push(uint(param1.readUnsignedInt()));
                  if(!_loc5_)
                  {
                     addr53:
                     _loc3_ = §§pop();
                     §§push(uint(param1.readUnsignedInt()));
                  }
                  _loc4_ = §§pop();
                  if(_loc6_)
                  {
                     if(this.§&W§.length == _loc3_)
                     {
                        this.§&W§.position = 0;
                        if(_loc6_)
                        {
                           §§push(this.§&8§);
                           if(!(_loc5_ && param1))
                           {
                              §§push(_loc2_);
                              if(!(_loc5_ && this))
                              {
                                 §§pop().§0a§ = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(this.§&8§);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr118:
                                          §§pop().§"!2§ = §§pop();
                                          §§push(this.§&8§);
                                          if(_loc6_)
                                          {
                                             addr124:
                                             §§pop().§6-§ = _loc4_;
                                             §§goto(addr190);
                                          }
                                          §§pop().§6!'§(this.§&W§);
                                          addr132:
                                          this.§&j§();
                                          if(!(_loc5_ && this))
                                          {
                                             this.§5!8§ = this.§7U§;
                                          }
                                          else
                                          {
                                             §§goto(addr175);
                                          }
                                          §§goto(addr186);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr118);
                     }
                     else
                     {
                        this.§&W§.writeUnsignedInt(_loc2_);
                        if(_loc6_ || param1)
                        {
                           this.§&W§.writeUnsignedInt(_loc3_);
                           this.§&W§.writeUnsignedInt(_loc4_);
                           addr175:
                           this.§5!8§ = this.§2!'§;
                           if(!(_loc5_ && param1))
                           {
                              addr186:
                              §§push(true);
                              if(_loc6_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr190);
                           }
                           addr190:
                           if(!_loc5_)
                           {
                              addr127:
                              §§push(this.§&8§);
                           }
                           return false;
                        }
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr53);
            }
            §§goto(addr127);
         }
         §§goto(addr124);
      }
      
      protected function §&j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+7§.push(this.§&8§);
            if(!(_loc1_ && _loc1_))
            {
               addr51:
               if(this.§&8§.§`"§)
               {
                  if(!_loc1_)
                  {
                     this.§ K§[this.§&8§.§`"§] = this.§&8§;
                     if(_loc1_)
                     {
                     }
                  }
                  §§goto(addr80);
               }
               dispatchEvent(new §0!C§(§0!C§.§ !,§,this.§&8§));
               if(!_loc1_)
               {
                  this.§&8§ = null;
               }
            }
            addr80:
            return;
         }
         §§goto(addr51);
      }
      
      protected function § do§(param1:Event) : void
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
            if(this.parse(this.§?5§))
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
            if(_loc5_)
            {
               close();
               if(!_loc5_)
               {
               }
               addr96:
               dispatchEvent(new §"!E§(§"!E§.§^@§,e.message));
               if(_loc4_ && param1)
               {
               }
            }
            if(!hasEventListener(§"!E§.§^@§))
            {
               throw e;
            }
            §§goto(addr96);
         }
      }
      
      protected function §4R§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §&!0§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.close();
            if(_loc3_ || _loc3_)
            {
               addr28:
               dispatchEvent(param1.clone());
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected function §4S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§?5§.addEventListener(Event.COMPLETE,this.§4R§);
         this.§?5§.addEventListener(Event.OPEN,this.§4R§);
         if(_loc1_ || _loc2_)
         {
            this.§?5§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§4R§);
            if(_loc1_)
            {
               this.§?5§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!0§);
               this.§?5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!0§);
               addr80:
               this.§?5§.addEventListener(ProgressEvent.PROGRESS,this.§ do§);
            }
            return;
         }
         §§goto(addr80);
      }
      
      protected function §?<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?5§.removeEventListener(Event.COMPLETE,this.§4R§);
            if(!_loc1_)
            {
               this.§?5§.removeEventListener(Event.OPEN,this.§4R§);
               this.§?5§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§4R§);
               §§goto(addr28);
            }
            §§goto(addr71);
         }
         addr28:
         if(!_loc1_)
         {
            this.§?5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!0§);
            addr71:
            this.§?5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!0§);
            if(_loc2_)
            {
               this.§?5§.removeEventListener(ProgressEvent.PROGRESS,this.§ do§);
            }
         }
      }
   }
}
