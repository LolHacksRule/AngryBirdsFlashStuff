package §?!G§
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
   
   public class §?!^§ extends EventDispatcher
   {
      
      static const §8y§:uint = 33639248;
      
      static const §?B§:uint = 808471376;
      
      static const §+L§:uint = 67324752;
      
      static const §2!b§:uint = 84233040;
      
      static const §2+§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §=§:uint = 134695760;
      
      static const §[j§:uint = 134630224;
      
      static const §@+§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §?!^§)
         {
            §8y§ = 33639248;
            loop0:
            while(true)
            {
               §?B§ = 808471376;
               addr126:
               loop1:
               while(true)
               {
                  §+L§ = 67324752;
                  loop2:
                  while(true)
                  {
                     §2!b§ = 84233040;
                     while(true)
                     {
                        §2+§ = 101010256;
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                              while(!_loc1_)
                              {
                                 while(!(_loc1_ && §?!^§))
                                 {
                                    §[j§ = 134630224;
                                    do
                                    {
                                       §@+§ = 134695760;
                                    }
                                    while(!(_loc2_ || _loc2_));
                                    
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             return;
                                             addr46:
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
            §§goto(addr78);
         }
         §§goto(addr46);
      }
      
      protected var §]!0§:Array;
      
      protected var §0!]§:Dictionary;
      
      protected var §1$§:URLStream;
      
      protected var §4c§:String;
      
      protected var §[V§:Function;
      
      protected var §-&§:§#<§;
      
      protected var §#P§:ByteArray;
      
      protected var § !A§:uint;
      
      protected var §57§:uint;
      
      public function §?!^§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            while(true)
            {
               this.§4c§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§[V§ = this.§3!'§;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §40§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§[V§ === this.§3!'§);
         if(_loc1_ || _loc2_)
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
            §§push(!this.§1$§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop5:
                     while(true)
                     {
                        §§push(this.§[V§ == this.§3!'§);
                        if(!_loc2_)
                        {
                           loop0:
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§1$§ = new URLStream();
                                 loop2:
                                 while(true)
                                 {
                                    this.§1$§.endian = Endian.LITTLE_ENDIAN;
                                    loop3:
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§]J§();
                                          loop7:
                                          for(; !_loc2_; if(!(_loc2_ && param1))
                                          {
                                             this.§[V§ = this.§6^§;
                                             while(_loc3_ || this)
                                             {
                                                this.§1$§.load(param1);
                                                if(!_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   break loop0;
                                                }
                                                §§goto(addr52);
                                             }
                                             continue loop2;
                                          })
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue loop5;
                                             }
                                             this.§]!0§ = [];
                                             loop8:
                                             while(true)
                                             {
                                                this.§0!]§ = new Dictionary();
                                                addr52:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           return;
                           addr112:
                        }
                        break;
                     }
                  }
                  addr141:
               }
               §§goto(addr112);
            }
            §§goto(addr141);
         }
         §§goto(addr103);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(!this.§1$§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§[V§ == this.§3!'§);
                        while(!_loc2_)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(this.parse(param1));
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                              loop11:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr25);
                                             }
                                             continue loop11;
                                             §§goto(addr107);
                                          }
                                          addr107:
                                          addr63:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§0!]§ = new Dictionary();
                                             addr132:
                                             while(true)
                                             {
                                                param1.position = 0;
                                                addr85:
                                                if(!(_loc2_ && this))
                                                {
                                                   this.§[V§ = this.§3!'§;
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          addr158:
                                       }
                                    }
                                    while(_loc3_)
                                    {
                                       param1.endian = Endian.LITTLE_ENDIAN;
                                       while(true)
                                       {
                                          this.§[V§ = this.§6^§;
                                          continue loop9;
                                          addr48:
                                          if(!(_loc3_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr25);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop9;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§]!0§ = [];
                  }
                  §§goto(addr158);
               }
               addr25:
               return;
            }
         }
         §§goto(addr132);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§1$§)
            {
               while(true)
               {
                  this.§[V§ = this.§3!'§;
                  loop1:
                  while(true)
                  {
                     this.§'!f§();
                     addr70:
                     loop2:
                     while(true)
                     {
                        this.§1$§.close();
                        while(!_loc1_)
                        {
                           this.§1$§ = null;
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     addr49:
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr49);
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §7!X§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§#<§ = null;
         if(!(_loc11_ && _loc3_))
         {
            §§push(param1 == null);
            if(_loc10_ || param2)
            {
               §§push(!§§pop());
               if(_loc10_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        addr62:
                        §§pop();
                        if(_loc10_)
                        {
                           addr70:
                           if(this.§]!0§.length > 0)
                           {
                              if(_loc10_)
                              {
                                 addr73:
                                 _loc3_ = param1.endian;
                                 addr77:
                                 _loc4_ = new ByteArray();
                                 if(!(_loc11_ && param1))
                                 {
                                    param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                                    if(!_loc11_)
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
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   while(_loc10_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      if(!(_loc11_ && this))
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(_loc11_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            _loc7_ = §§pop();
                                                            if(_loc11_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               break loop3;
                                                            }
                                                            while(false)
                                                            {
                                                               continue loop3;
                                                            }
                                                            loop7:
                                                            while(_loc7_ < this.§]!0§.length)
                                                            {
                                                               if((_loc8_ = this.§]!0§[_loc7_] as §#<§) != null)
                                                               {
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     _loc8_.§7!X§(_loc4_,param2,true,_loc5_);
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        §§push(_loc5_);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + _loc8_.§7!X§(param1,param2));
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    addr190:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() + 1);
                                                                                          if(!(_loc10_ || param2))
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§push(uint(§§pop()));
                                                                                       }
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          while(_loc10_ || this)
                                                                                          {
                                                                                          }
                                                                                          continue;
                                                                                          addr208:
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr183:
                                                                     }
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        addr185:
                                                                        while(true)
                                                                        {
                                                                           _loc7_++;
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               if(_loc4_.length > 0)
                                                               {
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     param1.writeBytes(_loc4_);
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        addr347:
                                                                        param1.writeUnsignedInt(§2+§);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           param1.writeShort(0);
                                                                           addr346:
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              param1.writeShort(0);
                                                                              addr331:
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 param1.writeShort(_loc6_);
                                                                                 addr317:
                                                                                 addr326:
                                                                                 addr303:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 param1.writeShort(_loc6_);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 param1.writeUnsignedInt(_loc4_.length);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        param1.writeUnsignedInt(_loc5_);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              param1.writeShort(0);
                                                                              do
                                                                              {
                                                                                 param1.endian = _loc3_;
                                                                              }
                                                                              while(!_loc10_);
                                                                              
                                                                              if(_loc11_ && param1)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(_loc11_ && param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 addr351:
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr303);
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         continue;
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
                                 §§goto(addr120);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr351);
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr62);
         }
         §§goto(addr73);
      }
      
      public function §;!M§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§]!0§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§]!0§.length));
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
         §§goto(addr41);
      }
      
      public function § n§(param1:uint) : §#<§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§]!0§);
            if(!(_loc2_ && _loc2_))
            {
               return !!§§pop() ? this.§]!0§[param1] as §#<§ : null;
            }
         }
         §§goto(addr51);
      }
      
      public function § Z§(param1:String) : §#<§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            return !!this.§0!]§[param1] ? this.§0!]§[param1] as §#<§ : null;
         }
         §§goto(addr38);
      }
      
      public function §2![§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §#<§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(!(_loc4_ && param2))
         {
            §§push(this.§]!0§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§]!0§.length));
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§+§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr42);
      }
      
      public function §;9§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §#<§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this);
         if(!(_loc5_ && this))
         {
            §§push(this.§]!0§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§]!0§.length));
                  if(_loc6_ || param3)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§;!I§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr42);
      }
      
      public function §+§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §#<§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§]!0§ == null)
            {
               while(true)
               {
                  this.§]!0§ = [];
                  addr89:
                  while(true)
                  {
                  }
               }
               addr86:
            }
            loop2:
            while(this.§0!]§ != null)
            {
               if(this.§0!]§[param2])
               {
                  if(!(_loc7_ && param2))
                  {
                     if(!_loc7_)
                     {
                        throw new Error("File already exists: " + param2 + ". Please remove first.");
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     if(!(_loc7_ && param1))
                     {
                        if(!(_loc6_ || this))
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           while(false)
                           {
                              continue loop2;
                           }
                           addr90:
                           var _loc5_:§#<§;
                           (_loc5_ = new §#<§()).§<l§ = param2;
                           if(!_loc7_)
                           {
                              _loc5_.§7o§(param3,param4);
                              loop3:
                              do
                              {
                                 if(param1 < this.§]!0§.length)
                                 {
                                    §§push(this.§]!0§);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§pop().splice(param1,0,_loc5_);
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             this.§0!]§[param2] = _loc5_;
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                addr143:
                                                while(true)
                                                {
                                                   §§push(this.§]!0§);
                                                   addr155:
                                                   while(true)
                                                   {
                                                      §§pop().push(_loc5_);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr143);
                              }
                              while(!_loc6_);
                              
                           }
                           return _loc5_;
                           addr60:
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr90);
                     addr81:
                  }
                  §§goto(addr89);
               }
               §§goto(addr90);
            }
            this.§0!]§ = new Dictionary();
            §§goto(addr81);
         }
         §§goto(addr60);
      }
      
      public function §;!I§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §#<§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(this.§]!0§ == null)
            {
               while(true)
               {
                  this.§]!0§ = [];
                  addr69:
                  while(true)
                  {
                  }
               }
               addr66:
            }
            loop2:
            while(true)
            {
               if(this.§0!]§ != null)
               {
                  if(this.§0!]§[param2])
                  {
                     if(_loc7_ || param1)
                     {
                        throw new Error("File already exists: " + param2 + ". Please remove first.");
                     }
                     if(_loc7_)
                     {
                        if(!_loc8_)
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                           addr46:
                        }
                        else
                        {
                           §§goto(addr69);
                        }
                     }
                     else
                     {
                        break;
                        addr61:
                     }
                  }
                  break;
               }
               if(_loc7_)
               {
                  if(_loc7_)
                  {
                     this.§0!]§ = new Dictionary();
                  }
                  else
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr61);
            }
            var _loc6_:§#<§;
            (_loc6_ = new §#<§()).§<l§ = param2;
            if(!(_loc8_ && this))
            {
               _loc6_.§`i§(param3,param4,param5);
               loop3:
               while(true)
               {
                  if(param1 < this.§]!0§.length)
                  {
                     §§push(this.§]!0§);
                     if(_loc7_)
                     {
                        §§pop().splice(param1,0,_loc6_);
                        loop4:
                        while(true)
                        {
                           if(_loc7_ || param3)
                           {
                              if(_loc7_)
                              {
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 continue loop3;
                              }
                              addr143:
                              while(true)
                              {
                                 §§push(this.§]!0§);
                              }
                           }
                           addr157:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        return _loc6_;
                     }
                     while(true)
                     {
                        §§pop().push(_loc6_);
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr143);
               }
            }
            §§goto(addr157);
         }
         §§goto(addr46);
      }
      
      public function § >§(param1:uint) : §#<§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#<§ = null;
         if(_loc4_)
         {
            §§push(this.§]!0§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() == null);
               if(!(_loc3_ && this))
               {
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 §§push(this.§0!]§ == null);
                                 if(_loc4_ || this)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       addr71:
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             addr90:
                                             §§pop();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§goto(addr103);
                                             }
                                          }
                                          §§goto(addr103);
                                       }
                                       addr103:
                                       if(param1 < this.§]!0§.length)
                                       {
                                          addr106:
                                          _loc2_ = this.§]!0§[param1] as §#<§;
                                          §§goto(addr104);
                                       }
                                       §§goto(addr163);
                                    }
                                 }
                                 §§goto(addr90);
                              }
                              addr104:
                              if(_loc4_)
                              {
                                 if(_loc2_ == null)
                                 {
                                    addr163:
                                    return null;
                                 }
                                 if(!_loc3_)
                                 {
                                    this.§]!0§.splice(param1,1);
                                 }
                                 do
                                 {
                                    delete this.§0!]§[_loc2_.§<l§];
                                 }
                                 while(_loc3_ && param1);
                                 
                              }
                              return _loc2_;
                           }
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr90);
               }
               §§goto(addr103);
            }
            §§goto(addr106);
         }
         §§goto(addr103);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§[V§(param1))
         {
         }
         return this.§[V§ === this.§3!'§;
      }
      
      protected function §3!'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6^§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(_loc5_ || this)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc5_ || this)
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr98:
                  if(_loc5_)
                  {
                     §§push(§+L§);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this.§[V§ = this.§8!5§;
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
                                          this.§[V§ = this.§3!'§;
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                break;
                                             }
                                          }
                                          addr356:
                                          §§push(true);
                                          if(!_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr361);
                                          break;
                                       default:
                                          throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                    }
                                    this.§-&§ = new §#<§(this.§4c§);
                                    addr342:
                                    if(_loc5_)
                                    {
                                       §§goto(addr356);
                                    }
                                    else
                                    {
                                       addr360:
                                       §§push(false);
                                    }
                                    addr361:
                                    return §§pop();
                                    addr342:
                                 }
                              }
                              else
                              {
                                 addr189:
                                 §§push(2);
                                 if(_loc4_ && _loc3_)
                                 {
                                    addr248:
                                 }
                              }
                              §§goto(addr342);
                           }
                           else
                           {
                              §§push(§8y§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr135:
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(1);
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             addr225:
                                          }
                                       }
                                       else
                                       {
                                          addr286:
                                          §§push(6);
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             addr337:
                                          }
                                       }
                                       §§goto(addr342);
                                    }
                                    else
                                    {
                                       §§push(§2+§);
                                       if(_loc5_ || this)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc4_ && param1))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr189);
                                                }
                                                else
                                                {
                                                   addr327:
                                                   §§push(8);
                                                   if(!_loc4_)
                                                   {
                                                      addr330:
                                                      §§goto(addr342);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr337);
                                                   }
                                                }
                                                §§goto(addr342);
                                             }
                                             else
                                             {
                                                §§push(§?B§);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_ || this)
                                                   {
                                                      addr214:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(3);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr225);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr240:
                                                            §§push(4);
                                                            if(_loc4_ && param1)
                                                            {
                                                               addr312:
                                                            }
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      else
                                                      {
                                                         §§push(§2!b§);
                                                         if(!_loc4_)
                                                         {
                                                            addr229:
                                                            §§push(_loc3_);
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr240);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr263:
                                                                     §§push(5);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr252:
                                                                     §§push(_loc3_);
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        addr260:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr275:
                                                                              §§push(_loc3_);
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr327);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§=§);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       addr303:
                                                                                       §§push(_loc3_);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr306:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(7);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr312);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr330);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§[j§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr316:
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr319:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §§goto(addr327);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr334:
                                                                                                         §§push(9);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr337);
                                                                                                         }
                                                                                                         §§goto(addr342);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr332:
                                                                                                      §§push(§@+§);
                                                                                                      §§push(_loc3_);
                                                                                                   }
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr342);
                                                                                                   §§push(10);
                                                                                                }
                                                                                                §§goto(addr342);
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 §§goto(addr342);
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr275);
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         §§goto(addr316);
                                                      }
                                                   }
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr303);
                                             }
                                          }
                                          §§goto(addr319);
                                       }
                                       §§goto(addr229);
                                    }
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr252);
                           }
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr240);
                  addr98:
               }
               §§goto(addr98);
            }
            §§goto(addr360);
         }
         §§goto(addr98);
      }
      
      protected function §8!5§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§-&§);
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
                        §§push(this.§-&§);
                        addr166:
                        while(true)
                        {
                           §§push(§§pop().§^X§);
                           loop4:
                           while(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 this.§[]§();
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          if(this.§[V§ != this.§3!'§)
                                          {
                                             if(_loc3_)
                                             {
                                                this.§[V§ = this.§6^§;
                                             }
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(true);
                                                   continue loop0;
                                                }
                                                addr138:
                                                loop7:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§ !A§ = 0;
                                                      break loop6;
                                                   }
                                                   addr172:
                                                   while(true)
                                                   {
                                                      this.§#P§ = new ByteArray();
                                                      continue loop7;
                                                   }
                                                }
                                                this.§57§ = 0;
                                             }
                                             §§push(true);
                                             addr20:
                                          }
                                          while(true)
                                          {
                                             §§push(false);
                                             if(!(_loc3_ || param1))
                                             {
                                                break;
                                             }
                                             if(!(_loc2_ && param1))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          continue loop0;
                                          addr131:
                                          while(!_loc3_)
                                          {
                                             continue loop4;
                                             §§goto(addr131);
                                          }
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop4;
                                    }
                                    §§goto(addr138);
                                 }
                              }
                              continue loop1;
                           }
                           addr168:
                           while(true)
                           {
                              this.§[V§ = this.§?!8§;
                              §§goto(addr172);
                           }
                        }
                     }
                  }
                  §§goto(addr20);
               }
               while(_loc2_ && param1);
               
               return §§pop();
            }
            §§goto(addr166);
         }
         §§goto(addr168);
      }
      
      protected function §?!8§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:uint = 0;
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§ !A§);
                           if(!(_loc3_ && this))
                           {
                              §§push(8);
                              if(_loc4_ || _loc2_)
                              {
                                 addr128:
                                 §§push(§§pop() >>> §§pop());
                                 §§push(_loc2_ << 24);
                              }
                              §§pop().§ !A§ = §§pop() | §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(this.§ !A§);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == §=§)
                                 {
                                    continue;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    this.§#P§.writeByte(_loc2_);
                                    addr58:
                                    while(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          while(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       else
                                       {
                                          addr82:
                                       }
                                       continue loop3;
                                       return true;
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr107);
               }
               §§goto(addr58);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr149);
         }
      }
      
      protected function §?!5§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(!(_loc6_ && this))
         {
            if(param1.bytesAvailable < 12)
            {
               §§push(false);
               if(_loc5_)
               {
                  return §§pop();
               }
               addr40:
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
                  addr247:
                  while(true)
                  {
                     §§push(uint(param1.readUnsignedInt()));
                     loop3:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(uint(param1.readUnsignedInt()));
                           if(_loc6_)
                           {
                              continue loop3;
                           }
                           if(_loc6_)
                           {
                              continue loop1;
                           }
                           _loc4_ = §§pop();
                           if(this.§#P§.length != _loc3_)
                           {
                              this.§#P§.writeUnsignedInt(_loc2_);
                              this.§#P§.writeUnsignedInt(_loc3_);
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§-&§);
                                    loop7:
                                    for(; !_loc6_; §§push(this.§-&§),if(_loc6_)
                                    {
                                       continue;
                                    },if(_loc5_)
                                    {
                                       §§pop().§;!G§(this.§#P§);
                                       addr160:
                                       while(true)
                                       {
                                          this.§[]§();
                                          addr142:
                                          while(true)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                this.§[V§ = this.§6^§;
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr201);
                                          }
                                          if(_loc5_)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                       addr160:
                                    },§§goto(addr199))
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc5_ || param1))
                                       {
                                          continue loop6;
                                       }
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§pop().§;Z§ = §§pop();
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             continue;
                                          }
                                          addr208:
                                          while(true)
                                          {
                                             this.§#P§.position = 0;
                                             addr212:
                                             while(true)
                                             {
                                                §§push(this.§-&§);
                                                addr199:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().§8!$§ = §§pop();
                                          addr201:
                                          while(true)
                                          {
                                             §§push(this.§-&§);
                                             break loop7;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       continue loop6;
                                    }
                                 }
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr40);
                     }
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      protected function §[]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§]!0§.push(this.§-&§);
            do
            {
               if(this.§-&§.§<l§)
               {
                  while(true)
                  {
                     this.§0!]§[this.§-&§.§<l§] = this.§-&§;
                     addr84:
                     while(true)
                     {
                     }
                  }
                  addr66:
               }
               loop3:
               while(true)
               {
                  dispatchEvent(new §#x§(§#x§.§ !`§,this.§-&§));
                  while(!_loc2_)
                  {
                     this.§-&§ = null;
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        break loop3;
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr84);
               }
            }
            while(!_loc1_);
            
         }
      }
      
      protected function §^!S§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var evt:Event = param1;
         if(_loc5_)
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§1$§))
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.close();
                  if(_loc5_ || _loc3_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
         catch(e:Error)
         {
            if(_loc5_ || param1)
            {
               close();
            }
            while(hasEventListener(§4!"§.§!#§))
            {
               if(_loc4_)
               {
                  continue;
               }
               dispatchEvent(new §4!"§(§4!"§.§!#§,e.message));
            }
            throw e;
         }
      }
      
      protected function §#!7§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §&!;§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(_loc3_ && _loc2_);
         
      }
      
      protected function §]J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§1$§.addEventListener(Event.COMPLETE,this.§#!7§);
            while(true)
            {
               this.§1$§.addEventListener(Event.OPEN,this.§#!7§);
               while(!(_loc2_ && _loc2_))
               {
                  this.§1$§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!7§);
                  loop2:
                  for(; !(_loc2_ && _loc2_); while(_loc1_ || this)
                  {
                     this.§1$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!;§);
                     do
                     {
                        this.§1$§.addEventListener(ProgressEvent.PROGRESS,this.§^!S§);
                     }
                     while(!_loc1_);
                     
                     if(_loc1_)
                     {
                        return;
                     }
                  })
                  {
                     while(true)
                     {
                        this.§1$§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!;§);
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §'!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1$§.removeEventListener(Event.COMPLETE,this.§#!7§);
            loop0:
            while(true)
            {
               this.§1$§.removeEventListener(Event.OPEN,this.§#!7§);
               while(true)
               {
                  this.§1$§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!7§);
                  addr70:
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        this.§1$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!;§);
                        while(_loc1_ || this)
                        {
                           this.§1$§.removeEventListener(ProgressEvent.PROGRESS,this.§^!S§);
                           if(_loc1_)
                           {
                              return;
                           }
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr70);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§1$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!;§);
                                 continue loop3;
                              }
                              addr88:
                           }
                        }
                        addr42:
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr88);
      }
   }
}
