package §9!3§
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
   
   public class §=!6§ extends EventDispatcher
   {
      
      static const §=9§:uint = 33639248;
      
      static const §8L§:uint = 808471376;
      
      static const §%c§:uint = 67324752;
      
      static const §8"§:uint = 84233040;
      
      static const §<B§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §?V§:uint = 134695760;
      
      static const §?!5§:uint = 134630224;
      
      static const §[!§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §8L§ = 808471376;
            loop1:
            while(true)
            {
               §%c§ = 67324752;
               addr120:
               while(true)
               {
                  §8"§ = 84233040;
                  §<B§ = 101010256;
                  SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                  addr105:
                  while(true)
                  {
                     SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                     continue loop1;
                     addr59:
                     if(!(_loc1_ && §=!6§))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected var §catch§:Array;
      
      protected var §`Y§:Dictionary;
      
      protected var §4!G§:URLStream;
      
      protected var §'!1§:String;
      
      protected var § N§:Function;
      
      protected var §=1§:§;G§;
      
      protected var §6K§:ByteArray;
      
      protected var §,!§:uint;
      
      protected var §`8§:uint;
      
      public function §=!6§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§'!1§ = param1;
               do
               {
                  this.§ N§ = this.§+'§;
               }
               while(_loc3_ && this);
               
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function get active() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§ N§ === this.§+'§);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!this.§4!G§);
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               while(§§pop())
               {
                  this.§4!G§ = new URLStream();
                  this.§4!G§.endian = Endian.LITTLE_ENDIAN;
                  this.§ L§();
                  this.§catch§ = [];
                  this.§`Y§ = new Dictionary();
                  loop4:
                  do
                  {
                     this.§ N§ = this.§`!@§;
                     while(!(_loc2_ && this))
                     {
                        this.§4!G§.load(param1);
                        if(_loc3_ || _loc3_)
                        {
                           continue loop4;
                        }
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§ N§ == this.§+'§);
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        addr124:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(!_loc3_);
                  
                  break;
               }
               return;
               addr112:
            }
            §§goto(addr124);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!this.§4!G§);
         if(!_loc2_)
         {
            if(§§pop())
            {
               while(true)
               {
                  §§pop();
                  §§push(this.§ N§ == this.§+'§);
               }
               addr132:
            }
            loop0:
            while(true)
            {
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§catch§ = [];
                     this.§`Y§ = new Dictionary();
                     loop3:
                     do
                     {
                        param1.position = 0;
                        while(_loc3_)
                        {
                           param1.endian = Endian.LITTLE_ENDIAN;
                           this.§ N§ = this.§`!@§;
                           while(true)
                           {
                              §§push(this.parse(param1));
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       continue;
                                    }
                                    dispatchEvent(new §-Q§(§-Q§.§=!>§,"EOF"));
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           break loop1;
                        }
                        continue loop2;
                     }
                     while(!_loc3_);
                     
                     break loop1;
                  }
               }
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
            if(this.§4!G§)
            {
               loop0:
               while(true)
               {
                  this.§ N§ = this.§+'§;
                  while(true)
                  {
                     this.§@!0§();
                     while(_loc2_ || _loc1_)
                     {
                        continue loop0;
                        this.§4!G§.close();
                        do
                        {
                           this.§4!G§ = null;
                        }
                        while(_loc1_ && this);
                        
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr20);
                        }
                     }
                  }
               }
               addr89:
            }
            addr20:
            return;
         }
         §§goto(addr89);
      }
      
      public function §"`§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:int = 0;
         var _loc8_:§;G§ = null;
         if(_loc10_)
         {
            §§push(param1 == null);
            if(!(_loc11_ && param2))
            {
               §§push(!§§pop());
               if(_loc10_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§pop();
                        addr77:
                        if(!(_loc11_ && _loc3_))
                        {
                           §§push(this.§catch§.length > 0);
                        }
                        _loc4_ = new ByteArray();
                        if(_loc10_ || this)
                        {
                           param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                           if(_loc10_)
                           {
                              §§push(0);
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr133:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                 }
                              }
                              addr132:
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    §§push(uint(§§pop()));
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    _loc6_ = §§pop();
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc11_ && this)
                                       {
                                          break;
                                       }
                                       if(!_loc11_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                                 §§goto(addr133);
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(_loc10_)
               {
                  _loc3_ = param1.endian;
               }
               §§goto(addr77);
            }
            §§goto(addr311);
         }
         §§goto(addr77);
      }
      
      public function §#!,§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§catch§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  addr45:
                  §§push(uint(this.§catch§.length));
                  if(_loc2_ && _loc1_)
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
      
      public function §1!D§(param1:uint) : §;G§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§catch§);
            if(!(_loc2_ && this))
            {
               return !!§§pop() ? this.§catch§[param1] as §;G§ : null;
            }
         }
         §§goto(addr46);
      }
      
      public function §`j§(param1:String) : §;G§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            return !!this.§`Y§[param1] ? this.§`Y§[param1] as §;G§ : null;
         }
         §§goto(addr39);
      }
      
      public function §98§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §;G§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         if(!_loc5_)
         {
            §§push(this.§catch§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  addr36:
                  §§push(uint(this.§catch§.length));
                  if(_loc4_ || param3)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§!f§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr36);
      }
      
      public function §"P§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §;G§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(_loc5_)
         {
            §§push(this.§catch§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  addr36:
                  §§push(uint(this.§catch§.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§"§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr36);
      }
      
      public function §!f§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §;G§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(this.§catch§ == null)
         {
            this.§catch§ = [];
         }
         if(this.§`Y§ == null)
         {
            if(_loc6_ || param2)
            {
               this.§`Y§ = new Dictionary();
            }
            addr53:
         }
         else if(this.§`Y§[param2])
         {
            if(_loc6_)
            {
               throw new Error("File already exists: " + param2 + ". Please remove first.");
            }
            §§goto(addr53);
         }
         var _loc5_:§;G§;
         (_loc5_ = new §;G§()).§;V§ = param2;
         if(_loc6_)
         {
            _loc5_.§?l§(param3,param4);
            loop0:
            while(true)
            {
               if(param1 >= this.§catch§.length)
               {
                  if(!_loc7_)
                  {
                     addr137:
                     this.§catch§.push(_loc5_);
                  }
                  loop2:
                  while(true)
                  {
                     addr87:
                     while(true)
                     {
                        this.§`Y§[param2] = _loc5_;
                        if(!_loc7_)
                        {
                           return _loc5_;
                           addr95:
                        }
                        addr117:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
                  addr139:
               }
               else
               {
                  §§push(this.§catch§);
                  if(_loc6_)
                  {
                     §§pop().splice(param1,0,_loc5_);
                     §§goto(addr117);
                  }
                  else
                  {
                     §§goto(addr137);
                  }
               }
               §§goto(addr137);
            }
         }
         §§goto(addr95);
      }
      
      public function §"§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §;G§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(this.§catch§ == null)
         {
            this.§catch§ = [];
         }
         if(this.§`Y§ != null)
         {
            if(this.§`Y§[param2])
            {
               if(_loc7_ || param2)
               {
                  throw new Error("File already exists: " + param2 + ". Please remove first.");
               }
               addr49:
               this.§`Y§ = new Dictionary();
            }
            var _loc6_:§;G§;
            (_loc6_ = new §;G§()).§;V§ = param2;
            if(!_loc8_)
            {
               _loc6_.§;!#§(param3,param4,param5);
               loop0:
               while(true)
               {
                  if(param1 < this.§catch§.length)
                  {
                     §§push(this.§catch§);
                     if(_loc7_ || param1)
                     {
                        §§pop().splice(param1,0,_loc6_);
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              this.§`Y§[param2] = _loc6_;
                              if(_loc8_)
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    return _loc6_;
                                 }
                                 addr133:
                                 while(true)
                                 {
                                    §§push(this.§catch§);
                                    addr135:
                                    while(true)
                                    {
                                       §§pop().push(_loc6_);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr139);
         }
         §§goto(addr49);
      }
      
      public function §!!D§(param1:uint) : §;G§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;G§ = null;
         if(!(_loc3_ && param1))
         {
            §§push(this.§catch§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() != null);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(this.§`Y§ == null);
                           if(_loc4_ || _loc3_)
                           {
                              addr70:
                              §§push(!§§pop());
                              if(!§§pop())
                              {
                                 §§goto(addr72);
                              }
                           }
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr70);
               }
               addr72:
               §§pop();
               if(_loc4_)
               {
                  addr80:
                  if(param1 < this.§catch§.length)
                  {
                     addr83:
                     _loc2_ = this.§catch§[param1] as §;G§;
                     §§goto(addr81);
                  }
                  §§goto(addr140);
               }
               addr81:
               if(_loc4_ || this)
               {
                  if(_loc2_ == null)
                  {
                     addr140:
                     return null;
                  }
               }
               this.§catch§.splice(param1,1);
               delete this.§`Y§[_loc2_.§;V§];
               return _loc2_;
            }
            §§goto(addr83);
         }
         §§goto(addr80);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§ N§(param1))
         {
         }
         return this.§ N§ === this.§+'§;
      }
      
      protected function §+'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §`!@§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:uint = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(param1.bytesAvailable >= 4)
            {
               if(!(_loc5_ && this))
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr97:
                  if(!_loc5_)
                  {
                     if(§%c§ === _loc3_)
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(!(_loc4_ || this))
                           {
                              addr134:
                           }
                        }
                        else
                        {
                           addr270:
                           §§push(9);
                        }
                        addr276:
                        switch(§§pop())
                        {
                           case 0:
                              this.§ N§ = this.§+!C§;
                              if(!(_loc4_ || param1))
                              {
                                 break;
                              }
                              this.§=1§ = new §;G§(this.§'!1§);
                              addr285:
                              §§push(true);
                              if(!(_loc5_ && _loc3_))
                              {
                                 return §§pop();
                              }
                              §§goto(addr295);
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
                              this.§ N§ = this.§+'§;
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr285);
                              break;
                           default:
                              throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                        }
                        addr295:
                        return §§pop();
                        §§push(false);
                     }
                     else
                     {
                        §§push(§=9§);
                        if(!_loc5_)
                        {
                           if(§§pop() === _loc3_)
                           {
                              §§goto(addr276);
                              §§push(!_loc5_ ? 1 : 8);
                           }
                           else
                           {
                              if(§<B§ === _loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(2);
                                    if(_loc4_)
                                    {
                                       §§goto(addr134);
                                    }
                                    else
                                    {
                                       addr179:
                                    }
                                 }
                                 else
                                 {
                                    addr194:
                                    §§push(5);
                                 }
                              }
                              else
                              {
                                 §§push(§8L§);
                                 if(_loc4_)
                                 {
                                    if(§§pop() === _loc3_)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§goto(addr276);
                                          §§push(3);
                                       }
                                       else
                                       {
                                          §§goto(addr194);
                                       }
                                       §§goto(addr276);
                                    }
                                    else
                                    {
                                       §§push(§8"§);
                                       if(_loc4_ || this)
                                       {
                                          addr167:
                                          if(§§pop() === _loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                addr171:
                                                §§push(4);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§goto(addr179);
                                                }
                                                else
                                                {
                                                   addr237:
                                                   §§goto(addr276);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr270);
                                             }
                                             §§goto(addr276);
                                          }
                                          else
                                          {
                                             §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                             if(!_loc5_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§goto(addr194);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr270);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr204:
                                                         §§push(_loc3_);
                                                         if(_loc4_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§goto(addr276);
                                                                  §§push(6);
                                                               }
                                                               else
                                                               {
                                                                  addr234:
                                                                  §§push(7);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            else
                                                            {
                                                               §§push(§?V§);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  addr225:
                                                                  §§push(_loc3_);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr233:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§goto(addr234);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§?!5§);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr246:
                                                                           §§push(_loc3_);
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              addr254:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 §§goto(addr255);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr268:
                                                                                 §§push(§[!§);
                                                                                 §§push(_loc3_);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              §§goto(addr270);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr276);
                                                                              §§push(10);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr233);
                                             }
                                             §§goto(addr268);
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr270);
                  }
                  §§goto(addr171);
                  addr97:
               }
               §§goto(addr97);
            }
            §§goto(addr276);
         }
         §§goto(addr97);
      }
      
      protected function §+!C§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§=1§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().parse(param1));
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§=1§);
                        addr135:
                        while(true)
                        {
                           §§push(§§pop().§-!C§);
                           addr136:
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 do
                                 {
                                    this.§^!=§();
                                 }
                                 while(_loc3_);
                                 
                                 addr71:
                                 if(this.§ N§ == this.§+'§)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc2_ || _loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr71);
                                    }
                                    return §§pop();
                                    addr24:
                                 }
                                 if(!_loc3_)
                                 {
                                    addr66:
                                    this.§ N§ = this.§`!@§;
                                    §§push(true);
                                 }
                                 continue loop0;
                                 while(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop3;
                                    §§goto(addr66);
                                 }
                                 addr79:
                                 return §§pop();
                              }
                              while(true)
                              {
                                 this.§ N§ = this.§"!4§;
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr24);
               }
               §§goto(addr136);
            }
            §§goto(addr135);
         }
         §§goto(addr137);
      }
      
      protected function §"!4§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push(false);
                  if(!(_loc3_ && param1))
                  {
                     return §§pop();
                  }
                  break;
               }
               while(!(_loc4_ || param1))
               {
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_ || param1)
                        {
                           §§push(true);
                           break loop0;
                        }
                        addr141:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§,!§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(8);
                              if(!_loc3_)
                              {
                                 addr129:
                                 §§push(§§pop() >>> §§pop());
                                 §§push(_loc2_ << 24);
                              }
                              §§pop().§,!§ = §§pop() | §§pop();
                              §§push(this.§,!§);
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr129);
                        }
                        if(§§pop() != §?V§)
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           this.§6K§.length -= 3;
                        }
                     }
                     this.§ N§ = this.§+%§;
                  }
                  this.§6K§.writeByte(_loc2_);
               }
               continue;
            }
            §§push(uint(param1.readUnsignedByte()));
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr141);
            }
         }
         return §§pop();
      }
      
      protected function §+%§(param1:IDataInput) : Boolean
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
                  do
                  {
                     _loc2_ = §§pop();
                     §§push(uint(param1.readUnsignedInt()));
                     do
                     {
                        _loc3_ = §§pop();
                        §§push(uint(param1.readUnsignedInt()));
                     }
                     while(!_loc6_);
                     
                  }
                  while(!(_loc6_ || param1));
                  
                  _loc4_ = §§pop();
                  while(true)
                  {
                     if(_loc5_ && _loc2_)
                     {
                        continue loop0;
                     }
                     if(this.§6K§.length != _loc3_)
                     {
                        this.§6K§.writeUnsignedInt(_loc2_);
                        if(_loc6_)
                        {
                           this.§6K§.writeUnsignedInt(_loc3_);
                           if(_loc5_ && _loc2_)
                           {
                              break;
                           }
                           this.§6K§.writeUnsignedInt(_loc4_);
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 this.§ N§ = this.§"!4§;
                                 addr38:
                                 return true;
                                 addr36:
                                 addr57:
                              }
                              while(true)
                              {
                                 §§push(this.§=1§);
                                 if(!(_loc5_ && param1))
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_ || _loc3_)
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(!(_loc6_ || _loc3_))
                                          {
                                             while(true)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          continue;
                                       }
                                       addr160:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                       }
                                       while(true)
                                       {
                                          §§pop().§3!@§ = §§pop();
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                                 §§pop().§5H§ = §§pop();
                              }
                              §§pop().§,?§(this.§6K§);
                              this.§^!=§();
                           }
                           continue;
                        }
                        addr169:
                        this.§6K§.position = 0;
                        §§push(this.§=1§);
                        §§goto(addr160);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr36);
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
         §§goto(addr57);
      }
      
      protected function §^!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§catch§.push(this.§=1§);
            do
            {
               if(this.§=1§.§;V§)
               {
                  while(true)
                  {
                     this.§`Y§[this.§=1§.§;V§] = this.§=1§;
                     addr90:
                     while(true)
                     {
                     }
                  }
                  addr82:
               }
               while(true)
               {
                  dispatchEvent(new §`S§(§`S§.§>"§,this.§=1§));
                  do
                  {
                     this.§=1§ = null;
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr82);
               }
            }
            while(_loc1_);
            
            return;
         }
         §§goto(addr90);
      }
      
      protected function §0l§(param1:Event) : void
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
            if(this.parse(this.§4!G§))
            {
               if(_loc5_ || this)
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
            if(!(_loc4_ && _loc2_))
            {
               close();
               do
               {
                  if(!hasEventListener(§-Q§.§=!>§))
                  {
                     throw e;
                  }
               }
               while(_loc4_ && _loc2_);
               
            }
            dispatchEvent(new §-Q§(§-Q§.§=!>§,e.message));
         }
      }
      
      protected function § !H§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §=C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(_loc3_);
         
      }
      
      protected function § L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4!G§.addEventListener(Event.COMPLETE,this.§ !H§);
            this.§4!G§.addEventListener(Event.OPEN,this.§ !H§);
            loop0:
            while(true)
            {
               this.§4!G§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !H§);
               addr94:
               while(true)
               {
                  this.§4!G§.addEventListener(IOErrorEvent.IO_ERROR,this.§=C§);
                  if(_loc1_ || _loc2_)
                  {
                     this.§4!G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=C§);
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr94);
      }
      
      protected function §@!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§4!G§.removeEventListener(Event.COMPLETE,this.§ !H§);
            while(true)
            {
               this.§4!G§.removeEventListener(Event.OPEN,this.§ !H§);
               addr111:
               while(true)
               {
                  this.§4!G§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !H§);
                  addr39:
                  if(_loc2_ || _loc1_)
                  {
                     return;
                     addr56:
                  }
               }
               addr67:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               this.§4!G§.removeEventListener(ProgressEvent.PROGRESS,this.§0l§);
               if(!_loc1_)
               {
                  §§goto(addr39);
               }
               loop4:
               while(true)
               {
                  if(_loc2_)
                  {
                     §§goto(addr67);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§4!G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=C§);
                        continue loop4;
                     }
                     addr93:
                  }
               }
               addr74:
               §§goto(addr111);
            }
         }
         while(true)
         {
            this.§4!G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=C§);
            §§goto(addr93);
         }
         §§goto(addr56);
      }
   }
}
