package §_-of§
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
   
   public class §_-IC§ extends EventDispatcher
   {
      
      static const §_-E§:uint = 33639248;
      
      static const §_-us§:uint = 808471376;
      
      static const §case §:uint = 67324752;
      
      static const §_-wz§:uint = 84233040;
      
      static const §_-pv§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-9g§:uint = 134695760;
      
      static const §_-09a§:uint = 134630224;
      
      static const §_-0Ek§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-E§ = 33639248;
            loop0:
            while(true)
            {
               §_-us§ = 808471376;
               loop1:
               while(true)
               {
                  §case § = 67324752;
                  while(true)
                  {
                     §_-wz§ = 84233040;
                     while(true)
                     {
                        §_-pv§ = 101010256;
                        continue loop1;
                        addr87:
                        loop5:
                        while(_loc2_ || §_-IC§)
                        {
                           SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                           loop6:
                           while(true)
                           {
                              §_-9g§ = 134695760;
                              while(_loc2_)
                              {
                                 §_-09a§ = 134630224;
                                 while(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       §_-0Ek§ = 134695760;
                                       if(_loc2_ || _loc1_)
                                       {
                                          continue loop6;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop5;
                           }
                           return;
                        }
                     }
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr61);
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      protected var §_-EG§:Array;
      
      protected var §_-b0§:Dictionary;
      
      protected var §_-07t§:URLStream;
      
      protected var §_-qB§:String;
      
      protected var §_-wa§:Function;
      
      protected var §_-zl§:§_-Ec§;
      
      protected var §_-CO§:ByteArray;
      
      protected var §_-iH§:uint;
      
      protected var §_-w4§:uint;
      
      public function §_-IC§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§_-qB§ = param1;
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  while(true)
                  {
                     this.§_-wa§ = this.§_-Xc§;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function get §_-ag§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-wa§ === this.§_-Xc§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(!this.§_-07t§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr141:
                     while(true)
                     {
                        §§push(this.§_-wa§ == this.§_-Xc§);
                        if(_loc3_ && param1)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop2:
               while(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§_-07t§ = new URLStream();
                     while(true)
                     {
                        this.§_-07t§.endian = Endian.LITTLE_ENDIAN;
                        loop5:
                        for(; !_loc3_; if(!(_loc3_ && param1))
                        {
                           break loop2;
                        })
                        {
                           this.§_-09x§();
                           loop6:
                           while(true)
                           {
                              this.§_-EG§ = [];
                              loop7:
                              for(; _loc2_; if(!_loc2_)
                              {
                                 continue;
                              },if(!_loc2_)
                              {
                                 continue loop6;
                              },§§goto(addr69))
                              {
                                 this.§_-b0§ = new Dictionary();
                                 loop8:
                                 while(!(_loc3_ && param1))
                                 {
                                    this.§_-wa§ = this.§_-R2§;
                                    while(true)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop8;
                                       addr69:
                                       this.§_-07t§.load(param1);
                                       if(_loc2_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr141);
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr141);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(!this.§_-07t§);
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
                        §§push(this.§_-wa§ == this.§_-Xc§);
                        loop3:
                        while(_loc2_ || this)
                        {
                           loop11:
                           while(true)
                           {
                              §§push(this.parse(param1));
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              if(!§§pop())
                              {
                                 dispatchEvent(new §_-jq§(§_-jq§.§_-iF§,"EOF"));
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr24);
                                          }
                                          loop9:
                                          while(_loc2_)
                                          {
                                             this.§_-wa§ = this.§_-R2§;
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                continue loop11;
                                             }
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      param1.endian = Endian.LITTLE_ENDIAN;
                                                      continue loop9;
                                                   }
                                                   addr159:
                                                   while(true)
                                                   {
                                                      this.§_-EG§ = [];
                                                      break loop9;
                                                   }
                                                }
                                                break;
                                                §§goto(addr103);
                                             }
                                             addr103:
                                             while(true)
                                             {
                                                param1.position = 0;
                                                §§goto(addr123);
                                             }
                                             addr123:
                                          }
                                          while(true)
                                          {
                                             this.§_-b0§ = new Dictionary();
                                             §§goto(addr143);
                                          }
                                       }
                                       else
                                       {
                                          addr86:
                                          if(_loc3_ && param1)
                                          {
                                             continue loop2;
                                          }
                                          this.§_-wa§ = this.§_-Xc§;
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          addr64:
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          addr97:
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr64);
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr24);
                        }
                        continue loop1;
                     }
                  }
               }
               while(§§pop())
               {
                  §§goto(addr159);
               }
               addr24:
               return;
            }
         }
         §§goto(addr110);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§_-07t§)
            {
               loop0:
               while(true)
               {
                  this.§_-wa§ = this.§_-Xc§;
                  loop1:
                  while(true)
                  {
                     this.§_-ib§();
                     while(_loc2_)
                     {
                        this.§_-07t§.close();
                        do
                        {
                           this.§_-07t§ = null;
                        }
                        while(!_loc2_);
                        
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!(_loc1_ && this))
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               addr84:
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function §_-Bs§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:int = 0;
         var _loc8_:§_-Ec§ = null;
         if(_loc10_ || this)
         {
            §§push(param1 == null);
            if(!_loc11_)
            {
               §§push(!§§pop());
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        addr52:
                        §§pop();
                        if(!_loc11_)
                        {
                           addr60:
                           if(this.§_-EG§.length > 0)
                           {
                              if(_loc10_)
                              {
                                 addr63:
                                 _loc3_ = param1.endian;
                                 addr67:
                                 _loc4_ = new ByteArray();
                                 if(!(_loc11_ && this))
                                 {
                                    param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                                    if(_loc10_ || param1)
                                    {
                                       §§push(0);
                                       loop21:
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          loop22:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             loop23:
                                             while(true)
                                             {
                                                addr117:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      if(!_loc11_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop23;
                                                         }
                                                         continue loop23;
                                                      }
                                                      continue loop22;
                                                   }
                                                   continue loop22;
                                                }
                                             }
                                          }
                                       }
                                       addr95:
                                    }
                                    while(false)
                                    {
                                       §§goto(addr117);
                                       §§goto(addr107);
                                    }
                                    loop4:
                                    while(_loc7_ < this.§_-EG§.length)
                                    {
                                       if((_loc8_ = this.§_-EG§[_loc7_] as §_-Ec§) != null)
                                       {
                                          if(!(_loc11_ && param2))
                                          {
                                             _loc8_.§_-Bs§(_loc4_,param2,true,_loc5_);
                                             if(_loc10_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(§§pop() + _loc8_.§_-Bs§(param1,param2));
                                                   while(true)
                                                   {
                                                      §§push(uint(§§pop()));
                                                   }
                                                   addr212:
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr214:
                                                   while(true)
                                                   {
                                                      addr182:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc10_)
                                                         {
                                                            if(_loc11_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() + 1);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(uint(§§pop()));
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr212);
                                                            }
                                                         }
                                                         _loc6_ = §§pop();
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                addr170:
                                                while(true)
                                                {
                                                   _loc7_++;
                                                   if(_loc11_ && param1)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr170);
                                    }
                                    if(!_loc11_)
                                    {
                                       if(_loc4_.length > 0)
                                       {
                                          if(!_loc11_)
                                          {
                                             param1.writeBytes(_loc4_);
                                             if(!(_loc11_ && param2))
                                             {
                                                addr327:
                                                param1.writeUnsignedInt(§_-pv§);
                                                while(true)
                                                {
                                                   param1.writeShort(0);
                                                   addr326:
                                                   while(true)
                                                   {
                                                      param1.writeShort(0);
                                                   }
                                                }
                                                addr330:
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                param1.writeShort(_loc6_);
                                                loop12:
                                                while(true)
                                                {
                                                   param1.writeShort(_loc6_);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         param1.writeUnsignedInt(_loc4_.length);
                                                         continue loop12;
                                                      }
                                                      §§goto(addr330);
                                                      addr269:
                                                      if(!(_loc10_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      param1.endian = _loc3_;
                                                      if(_loc10_ || param2)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(_loc10_ || param2)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  while(false)
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        param1.writeShort(0);
                                                                        addr267:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§goto(addr269);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              addr281:
                                                                           }
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  addr331:
                                                                  return;
                                                                  addr261:
                                                               }
                                                               break;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr326);
                                                }
                                             }
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr327);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr67);
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr63);
                     }
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr63);
      }
      
      public function §_-RC§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-EG§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  addr45:
                  §§push(uint(this.§_-EG§.length));
                  if(_loc1_ || _loc2_)
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
      
      public function §_-ct§(param1:uint) : §_-Ec§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§_-EG§);
            if(!(_loc3_ && _loc2_))
            {
               return !!§§pop() ? this.§_-EG§[param1] as §_-Ec§ : null;
            }
         }
         §§goto(addr45);
      }
      
      public function §_-Jx§(param1:String) : §_-Ec§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            return !!this.§_-b0§[param1] ? this.§_-b0§[param1] as §_-Ec§ : null;
         }
         §§goto(addr34);
      }
      
      public function §_-094§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-Ec§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(_loc5_ || param2)
         {
            §§push(this.§_-EG§);
            if(!(_loc4_ && param3))
            {
               if(§§pop())
               {
                  addr47:
                  §§push(uint(this.§_-EG§.length));
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§_-3v§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr47);
      }
      
      public function §_-4u§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-Ec§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(!(_loc6_ && this))
         {
            §§push(this.§_-EG§);
            if(_loc5_ || param3)
            {
               if(§§pop())
               {
                  addr56:
                  §§push(uint(this.§_-EG§.length));
                  if(_loc5_ || param1)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§_-kq§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr56);
      }
      
      public function §_-3v§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-Ec§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§_-EG§ == null)
            {
               if(!(_loc7_ && param3))
               {
                  this.§_-EG§ = [];
               }
               while(true)
               {
                  addr29:
                  if(!(_loc7_ && param1))
                  {
                     throw new Error("File already exists: " + param2 + ". Please remove first.");
                  }
               }
            }
            while(true)
            {
               if(this.§_-b0§ != null)
               {
                  if(this.§_-b0§[param2])
                  {
                     if(!_loc6_)
                     {
                        if(!(_loc6_ || param1))
                        {
                           break;
                        }
                        addr69:
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr29);
                  }
                  break;
               }
               if(_loc6_ || param1)
               {
                  this.§_-b0§ = new Dictionary();
               }
            }
            var _loc5_:§_-Ec§;
            (_loc5_ = new §_-Ec§()).§_-UM§ = param2;
            if(!_loc7_)
            {
               _loc5_.§_-9n§(param3,param4);
               loop2:
               while(true)
               {
                  if(param1 < this.§_-EG§.length)
                  {
                     §§push(this.§_-EG§);
                     if(_loc6_ || param1)
                     {
                        §§pop().splice(param1,0,_loc5_);
                        while(true)
                        {
                           if(!(_loc7_ && param2))
                           {
                              loop4:
                              while(true)
                              {
                                 this.§_-b0§[param2] = _loc5_;
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(_loc6_ || param3)
                                 {
                                    return _loc5_;
                                 }
                                 addr166:
                                 addr172:
                                 while(true)
                                 {
                                    §§push(this.§_-EG§);
                                    addr168:
                                    while(true)
                                    {
                                       §§pop().push(_loc5_);
                                    }
                                 }
                                 addr172:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue;
                           }
                           while(!_loc7_)
                           {
                              §§goto(addr172);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr166);
               }
            }
            §§goto(addr172);
         }
         §§goto(addr69);
      }
      
      public function §_-kq§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-Ec§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(this.§_-EG§ == null)
            {
               loop0:
               while(true)
               {
                  this.§_-EG§ = [];
                  addr94:
                  addr69:
                  while(true)
                  {
                  }
                  addr69:
                  while(true)
                  {
                     if(!(_loc7_ || param2))
                     {
                        continue loop0;
                     }
                     var _loc6_:§_-Ec§;
                     (_loc6_ = new §_-Ec§()).§_-UM§ = param2;
                     if(!(_loc8_ && this))
                     {
                        _loc6_.§_-TB§(param3,param4,param5);
                        do
                        {
                           if(param1 >= this.§_-EG§.length)
                           {
                              if(!_loc8_)
                              {
                                 addr170:
                                 this.§_-EG§.push(_loc6_);
                              }
                              do
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§_-b0§[param2] = _loc6_;
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    addr159:
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                              while(_loc8_);
                              
                              continue;
                              addr172:
                           }
                           else
                           {
                              §§push(this.§_-EG§);
                              if(!(_loc8_ && this))
                              {
                                 §§pop().splice(param1,0,_loc6_);
                                 §§goto(addr159);
                              }
                              else
                              {
                                 §§goto(addr170);
                              }
                           }
                           §§goto(addr170);
                        }
                        while(_loc8_ && param2);
                        
                        return _loc6_;
                     }
                     §§goto(addr159);
                  }
               }
            }
            while(true)
            {
               if(this.§_-b0§ != null)
               {
                  if(this.§_-b0§[param2])
                  {
                     if(_loc7_ || param1)
                     {
                        if(_loc7_ || param2)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                     }
                     else
                     {
                        if(_loc7_ || param1)
                        {
                           if(!_loc8_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.§_-b0§ = new Dictionary();
                              §§goto(addr69);
                           }
                           addr65:
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr69);
                  }
                  break;
               }
            }
            §§goto(addr95);
         }
         §§goto(addr65);
      }
      
      public function §_-05c§(param1:uint) : §_-Ec§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-Ec§ = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§_-EG§);
            if(!_loc3_)
            {
               §§push(§§pop() == null);
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || this)
                  {
                     addr43:
                     §§push(§§pop());
                     if(_loc4_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr54);
                           }
                        }
                     }
                     §§goto(addr81);
                  }
                  addr54:
                  §§pop();
                  if(!_loc3_)
                  {
                     addr57:
                     §§push(this.§_-b0§ == null);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           addr81:
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                              }
                           }
                           §§goto(addr93);
                        }
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(param1 < this.§_-EG§.length);
                        }
                        §§goto(addr94);
                     }
                     addr93:
                     if(§§pop())
                     {
                        addr96:
                        _loc2_ = this.§_-EG§[param1] as §_-Ec§;
                        §§goto(addr94);
                     }
                     §§goto(addr158);
                  }
                  addr94:
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc2_ == null)
                     {
                        addr158:
                        return null;
                     }
                     do
                     {
                        this.§_-EG§.splice(param1,1);
                        do
                        {
                           delete this.§_-b0§[_loc2_.§_-UM§];
                        }
                        while(_loc3_ && _loc2_);
                        
                     }
                     while(!(_loc4_ || _loc3_));
                     
                  }
                  return _loc2_;
               }
               §§goto(addr43);
            }
            §§goto(addr96);
         }
         §§goto(addr57);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-wa§(param1))
         {
         }
         return this.§_-wa§ === this.§_-Xc§;
      }
      
      protected function §_-Xc§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-R2§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(_loc5_ || param1)
         {
            if(param1.bytesAvailable >= 4)
            {
               if(!_loc4_)
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr93:
                  if(!_loc4_)
                  {
                     §§push(§case §);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || _loc2_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    addr256:
                                 }
                              }
                              else
                              {
                                 addr299:
                                 §§push(7);
                                 if(_loc4_)
                                 {
                                    addr330:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§_-E§);
                              if(_loc5_ || this)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(1);
                                          if(!_loc4_)
                                          {
                                             addr357:
                                             loop2:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§_-wa§ = this.§_-fy§;
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
                                                   this.§_-wa§ = this.§_-Xc§;
                                                   if(_loc5_)
                                                   {
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         while(!_loc5_)
                                                         {
                                                            break loop2;
                                                         }
                                                      }
                                                      §§push(true);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr370:
                                                      return false;
                                                   }
                                                   return §§pop();
                                                default:
                                                   throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr357);
                                    }
                                    else
                                    {
                                       §§push(§_-pv§);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(2);
                                                   if(_loc4_)
                                                   {
                                                      addr279:
                                                   }
                                                }
                                                else
                                                {
                                                   addr225:
                                                   §§push(4);
                                                   if(_loc4_ && this)
                                                   {
                                                   }
                                                }
                                                §§goto(addr357);
                                             }
                                             else
                                             {
                                                §§push(§_-us§);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(3);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§goto(addr357);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr256);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr322:
                                                            §§push(8);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      else
                                                      {
                                                         §§push(§_-wz§);
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§goto(addr225);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr271:
                                                                     §§push(6);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§goto(addr279);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     addr242:
                                                                     §§push(_loc3_);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                     addr296:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr299);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr322);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§_-09a§);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           addr311:
                                                                           §§push(_loc3_);
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              addr319:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr344:
                                                                                    §§push(9);
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       addr352:
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr343:
                                                                                 if(§_-0Ek§ === _loc3_)
                                                                                 {
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr357);
                                                                                    §§push(10);
                                                                                 }
                                                                                 §§goto(addr357);
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  addr288:
                                                                  §§push(_loc3_);
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     §§goto(addr296);
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(5);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr256);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr352);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr299);
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            else
                                                            {
                                                               §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  addr265:
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr271);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr322);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§_-9g§);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr311);
                                             }
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr265);
                                    }
                                 }
                                 §§goto(addr319);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr357);
                        }
                        §§goto(addr319);
                     }
                     §§goto(addr343);
                  }
                  §§goto(addr322);
                  addr93:
               }
               §§goto(addr93);
            }
            §§goto(addr370);
         }
         §§goto(addr93);
      }
      
      protected function §_-fy§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-zl§);
            if(!_loc3_)
            {
               §§push(§§pop().parse(param1));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     §§push(this.§_-zl§);
                     while(true)
                     {
                        §§push(§§pop().§_-c-§);
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 this.§_-01D§();
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(this.§_-wa§ == this.§_-Xc§)
                                       {
                                          while(true)
                                          {
                                             §§push(false);
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                          }
                                          addr99:
                                          return §§pop();
                                          addr19:
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       this.§_-wa§ = this.§_-R2§;
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(true);
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop6;
                                       }
                                       addr152:
                                       this.§_-wa§ = this.§_-WI§;
                                       while(true)
                                       {
                                          this.§_-CO§ = new ByteArray();
                                          this.§_-iH§ = 0;
                                          addr110:
                                       }
                                       this.§_-w4§ = 0;
                                       break;
                                       addr134:
                                       addr156:
                                    }
                                    else
                                    {
                                       §§goto(addr110);
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc3_ && _loc2_)
                                       {
                                          §§goto(addr152);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr99);
                              }
                           }
                           §§goto(addr152);
                        }
                     }
                     addr150:
                  }
                  §§goto(addr19);
               }
            }
            §§goto(addr150);
         }
         §§goto(addr152);
      }
      
      protected function §_-WI§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(!(_loc4_ && this))
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(false);
                           if(!(_loc4_ && param1))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§_-iH§);
                              if(_loc3_ || param1)
                              {
                                 if(§§pop() == §_-9g§)
                                 {
                                    while(true)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          this.§_-CO§.length -= 3;
                                          break loop0;
                                       }
                                    }
                                    addr101:
                                 }
                                 else
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§_-CO§.writeByte(_loc2_);
                                       addr74:
                                       while(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc4_)
                                       {
                                          break loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr153:
                              }
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§_-iH§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(8);
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() >>> §§pop());
                                 }
                                 continue loop1;
                              }
                           }
                           §§push(true);
                           addr88:
                        }
                        return §§pop();
                     }
                     §§goto(addr101);
                  }
                  break;
               }
               §§goto(addr74);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr153);
         }
         this.§_-wa§ = this.§_-o§;
         §§goto(addr88);
      }
      
      protected function §_-o§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(!(_loc5_ && param1))
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
                     §§push(uint(param1.readUnsignedInt()));
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(uint(param1.readUnsignedInt()));
                           if(!(_loc6_ || _loc3_))
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           _loc4_ = §§pop();
                           loop4:
                           while(true)
                           {
                              if(this.§_-CO§.length != _loc3_)
                              {
                                 this.§_-CO§.writeUnsignedInt(_loc2_);
                                 loop5:
                                 while(!(_loc5_ && param1))
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(_loc6_)
                                          {
                                             this.§_-CO§.writeUnsignedInt(_loc3_);
                                             for(; _loc6_; this.§_-wa§ = this.§_-WI§,if(!(_loc6_ || _loc3_))
                                             {
                                                continue;
                                             },if(_loc5_)
                                             {
                                                continue loop5;
                                             },if(!_loc5_)
                                             {
                                                addr48:
                                                return true;
                                                addr46:
                                             },§§goto(addr183))
                                             {
                                                if(_loc6_)
                                                {
                                                   this.§_-CO§.writeUnsignedInt(_loc4_);
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(this.§_-zl§);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            addr196:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break loop10;
                                                               }
                                                               addr204:
                                                               while(true)
                                                               {
                                                                  §§pop().§_-W0§ = §§pop();
                                                                  continue loop13;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         §§pop().§_-h9§ = §§pop();
                                                      }
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-zl§);
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().§_-vI§ = §§pop();
                                                         §§push(this.§_-zl§);
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break loop7;
                                                            }
                                                            addr203:
                                                            while(true)
                                                            {
                                                               §§goto(addr204);
                                                            }
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      §§goto(addr196);
                                                      §§goto(addr198);
                                                   }
                                                   §§pop().§_-4l§(this.§_-CO§);
                                                   this.§_-01D§();
                                                   break;
                                                   addr183:
                                                }
                                                else
                                                {
                                                   addr228:
                                                }
                                                §§goto(addr203);
                                                §§push(this.§_-zl§);
                                                §§goto(addr204);
                                             }
                                             this.§_-wa§ = this.§_-R2§;
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    addr214:
                                    this.§_-CO§.position = 0;
                                    §§goto(addr228);
                                 }
                                 §§goto(addr46);
                                 addr161:
                              }
                              §§goto(addr214);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(false);
               if(!(_loc5_ && _loc3_))
               {
                  return §§pop();
               }
               §§goto(addr48);
            }
         }
         §§goto(addr161);
      }
      
      protected function §_-01D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-EG§.push(this.§_-zl§);
            loop0:
            while(true)
            {
               if(this.§_-zl§.§_-UM§)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§_-b0§[this.§_-zl§.§_-UM§] = this.§_-zl§;
                  }
                  while(true)
                  {
                  }
                  addr85:
               }
               while(true)
               {
                  dispatchEvent(new §_-LS§(§_-LS§.§_-FH§,this.§_-zl§));
                  loop3:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.§_-zl§ = null;
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                     return;
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr64);
      }
      
      protected function §_-0Dh§(param1:Event) : void
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
            if(this.parse(this.§_-07t§))
            {
               if(_loc5_)
               {
                  this.close();
                  if(_loc4_ && _loc2_)
                  {
                  }
                  addr136:
                  return;
                  addr68:
               }
               dispatchEvent(new Event(Event.COMPLETE));
            }
            §§goto(addr68);
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
            if(_loc5_ || _loc3_)
            {
               close();
            }
            while(hasEventListener(§_-jq§.§_-iF§))
            {
               if(_loc4_)
               {
                  continue;
               }
               dispatchEvent(new §_-jq§(§_-jq§.§_-iF§,e.message));
            }
            throw e;
         }
         §§goto(addr136);
      }
      
      protected function §_-08n§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §_-RT§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(!_loc3_);
         
      }
      
      protected function §_-09x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-07t§.addEventListener(Event.COMPLETE,this.§_-08n§);
            while(true)
            {
               this.§_-07t§.addEventListener(Event.OPEN,this.§_-08n§);
               addr112:
               while(true)
               {
                  this.§_-07t§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-08n§);
               }
            }
            addr120:
         }
         loop2:
         while(true)
         {
            this.§_-07t§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-RT§);
            do
            {
               this.§_-07t§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-RT§);
               continue loop2;
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
      }
      
      protected function §_-ib§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§_-07t§.removeEventListener(Event.COMPLETE,this.§_-08n§);
            while(true)
            {
               this.§_-07t§.removeEventListener(Event.OPEN,this.§_-08n§);
            }
            addr121:
         }
         do
         {
            this.§_-07t§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-08n§);
            loop2:
            do
            {
               this.§_-07t§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-RT§);
               while(true)
               {
                  this.§_-07t§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-RT§);
                  for(; _loc2_ || _loc2_; this.§_-07t§.removeEventListener(ProgressEvent.PROGRESS,this.§_-0Dh§),if(_loc2_ || _loc1_)
                  {
                     continue loop2;
                  })
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr121);
                  }
               }
            }
            while(!_loc2_);
            
         }
         while(_loc1_);
         
      }
   }
}
