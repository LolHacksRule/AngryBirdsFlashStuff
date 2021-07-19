package §;"j§
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
   
   public class §[h§ extends EventDispatcher
   {
      
      static const §[!M§:uint = 33639248;
      
      static const §&F§:uint = 808471376;
      
      static const § #%§:uint = 67324752;
      
      static const §6"t§:uint = 84233040;
      
      static const §@!v§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §&"R§:uint = 134695760;
      
      static const §5!0§:uint = 134630224;
      
      static const §5"g§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §[h§)
         {
            §[!M§ = 33639248;
            loop0:
            while(true)
            {
               §&F§ = 808471376;
               while(true)
               {
                  § #%§ = 67324752;
                  addr108:
                  while(!(_loc2_ && _loc1_))
                  {
                     §@!v§ = 101010256;
                     while(_loc1_ || §[h§)
                     {
                        SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      protected var §>!u§:Array;
      
      protected var §9!i§:Dictionary;
      
      protected var §?"_§:URLStream;
      
      protected var §"!y§:String;
      
      protected var §;L§:Function;
      
      protected var §5K§:§4"W§;
      
      protected var §-q§:ByteArray;
      
      protected var §4[§:uint;
      
      protected var §7;§:uint;
      
      public function §[h§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§"!y§ = param1;
            do
            {
               this.§;L§ = this.§["Z§;
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function get active() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;L§ === this.§["Z§);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(!this.§?"_§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop7:
                     while(true)
                     {
                        §§push(this.§;L§ == this.§["Z§);
                        if(!(_loc2_ && this))
                        {
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§?"_§ = new URLStream();
                                 while(true)
                                 {
                                    this.§?"_§.endian = Endian.LITTLE_ENDIAN;
                                    while(_loc3_ || this)
                                    {
                                       this.§"#U§();
                                       while(_loc3_ || _loc2_)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             this.§>!u§ = [];
                                             loop5:
                                             while(!(_loc2_ && _loc3_))
                                             {
                                                this.§9!i§ = new Dictionary();
                                                loop8:
                                                while(true)
                                                {
                                                   this.§;L§ = this.§2"&§;
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           return;
                           addr127:
                        }
                        break;
                     }
                  }
                  addr151:
               }
               §§goto(addr127);
            }
            §§goto(addr151);
         }
         §§goto(addr59);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(!this.§?"_§);
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
                        this.§>!u§ = [];
                        loop6:
                        while(true)
                        {
                           this.§9!i§ = new Dictionary();
                           loop7:
                           while(true)
                           {
                              param1.position = 0;
                              loop8:
                              while(true)
                              {
                                 param1.endian = Endian.LITTLE_ENDIAN;
                                 loop9:
                                 while(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§;L§ = this.§2"&§;
                                       loop11:
                                       for(; !_loc2_; while(true)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop11;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr96);
                                       },continue loop9)
                                       {
                                          §§push(this.parse(param1));
                                          if(!(_loc3_ || param1))
                                          {
                                             continue loop0;
                                          }
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                continue;
                                             }
                                             dispatchEvent(new §1X§(§1X§.§="`§,"EOF"));
                                             if(_loc3_)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   break loop4;
                                                }
                                                while(_loc3_)
                                                {
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                   this.§;L§ = this.§["Z§;
                                                }
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop4;
                                                }
                                                continue loop11;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                break loop9;
                                             }
                                             addr164:
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§;L§ == this.§["Z§);
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
                  addr143:
               }
               §§goto(addr164);
            }
         }
         §§goto(addr118);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§?"_§)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§;L§ = this.§["Z§;
                  addr83:
                  while(true)
                  {
                     this.§6E§();
                     while(_loc2_)
                     {
                        this.§?"_§.close();
                        while(_loc2_)
                        {
                           this.§?"_§ = null;
                           if(_loc2_ || this)
                           {
                              §§goto(addr20);
                           }
                        }
                     }
                  }
                  addr83:
               }
               §§goto(addr83);
            }
            addr20:
            return;
         }
         §§goto(addr83);
      }
      
      public function §?" §(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§4"W§ = null;
         if(_loc10_)
         {
            §§push(param1 == null);
            if(_loc10_ || param2)
            {
               §§push(!§§pop());
               if(!(_loc11_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc11_ && _loc3_))
                     {
                        addr62:
                        §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           §§goto(addr75);
                        }
                        §§goto(addr78);
                     }
                  }
                  addr75:
                  if(this.§>!u§.length > 0)
                  {
                     if(_loc10_)
                     {
                        addr78:
                        _loc3_ = param1.endian;
                        addr82:
                        _loc4_ = new ByteArray();
                        if(_loc10_)
                        {
                           param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                           if(!_loc11_)
                           {
                              §§push(0);
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr138:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                 }
                              }
                              addr137:
                           }
                           loop2:
                           while(true)
                           {
                              addr115:
                              while(true)
                              {
                                 §§push(0);
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(uint(§§pop()));
                                       if(_loc11_ && param2)
                                       {
                                          break;
                                       }
                                       _loc6_ = §§pop();
                                       do
                                       {
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(0);
                                             if(!_loc11_)
                                             {
                                                continue;
                                             }
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                       while(_loc7_ = §§pop(), !(_loc10_ || param2));
                                       
                                    }
                                    else
                                    {
                                       §§goto(addr137);
                                    }
                                 }
                                 §§goto(addr138);
                              }
                           }
                        }
                        while(false)
                        {
                           §§goto(addr115);
                        }
                        while(_loc7_ < this.§>!u§.length)
                        {
                           if((_loc8_ = this.§>!u§[_loc7_] as §4"W§) != null)
                           {
                              if(!(_loc11_ && this))
                              {
                                 _loc8_.§?" §(_loc4_,param2,true,_loc5_);
                                 if(_loc10_)
                                 {
                                    §§push(_loc5_);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop() + _loc8_.§?" §(param1,param2));
                                       loop10:
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             addr229:
                                             while(true)
                                             {
                                                addr190:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() + 1);
                                                      if(_loc10_)
                                                      {
                                                         §§push(uint(§§pop()));
                                                         continue loop9;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                    addr178:
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr180);
                        }
                        if(!_loc11_)
                        {
                           if(_loc4_.length > 0)
                           {
                              if(!_loc11_)
                              {
                                 addr243:
                                 param1.writeBytes(_loc4_);
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    addr342:
                                    param1.writeUnsignedInt(§@!v§);
                                    loop16:
                                    while(true)
                                    {
                                       param1.writeShort(0);
                                       while(true)
                                       {
                                          param1.writeShort(0);
                                          loop18:
                                          while(true)
                                          {
                                             param1.writeShort(_loc6_);
                                             loop19:
                                             while(true)
                                             {
                                                param1.writeShort(_loc6_);
                                                while(true)
                                                {
                                                   param1.writeUnsignedInt(_loc4_.length);
                                                   addr307:
                                                   while(_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      param1.writeUnsignedInt(_loc5_);
                                                      while(true)
                                                      {
                                                         §§goto(addr264);
                                                      }
                                                   }
                                                   continue loop19;
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          param1.endian = _loc3_;
                                          if(_loc10_)
                                          {
                                             if(!_loc11_)
                                             {
                                                while(true)
                                                {
                                                   if(false)
                                                   {
                                                      addr264:
                                                   }
                                                   §§goto(addr346);
                                                }
                                                addr262:
                                             }
                                             §§goto(addr307);
                                          }
                                          §§goto(addr268);
                                       }
                                    }
                                    addr345:
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr345);
                           }
                           §§goto(addr342);
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr82);
                  }
                  addr346:
                  while(true)
                  {
                     param1.writeShort(0);
                     continue loop22;
                  }
                  return;
               }
            }
            §§goto(addr62);
         }
         §§goto(addr78);
      }
      
      public function §[B§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>!u§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr36:
                  §§push(uint(this.§>!u§.length));
                  if(_loc2_ || _loc2_)
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
         §§goto(addr36);
      }
      
      public function §[!<§(param1:uint) : §4"W§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§>!u§);
            if(!(_loc2_ && _loc3_))
            {
               return !!§§pop() ? this.§>!u§[param1] as §4"W§ : null;
            }
         }
         §§goto(addr56);
      }
      
      public function §5+§(param1:String) : §4"W§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            return !!this.§9!i§[param1] ? this.§9!i§[param1] as §4"W§ : null;
         }
         §§goto(addr38);
      }
      
      public function §"Z§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §4"W§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(_loc5_)
         {
            §§push(this.§>!u§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  addr37:
                  §§push(uint(this.§>!u§.length));
                  if(_loc4_ && param1)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§^D§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr37);
      }
      
      public function §>"&§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §4"W§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this);
         if(_loc6_)
         {
            §§push(this.§>!u§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  addr37:
                  §§push(uint(this.§>!u§.length));
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§3!V§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr37);
      }
      
      public function §^D§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §4"W§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            if(this.§>!u§ == null)
            {
               if(_loc7_ || param1)
               {
                  this.§>!u§ = [];
                  addr90:
                  while(true)
                  {
                  }
                  addr90:
               }
               §§goto(addr90);
            }
            while(true)
            {
               if(this.§9!i§ != null)
               {
                  if(this.§9!i§[param2])
                  {
                     if(_loc7_)
                     {
                        if(_loc7_)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        §§goto(addr90);
                     }
                     else
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(true)
                        {
                           break;
                        }
                        continue;
                        addr65:
                     }
                  }
                  break;
               }
               if(!(_loc6_ && param2))
               {
                  this.§9!i§ = new Dictionary();
               }
               §§goto(addr65);
            }
            var _loc5_:§4"W§;
            (_loc5_ = new §4"W§()).§1"n§ = param2;
            if(_loc7_)
            {
               _loc5_.§58§(param3,param4);
               loop1:
               while(true)
               {
                  if(param1 >= this.§>!u§.length)
                  {
                     if(!(_loc6_ && param1))
                     {
                        while(true)
                        {
                           §§push(this.§>!u§);
                           addr156:
                           while(true)
                           {
                              §§pop().push(_loc5_);
                           }
                        }
                        addr144:
                     }
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§9!i§[param2] = _loc5_;
                           if(_loc6_)
                           {
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              addr126:
                           }
                           return _loc5_;
                        }
                     }
                     addr158:
                  }
                  else
                  {
                     §§push(this.§>!u§);
                     if(!_loc6_)
                     {
                        §§pop().splice(param1,0,_loc5_);
                        §§goto(addr126);
                     }
                     else
                     {
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr156);
               }
            }
            §§goto(addr144);
         }
         §§goto(addr90);
      }
      
      public function §3!V§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §4"W§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            if(this.§>!u§ == null)
            {
               while(true)
               {
                  this.§>!u§ = [];
                  addr94:
                  while(true)
                  {
                  }
               }
               addr81:
            }
            while(true)
            {
               if(this.§9!i§ != null)
               {
                  if(this.§9!i§[param2])
                  {
                     if(!(_loc8_ && param2))
                     {
                        if(!_loc8_)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        §§goto(addr81);
                     }
                     else
                     {
                        if(!_loc7_)
                        {
                           break;
                           addr76:
                        }
                        if(!(_loc8_ && param1))
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     §§goto(addr94);
                  }
                  break;
               }
               if(_loc7_ || param3)
               {
                  this.§9!i§ = new Dictionary();
               }
            }
            var _loc6_:§4"W§;
            (_loc6_ = new §4"W§()).§1"n§ = param2;
            if(_loc7_ || param1)
            {
               _loc6_.§-"D§(param3,param4,param5);
               loop3:
               while(true)
               {
                  if(param1 >= this.§>!u§.length)
                  {
                     continue;
                  }
                  §§push(this.§>!u§);
                  if(_loc7_ || param1)
                  {
                     §§pop().splice(param1,0,_loc6_);
                  }
                  else
                  {
                     while(true)
                     {
                        §§pop().push(_loc6_);
                        loop7:
                        while(true)
                        {
                           addr115:
                           while(true)
                           {
                              this.§9!i§[param2] = _loc6_;
                              if(!(_loc7_ || this))
                              {
                                 break;
                              }
                              if(!(_loc8_ && param1))
                              {
                                 if(!_loc8_)
                                 {
                                    return _loc6_;
                                 }
                                 continue loop3;
                              }
                              continue loop7;
                           }
                        }
                     }
                     addr180:
                  }
                  while(true)
                  {
                     §§goto(addr115);
                  }
               }
            }
            while(true)
            {
               §§goto(addr180);
            }
         }
         §§goto(addr76);
      }
      
      public function §?#]§(param1:uint) : §4"W§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4"W§ = null;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§>!u§);
            if(!_loc3_)
            {
               §§push(§§pop() == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(this.§9!i§ == null);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       addr71:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                                 §§pop();
                                 if(!(_loc3_ && this))
                                 {
                                    addr103:
                                    if(§§pop())
                                    {
                                       addr106:
                                       _loc2_ = this.§>!u§[param1] as §4"W§;
                                       §§goto(addr104);
                                    }
                                    addr168:
                                    return null;
                                    §§push(param1 < this.§>!u§.length);
                                 }
                                 §§goto(addr104);
                              }
                              addr104:
                              if(_loc4_ || param1)
                              {
                                 if(_loc2_ == null)
                                 {
                                    §§goto(addr168);
                                 }
                              }
                              do
                              {
                                 this.§>!u§.splice(param1,1);
                                 do
                                 {
                                    delete this.§9!i§[_loc2_.§1"n§];
                                 }
                                 while(_loc3_);
                                 
                              }
                              while(_loc3_ && _loc3_);
                              
                              return _loc2_;
                           }
                        }
                     }
                     §§goto(addr71);
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr106);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;L§(param1))
         {
         }
         return this.§;L§ === this.§["Z§;
      }
      
      protected function §["Z§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §2"&§(param1:IDataInput) : Boolean
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
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§ #%§);
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc5_)
                           {
                              §§push(0);
                              if(_loc5_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr258:
                              §§push(5);
                              if(_loc5_ || this)
                              {
                                 addr266:
                              }
                              else
                              {
                                 addr325:
                              }
                           }
                        }
                        else
                        {
                           §§push(§[!M§);
                           if(!(_loc4_ && param1))
                           {
                              §§push(_loc3_);
                              if(_loc5_ || _loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(1);
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          addr302:
                                       }
                                       §§goto(addr342);
                                    }
                                    else
                                    {
                                       §§goto(addr258);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§@!v§);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(2);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§goto(addr342);
                                                }
                                                else
                                                {
                                                   §§goto(addr325);
                                                }
                                             }
                                             else
                                             {
                                                addr322:
                                                §§push(8);
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr342);
                                             }
                                             §§goto(addr342);
                                          }
                                          else
                                          {
                                             §§push(§&F§);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(3);
                                                         if(!(_loc5_ || this))
                                                         {
                                                            addr279:
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr322);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§6"t§);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr342);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr266);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr299:
                                                                  §§push(7);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr302);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            else
                                                            {
                                                               §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                               if(_loc5_)
                                                               {
                                                                  addr242:
                                                                  §§push(_loc3_);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                  }
                                                                  addr273:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(6);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr279);
                                                                        }
                                                                        §§goto(addr342);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr299);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§&"R§);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr288:
                                                                        §§push(_loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr299);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§5!0§);
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 addr311:
                                                                                 §§push(_loc3_);
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr328:
                                                                                       if(§5"g§ !== _loc3_)
                                                                                       {
                                                                                          addr342:
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                this.§;L§ = this.§+3§;
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.§5K§ = new §4"W§(this.§"!y§);
                                                                                                   addr346:
                                                                                                   §§push(true);
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr365:
                                                                                                §§push(false);
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
                                                                                                this.§;L§ = this.§["Z§;
                                                                                                §§goto(addr346);
                                                                                             default:
                                                                                                throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                                                                          }
                                                                                          return §§pop();
                                                                                          §§push(10);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                              }
                                                                              §§goto(addr328);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr288);
                                                            }
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr342);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§goto(addr258);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr322);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                   if(_loc5_)
                                                   {
                                                      addr270:
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr328);
                                                   }
                                                   §§goto(addr311);
                                                }
                                                §§goto(addr342);
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                    }
                                    §§goto(addr328);
                                 }
                                 §§goto(addr342);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr270);
                        }
                        §§goto(addr342);
                     }
                     §§goto(addr328);
                  }
                  §§goto(addr288);
               }
               §§goto(addr258);
            }
            §§goto(addr365);
         }
         §§goto(addr84);
      }
      
      protected function §+3§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§5K§);
            if(!_loc3_)
            {
               §§push(§§pop().parse(param1));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop10:
                     while(true)
                     {
                        §§push(this.§5K§);
                        addr145:
                        while(true)
                        {
                           §§push(§§pop().§["@§);
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§^!w§();
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(this.§;L§ != this.§["Z§)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc2_)
                                                {
                                                   this.§;L§ = this.§2"&§;
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   this.§-q§ = new ByteArray();
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      this.§4[§ = 0;
                                                      if(!(_loc2_ || _loc3_))
                                                      {
                                                         continue loop10;
                                                      }
                                                      this.§7;§ = 0;
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr95);
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr24);
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr42);
                                 }
                              }
                              §§goto(addr147);
                           }
                        }
                     }
                     addr143:
                  }
                  addr24:
                  while(true)
                  {
                     §§push(false);
                     if(_loc2_ || param1)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        continue loop2;
                     }
                     addr42:
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     continue loop0;
                  }
                  addr95:
                  return true;
               }
            }
            §§goto(addr145);
         }
         §§goto(addr143);
      }
      
      protected function §-#P§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:uint = 0;
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(_loc3_ || _loc3_)
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§4[§);
                           if(_loc3_)
                           {
                              §§push(8);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr117:
                                 §§push(§§pop() >>> §§pop());
                                 §§push(_loc2_ << 24);
                              }
                              §§pop().§4[§ = §§pop() | §§pop();
                              while(true)
                              {
                                 §§push(this.§4[§);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              if(§§pop() == §&"R§)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    this.§-q§.length -= 3;
                                 }
                              }
                              else
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§-q§.writeByte(_loc2_);
                                    addr47:
                                    while(true)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       if(!_loc3_)
                                       {
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr78);
                                 }
                              }
                              this.§;L§ = this.§9"j§;
                              addr78:
                              return true;
                              addr132:
                           }
                           §§goto(addr117);
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr132);
               }
               §§goto(addr47);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr138);
         }
      }
      
      protected function §9"j§(param1:IDataInput) : Boolean
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
               if(_loc6_)
               {
                  §§push(uint(param1.readUnsignedInt()));
                  while(true)
                  {
                     _loc2_ = §§pop();
                  }
                  addr252:
               }
               loop1:
               while(true)
               {
                  §§push(uint(param1.readUnsignedInt()));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(uint(param1.readUnsignedInt()));
                        if(_loc5_ && _loc2_)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           _loc4_ = §§pop();
                           loop4:
                           while(_loc6_ || this)
                           {
                              while(true)
                              {
                                 if(this.§-q§.length != _loc3_)
                                 {
                                    this.§-q§.writeUnsignedInt(_loc2_);
                                    loop6:
                                    while(_loc6_)
                                    {
                                       this.§-q§.writeUnsignedInt(_loc3_);
                                       loop7:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             this.§-q§.writeUnsignedInt(_loc4_);
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                             while(!_loc5_)
                                             {
                                                this.§;L§ = this.§2"&§;
                                                while(true)
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr43:
                                                      return true;
                                                      addr41:
                                                   }
                                                   addr200:
                                                   while(true)
                                                   {
                                                      this.§-q§.position = 0;
                                                      break loop7;
                                                   }
                                                }
                                                §§pop().§2!u§(this.§-q§);
                                                this.§^!w§();
                                             }
                                             continue loop4;
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr191);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr41);
                           }
                           continue;
                        }
                        §§goto(addr252);
                     }
                  }
               }
            }
            else
            {
               §§push(false);
               if(!_loc5_)
               {
                  return §§pop();
               }
               §§goto(addr43);
            }
         }
         §§goto(addr226);
      }
      
      protected function §^!w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!u§.push(this.§5K§);
            loop0:
            while(true)
            {
               if(this.§5K§.§1"n§)
               {
                  continue;
               }
               loop2:
               while(true)
               {
                  dispatchEvent(new §'##§(§'##§.§,"6§,this.§5K§));
                  while(_loc2_)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§5K§ = null;
                        if(_loc2_ || this)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
                  addr95:
                  while(true)
                  {
                     continue loop2;
                  }
               }
            }
         }
         while(true)
         {
            this.§9!i§[this.§5K§.§1"n§] = this.§5K§;
            §§goto(addr95);
         }
      }
      
      protected function §#i§(param1:Event) : void
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
            if(this.parse(this.§?"_§))
            {
               if(!_loc4_)
               {
                  this.close();
                  if(!(_loc4_ && _loc2_))
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
               do
               {
                  if(!hasEventListener(§1X§.§="`§))
                  {
                     throw e;
                  }
               }
               while(!(_loc5_ || this));
               
            }
            dispatchEvent(new §1X§(§1X§.§="`§,e.message));
         }
      }
      
      protected function §1"!§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §-!w§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      protected function §"#U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?"_§.addEventListener(Event.COMPLETE,this.§1"!§);
            loop0:
            while(true)
            {
               this.§?"_§.addEventListener(Event.OPEN,this.§1"!§);
               addr117:
               while(true)
               {
                  this.§?"_§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1"!§);
                  while(true)
                  {
                     this.§?"_§.addEventListener(IOErrorEvent.IO_ERROR,this.§-!w§);
                     addr38:
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            this.§?"_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!w§);
            while(true)
            {
               if(!(_loc2_ && this))
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop3;
            }
            §§goto(addr117);
         }
         §§goto(addr52);
      }
      
      protected function §6E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?"_§.removeEventListener(Event.COMPLETE,this.§1"!§);
         }
         loop0:
         while(true)
         {
            this.§?"_§.removeEventListener(Event.OPEN,this.§1"!§);
            loop1:
            while(true)
            {
               this.§?"_§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1"!§);
               while(true)
               {
                  this.§?"_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!w§);
                  while(!_loc2_)
                  {
                     this.§?"_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!w§);
                     while(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        this.§?"_§.removeEventListener(ProgressEvent.PROGRESS,this.§#i§);
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
