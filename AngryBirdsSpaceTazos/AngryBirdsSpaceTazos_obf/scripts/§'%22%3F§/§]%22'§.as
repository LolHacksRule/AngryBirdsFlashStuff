package §'"?§
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
   
   public class §]"'§ extends EventDispatcher
   {
      
      static const §@4§:uint = 33639248;
      
      static const §&!N§:uint = 808471376;
      
      static const §^o§:uint = 67324752;
      
      static const §1"2§:uint = 84233040;
      
      static const §3!5§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-2§:uint = 134695760;
      
      static const §import§:uint = 134630224;
      
      static const §"!a§:uint = 134695760;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §]"'§)
         {
            §@4§ = 33639248;
            loop0:
            while(true)
            {
               §&!N§ = 808471376;
               loop1:
               while(true)
               {
                  §^o§ = 67324752;
                  loop2:
                  while(true)
                  {
                     §1"2§ = 84233040;
                     loop3:
                     while(true)
                     {
                        §3!5§ = 101010256;
                        while(_loc1_)
                        {
                           SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                           loop5:
                           while(_loc1_)
                           {
                              SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                              loop6:
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §-2§ = 134695760;
                                    loop7:
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          §import§ = 134630224;
                                          while(!(_loc2_ && _loc2_))
                                          {
                                             continue loop6;
                                             §"!a§ = 134695760;
                                             if(_loc1_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       return;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected var §9!V§:Array;
      
      protected var §<$§:Dictionary;
      
      protected var §!!V§:URLStream;
      
      protected var §3"-§:String;
      
      protected var §@!V§:Function;
      
      protected var §8!O§:§]"!§;
      
      protected var §?!7§:ByteArray;
      
      protected var §=3§:uint;
      
      protected var §!!e§:uint;
      
      public function §]"'§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§3"-§ = param1;
               do
               {
                  this.§@!V§ = this.§;5§;
               }
               while(!(_loc3_ || param1));
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function get §`^§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§@!V§ === this.§;5§);
         if(!_loc2_)
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
            §§push(!this.§!!V§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop6:
                     while(true)
                     {
                        §§push(this.§@!V§ == this.§;5§);
                        if(!_loc2_)
                        {
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§!!V§ = new URLStream();
                                 loop2:
                                 while(true)
                                 {
                                    this.§!!V§.endian = Endian.LITTLE_ENDIAN;
                                    loop3:
                                    for(; _loc3_ || _loc3_; if(_loc2_ && param1)
                                    {
                                       continue;
                                    },§§goto(addr60))
                                    {
                                       this.§8W§();
                                       loop4:
                                       while(true)
                                       {
                                          if(!(_loc3_ || param1))
                                          {
                                             continue loop6;
                                          }
                                          this.§9!V§ = [];
                                          loop7:
                                          while(true)
                                          {
                                             this.§<$§ = new Dictionary();
                                             loop8:
                                             while(_loc3_)
                                             {
                                                this.§@!V§ = this.§4!R§;
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                   addr60:
                                                   this.§!!V§.load(param1);
                                                   if(_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           return;
                           addr117:
                        }
                        break;
                     }
                  }
                  addr141:
               }
               §§goto(addr117);
            }
            §§goto(addr141);
         }
         §§goto(addr83);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(!this.§!!V§);
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     while(true)
                     {
                        this.§9!V§ = [];
                        loop6:
                        while(true)
                        {
                           this.§<$§ = new Dictionary();
                           addr147:
                           while(true)
                           {
                              param1.position = 0;
                              continue loop6;
                           }
                        }
                     }
                  }
                  return;
                  addr163:
               }
               §§goto(addr184);
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr163);
            }
         }
         §§goto(addr165);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§!!V§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§@!V§ = this.§;5§;
                  do
                  {
                     this.§8!p§();
                     do
                     {
                        this.§!!V§.close();
                        do
                        {
                           this.§!!V§ = null;
                        }
                        while(_loc2_);
                        
                     }
                     while(_loc2_);
                     
                  }
                  while(_loc2_);
                  
                  addr77:
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function §?l§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§]"!§ = null;
         if(_loc11_ || param2)
         {
            §§push(param1 == null);
            if(!_loc10_)
            {
               §§push(!§§pop());
               if(_loc11_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc11_ || param1)
                     {
                        addr63:
                        §§pop();
                        if(_loc11_)
                        {
                           addr71:
                           if(this.§9!V§.length > 0)
                           {
                              if(_loc11_)
                              {
                                 _loc3_ = param1.endian;
                                 addr78:
                                 _loc4_ = new ByteArray();
                                 if(_loc11_ || param1)
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
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr118:
                                                   while(_loc11_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      if(_loc11_ || this)
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(_loc11_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc10_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            while(false)
                                                            {
                                                               continue loop3;
                                                            }
                                                            loop8:
                                                            while(_loc7_ < this.§9!V§.length)
                                                            {
                                                               if((_loc8_ = this.§9!V§[_loc7_] as §]"!§) != null)
                                                               {
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     _loc8_.§?l§(_loc4_,param2,true,_loc5_);
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push(§§pop() + _loc8_.§?l§(param1,param2));
                                                                           while(true)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              addr209:
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc10_ && param2)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr218:
                                                                              _loc6_ = uint(§§pop());
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 addr181:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_++;
                                                                                    if(!(_loc11_ || param1))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr189:
                                                                                    if(_loc11_ || _loc3_)
                                                                                    {
                                                                                       while(false)
                                                                                       {
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(_loc11_ || this)
                                                                                                {
                                                                                                   §§goto(addr209);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      addr235:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                   }
                                                                                                   addr234:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                          §§goto(addr189);
                                                                                       }
                                                                                       continue loop8;
                                                                                       addr196:
                                                                                    }
                                                                                    §§goto(addr235);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr234);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               if(_loc4_.length > 0)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     param1.writeBytes(_loc4_);
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        addr353:
                                                                        param1.writeUnsignedInt(§3!5§);
                                                                        while(true)
                                                                        {
                                                                           param1.writeShort(0);
                                                                        }
                                                                        addr356:
                                                                        addr259:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param1.writeShort(0);
                                                                        loop17:
                                                                        for(; _loc11_ || this; loop19:
                                                                        while(_loc11_ || _loc3_)
                                                                        {
                                                                           param1.writeUnsignedInt(_loc4_.length);
                                                                           while(true)
                                                                           {
                                                                              param1.writeUnsignedInt(_loc5_);
                                                                              loop21:
                                                                              for(; _loc11_ || this; if(_loc10_ && this)
                                                                              {
                                                                                 continue;
                                                                              },if(false)
                                                                              {
                                                                                 §§goto(addr280);
                                                                              },§§goto(addr357))
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          param1.writeShort(0);
                                                                                          loop23:
                                                                                          while(!_loc10_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param1.endian = _loc3_;
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       addr280:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr325);
                                                                                 }
                                                                              }
                                                                           }
                                                                        })
                                                                        {
                                                                           param1.writeShort(_loc6_);
                                                                           while(true)
                                                                           {
                                                                              param1.writeShort(_loc6_);
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc11_)
                                       {
                                          §§goto(addr106);
                                       }
                                       §§goto(addr118);
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr357);
                        }
                        §§goto(addr78);
                     }
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr63);
         }
         §§goto(addr71);
      }
      
      public function §<!k§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§9!V§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  addr55:
                  §§push(uint(this.§9!V§.length));
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
         §§goto(addr55);
      }
      
      public function §7&§(param1:uint) : §]"!§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§9!V§);
            if(_loc3_ || _loc2_)
            {
               return !!§§pop() ? this.§9!V§[param1] as §]"!§ : null;
            }
         }
         §§goto(addr51);
      }
      
      public function §["2§(param1:String) : §]"!§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            return !!this.§<$§[param1] ? this.§<$§[param1] as §]"!§ : null;
         }
         §§goto(addr33);
      }
      
      public function §2!I§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §]"!§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(_loc5_ || param2)
         {
            §§push(this.§9!V§);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  addr47:
                  §§push(uint(this.§9!V§.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§;!w§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr47);
      }
      
      public function §"!E§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §]"!§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(!(_loc6_ && this))
         {
            §§push(this.§9!V§);
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  addr46:
                  §§push(uint(this.§9!V§.length));
                  if(_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§;-§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr46);
      }
      
      public function §;!w§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §]"!§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§9!V§ == null)
            {
               while(true)
               {
                  this.§9!V§ = [];
                  addr89:
                  while(true)
                  {
                  }
                  addr64:
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  addr90:
                  var _loc5_:§]"!§;
                  (_loc5_ = new §]"!§()).§0^§ = param2;
                  if(!_loc7_)
                  {
                     _loc5_.§`!5§(param3,param4);
                     loop2:
                     while(true)
                     {
                        if(param1 >= this.§9!V§.length)
                        {
                           if(_loc6_)
                           {
                              addr170:
                              this.§9!V§.push(_loc5_);
                           }
                           loop4:
                           while(true)
                           {
                              addr105:
                              while(true)
                              {
                                 this.§<$§[param2] = _loc5_;
                                 if(_loc7_ && param2)
                                 {
                                    while(true)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                    addr135:
                                 }
                                 return _loc5_;
                              }
                           }
                           addr172:
                        }
                        else
                        {
                           §§push(this.§9!V§);
                           if(_loc6_ || param2)
                           {
                              §§pop().splice(param1,0,_loc5_);
                              §§goto(addr135);
                           }
                           else
                           {
                              §§goto(addr170);
                           }
                        }
                        §§goto(addr170);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr105);
                  }
               }
            }
            while(true)
            {
               if(this.§<$§ != null)
               {
                  if(this.§<$§[param2])
                  {
                     if(_loc6_ || param2)
                     {
                        if(!(_loc7_ && param1))
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        §§goto(addr64);
                     }
                     else
                     {
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr89);
                     }
                  }
                  break;
               }
               if(!_loc7_)
               {
                  this.§<$§ = new Dictionary();
               }
               §§goto(addr64);
            }
            §§goto(addr90);
         }
         §§goto(addr89);
      }
      
      public function §;-§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §]"!§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            if(this.§9!V§ == null)
            {
               addr86:
               while(true)
               {
                  this.§9!V§ = [];
                  addr89:
                  while(true)
                  {
                  }
               }
               addr86:
            }
            while(true)
            {
               if(this.§<$§ != null)
               {
                  if(this.§<$§[param2])
                  {
                     if(!_loc8_)
                     {
                        if(_loc7_ || param2)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        addr69:
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        if(_loc7_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        addr58:
                        if(_loc7_ || param1)
                        {
                           this.§<$§ = new Dictionary();
                           §§goto(addr69);
                        }
                        else
                        {
                           §§goto(addr86);
                        }
                     }
                     §§goto(addr89);
                  }
                  break;
               }
               §§goto(addr58);
            }
            var _loc6_:§]"!§;
            (_loc6_ = new §]"!§()).§0^§ = param2;
            if(!_loc8_)
            {
               _loc6_.§@7§(param3,param4,param5);
               loop1:
               while(true)
               {
                  if(param1 < this.§9!V§.length)
                  {
                     §§push(this.§9!V§);
                     if(!_loc8_)
                     {
                        §§pop().splice(param1,0,_loc6_);
                        while(true)
                        {
                           if(!(_loc7_ || this))
                           {
                              continue loop1;
                           }
                           if(!_loc8_)
                           {
                              continue;
                           }
                           addr146:
                           while(true)
                           {
                              §§push(this.§9!V§);
                           }
                        }
                        return _loc6_;
                        addr118:
                     }
                     while(true)
                     {
                        §§pop().push(_loc6_);
                        continue loop1;
                     }
                  }
                  §§goto(addr146);
               }
            }
            §§goto(addr118);
         }
         §§goto(addr86);
      }
      
      public function §2!c§(param1:uint) : §]"!§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]"!§ = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§9!V§);
            if(!_loc3_)
            {
               §§push(§§pop() == null);
               if(!(_loc3_ && this))
               {
                  §§push(!§§pop());
                  if(_loc4_ || this)
                  {
                     addr48:
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 §§push(this.§<$§ == null);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                       addr86:
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr95:
                                             §§pop();
                                             if(_loc3_ && param1)
                                             {
                                             }
                                             _loc2_ = this.§9!V§[param1] as §]"!§;
                                             §§goto(addr109);
                                          }
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr108);
                              }
                              addr108:
                              if(§§pop())
                              {
                                 addr109:
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ != null)
                                    {
                                       while(true)
                                       {
                                          this.§9!V§.splice(param1,1);
                                          §§goto(addr167);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr168);
                                    }
                                 }
                                 addr167:
                                 while(true)
                                 {
                                    delete this.§<$§[_loc2_.§0^§];
                                    if(!(_loc3_ && this))
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 return _loc2_;
                              }
                              addr168:
                              return null;
                              §§push(param1 < this.§9!V§.length);
                           }
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr108);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr95);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§@!V§(param1))
         {
         }
         return this.§@!V§ === this.§;5§;
      }
      
      protected function §;5§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §4!R§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:uint = 0;
         if(!_loc5_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(!_loc5_)
               {
                  addr83:
                  _loc2_ = param1.readUnsignedInt();
               }
               var _loc3_:* = _loc2_;
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§^o§);
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     if(_loc4_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(0);
                              if(!_loc4_)
                              {
                                 addr156:
                              }
                           }
                           else
                           {
                              addr323:
                              §§push(9);
                              if(_loc4_)
                              {
                                 addr326:
                              }
                           }
                           addr331:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§@!V§ = this.§8P§;
                                 this.§8!O§ = new §]"!§(this.§3"-§);
                                 if(_loc4_ || this)
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
                                 this.§@!V§ = this.§;5§;
                                 if(!_loc5_)
                                 {
                                    break;
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
                           §§goto(addr355);
                        }
                        else
                        {
                           §§push(§@4§);
                           if(_loc4_)
                           {
                              addr119:
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(1);
                                       if(!_loc4_)
                                       {
                                          addr296:
                                       }
                                    }
                                    else
                                    {
                                       addr209:
                                       §§push(4);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§3!5§);
                                    if(_loc4_ || this)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr145:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_ || this)
                                             {
                                                addr153:
                                                §§push(2);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr331);
                                             }
                                             else
                                             {
                                                addr311:
                                                §§push(8);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr319:
                                                   §§goto(addr331);
                                                }
                                                else
                                                {
                                                   §§goto(addr326);
                                                }
                                             }
                                             §§goto(addr331);
                                          }
                                          else
                                          {
                                             §§push(§&!N§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(_loc3_);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(3);
                                                         if(_loc5_ && this)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr227:
                                                         §§push(5);
                                                         if(_loc5_ && param1)
                                                         {
                                                            addr268:
                                                         }
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   else
                                                   {
                                                      §§push(§1"2§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr209);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr311);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                               if(_loc4_)
                                                               {
                                                                  addr216:
                                                                  §§push(_loc3_);
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     addr224:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr227);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr311);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           addr244:
                                                                           §§push(_loc3_);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr311);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§-2§);
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    addr277:
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(7);
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§import§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr303:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr323);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§"!a§);
                                                                                                }
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             addr322:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr331);
                                                                                                §§push(10);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr322);
                                                                                 §§push(_loc3_);
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                }
                                                §§goto(addr303);
                                             }
                                             §§goto(addr216);
                                          }
                                       }
                                       §§goto(addr322);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr331);
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr323);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr119);
               }
               §§goto(addr153);
            }
            else
            {
               §§push(false);
            }
            addr355:
            return §§pop();
         }
         §§goto(addr83);
      }
      
      protected function §8P§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§8!O§);
            if(_loc3_)
            {
               §§push(§§pop().parse(param1));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§8!O§);
                        loop4:
                        while(!(_loc2_ && _loc3_))
                        {
                           if(this.§@!V§ == this.§;5§)
                           {
                              do
                              {
                                 §§push(false);
                              }
                              while(!_loc3_);
                              
                              return §§pop();
                              addr20:
                           }
                           if(_loc3_ || _loc3_)
                           {
                              this.§@!V§ = this.§4!R§;
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 §§push(true);
                                 while(!(_loc3_ || param1))
                                 {
                                    while(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§&"C§();
                                          continue loop4;
                                       }
                                       this.§@!V§ = this.§0X§;
                                    }
                                 }
                                 return §§pop();
                                 addr29:
                              }
                              this.§?!7§ = new ByteArray();
                              this.§=3§ = 0;
                           }
                           this.§!!e§ = 0;
                           §§goto(addr113);
                           §§push(true);
                           §§goto(addr29);
                        }
                     }
                     addr159:
                  }
                  §§goto(addr20);
               }
            }
            while(true)
            {
               §§goto(addr162);
               §§goto(addr159);
            }
         }
         §§goto(addr20);
      }
      
      protected function §0X§(param1:IDataInput) : Boolean
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
                  if(_loc3_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              §§push(false);
                              if(_loc3_ || _loc2_)
                              {
                                 return §§pop();
                              }
                              addr93:
                              return §§pop();
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§=3§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(8);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr137:
                                    §§push(§§pop() >>> §§pop());
                                    §§push(_loc2_ << 24);
                                 }
                                 §§pop().§=3§ = §§pop() | §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§=3§);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop() == §-2§)
                                    {
                                       addr108:
                                       this.§?!7§.length -= 3;
                                       this.§@!V§ = this.§-"=§;
                                       break loop0;
                                       addr116:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       this.§?!7§.writeByte(_loc2_);
                                       addr66:
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr137);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr116);
                  }
                  break;
               }
               §§goto(addr66);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr158);
         }
         §§goto(addr93);
         §§push(true);
      }
      
      protected function §-"=§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(!(_loc6_ && param1))
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
                     loop2:
                     while(true)
                     {
                        §§push(uint(param1.readUnsignedInt()));
                        loop3:
                        while(!(_loc6_ && param1))
                        {
                           _loc3_ = §§pop();
                           while(_loc5_)
                           {
                              §§push(uint(param1.readUnsignedInt()));
                              if(!_loc6_)
                              {
                                 _loc4_ = §§pop();
                                 if(this.§?!7§.length == _loc3_)
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       this.§?!7§.position = 0;
                                       addr220:
                                       while(true)
                                       {
                                          §§push(this.§8!O§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             loop10:
                                             while(true)
                                             {
                                                §§pop().§%0§ = §§pop();
                                                addr202:
                                                while(true)
                                                {
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      continue loop18;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§8!O§);
                                                      addr183:
                                                      addr193:
                                                      addr194:
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc6_ && _loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(_loc3_);
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break loop15;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      §§pop().§2!p§ = §§pop();
                                                      while(!_loc6_)
                                                      {
                                                         §§push(this.§8!O§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().§5!M§ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§8!O§);
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc6_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().§&S§(this.§?!7§);
                                                                  continue loop0;
                                                               }
                                                               continue loop12;
                                                               addr171:
                                                               this.§&"C§();
                                                               do
                                                               {
                                                                  this.§@!V§ = this.§4!R§;
                                                               }
                                                               while(!(_loc5_ || _loc3_));
                                                               
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr42:
                                                                  return true;
                                                                  addr40:
                                                               }
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr191);
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 this.§?!7§.writeUnsignedInt(_loc2_);
                                 while(!(_loc6_ && _loc3_))
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          this.§?!7§.writeUnsignedInt(_loc3_);
                                          while(true)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr40);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr194);
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr40);
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc5_)
               {
                  return §§pop();
               }
            }
            §§goto(addr42);
         }
         §§goto(addr209);
      }
      
      protected function §&"C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9!V§.push(this.§8!O§);
            loop0:
            while(true)
            {
               if(this.§8!O§.§0^§)
               {
                  continue;
               }
               loop3:
               while(true)
               {
                  dispatchEvent(new §#";§(§#";§.§9"'§,this.§8!O§));
                  while(!_loc2_)
                  {
                     this.§8!O§ = null;
                     if(_loc1_ || this)
                     {
                        addr34:
                        if(!(_loc2_ && this))
                        {
                           break loop3;
                        }
                        continue loop0;
                     }
                  }
                  addr94:
                  while(true)
                  {
                     continue loop3;
                  }
               }
            }
         }
      }
      
      protected function §]y§(param1:Event) : void
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
            if(this.parse(this.§!!V§))
            {
               if(!(_loc5_ && _loc2_))
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
            var _loc3_:* = e;
            if(_loc4_ || _loc3_)
            {
               close();
               do
               {
                  if(!hasEventListener(§-!!§.§6H§))
                  {
                     throw e;
                  }
               }
               while(_loc5_);
               
            }
            dispatchEvent(new §-!!§(§-!!§.§6H§,e.message));
         }
      }
      
      protected function §6"F§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §4!v§(param1:Event) : void
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
         while(!_loc2_);
         
      }
      
      protected function §8W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§!!V§.addEventListener(Event.COMPLETE,this.§6"F§);
            while(true)
            {
               this.§!!V§.addEventListener(Event.OPEN,this.§6"F§);
               §§goto(addr107);
            }
         }
         addr107:
         while(true)
         {
            this.§!!V§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6"F§);
            do
            {
               this.§!!V§.addEventListener(IOErrorEvent.IO_ERROR,this.§4!v§);
               do
               {
                  this.§!!V§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!v§);
                  do
                  {
                     this.§!!V§.addEventListener(ProgressEvent.PROGRESS,this.§]y§);
                  }
                  while(_loc2_ && _loc1_);
                  
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §8!p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§!!V§.removeEventListener(Event.COMPLETE,this.§6"F§);
            loop0:
            while(true)
            {
               this.§!!V§.removeEventListener(Event.OPEN,this.§6"F§);
               loop1:
               while(true)
               {
                  this.§!!V§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6"F§);
                  loop2:
                  while(!_loc1_)
                  {
                     this.§!!V§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!v§);
                     loop3:
                     do
                     {
                        this.§!!V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!v§);
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              this.§!!V§.removeEventListener(ProgressEvent.PROGRESS,this.§]y§);
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     while(_loc1_ && this);
                     
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
