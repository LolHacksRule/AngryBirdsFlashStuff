package §9A§
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
   
   public class §5Y§ extends EventDispatcher
   {
      
      static const §#8§:uint = 33639248;
      
      static const §^N§:uint = 808471376;
      
      static const §0s§:uint = 67324752;
      
      static const §#"$§:uint = 84233040;
      
      static const §5z§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §00§:uint = 134695760;
      
      static const §^§:uint = 134630224;
      
      static const §%v§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §#8§ = 33639248;
         }
         while(true)
         {
            §^N§ = 808471376;
            loop1:
            while(true)
            {
               §0s§ = 67324752;
               while(true)
               {
                  §#"$§ = 84233040;
                  while(!(_loc2_ && _loc1_))
                  {
                     §5z§ = 101010256;
                     loop4:
                     while(_loc1_ || §5Y§)
                     {
                        SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                        loop5:
                        while(true)
                        {
                           SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                           while(!_loc2_)
                           {
                              §00§ = 134695760;
                              loop7:
                              while(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §^§ = 134630224;
                                    while(true)
                                    {
                                       if(_loc1_ || §5Y§)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    continue loop1;
                                    continue;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
            if(_loc1_ || §5Y§)
            {
               return;
            }
         }
      }
      
      protected var §<A§:Array;
      
      protected var §7!x§:Dictionary;
      
      protected var §1H§:URLStream;
      
      protected var §>!@§:String;
      
      protected var §;F§:Function;
      
      protected var §^m§:§>"§;
      
      protected var §`u§:ByteArray;
      
      protected var §+!<§:uint;
      
      protected var §%s§:uint;
      
      public function §5Y§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.§>!@§ = param1;
            do
            {
               this.§;F§ = this.§>!x§;
            }
            while(!_loc3_);
            
         }
         while(!_loc3_);
         
      }
      
      public function get §'a§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;F§ === this.§>!x§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(!this.§1H§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this.§;F§ == this.§>!x§);
                        if(_loc3_ || _loc3_)
                        {
                           loop0:
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§1H§ = new URLStream();
                                 loop2:
                                 while(true)
                                 {
                                    this.§1H§.endian = Endian.LITTLE_ENDIAN;
                                    addr93:
                                    loop5:
                                    while(true)
                                    {
                                       this.§""4§();
                                       loop6:
                                       while(!_loc2_)
                                       {
                                          this.§<A§ = [];
                                          loop7:
                                          while(true)
                                          {
                                             this.§7!x§ = new Dictionary();
                                             loop8:
                                             while(!_loc2_)
                                             {
                                                this.§;F§ = this.§"",§;
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                   addr67:
                                                   this.§1H§.load(param1);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           return;
                           addr117:
                        }
                        break;
                     }
                  }
                  addr136:
               }
               §§goto(addr117);
            }
            §§goto(addr136);
         }
         §§goto(addr93);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(!this.§1H§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr174:
                     while(true)
                     {
                        §§push(this.§;F§ == this.§>!x§);
                     }
                  }
                  addr173:
               }
               while(true)
               {
                  loop4:
                  while(§§pop())
                  {
                     while(_loc2_)
                     {
                     }
                     §§goto(addr174);
                     addr126:
                     §§push(this.parse(param1));
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        if(§§pop())
                        {
                           addr89:
                           if(_loc2_ || this)
                           {
                              this.§;F§ = this.§>!x§;
                              loop13:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr104:
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr167:
                                          if(!_loc3_)
                                          {
                                             dispatchEvent(new Event(Event.COMPLETE));
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   break loop4;
                                                }
                                                continue loop13;
                                                §§goto(addr113);
                                             }
                                             addr113:
                                             loop11:
                                             while(true)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   §§goto(addr126);
                                                }
                                                addr153:
                                                while(true)
                                                {
                                                   param1.position = 0;
                                                   continue loop11;
                                                }
                                             }
                                             continue loop4;
                                             addr119:
                                             addr55:
                                          }
                                          else
                                          {
                                             §§goto(addr162);
                                          }
                                          while(true)
                                          {
                                             this.§7!x§ = new Dictionary();
                                             §§goto(addr153);
                                             §§goto(addr89);
                                          }
                                          addr167:
                                       }
                                       while(true)
                                       {
                                          param1.endian = Endian.LITTLE_ENDIAN;
                                          §§goto(addr104);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§;F§ = this.§"",§;
                                    }
                                 }
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr167);
                        }
                        dispatchEvent(new §`^§(§`^§.§[!B§,"EOF"));
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr89);
                           }
                           break;
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr173);
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§<A§ = [];
            §§goto(addr167);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§1H§)
            {
               if(!_loc2_)
               {
                  addr88:
                  this.§;F§ = this.§>!x§;
               }
               loop0:
               while(true)
               {
                  this.§>!c§();
                  while(true)
                  {
                     this.§1H§.close();
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                        this.§1H§ = null;
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr24);
                        }
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr88);
      }
      
      public function §;!a§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§>"§ = null;
         if(!(_loc10_ && param1))
         {
            §§push(param1 == null);
            if(!(_loc10_ && param2))
            {
               §§push(!§§pop());
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && param2))
                     {
                        §§pop();
                        addr74:
                        addr78:
                        if(!_loc10_)
                        {
                           §§push(this.§<A§.length > 0);
                        }
                        _loc3_ = param1.endian;
                        _loc4_ = new ByteArray();
                        if(!_loc10_)
                        {
                           param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                           if(_loc11_)
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
                                    loop2:
                                    while(true)
                                    {
                                       addr111:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr113:
                                          while(!_loc10_)
                                          {
                                             §§push(uint(§§pop()));
                                             if(!(_loc10_ && param2))
                                             {
                                                _loc6_ = §§pop();
                                                while(!_loc10_)
                                                {
                                                }
                                                continue loop2;
                                                addr124:
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(0);
                           if(_loc11_ || _loc3_)
                           {
                              _loc7_ = §§pop();
                              if(_loc11_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr113);
                        }
                        loop7:
                        while(_loc7_ < this.§<A§.length)
                        {
                           if((_loc8_ = this.§<A§[_loc7_] as §>"§) != null)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 _loc8_.§;!a§(_loc4_,param2,true,_loc5_);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(_loc5_);
                                    while(true)
                                    {
                                       §§push(§§pop() + _loc8_.§;!a§(param1,param2));
                                       addr223:
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          addr224:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                          }
                                       }
                                    }
                                    addr218:
                                    addr174:
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc10_ && param1))
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!_loc10_)
                                             {
                                                addr208:
                                                §§push(uint(§§pop()));
                                                if(_loc10_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                _loc6_ = §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   addr176:
                                                   while(true)
                                                   {
                                                      _loc7_++;
                                                      if(_loc11_ || param1)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr218);
                                 }
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr176);
                        }
                        if(!_loc10_)
                        {
                           if(_loc4_.length > 0)
                           {
                              if(_loc11_)
                              {
                                 param1.writeBytes(_loc4_);
                                 if(_loc11_)
                                 {
                                    addr323:
                                    param1.writeUnsignedInt(§5z§);
                                    loop25:
                                    while(true)
                                    {
                                       param1.writeShort(0);
                                       addr320:
                                       addr322:
                                       addr315:
                                       while(!_loc11_)
                                       {
                                          continue loop25;
                                       }
                                       param1.writeShort(0);
                                       loop19:
                                       while(true)
                                       {
                                          param1.writeShort(_loc6_);
                                          addr310:
                                          while(true)
                                          {
                                             param1.writeShort(_loc6_);
                                             loop20:
                                             while(true)
                                             {
                                                param1.writeUnsignedInt(_loc4_.length);
                                                addr296:
                                                while(true)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      break loop20;
                                                   }
                                                   continue loop20;
                                                }
                                             }
                                             if(!_loc10_)
                                             {
                                                break loop19;
                                             }
                                             §§goto(addr320);
                                          }
                                          §§goto(addr322);
                                       }
                                    }
                                    addr326:
                                 }
                                 while(true)
                                 {
                                    param1.writeUnsignedInt(_loc5_);
                                    loop16:
                                    for(; !_loc10_; if(_loc10_ && param2)
                                    {
                                       continue;
                                    })
                                    {
                                       while(true)
                                       {
                                          param1.writeShort(0);
                                          while(_loc11_)
                                          {
                                             if(!(_loc10_ && param2))
                                             {
                                                param1.endian = _loc3_;
                                                if(_loc11_)
                                                {
                                                   continue loop16;
                                                }
                                                continue;
                                             }
                                             §§goto(addr315);
                                          }
                                          §§goto(addr310);
                                       }
                                    }
                                    §§goto(addr296);
                                 }
                              }
                              while(false)
                              {
                                 §§goto(addr260);
                              }
                              §§goto(addr327);
                           }
                           §§goto(addr323);
                        }
                        §§goto(addr326);
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(_loc11_)
               {
                  §§goto(addr74);
               }
               §§goto(addr78);
            }
            addr327:
            return;
         }
         §§goto(addr74);
      }
      
      public function §"z§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§<A§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  addr45:
                  §§push(uint(this.§<A§.length));
                  if(_loc2_)
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
         §§goto(addr45);
      }
      
      public function §9!8§(param1:uint) : §>"§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§<A§);
            if(!(_loc2_ && _loc3_))
            {
               return !!§§pop() ? this.§<A§[param1] as §>"§ : null;
            }
         }
         §§goto(addr41);
      }
      
      public function §&"@§(param1:String) : §>"§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            return !!this.§7!x§[param1] ? this.§7!x§[param1] as §>"§ : null;
         }
         §§goto(addr38);
      }
      
      public function §`V§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §>"§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         if(_loc4_ || param3)
         {
            §§push(this.§<A§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§<A§.length));
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§"l§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr41);
      }
      
      public function §?!<§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §>"§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this);
         if(!(_loc5_ && param2))
         {
            §§push(this.§<A§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§<A§.length));
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§`q§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr42);
      }
      
      public function §"l§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §>"§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.§<A§ == null)
            {
               while(true)
               {
                  this.§<A§ = [];
                  addr84:
                  addr59:
                  while(true)
                  {
                  }
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  addr85:
                  var _loc5_:§>"§;
                  (_loc5_ = new §>"§()).§>" § = param2;
                  if(_loc6_)
                  {
                     _loc5_.§!t§(param3,param4);
                     loop2:
                     while(true)
                     {
                        if(param1 < this.§<A§.length)
                        {
                           §§push(this.§<A§);
                           if(!_loc7_)
                           {
                              §§pop().splice(param1,0,_loc5_);
                              loop3:
                              while(true)
                              {
                                 addr100:
                                 while(true)
                                 {
                                    this.§7!x§[param2] = _loc5_;
                                    if(!(_loc6_ || param2))
                                    {
                                       continue loop3;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc7_ && param3))
                                    {
                                       return _loc5_;
                                    }
                                    addr151:
                                    while(true)
                                    {
                                       §§push(this.§<A§);
                                       addr153:
                                       while(true)
                                       {
                                          §§pop().push(_loc5_);
                                          continue loop2;
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr153);
                        }
                     }
                  }
                  §§goto(addr151);
               }
            }
            while(true)
            {
               if(this.§7!x§ != null)
               {
                  if(this.§7!x§[param2])
                  {
                     if(_loc7_)
                     {
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     if(!_loc7_)
                     {
                        throw new Error("File already exists: " + param2 + ". Please remove first.");
                     }
                     §§goto(addr59);
                  }
                  break;
               }
               if(_loc6_ || param2)
               {
                  if(_loc6_)
                  {
                     this.§7!x§ = new Dictionary();
                  }
                  §§goto(addr84);
               }
               §§goto(addr59);
            }
            §§goto(addr85);
         }
         §§goto(addr84);
      }
      
      public function §`q§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §>"§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            if(this.§<A§ == null)
            {
               while(true)
               {
                  this.§<A§ = [];
                  addr94:
                  while(true)
                  {
                  }
               }
               addr91:
            }
            while(true)
            {
               if(this.§7!x§ != null)
               {
                  if(this.§7!x§[param2])
                  {
                     if(!(_loc7_ || param1))
                     {
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     if(_loc7_ || param2)
                     {
                        if(!(_loc8_ && param1))
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                     }
                     else
                     {
                        addr84:
                        if(!_loc8_)
                        {
                           break;
                           addr86:
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr94);
                  }
                  break;
               }
               if(!_loc8_)
               {
                  this.§7!x§ = new Dictionary();
               }
               §§goto(addr84);
            }
            var _loc6_:§>"§;
            (_loc6_ = new §>"§()).§>" § = param2;
            if(_loc7_ || param1)
            {
               _loc6_.§!!X§(param3,param4,param5);
            }
            loop3:
            while(true)
            {
               if(param1 >= this.§<A§.length)
               {
                  continue;
               }
               §§push(this.§<A§);
               if(!_loc8_)
               {
                  §§pop().splice(param1,0,_loc6_);
                  while(true)
                  {
                     if(!(_loc8_ && this))
                     {
                        if(!_loc8_)
                        {
                           continue;
                        }
                        continue loop3;
                     }
                  }
                  return _loc6_;
               }
               addr170:
               while(true)
               {
                  §§pop().push(_loc6_);
               }
               while(true)
               {
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §]M§(param1:uint) : §>"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>"§ = null;
         if(!_loc3_)
         {
            §§push(this.§<A§);
            if(_loc4_)
            {
               §§push(§§pop() == null);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(_loc4_ || this)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr54);
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr81);
                  }
               }
               addr54:
               §§pop();
               if(_loc4_)
               {
                  §§push(this.§7!x§ == null);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(!(_loc3_ && param1))
                     {
                        addr81:
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§goto(addr98);
                              }
                           }
                        }
                        §§goto(addr98);
                     }
                     addr98:
                     if(param1 < this.§<A§.length)
                     {
                        addr101:
                        _loc2_ = this.§<A§[param1] as §>"§;
                        §§goto(addr99);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr81);
               }
               addr99:
               if(_loc4_)
               {
                  if(_loc2_ == null)
                  {
                     addr158:
                     return null;
                  }
                  if(_loc4_ || _loc3_)
                  {
                     this.§<A§.splice(param1,1);
                  }
                  delete this.§7!x§[_loc2_.§>" §];
               }
               return _loc2_;
            }
            §§goto(addr101);
         }
         §§goto(addr98);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;F§(param1))
         {
         }
         return this.§;F§ === this.§>!x§;
      }
      
      protected function §>!x§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"",§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(_loc5_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc5_ || this)
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr83:
                  if(!(_loc4_ && param1))
                  {
                     §§push(§0s§);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || this)
                              {
                                 §§push(0);
                                 if(!_loc5_)
                                 {
                                    addr290:
                                 }
                              }
                              else
                              {
                                 addr200:
                                 §§push(4);
                                 if(!_loc5_)
                                 {
                                    addr267:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§#8§);
                              if(!_loc4_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(1);
                                          if(!(_loc4_ && this))
                                          {
                                             addr317:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§;F§ = this.§!!H§;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      this.§^m§ = new §>"§(this.§>!@§);
                                                      addr57:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop0;
                                                      }
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
                                                   this.§;F§ = this.§>!x§;
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr57);
                                                   }
                                                   break;
                                                default:
                                                   throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                             }
                                             §§push(true);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr331);
                                          }
                                          else
                                          {
                                             addr172:
                                             §§goto(addr317);
                                          }
                                          §§goto(addr317);
                                       }
                                       else
                                       {
                                          addr259:
                                          §§push(7);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§goto(addr267);
                                          }
                                          else
                                          {
                                             addr312:
                                             §§goto(addr317);
                                          }
                                       }
                                       §§goto(addr317);
                                    }
                                    else
                                    {
                                       §§push(§5z§);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(2);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§goto(addr172);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr312);
                                                   }
                                                }
                                                else
                                                {
                                                   addr241:
                                                   §§push(6);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr317);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr267);
                                                   }
                                                }
                                                §§goto(addr317);
                                             }
                                             else
                                             {
                                                §§push(§^N§);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(3);
                                                            if(_loc4_ && param1)
                                                            {
                                                            }
                                                            §§goto(addr317);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr241);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§#"$§);
                                                         if(_loc5_)
                                                         {
                                                            addr194:
                                                            §§push(_loc3_);
                                                            if(!_loc4_)
                                                            {
                                                               addr197:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr200);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr282:
                                                                     §§push(8);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§goto(addr290);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr312);
                                                                     }
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               else
                                                               {
                                                                  §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr207:
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr210:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§push(5);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr317);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr290);
                                                                              }
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr235:
                                                                              §§push(_loc3_);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr238:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr282);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§00§);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       addr253:
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr256:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr304:
                                                                                                §§push(9);
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   §§goto(addr312);
                                                                                                }
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§^§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr271:
                                                                                                §§push(_loc3_);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr274:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr282);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr304);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr292:
                                                                                                      §§push(§%v§);
                                                                                                      §§push(_loc3_);
                                                                                                   }
                                                                                                   §§goto(addr304);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          §§goto(addr304);
                                                                                       }
                                                                                       if(§§pop() !== §§pop())
                                                                                       {
                                                                                          §§goto(addr317);
                                                                                          §§push(10);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr256);
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr194);
                                             }
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr317);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr282);
                  addr83:
               }
               §§goto(addr83);
            }
            else
            {
               §§push(false);
            }
            addr331:
            return §§pop();
         }
         §§goto(addr83);
      }
      
      protected function §!!H§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§^m§);
            if(!_loc3_)
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
                        §§push(this.§^m§);
                        addr170:
                        while(true)
                        {
                           §§push(§§pop().§,,§);
                           loop5:
                           while(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 this.§`!b§();
                                 if(!(_loc3_ && param1))
                                 {
                                    if(this.§;F§ == this.§>!x§)
                                    {
                                       do
                                       {
                                          §§push(false);
                                       }
                                       while(!(_loc2_ || _loc2_));
                                       
                                       continue loop0;
                                       addr19:
                                    }
                                    if(_loc2_)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          if(_loc3_ && this)
                                          {
                                             break loop5;
                                          }
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       this.§;F§ = this.§"",§;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(true);
                                          while(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   return §§pop();
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr98);
                                          }
                                          addr98:
                                          return §§pop();
                                          addr35:
                                       }
                                       else
                                       {
                                          addr176:
                                          while(true)
                                          {
                                             this.§`u§ = new ByteArray();
                                             addr160:
                                             while(true)
                                             {
                                                this.§+!<§ = 0;
                                                break loop6;
                                             }
                                          }
                                          addr176:
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr112);
                                          §§push(true);
                                          addr149:
                                       }
                                       else
                                       {
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr35);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 this.§%s§ = 0;
                                 §§goto(addr132);
                                 §§goto(addr160);
                              }
                              §§goto(addr149);
                           }
                           this.§;F§ = this.§@!m§;
                           §§goto(addr176);
                        }
                     }
                  }
                  §§goto(addr19);
               }
               while(!_loc2_);
               
               return §§pop();
            }
            §§goto(addr170);
         }
         §§goto(addr176);
      }
      
      protected function §@!m§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(false);
                  if(!(_loc4_ && _loc2_))
                  {
                     return §§pop();
                  }
                  break;
               }
               while(true)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(!(_loc4_ && this))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§`u§.length -= 3;
                        }
                        addr101:
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           this.§;F§ = this.§ !a§;
                           while(!(_loc3_ || param1))
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(this.§+!<§);
                                 if(_loc4_)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr149:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§+!<§);
                                          if(!_loc4_)
                                          {
                                             §§push(8);
                                             if(_loc3_ || param1)
                                             {
                                                addr137:
                                                §§push(§§pop() >>> §§pop());
                                                §§push(_loc2_ << 24);
                                             }
                                             §§pop().§+!<§ = §§pop() | §§pop();
                                             continue loop6;
                                          }
                                          §§goto(addr137);
                                          continue loop7;
                                       }
                                    }
                                    addr148:
                                 }
                                 if(§§pop() != §00§)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                           }
                           §§push(true);
                           break loop0;
                           addr86:
                        }
                        §§goto(addr149);
                     }
                     continue;
                  }
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr86);
               }
               continue;
            }
            §§push(uint(param1.readUnsignedByte()));
            §§goto(addr148);
         }
         return §§pop();
      }
      
      protected function § !a§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(!(_loc5_ && _loc2_))
         {
            if(param1.bytesAvailable >= 12)
            {
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
                        while(_loc6_)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(uint(param1.readUnsignedInt()));
                              if(_loc5_)
                              {
                                 break;
                              }
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 if(this.§`u§.length == _loc3_)
                                 {
                                    this.§`u§.position = 0;
                                    addr184:
                                    this.§^m§.§7!$§ = _loc2_;
                                    addr185:
                                    addr183:
                                    §§push(this.§^m§);
                                 }
                                 else
                                 {
                                    this.§`u§.writeUnsignedInt(_loc2_);
                                    loop6:
                                    while(true)
                                    {
                                       this.§`u§.writeUnsignedInt(_loc3_);
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             break loop5;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop0;
                                          addr89:
                                          this.§;F§ = this.§@!m§;
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(!_loc6_)
                                          {
                                             addr123:
                                             if(!_loc5_)
                                             {
                                                if(!(_loc6_ || this))
                                                {
                                                   §§goto(addr185);
                                                }
                                                addr43:
                                                return true;
                                                addr41:
                                             }
                                             if(_loc6_ || _loc3_)
                                             {
                                                this.§;F§ = this.§"",§;
                                                §§goto(addr123);
                                             }
                                             addr152:
                                             if(!(_loc5_ && this))
                                             {
                                                this.§`!b§();
                                                §§goto(addr123);
                                             }
                                             §§push(this.§^m§);
                                             if(_loc6_)
                                             {
                                                §§pop().§!@§(this.§`u§);
                                                §§goto(addr152);
                                             }
                                             addr173:
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§pop().§default§ = §§pop();
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   addr178:
                                                   §§pop().§`!d§ = §§pop();
                                                   break loop5;
                                                }
                                                §§goto(addr183);
                                             }
                                             addr177:
                                             §§goto(addr178);
                                             §§push(_loc3_);
                                          }
                                          §§goto(addr41);
                                       }
                                    }
                                    addr117:
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr173);
                              §§push(this.§^m§);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc6_)
               {
                  return §§pop();
               }
            }
            §§goto(addr43);
         }
         §§goto(addr117);
      }
      
      protected function §`!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§<A§.push(this.§^m§);
            loop0:
            while(true)
            {
               if(this.§^m§.§>" §)
               {
                  while(true)
                  {
                     this.§7!x§[this.§^m§.§>" §] = this.§^m§;
                     addr83:
                     while(!_loc1_)
                     {
                     }
                     continue loop0;
                  }
                  addr75:
               }
               while(true)
               {
                  dispatchEvent(new §?!b§(§?!b§.§6!0§,this.§^m§));
                  addr65:
                  while(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr83);
               }
            }
         }
         while(true)
         {
            this.§^m§ = null;
            if(!(_loc1_ && this))
            {
               break;
            }
            §§goto(addr65);
         }
      }
      
      protected function § "1§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var evt:Event = param1;
         if(!(_loc5_ && _loc2_))
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§1H§))
            {
               if(!_loc5_)
               {
                  this.close();
                  if(!(_loc5_ && _loc3_))
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
         catch(e:Error)
         {
            if(_loc4_ || param1)
            {
               close();
            }
            while(hasEventListener(§`^§.§[!B§))
            {
               if(_loc4_ || _loc2_)
               {
                  dispatchEvent(new §`^§(§`^§.§[!B§,e.message));
                  §§goto(addr135);
               }
            }
            throw e;
         }
         addr135:
      }
      
      protected function §5@§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §="3§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(_loc3_ && this);
         
      }
      
      protected function §""4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§1H§.addEventListener(Event.COMPLETE,this.§5@§);
            while(true)
            {
               this.§1H§.addEventListener(Event.OPEN,this.§5@§);
               addr123:
               while(true)
               {
                  this.§1H§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5@§);
                  addr46:
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr63:
                  }
               }
               addr79:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               this.§1H§.addEventListener(ProgressEvent.PROGRESS,this.§ "1§);
               addr86:
               if(_loc2_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     §§goto(addr46);
                  }
                  while(true)
                  {
                     this.§1H§.addEventListener(IOErrorEvent.IO_ERROR,this.§="3§);
                     loop3:
                     while(true)
                     {
                        this.§1H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="3§);
                        addr72:
                        while(true)
                        {
                           if(_loc1_ && this)
                           {
                              continue loop3;
                           }
                           §§goto(addr79);
                           §§goto(addr86);
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr63);
                  addr114:
               }
               §§goto(addr72);
            }
         }
         §§goto(addr114);
      }
      
      protected function §>!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1H§.removeEventListener(Event.COMPLETE,this.§5@§);
            loop0:
            while(true)
            {
               this.§1H§.removeEventListener(Event.OPEN,this.§5@§);
               addr112:
               while(true)
               {
                  this.§1H§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5@§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§1H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§="3§);
            loop4:
            while(true)
            {
               this.§1H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="3§);
               while(true)
               {
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop4;
               }
               §§goto(addr112);
            }
         }
      }
   }
}
