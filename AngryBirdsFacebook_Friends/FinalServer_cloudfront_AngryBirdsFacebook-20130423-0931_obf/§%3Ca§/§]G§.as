package §<a§
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
   
   public class §]G§ extends EventDispatcher
   {
      
      static const §=!k§:uint = 33639248;
      
      static const §=!-§:uint = 808471376;
      
      static const §;!,§:uint = 67324752;
      
      static const § 9§:uint = 84233040;
      
      static const §3!"§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §6!B§:uint = 134695760;
      
      static const §6!5§:uint = 134630224;
      
      static const §2d§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=!k§ = 33639248;
            while(true)
            {
               §=!-§ = 808471376;
               addr87:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §6!5§ = 134630224;
               loop8:
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr52:
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §3!"§ = 101010256;
                           addr121:
                           while(true)
                           {
                              SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                              break loop8;
                           }
                        }
                        addr126:
                     }
                     break;
                  }
                  loop7:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           addr80:
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr87);
                           }
                           else
                           {
                              while(true)
                              {
                                 § 9§ = 84233040;
                                 §§goto(addr126);
                                 §§goto(addr80);
                              }
                              addr131:
                           }
                        }
                        break;
                     }
                     addr109:
                     while(true)
                     {
                        §6!B§ = 134695760;
                        continue loop7;
                     }
                  }
                  §§goto(addr121);
               }
               while(!_loc1_)
               {
                  SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                  §§goto(addr109);
                  §§goto(addr52);
               }
               while(true)
               {
                  §;!,§ = 67324752;
                  §§goto(addr131);
               }
               addr136:
            }
         }
         §§goto(addr136);
      }
      
      protected var §+"!§:Array;
      
      protected var §!m§:Dictionary;
      
      protected var §;4§:URLStream;
      
      protected var §=!f§:String;
      
      protected var §^4§:Function;
      
      protected var §8"E§:§;L§;
      
      protected var §>!M§:ByteArray;
      
      protected var §7!c§:uint;
      
      protected var §#Q§:uint;
      
      public function §]G§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§=!f§ = param1;
               while(!(_loc3_ && _loc3_))
               {
                  this.§^4§ = this.§^"%§;
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function get §""D§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§^4§ === this.§^"%§);
         if(!(_loc2_ && this))
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(!this.§;4§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        this.§;4§ = new URLStream();
                        while(true)
                        {
                           this.§;4§.endian = Endian.LITTLE_ENDIAN;
                           loop6:
                           while(true)
                           {
                              this.§5F§();
                              loop7:
                              while(true)
                              {
                                 this.§+"!§ = [];
                                 loop8:
                                 while(!_loc2_)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       this.§!m§ = new Dictionary();
                                       loop9:
                                       while(_loc3_)
                                       {
                                          this.§^4§ = this.§>1§;
                                          do
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                             this.§;4§.load(param1);
                                          }
                                          while(!_loc3_);
                                          
                                          break loop3;
                                       }
                                       continue loop6;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.§^4§ == this.§^"%§);
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       addr131:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
                  return;
                  addr119:
               }
               §§goto(addr131);
            }
         }
         §§goto(addr31);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(!this.§;4§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           this.§+"!§ = [];
                           loop6:
                           while(true)
                           {
                              this.§!m§ = new Dictionary();
                              loop7:
                              while(true)
                              {
                                 param1.position = 0;
                                 do
                                 {
                                    if(_loc2_)
                                    {
                                       param1.endian = Endian.LITTLE_ENDIAN;
                                       loop9:
                                       while(true)
                                       {
                                          this.§^4§ = this.§>1§;
                                          addr107:
                                          while(true)
                                          {
                                             §§push(this.parse(param1));
                                             if(!(_loc2_ || this))
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                dispatchEvent(new §2!>§(§2!>§.§'"W§,"EOF"));
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      break loop9;
                                                   }
                                                   while(_loc2_)
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                      this.§^4§ = this.§^"%§;
                                                   }
                                                   continue;
                                                }
                                                while(_loc3_)
                                                {
                                                }
                                                continue loop9;
                                             }
                                             while(_loc2_ || param1)
                                             {
                                                §§goto(addr95);
                                             }
                                             continue loop6;
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             addr163:
                                             while(true)
                                             {
                                                §§pop();
                                                addr164:
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue;
                                    }
                                    continue loop7;
                                 }
                                 while(!_loc2_);
                                 
                                 if(_loc3_)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     return;
                  }
                  addr152:
               }
               §§goto(addr163);
            }
         }
         §§goto(addr65);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§;4§)
            {
               loop0:
               while(true)
               {
                  this.§^4§ = this.§^"%§;
                  loop1:
                  while(true)
                  {
                     this.§4"W§();
                     do
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(this.§;4§.close(), do
                     {
                        this.§;4§ = null;
                     }
                     while(_loc1_);
                     , !_loc2_);
                     
                     addr57:
                  }
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §9"K§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§;L§ = null;
         if(!(_loc11_ && this))
         {
            §§push(param1 == null);
            if(!(_loc11_ && _loc3_))
            {
               §§push(!§§pop());
               if(!_loc11_)
               {
                  addr53:
                  if(§§pop())
                  {
                     if(_loc10_ || param2)
                     {
                        §§pop();
                        if(!_loc11_)
                        {
                           addr70:
                           if(this.§+"!§.length > 0)
                           {
                              if(_loc10_)
                              {
                                 addr73:
                                 _loc3_ = param1.endian;
                              }
                              _loc4_ = new ByteArray();
                              if(_loc10_ || this)
                              {
                                 param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                                 if(_loc10_ || param1)
                                 {
                                    §§push(0);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                       addr143:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          addr144:
                                          while(true)
                                          {
                                             addr120:
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr73);
                     }
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr53);
         }
         §§goto(addr70);
      }
      
      public function §6"A§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§+"!§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  addr46:
                  §§push(uint(this.§+"!§.length));
                  if(_loc1_ && _loc1_)
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
         §§goto(addr46);
      }
      
      public function §=![§(param1:uint) : §;L§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§+"!§);
            if(!(_loc3_ && _loc3_))
            {
               return !!§§pop() ? this.§+"!§[param1] as §;L§ : null;
            }
         }
         §§goto(addr45);
      }
      
      public function §"!n§(param1:String) : §;L§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            return !!this.§!m§[param1] ? this.§!m§[param1] as §;L§ : null;
         }
         §§goto(addr23);
      }
      
      public function §7"#§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §;L§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(!(_loc4_ && this))
         {
            §§push(this.§+"!§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§+"!§.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§7"5§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr42);
      }
      
      public function §<I§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §;L§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(_loc5_ || param3)
         {
            §§push(this.§+"!§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§+"!§.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§5!5§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr41);
      }
      
      public function §7"5§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §;L§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            if(this.§+"!§ == null)
            {
               while(true)
               {
                  this.§+"!§ = [];
                  addr100:
                  addr64:
                  while(true)
                  {
                  }
                  if(!(_loc7_ || param2))
                  {
                     continue;
                  }
                  if(false)
                  {
                     while(this.§!m§ != null)
                     {
                        if(this.§!m§[param2])
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(!(_loc6_ && this))
                              {
                                 if(!_loc6_)
                                 {
                                    throw new Error("File already exists: " + param2 + ". Please remove first.");
                                 }
                                 §§goto(addr100);
                              }
                              else
                              {
                                 addr101:
                                 var _loc5_:§;L§;
                                 (_loc5_ = new §;L§()).§@"2§ = param2;
                                 if(_loc7_ || param1)
                                 {
                                    _loc5_.§2!E§(param3,param4);
                                    while(true)
                                    {
                                       if(param1 >= this.§+"!§.length)
                                       {
                                          addr183:
                                          if(!(_loc6_ && this))
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(this.§+"!§);
                                                break;
                                             }
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr121);
                                          }
                                          addr183:
                                       }
                                       else
                                       {
                                          §§push(this.§+"!§);
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          §§pop().splice(param1,0,_loc5_);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr163);
                                          }
                                          else
                                          {
                                             §§goto(addr183);
                                          }
                                          return _loc5_;
                                       }
                                    }
                                    §§pop().push(_loc5_);
                                    §§goto(addr183);
                                 }
                                 §§goto(addr163);
                                 addr92:
                              }
                           }
                           else
                           {
                              if(!(_loc7_ || param2))
                              {
                                 break;
                              }
                              §§goto(addr64);
                           }
                        }
                        §§goto(addr101);
                     }
                     this.§!m§ = new Dictionary();
                     §§goto(addr92);
                     addr73:
                  }
                  §§goto(addr101);
               }
            }
            §§goto(addr73);
         }
         §§goto(addr100);
      }
      
      public function §5!5§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §;L§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            if(this.§+"!§ == null)
            {
               while(true)
               {
                  this.§+"!§ = [];
                  addr80:
                  while(true)
                  {
                  }
               }
               addr77:
            }
            while(this.§!m§ != null)
            {
               if(this.§!m§[param2])
               {
                  if(_loc8_)
                  {
                     if(_loc8_)
                     {
                        if(!(_loc7_ && param2))
                        {
                           if(!_loc7_)
                           {
                              throw new Error("File already exists: " + param2 + ". Please remove first.");
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr80);
                     }
                     else
                     {
                        addr62:
                     }
                  }
                  else
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                  }
               }
               var _loc6_:§;L§;
               (_loc6_ = new §;L§()).§@"2§ = param2;
               if(_loc8_)
               {
                  _loc6_.§1!P§(param3,param4,param5);
                  loop3:
                  while(true)
                  {
                     if(param1 < this.§+"!§.length)
                     {
                        §§push(this.§+"!§);
                        if(!_loc7_)
                        {
                           §§pop().splice(param1,0,_loc6_);
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 continue loop3;
                              }
                              if(_loc8_ || param3)
                              {
                                 continue;
                              }
                              addr147:
                              while(true)
                              {
                                 §§push(this.§+"!§);
                              }
                           }
                           return _loc6_;
                           addr109:
                        }
                        while(true)
                        {
                           §§pop().push(_loc6_);
                           continue loop3;
                        }
                     }
                     §§goto(addr147);
                  }
               }
               §§goto(addr109);
            }
            this.§!m§ = new Dictionary();
         }
         §§goto(addr62);
      }
      
      public function §-"8§(param1:uint) : §;L§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;L§ = null;
         if(_loc3_)
         {
            §§push(this.§+"!§);
            if(_loc3_)
            {
               §§push(§§pop() == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     addr37:
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              addr48:
                              §§pop();
                              if(_loc3_)
                              {
                                 §§push(this.§!m§ == null);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr57);
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr87);
                           }
                           addr57:
                           §§push(!§§pop());
                           if(_loc3_ || this)
                           {
                              addr75:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr79:
                                    §§pop();
                                    §§goto(addr93);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              addr93:
                              §§goto(addr95);
                           }
                           §§goto(addr157);
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr48);
               }
               §§goto(addr37);
            }
            addr95:
            if(!(_loc4_ && param1))
            {
               addr87:
               §§push(param1 < this.§+"!§.length);
            }
            _loc2_ = this.§+"!§[param1] as §;L§;
            if(!(_loc4_ && _loc3_))
            {
               if(_loc2_ == null)
               {
                  addr157:
                  return null;
               }
               this.§+"!§.splice(param1,1);
               delete this.§!m§[_loc2_.§@"2§];
            }
            return _loc2_;
         }
         §§goto(addr79);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§^4§(param1))
         {
         }
         return this.§^4§ === this.§^"%§;
      }
      
      protected function §^"%§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §>1§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(_loc5_)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc5_ || _loc3_)
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr93:
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§;!,§);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || param1)
                              {
                                 §§push(0);
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    addr295:
                                 }
                              }
                              else
                              {
                                 addr292:
                                 §§push(8);
                                 if(_loc5_)
                                 {
                                    §§goto(addr295);
                                 }
                              }
                           }
                           else
                           {
                              §§push(§=!k§);
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(1);
                                          if(_loc4_)
                                          {
                                             addr259:
                                          }
                                       }
                                       else
                                       {
                                          addr274:
                                          §§push(7);
                                          if(!_loc4_)
                                          {
                                             addr277:
                                          }
                                          else
                                          {
                                             addr317:
                                          }
                                       }
                                       §§goto(addr322);
                                    }
                                    else
                                    {
                                       §§push(§3!"§);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(2);
                                                   if(_loc4_)
                                                   {
                                                      addr205:
                                                   }
                                                   §§goto(addr322);
                                                }
                                                else
                                                {
                                                   addr215:
                                                   §§push(4);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr322);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr295);
                                                   }
                                                }
                                                §§goto(addr322);
                                             }
                                             else
                                             {
                                                §§push(§=!-§);
                                                if(!_loc4_)
                                                {
                                                   addr191:
                                                   §§push(_loc3_);
                                                   if(!_loc4_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            §§push(3);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr205);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr259);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      else
                                                      {
                                                         §§push(§ 9§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr215);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr292);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(5);
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 §§goto(addr322);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr277);
                                                                              }
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr245:
                                                                              §§push(_loc3_);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr248:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       §§push(6);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§6!B§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr263:
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr266:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§6!5§);
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                addr286:
                                                                                                §§push(_loc3_);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr289:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr292);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr299:
                                                                                                         §§push(9);
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr317);
                                                                                                         }
                                                                                                         §§goto(addr322);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(§2d§);
                                                                                                   }
                                                                                                   §§goto(addr299);
                                                                                                }
                                                                                                addr298:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   §§goto(addr299);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr322:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         this.§^4§ = this.§#j§;
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
                                                                                                         this.§^4§ = this.§^"%§;
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!(_loc5_ || _loc2_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         addr331:
                                                                                                         §§push(true);
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         §§goto(addr341);
                                                                                                         break;
                                                                                                      default:
                                                                                                         throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                                                                                   }
                                                                                                   this.§8"E§ = new §;L§(this.§=!f§);
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      §§goto(addr331);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr340:
                                                                                                      §§push(false);
                                                                                                   }
                                                                                                   addr341:
                                                                                                   return §§pop();
                                                                                                   §§push(10);
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                    §§push(_loc3_);
                                                                                 }
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                                  §§goto(addr263);
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr245);
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                       §§goto(addr191);
                                    }
                                 }
                                 §§goto(addr266);
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr292);
                  addr93:
               }
               §§goto(addr93);
            }
            §§goto(addr340);
         }
         §§goto(addr93);
      }
      
      protected function §#j§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§8"E§);
            if(!_loc3_)
            {
               §§push(§§pop().parse(param1));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§8"E§);
                        addr150:
                        while(true)
                        {
                           §§push(§§pop().§,"9§);
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§1!n§();
                                    addr104:
                                    while(true)
                                    {
                                       if(this.§^4§ == this.§^"%§)
                                       {
                                          while(true)
                                          {
                                             §§push(false);
                                             if(_loc2_)
                                             {
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop0;
                                          addr24:
                                       }
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                this.§^4§ = this.§>1§;
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop4;
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   §§goto(addr42);
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   this.§#Q§ = 0;
                                                   if(!_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§^4§ = this.§-V§;
                                                         addr156:
                                                         while(true)
                                                         {
                                                            this.§>!M§ = new ByteArray();
                                                            addr140:
                                                            while(true)
                                                            {
                                                               this.§7!c§ = 0;
                                                               continue loop8;
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr152:
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr140);
                                       }
                                       continue;
                                       addr42:
                                       return true;
                                    }
                                 }
                              }
                              §§goto(addr152);
                           }
                           §§push(true);
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr24);
               }
               return §§pop();
            }
            §§goto(addr150);
         }
         §§goto(addr104);
      }
      
      protected function §-V§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(_loc3_ || this)
               {
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr74:
                        loop1:
                        while(true)
                        {
                           §§push(this.§7!c§);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop() != §6!B§)
                              {
                                 addr49:
                                 this.§>!M§.writeByte(_loc2_);
                                 if(_loc4_ && param1)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    this.§>!M§.length -= 3;
                                    this.§^4§ = this.§6K§;
                                    break loop1;
                                    addr121:
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr143:
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§7!c§);
                              if(!_loc4_)
                              {
                                 §§push(8);
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() >>> §§pop());
                              }
                              continue loop1;
                           }
                        }
                        if(_loc4_ && this)
                        {
                           §§goto(addr121);
                        }
                        return true;
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr49);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr143);
         }
         §§push(false);
         if(!(_loc4_ && this))
         {
            return §§pop();
         }
         §§goto(addr74);
      }
      
      protected function §6K§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(_loc5_)
         {
            if(param1.bytesAvailable < 12)
            {
               §§push(false);
               if(!(_loc6_ && _loc2_))
               {
                  return §§pop();
               }
               addr40:
               while(true)
               {
                  if(_loc6_)
                  {
                     continue loop18;
                  }
                  if(!_loc5_)
                  {
                     break loop4;
                  }
                  this.§^4§ = this.§>1§;
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  §§goto(addr184);
                  continue loop18;
               }
               return true;
            }
            if(!(_loc6_ && param1))
            {
               §§push(uint(param1.readUnsignedInt()));
               while(true)
               {
                  _loc2_ = §§pop();
                  addr227:
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
                  _loc4_ = §§pop();
                  loop4:
                  for(; this.§>!M§.length != _loc3_; if(_loc6_ && _loc3_)
                  {
                     continue;
                  },if(!(_loc6_ && _loc2_))
                  {
                     §§goto(addr40);
                  }
                  else
                  {
                     §§goto(addr251);
                  })
                  {
                     this.§>!M§.writeUnsignedInt(_loc2_);
                     while(_loc5_ || _loc3_)
                     {
                        this.§>!M§.writeUnsignedInt(_loc3_);
                        while(_loc5_ || this)
                        {
                           this.§>!M§.writeUnsignedInt(_loc4_);
                           if(_loc6_ && _loc3_)
                           {
                              continue;
                           }
                           this.§^4§ = this.§-V§;
                           if(!(_loc6_ && this))
                           {
                              if(_loc5_)
                              {
                                 continue loop4;
                              }
                              loop17:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(this.§8"E§);
                                    while(_loc5_)
                                    {
                                       §§push(_loc3_);
                                       loop11:
                                       while(_loc5_ || _loc2_)
                                       {
                                          §§pop().§`e§ = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             §§push(this.§8"E§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§pop().§0"K§ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop12;
                                                }
                                                §§pop().§4J§(this.§>!M§);
                                                while(true)
                                                {
                                                   this.§1!n§();
                                                   §§goto(addr151);
                                                }
                                                addr184:
                                             }
                                             continue loop11;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().§"!<§ = §§pop();
                                          continue loop17;
                                       }
                                       while(true)
                                       {
                                       }
                                       if(_loc6_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr173);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr206);
                                    }
                                    addr205:
                                 }
                                 else
                                 {
                                    §§goto(addr267);
                                 }
                                 §§push(uint(param1.readUnsignedInt()));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr251:
                                    while(true)
                                    {
                                       §§push(uint(param1.readUnsignedInt()));
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                              }
                           }
                           addr151:
                           §§goto(addr40);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr205);
                     }
                  }
                  while(true)
                  {
                     this.§>!M§.position = 0;
                     §§goto(addr220);
                  }
               }
            }
            §§goto(addr267);
         }
         §§goto(addr176);
      }
      
      protected function §1!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+"!§.push(this.§8"E§);
            loop0:
            do
            {
               if(this.§8"E§.§@"2§)
               {
                  if(_loc1_)
                  {
                     this.§!m§[this.§8"E§.§@"2§] = this.§8"E§;
                  }
                  while(true)
                  {
                  }
                  addr79:
               }
               while(true)
               {
                  dispatchEvent(new §7p§(§7p§.§ "S§,this.§8"E§));
                  while(_loc1_)
                  {
                     this.§8"E§ = null;
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr79);
               }
            }
            while(_loc2_);
            
         }
      }
      
      protected function §&!m§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var evt:Event = param1;
         if(!(_loc4_ && param1))
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§;4§))
            {
               if(!(_loc4_ && param1))
               {
                  this.close();
                  if(!_loc5_)
                  {
                  }
                  addr131:
                  return;
                  addr68:
               }
               dispatchEvent(new Event(Event.COMPLETE));
            }
            §§goto(addr68);
         }
         catch(e:Error)
         {
            if(!_loc4_)
            {
               close();
               do
               {
                  if(!hasEventListener(§2!>§.§'"W§))
                  {
                     throw e;
                  }
               }
               while(!(_loc5_ || this));
               
            }
            dispatchEvent(new §2!>§(§2!>§.§'"W§,e.message));
         }
         §§goto(addr131);
      }
      
      protected function §&I§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §5"H§(param1:Event) : void
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
      
      protected function §5F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;4§.addEventListener(Event.COMPLETE,this.§&I§);
            loop0:
            while(true)
            {
               this.§;4§.addEventListener(Event.OPEN,this.§&I§);
               while(true)
               {
                  this.§;4§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&I§);
                  while(!_loc1_)
                  {
                     this.§;4§.addEventListener(IOErrorEvent.IO_ERROR,this.§5"H§);
                     loop3:
                     for(; _loc2_ || _loc2_; while(!(_loc1_ && _loc1_))
                     {
                        continue loop0;
                        this.§;4§.addEventListener(ProgressEvent.PROGRESS,this.§&!m§);
                        if(!(_loc1_ && this))
                        {
                           return;
                        }
                     })
                     {
                        while(true)
                        {
                           this.§;4§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5"H§);
                           continue loop3;
                        }
                     }
                  }
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr98);
      }
      
      protected function §4"W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§;4§.removeEventListener(Event.COMPLETE,this.§&I§);
         }
         loop0:
         while(true)
         {
            this.§;4§.removeEventListener(Event.OPEN,this.§&I§);
            while(true)
            {
               this.§;4§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&I§);
               while(_loc1_)
               {
                  continue loop0;
                  this.§;4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"H§);
                  do
                  {
                     this.§;4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5"H§);
                     do
                     {
                        this.§;4§.removeEventListener(ProgressEvent.PROGRESS,this.§&!m§);
                     }
                     while(_loc2_ && _loc2_);
                     
                  }
                  while(!_loc1_);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
