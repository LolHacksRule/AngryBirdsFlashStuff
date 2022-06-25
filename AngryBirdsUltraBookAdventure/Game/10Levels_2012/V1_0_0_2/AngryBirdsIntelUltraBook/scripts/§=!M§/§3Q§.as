package §=!M§
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
   
   public class §3Q§ extends EventDispatcher
   {
      
      static const §2s§:uint = 33639248;
      
      static const §71§:uint = 808471376;
      
      static const §<p§:uint = 67324752;
      
      static const §4u§:uint = 84233040;
      
      static const §=!'§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §=S§:uint = 134695760;
      
      static const §?t§:uint = 134630224;
      
      static const §!![§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2s§ = 33639248;
            while(true)
            {
               §71§ = 808471376;
               loop1:
               while(_loc1_)
               {
                  §<p§ = 67324752;
                  loop2:
                  while(true)
                  {
                     §4u§ = 84233040;
                     while(true)
                     {
                        §=!'§ = 101010256;
                        loop4:
                        for(; !(_loc2_ && §3Q§); if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        },§§goto(addr45))
                        {
                           if(!_loc2_)
                           {
                              SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                              while(_loc1_)
                              {
                                 SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                                 loop6:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    §=S§ = 134695760;
                                    loop7:
                                    while(true)
                                    {
                                       §?t§ = 134630224;
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop7;
                                          addr45:
                                          §!![§ = 134695760;
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop7;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    return;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      protected var §,r§:Array;
      
      protected var §-z§:Dictionary;
      
      protected var §>!Z§:URLStream;
      
      protected var §%F§:String;
      
      protected var §3!b§:Function;
      
      protected var §0!?§:§"T§;
      
      protected var §-!X§:ByteArray;
      
      protected var §6T§:uint;
      
      protected var §1!^§:uint;
      
      public function §3Q§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§%F§ = param1;
               while(_loc2_ || _loc2_)
               {
                  this.§3!b§ = this.§5!'§;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get §,O§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§3!b§ === this.§5!'§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(!this.§>!Z§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this.§3!b§ == this.§5!'§);
                        if(_loc2_ || _loc3_)
                        {
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§>!Z§ = new URLStream();
                                 while(true)
                                 {
                                    this.§>!Z§.endian = Endian.LITTLE_ENDIAN;
                                    addr107:
                                    loop5:
                                    while(true)
                                    {
                                       this.§ G§();
                                       while(true)
                                       {
                                          this.§,r§ = [];
                                          loop7:
                                          while(true)
                                          {
                                             this.§-z§ = new Dictionary();
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§3!b§ = this.§!f§;
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop5;
                                                if(!(_loc3_ && this))
                                                {
                                                   continue loop7;
                                                }
                                             }
                                          }
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
         §§goto(addr107);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(!this.§>!Z§);
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
                        this.§,r§ = [];
                        loop6:
                        while(!_loc2_)
                        {
                           this.§-z§ = new Dictionary();
                           loop7:
                           do
                           {
                              param1.position = 0;
                              loop8:
                              while(true)
                              {
                                 param1.endian = Endian.LITTLE_ENDIAN;
                                 loop9:
                                 while(true)
                                 {
                                    this.§3!b§ = this.§!f§;
                                    while(true)
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          §§push(this.parse(param1));
                                          if(_loc2_)
                                          {
                                             break loop9;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§3!b§ = this.§5!'§;
                                             }
                                             addr103:
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             dispatchEvent(new Event(Event.COMPLETE));
                                          }
                                          else
                                          {
                                             dispatchEvent(new §%"§(§%"§.§'T§,"EOF"));
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr103);
                                             }
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                break loop4;
                                             }
                                             continue loop6;
                                          }
                                          continue;
                                          addr118:
                                       }
                                       continue loop9;
                                    }
                                    continue loop8;
                                 }
                                 addr152:
                                 addr174:
                                 while(!_loc2_)
                                 {
                                    continue loop0;
                                    §§goto(addr118);
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    break loop6;
                                 }
                              }
                           }
                           while(!_loc3_);
                           
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           continue loop5;
                        }
                        while(true)
                        {
                           §§goto(addr152);
                        }
                     }
                  }
                  return;
                  addr161:
               }
               §§goto(addr174);
            }
         }
         §§goto(addr163);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§>!Z§)
            {
               loop0:
               while(true)
               {
                  this.§3!b§ = this.§5!'§;
                  while(true)
                  {
                     this.§^U§();
                     while(!(_loc2_ && this))
                     {
                        this.§>!Z§.close();
                        loop3:
                        while(_loc1_)
                        {
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 this.§>!Z§ = null;
                                 if(_loc1_ || this)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §+p§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§"T§ = null;
         if(!(_loc10_ && param1))
         {
            §§push(param1 == null);
            if(_loc11_ || param1)
            {
               §§push(!§§pop());
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        addr58:
                        §§pop();
                        if(!_loc10_)
                        {
                           addr66:
                           if(this.§,r§.length > 0)
                           {
                              if(_loc11_)
                              {
                                 addr69:
                                 _loc3_ = param1.endian;
                              }
                              _loc4_ = new ByteArray();
                              if(!_loc10_)
                              {
                                 param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                                 if(!_loc10_)
                                 {
                                    §§push(0);
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                       addr124:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                       }
                                    }
                                    addr123:
                                 }
                              }
                              loop2:
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(0);
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                       if(_loc10_ && this)
                                       {
                                          break;
                                       }
                                       _loc6_ = §§pop();
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          if(!_loc10_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(true)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             continue;
                                          }
                                          §§goto(addr123);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 while(_loc7_ < this.§,r§.length)
                                 {
                                    if((_loc8_ = this.§,r§[_loc7_] as §"T§) != null)
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          _loc8_.§+p§(_loc4_,param2,true,_loc5_);
                                          if(_loc11_)
                                          {
                                             §§push(_loc5_);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() + _loc8_.§+p§(param1,param2));
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop12:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         addr173:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc11_ || param1)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(§§pop() + 1);
                                                               if(!(_loc11_ || param1))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(uint(§§pop()));
                                                            }
                                                            if(!(_loc11_ || this))
                                                            {
                                                               continue loop12;
                                                            }
                                                            _loc6_ = §§pop();
                                                            loop9:
                                                            while(true)
                                                            {
                                                               addr166:
                                                               while(true)
                                                               {
                                                                  _loc7_++;
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr164:
                                          }
                                          while(false)
                                          {
                                             §§goto(addr173);
                                          }
                                          continue;
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr166);
                                 }
                                 if(_loc11_ || _loc3_)
                                 {
                                    if(_loc4_.length > 0)
                                    {
                                       if(_loc11_ || param2)
                                       {
                                          param1.writeBytes(_loc4_);
                                          if(_loc11_)
                                          {
                                             addr333:
                                             param1.writeUnsignedInt(§=!'§);
                                             loop24:
                                             while(true)
                                             {
                                                param1.writeShort(0);
                                                addr330:
                                                while(!_loc11_)
                                                {
                                                   continue loop24;
                                                }
                                                param1.writeShort(0);
                                                loop22:
                                                while(true)
                                                {
                                                   param1.writeShort(_loc6_);
                                                   addr320:
                                                   while(true)
                                                   {
                                                      param1.writeShort(_loc6_);
                                                      addr308:
                                                      while(true)
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            while(true)
                                                            {
                                                               param1.writeUnsignedInt(_loc4_.length);
                                                               addr291:
                                                               while(_loc10_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                            }
                                                            addr315:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr330);
                                                         }
                                                      }
                                                      continue loop22;
                                                   }
                                                }
                                             }
                                             addr336:
                                          }
                                          while(true)
                                          {
                                             param1.writeUnsignedInt(_loc5_);
                                             loop16:
                                             while(_loc11_ || _loc3_)
                                             {
                                                do
                                                {
                                                   param1.writeShort(0);
                                                   while(!(_loc10_ && param2))
                                                   {
                                                      if(!(_loc10_ && this))
                                                      {
                                                         param1.endian = _loc3_;
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc10_ && param2)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§goto(addr253);
                                                            continue loop16;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr320);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                while(false);
                                                
                                                return;
                                             }
                                             §§goto(addr308);
                                          }
                                       }
                                       §§goto(addr336);
                                    }
                                    §§goto(addr333);
                                 }
                                 §§goto(addr315);
                              }
                           }
                           §§goto(addr337);
                        }
                        §§goto(addr69);
                     }
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr58);
         }
         §§goto(addr66);
      }
      
      public function §'!H§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§,r§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§,r§.length));
                  if(_loc1_)
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
         §§goto(addr41);
      }
      
      public function §"I§(param1:uint) : §"T§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§,r§);
            if(_loc3_ || this)
            {
               return !!§§pop() ? this.§,r§[param1] as §"T§ : null;
            }
         }
         §§goto(addr46);
      }
      
      public function §;!i§(param1:String) : §"T§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            return !!this.§-z§[param1] ? this.§-z§[param1] as §"T§ : null;
         }
         §§goto(addr34);
      }
      
      public function §3I§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §"T§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         if(_loc4_ || param1)
         {
            §§push(this.§,r§);
            if(_loc4_ || param2)
            {
               if(§§pop())
               {
                  addr46:
                  §§push(uint(this.§,r§.length));
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§9!-§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr46);
      }
      
      public function §=&§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §"T§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this);
         if(!(_loc5_ && param2))
         {
            §§push(this.§,r§);
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  addr57:
                  §§push(uint(this.§,r§.length));
                  if(_loc6_ || this)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§0o§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr57);
      }
      
      public function §9!-§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §"T§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§,r§ == null)
            {
               while(true)
               {
                  this.§,r§ = [];
                  addr95:
                  while(true)
                  {
                  }
                  addr45:
                  if(_loc6_ && param3)
                  {
                     continue;
                  }
                  if(false)
                  {
                     while(true)
                     {
                        if(this.§-z§ != null)
                        {
                           if(this.§-z§[param2])
                           {
                              if(_loc7_)
                              {
                                 throw new Error("File already exists: " + param2 + ". Please remove first.");
                              }
                              if(!(_loc6_ && param2))
                              {
                                 §§goto(addr45);
                              }
                           }
                           break;
                        }
                        if(_loc7_ || this)
                        {
                           this.§-z§ = new Dictionary();
                        }
                        if(_loc7_ || param1)
                        {
                           break;
                        }
                        §§goto(addr95);
                     }
                     addr54:
                  }
                  var _loc5_:§"T§;
                  (_loc5_ = new §"T§()).§,,§ = param2;
                  if(_loc7_)
                  {
                     _loc5_.§=1§(param3,param4);
                     loop2:
                     while(true)
                     {
                        if(param1 >= this.§,r§.length)
                        {
                           if(!_loc6_)
                           {
                              while(true)
                              {
                                 §§push(this.§,r§);
                                 addr156:
                                 while(true)
                                 {
                                    §§pop().push(_loc5_);
                                 }
                              }
                              addr154:
                           }
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§-z§[param2] = _loc5_;
                                 if(_loc6_)
                                 {
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                    addr141:
                                 }
                                 return _loc5_;
                              }
                           }
                           addr158:
                        }
                        else
                        {
                           §§push(this.§,r§);
                           if(_loc7_)
                           {
                              §§pop().splice(param1,0,_loc5_);
                              §§goto(addr141);
                           }
                           else
                           {
                              §§goto(addr156);
                           }
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr154);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr95);
      }
      
      public function §0o§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §"T§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(this.§,r§ == null)
            {
               while(true)
               {
                  this.§,r§ = [];
                  addr84:
                  while(true)
                  {
                  }
               }
               addr81:
            }
            loop2:
            while(true)
            {
               if(this.§-z§ != null)
               {
                  if(this.§-z§[param2])
                  {
                     if(_loc7_ || param3)
                     {
                        if(_loc7_ || param3)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        addr58:
                        this.§-z§ = new Dictionary();
                     }
                     else if(_loc7_)
                     {
                        while(true)
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                        addr51:
                     }
                     if(_loc7_)
                     {
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr84);
                  }
                  break;
               }
               §§goto(addr58);
            }
            var _loc6_:§"T§;
            (_loc6_ = new §"T§()).§,,§ = param2;
            if(!_loc8_)
            {
               _loc6_.§5!8§(param3,param4,param5);
               while(true)
               {
                  if(param1 >= this.§,r§.length)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     §§push(this.§,r§);
                  }
                  else
                  {
                     §§push(this.§,r§);
                     if(_loc7_)
                     {
                        §§pop().splice(param1,0,_loc6_);
                        while(true)
                        {
                           addr100:
                           §§goto(addr115);
                        }
                     }
                  }
                  §§pop().push(_loc6_);
               }
            }
            addr115:
            while(true)
            {
               this.§-z§[param2] = _loc6_;
               if(!(_loc8_ && param2))
               {
                  if(!_loc8_)
                  {
                     break;
                  }
                  continue loop3;
               }
               continue loop4;
            }
            return _loc6_;
         }
         §§goto(addr51);
      }
      
      public function §8!j§(param1:uint) : §"T§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"T§ = null;
         if(_loc3_ || param1)
         {
            §§push(this.§,r§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() == null);
               if(!(_loc4_ && this))
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr58:
                              §§pop();
                              if(_loc3_ || this)
                              {
                                 addr76:
                                 §§push(this.§-z§ == null);
                                 if(_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_)
                                    {
                                       addr85:
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr89);
                                          }
                                       }
                                       §§goto(addr97);
                                    }
                                    §§goto(addr89);
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr58);
               }
               addr89:
               §§pop();
               if(_loc3_)
               {
                  addr97:
                  if(param1 < this.§,r§.length)
                  {
                     addr100:
                     _loc2_ = this.§,r§[param1] as §"T§;
                     §§goto(addr98);
                  }
                  §§goto(addr157);
               }
               addr98:
               if(!_loc4_)
               {
                  if(_loc2_ == null)
                  {
                     addr157:
                     return null;
                  }
                  this.§,r§.splice(param1,1);
               }
               do
               {
                  delete this.§-z§[_loc2_.§,,§];
               }
               while(_loc4_ && this);
               
               return _loc2_;
            }
            §§goto(addr100);
         }
         §§goto(addr76);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§3!b§(param1))
         {
         }
         return this.§3!b§ === this.§5!'§;
      }
      
      protected function §5!'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!f§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:uint = 0;
         if(_loc4_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(!(_loc5_ && param1))
               {
                  addr88:
                  _loc2_ = param1.readUnsignedInt();
               }
               var _loc3_:* = _loc2_;
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§<p§);
                  if(_loc4_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc5_ && _loc2_)
                              {
                                 addr171:
                              }
                           }
                           else
                           {
                              addr145:
                              §§push(1);
                              if(_loc5_ && _loc3_)
                              {
                                 addr349:
                              }
                           }
                        }
                        else
                        {
                           §§push(§2s§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(_loc3_);
                              if(_loc4_)
                              {
                                 addr137:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr145);
                                    }
                                    else
                                    {
                                       addr168:
                                       §§push(2);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr171);
                                       }
                                       else
                                       {
                                          addr376:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§3!b§ = this.§9v§;
                                                if(_loc4_ || param1)
                                                {
                                                   this.§0!?§ = new §"T§(this.§%F§);
                                                   break;
                                                   addr61:
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
                                                this.§3!b§ = this.§5!'§;
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr61);
                                                }
                                                break;
                                             default:
                                                throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                          }
                                          §§push(true);
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr390);
                                          addr316:
                                       }
                                       §§goto(addr376);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§=!'§);
                                    if(_loc4_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc4_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                §§goto(addr168);
                                             }
                                             else
                                             {
                                                addr206:
                                                §§push(3);
                                                if(_loc4_ || this)
                                                {
                                                }
                                                §§goto(addr376);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§71§);
                                             if(!(_loc5_ && param1))
                                             {
                                                addr180:
                                                §§push(_loc3_);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   else
                                                   {
                                                      §§push(§4u§);
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(4);
                                                                  if(!_loc4_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            else
                                                            {
                                                               §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr249:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(5);
                                                                           if(!(_loc4_ || param1))
                                                                           {
                                                                              addr371:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr363:
                                                                           §§push(9);
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              §§goto(addr371);
                                                                           }
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           addr274:
                                                                           §§push(_loc3_);
                                                                           if(!_loc4_)
                                                                           {
                                                                           }
                                                                           addr305:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(7);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§goto(addr376);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr371);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr363);
                                                                              }
                                                                              §§goto(addr376);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§?t§);
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 addr325:
                                                                                 §§push(_loc3_);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    addr333:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§push(8);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr351:
                                                                                       §§push(§!![§);
                                                                                       §§push(_loc3_);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr376);
                                                                                    §§push(10);
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                        }
                                                                        addr297:
                                                                        §§push(_loc3_);
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                  }
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(6);
                                                                        if(_loc5_ && this)
                                                                        {
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr363);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§=S§);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  §§goto(addr363);
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr376);
                                       }
                                       §§goto(addr333);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr376);
                              }
                           }
                           §§goto(addr274);
                        }
                        §§goto(addr376);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr297);
               }
               §§goto(addr145);
            }
            else
            {
               §§push(false);
            }
            addr390:
            return §§pop();
         }
         §§goto(addr88);
      }
      
      protected function §9v§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§0!?§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().parse(param1));
               loop0:
               do
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this.§0!?§);
                        while(true)
                        {
                           §§push(§§pop().§ for§);
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 do
                                 {
                                    this.§1?§();
                                 }
                                 while(_loc2_ && param1);
                                 
                                 while(true)
                                 {
                                    if(this.§3!b§ == this.§5!'§)
                                    {
                                       do
                                       {
                                          §§push(false);
                                       }
                                       while(!(_loc3_ || param1));
                                       
                                       continue loop0;
                                       addr25:
                                    }
                                    if(_loc3_)
                                    {
                                       addr93:
                                       this.§3!b§ = this.§!f§;
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(true);
                                          while(_loc2_)
                                          {
                                          }
                                          return §§pop();
                                          addr46:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§1!^§ = 0;
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(true);
                                             §§goto(addr93);
                                          }
                                          while(true)
                                          {
                                             this.§-!X§ = new ByteArray();
                                             this.§6T§ = 0;
                                             §§goto(addr133);
                                          }
                                          addr133:
                                          addr177:
                                       }
                                       while(!_loc3_)
                                       {
                                          continue loop9;
                                       }
                                       return §§pop();
                                    }
                                    addr173:
                                    while(true)
                                    {
                                       this.§3!b§ = this.§5L§;
                                    }
                                    §§goto(addr177);
                                    §§goto(addr46);
                                 }
                                 addr115:
                              }
                           }
                        }
                        addr171:
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr25);
               }
               while(_loc2_ && this);
               
               return §§pop();
            }
            §§goto(addr171);
         }
         §§goto(addr115);
      }
      
      protected function §5L§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:uint = 0;
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(!(_loc4_ && this))
               {
                  if(_loc3_ || param1)
                  {
                     §§push(false);
                     if(!(_loc4_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(_loc3_ || _loc3_)
                     {
                        loop1:
                        while(true)
                        {
                           this.§-!X§.writeByte(_loc2_);
                           addr55:
                           loop2:
                           for(; !_loc4_; continue loop1)
                           {
                              if(_loc3_ || param1)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§6T§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(8);
                                    if(!(_loc4_ && param1))
                                    {
                                       addr152:
                                       §§push(§§pop() >>> §§pop());
                                       §§push(_loc2_ << 24);
                                    }
                                    §§pop().§6T§ = §§pop() | §§pop();
                                    while(true)
                                    {
                                       §§push(this.§6T§);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(§§pop() == §=S§)
                                       {
                                          if(_loc4_ && _loc2_)
                                          {
                                             this.§3!b§ = this.§`!d§;
                                             break loop2;
                                          }
                                          addr121:
                                          addr121:
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 §§goto(addr152);
                              }
                           }
                           §§goto(addr67);
                        }
                     }
                     §§goto(addr121);
                  }
                  addr67:
                  return true;
               }
               §§goto(addr55);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr163);
         }
      }
      
      protected function §`!d§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(_loc6_)
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
                        while(!_loc5_)
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
                              do
                              {
                                 if(this.§-!X§.length == _loc3_)
                                 {
                                    continue;
                                 }
                                 this.§-!X§.writeUnsignedInt(_loc2_);
                                 loop6:
                                 while(!_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       this.§-!X§.writeUnsignedInt(_loc3_);
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§-!X§.writeUnsignedInt(_loc4_);
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§0!?§);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr151);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                             }
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr156);
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr182);
                                 }
                              }
                              while(!(_loc6_ || this));
                              
                              this.§-!X§.position = 0;
                              §§goto(addr218);
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
               if(!_loc5_)
               {
                  return §§pop();
               }
            }
            §§goto(addr38);
         }
         §§goto(addr72);
      }
      
      protected function §1?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,r§.push(this.§0!?§);
            loop0:
            while(true)
            {
               if(this.§0!?§.§,,§)
               {
                  if(_loc1_)
                  {
                     this.§-z§[this.§0!?§.§,,§] = this.§0!?§;
                  }
                  while(true)
                  {
                  }
                  addr79:
               }
               while(true)
               {
                  dispatchEvent(new §>!M§(§>!M§.§4!Q§,this.§0!?§));
                  loop3:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        this.§0!?§ = null;
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop3;
                     }
                     return;
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr63);
      }
      
      protected function §2!N§(param1:Event) : void
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
            if(this.parse(this.§>!Z§))
            {
               if(!(_loc4_ && _loc2_))
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
            if(_loc5_ || this)
            {
               close();
               do
               {
                  if(!hasEventListener(§%"§.§'T§))
                  {
                     throw e;
                  }
               }
               while(!(_loc5_ || param1));
               
            }
            dispatchEvent(new §%"§(§%"§.§'T§,e.message));
         }
      }
      
      protected function §?q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §^`§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(_loc2_);
         
      }
      
      protected function § G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>!Z§.addEventListener(Event.COMPLETE,this.§?q§);
         }
         while(true)
         {
            this.§>!Z§.addEventListener(Event.OPEN,this.§?q§);
            while(true)
            {
               this.§>!Z§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?q§);
               loop2:
               while(!(_loc1_ && _loc1_))
               {
                  this.§>!Z§.addEventListener(IOErrorEvent.IO_ERROR,this.§^`§);
                  loop3:
                  while(true)
                  {
                     this.§>!Z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^`§);
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
            if(_loc2_ || _loc2_)
            {
               return;
            }
         }
      }
      
      protected function §^U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>!Z§.removeEventListener(Event.COMPLETE,this.§?q§);
            while(true)
            {
               this.§>!Z§.removeEventListener(Event.OPEN,this.§?q§);
            }
            addr115:
         }
         while(true)
         {
            this.§>!Z§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?q§);
            loop2:
            while(!_loc2_)
            {
               this.§>!Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^`§);
               loop3:
               while(true)
               {
                  this.§>!Z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^`§);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop2;
               }
            }
            §§goto(addr115);
            if(_loc1_ || _loc2_)
            {
               return;
            }
         }
      }
   }
}
