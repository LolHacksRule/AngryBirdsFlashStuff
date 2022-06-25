package §0H§
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
   
   public class §8h§ extends EventDispatcher
   {
      
      static const §+9§:uint = 33639248;
      
      static const §[!b§:uint = 808471376;
      
      static const § R§:uint = 67324752;
      
      static const §]0§:uint = 84233040;
      
      static const §7!M§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §6b§:uint = 134695760;
      
      static const §^!w§:uint = 134630224;
      
      static const §<R§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+9§ = 33639248;
            loop0:
            while(true)
            {
               §[!b§ = 808471376;
               addr131:
               while(true)
               {
                  § R§ = 67324752;
                  while(true)
                  {
                     §]0§ = 84233040;
                     addr107:
                     while(!(_loc1_ && §8h§))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         loop5:
         while(true)
         {
            SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
            while(!_loc1_)
            {
               §6b§ = 134695760;
               loop7:
               for(; !(_loc1_ && _loc1_); if(_loc1_ && §8h§)
               {
                  continue;
               },if(!_loc1_)
               {
                  break loop5;
               },§§goto(addr107))
               {
                  if(_loc1_)
                  {
                     continue loop5;
                  }
                  §^!w§ = 134630224;
                  while(_loc2_)
                  {
                     §<R§ = 134695760;
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop7;
                     }
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr131);
         }
      }
      
      protected var §6q§:Array;
      
      protected var §2h§:Dictionary;
      
      protected var §2!2§:URLStream;
      
      protected var §%5§:String;
      
      protected var §@!R§:Function;
      
      protected var §<w§:§?K§;
      
      protected var §"d§:ByteArray;
      
      protected var §9x§:uint;
      
      protected var §4X§:uint;
      
      public function §8h§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§%5§ = param1;
               while(!_loc2_)
               {
                  this.§@!R§ = this.§8I§;
                  if(!_loc2_)
                  {
                     return;
                     addr41:
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get §2!8§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@!R§ === this.§8I§);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(!this.§2!2§);
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
                        §§push(this.§@!R§ == this.§8I§);
                        if(_loc3_ && param1)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop3:
               while(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     this.§2!2§ = new URLStream();
                     loop5:
                     while(true)
                     {
                        this.§2!2§.endian = Endian.LITTLE_ENDIAN;
                        loop6:
                        while(true)
                        {
                           this.§"!%§();
                           loop7:
                           while(true)
                           {
                              this.§6q§ = [];
                              while(_loc2_)
                              {
                                 continue loop4;
                                 loop10:
                                 while(_loc2_ || _loc2_)
                                 {
                                    this.§@!R§ = this.§<C§;
                                    while(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          this.§2!2§.load(param1);
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop10;
                                          }
                                          if(_loc2_ || param1)
                                          {
                                             break loop3;
                                          }
                                          §§goto(addr141);
                                          continue;
                                       }
                                       continue loop5;
                                    }
                                    continue loop7;
                                 }
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr91);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(!this.§2!2§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr173:
                  while(true)
                  {
                     §§pop();
                     addr174:
                     while(true)
                     {
                        §§push(this.§@!R§ == this.§8I§);
                     }
                  }
                  addr173:
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(_loc2_ || this)
                     {
                        this.§6q§ = [];
                        loop5:
                        while(true)
                        {
                           this.§2h§ = new Dictionary();
                           do
                           {
                              param1.position = 0;
                              do
                              {
                                 param1.endian = Endian.LITTLE_ENDIAN;
                                 loop8:
                                 while(true)
                                 {
                                    this.§@!R§ = this.§<C§;
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          break;
                                       }
                                       §§push(this.parse(param1));
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             continue;
                                          }
                                          dispatchEvent(new §'!U§(§'!U§.§2!v§,"EOF"));
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             while(!_loc2_)
                                             {
                                                continue loop9;
                                             }
                                             break loop1;
                                          }
                                          addr64:
                                          if(_loc2_ || _loc2_)
                                          {
                                             break loop8;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr173);
                                    }
                                    continue loop2;
                                 }
                              }
                              while(!_loc2_);
                              
                           }
                           while(_loc3_);
                           
                           break loop1;
                        }
                     }
                     continue loop0;
                  }
                  return;
               }
            }
            §§goto(addr173);
         }
         §§goto(addr165);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§2!2§)
            {
               do
               {
                  this.§@!R§ = this.§8I§;
                  do
                  {
                     this.§1!b§();
                     do
                     {
                        this.§2!2§.close();
                        do
                        {
                           this.§2!2§ = null;
                        }
                        while(_loc1_);
                        
                     }
                     while(!(_loc2_ || this));
                     
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
               addr61:
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §-!p§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc8_:§?K§ = null;
         if(!_loc11_)
         {
            §§push(param1 == null);
            if(!(_loc11_ && _loc3_))
            {
               §§push(!§§pop());
               if(!(_loc11_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        addr57:
                        §§pop();
                        addr73:
                        if(_loc10_ || _loc3_)
                        {
                           §§push(this.§6q§.length > 0);
                        }
                        _loc3_ = param1.endian;
                        _loc4_ = new ByteArray();
                        if(!(_loc11_ && this))
                        {
                           param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                           if(_loc10_ || param1)
                           {
                              §§push(0);
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr143:
                                 loop1:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    addr144:
                                    while(true)
                                    {
                                       addr129:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr131:
                                          while(true)
                                          {
                                             §§push(uint(§§pop()));
                                             if(_loc10_ || param2)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          _loc6_ = §§pop();
                                       }
                                    }
                                 }
                              }
                              addr142:
                           }
                           while(true)
                           {
                              §§push(0);
                              if(!_loc11_)
                              {
                                 if(!_loc11_)
                                 {
                                    _loc7_ = §§pop();
                                    if(!(_loc10_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!(_loc11_ && param1))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr144);
                                 }
                                 else
                                 {
                                    §§goto(addr142);
                                 }
                              }
                              §§goto(addr131);
                           }
                           loop5:
                           while(_loc7_ < this.§6q§.length)
                           {
                              if((_loc8_ = this.§6q§[_loc7_] as §?K§) != null)
                              {
                                 if(_loc10_ || param1)
                                 {
                                    _loc8_.§-!p§(_loc4_,param2,true,_loc5_);
                                    if(!_loc11_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() + _loc8_.§-!p§(param1,param2));
                                          while(true)
                                          {
                                             §§push(uint(§§pop()));
                                          }
                                          addr212:
                                       }
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                       }
                                       addr213:
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc10_)
                                          {
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc11_)
                                                {
                                                   addr202:
                                                   _loc6_ = uint(§§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      addr185:
                                                      while(true)
                                                      {
                                                         _loc7_++;
                                                         if(_loc10_)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               while(false)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop5;
                                                               addr190:
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr212);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr185);
                           }
                           if(_loc10_)
                           {
                              if(_loc4_.length > 0)
                              {
                                 if(_loc10_ || this)
                                 {
                                    param1.writeBytes(_loc4_);
                                    addr307:
                                    if(_loc10_)
                                    {
                                       addr332:
                                       param1.writeUnsignedInt(§7!M§);
                                       loop14:
                                       while(true)
                                       {
                                          param1.writeShort(0);
                                          addr331:
                                          while(true)
                                          {
                                             param1.writeShort(0);
                                             continue loop14;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       param1.writeUnsignedInt(_loc4_.length);
                                       loop19:
                                       while(true)
                                       {
                                          param1.writeUnsignedInt(_loc5_);
                                          while(true)
                                          {
                                             if(!_loc11_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr319);
                                                }
                                                break;
                                             }
                                             continue loop19;
                                          }
                                          §§goto(addr312);
                                       }
                                    }
                                    addr307:
                                 }
                                 while(true)
                                 {
                                    param1.writeShort(_loc6_);
                                    §§goto(addr307);
                                 }
                              }
                              §§goto(addr332);
                           }
                           §§goto(addr307);
                        }
                        §§goto(addr144);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                  }
                  §§goto(addr73);
               }
               §§goto(addr336);
            }
         }
         §§goto(addr57);
      }
      
      public function §5!5§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6q§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§6q§.length));
                  if(_loc2_ || _loc1_)
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
      
      public function §-m§(param1:uint) : §?K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§6q§);
            if(!_loc3_)
            {
               return !!§§pop() ? this.§6q§[param1] as §?K§ : null;
            }
         }
         §§goto(addr40);
      }
      
      public function §0!r§(param1:String) : §?K§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            return !!this.§2h§[param1] ? this.§2h§[param1] as §?K§ : null;
         }
         §§goto(addr34);
      }
      
      public function §!!Y§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §?K§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(_loc5_ || param1)
         {
            §§push(this.§6q§);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  addr47:
                  §§push(uint(this.§6q§.length));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§&n§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr47);
      }
      
      public function §^5§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §?K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(!(_loc6_ && param2))
         {
            §§push(this.§6q§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§6q§.length));
                  if(_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§?j§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr41);
      }
      
      public function §&n§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §?K§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.§6q§ == null)
            {
               while(true)
               {
                  this.§6q§ = [];
                  addr84:
                  while(true)
                  {
                  }
                  addr31:
                  if(!(_loc7_ && this))
                  {
                     throw new Error("File already exists: " + param2 + ". Please remove first.");
                  }
               }
            }
            while(true)
            {
               if(this.§2h§ != null)
               {
                  if(this.§2h§[param2])
                  {
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr31);
                        }
                        §§goto(addr84);
                     }
                     else if(_loc6_ || param3)
                     {
                        if(false)
                        {
                           continue;
                        }
                        addr85:
                        addr85:
                        var _loc5_:§?K§;
                        (_loc5_ = new §?K§()).§-F§ = param2;
                        if(_loc6_ || param3)
                        {
                           _loc5_.§1!0§(param3,param4);
                           loop2:
                           while(true)
                           {
                              if(param1 >= this.§6q§.length)
                              {
                                 continue;
                              }
                              §§push(this.§6q§);
                              if(_loc6_ || param2)
                              {
                                 §§pop().splice(param1,0,_loc5_);
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop().push(_loc5_);
                                 }
                                 addr170:
                              }
                           }
                        }
                        §§goto(addr172);
                     }
                     else
                     {
                        addr60:
                        this.§2h§ = new Dictionary();
                     }
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr85);
               }
               §§goto(addr60);
            }
            §§goto(addr85);
         }
         §§goto(addr84);
      }
      
      public function §?j§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §?K§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(this.§6q§ == null)
            {
               while(true)
               {
                  this.§6q§ = [];
                  addr94:
                  while(true)
                  {
                  }
                  addr65:
                  if(_loc8_ && this)
                  {
                     continue;
                  }
                  addr72:
                  this.§2h§ = new Dictionary();
                  addr95:
                  var _loc6_:§?K§;
                  (_loc6_ = new §?K§()).§-F§ = param2;
                  addr76:
                  if(_loc7_ || param2)
                  {
                     _loc6_.§'!C§(param3,param4,param5);
                     do
                     {
                        if(param1 >= this.§6q§.length)
                        {
                           if(!(_loc8_ && param2))
                           {
                              addr180:
                              this.§6q§.push(_loc6_);
                           }
                           do
                           {
                              loop5:
                              while(true)
                              {
                                 this.§2h§[param2] = _loc6_;
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 addr164:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           while(!(_loc7_ || param3));
                           
                           continue;
                           addr182:
                        }
                        else
                        {
                           §§push(this.§6q§);
                           if(!(_loc8_ && param1))
                           {
                              §§pop().splice(param1,0,_loc6_);
                              §§goto(addr164);
                           }
                           else
                           {
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr180);
                     }
                     while(!(_loc7_ || this));
                     
                     return _loc6_;
                  }
                  §§goto(addr164);
                  addr76:
               }
            }
            while(true)
            {
               if(this.§2h§ != null)
               {
                  if(this.§2h§[param2])
                  {
                     if(!_loc7_)
                     {
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     if(!(_loc8_ && this))
                     {
                        if(!(_loc8_ && this))
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        §§goto(addr76);
                     }
                  }
                  break;
               }
               if(_loc7_ || param2)
               {
                  §§goto(addr65);
               }
               §§goto(addr76);
            }
            §§goto(addr95);
         }
         §§goto(addr72);
      }
      
      public function §2]§(param1:uint) : §?K§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?K§ = null;
         if(!_loc3_)
         {
            §§push(this.§6q§);
            if(!_loc3_)
            {
               §§push(§§pop() == null);
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(this.§2h§ == null);
                                 if(!_loc3_)
                                 {
                                    addr53:
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                       addr56:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr88);
                                 }
                                 §§pop();
                                 if(_loc4_ || param1)
                                 {
                                 }
                                 §§goto(addr89);
                              }
                              addr88:
                              if(§§pop())
                              {
                                 addr91:
                                 _loc2_ = this.§6q§[param1] as §?K§;
                                 addr89:
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc2_ != null)
                                    {
                                       while(true)
                                       {
                                          this.§6q§.splice(param1,1);
                                          while(true)
                                          {
                                             §§goto(addr117);
                                          }
                                       }
                                    }
                                 }
                                 else if(false)
                                 {
                                    addr117:
                                    while(true)
                                    {
                                       delete this.§2h§[_loc2_.§-F§];
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    return _loc2_;
                                 }
                              }
                              return null;
                              §§push(param1 < this.§6q§.length);
                           }
                           §§goto(addr53);
                        }
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr88);
            }
         }
         §§goto(addr91);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§@!R§(param1))
         {
         }
         return this.§@!R§ === this.§8I§;
      }
      
      protected function §8I§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<C§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(!(_loc4_ && param1))
         {
            if(param1.bytesAvailable >= 4)
            {
               if(_loc5_ || _loc2_)
               {
                  _loc2_ = param1.readUnsignedInt();
                  var _loc3_:* = _loc2_;
                  addr93:
                  if(!_loc4_)
                  {
                     §§push(§ R§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(_loc4_ && param1)
                                 {
                                    addr149:
                                 }
                              }
                              else
                              {
                                 addr334:
                                 §§push(9);
                                 if(_loc5_ || this)
                                 {
                                    addr342:
                                 }
                              }
                              addr347:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§@!R§ = this.§8j§;
                                    this.§<w§ = new §?K§(this.§%5§);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    addr356:
                                    §§push(true);
                                    if(_loc5_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr361);
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
                                    this.§@!R§ = this.§8I§;
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr356);
                                    break;
                                 default:
                                    throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                              }
                              addr361:
                              return §§pop();
                              §§push(false);
                           }
                           else
                           {
                              §§push(§+9§);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr141:
                                          §§push(1);
                                          if(_loc5_ || this)
                                          {
                                             §§goto(addr149);
                                          }
                                       }
                                       else
                                       {
                                          addr179:
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             addr297:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(§7!M§);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_ || param1)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr179);
                                                }
                                                else
                                                {
                                                   addr317:
                                                   §§push(8);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr342);
                                                   }
                                                   else
                                                   {
                                                      addr320:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(§[!b§);
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
                                                            if(_loc4_)
                                                            {
                                                               addr223:
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                         else
                                                         {
                                                            addr243:
                                                            §§push(5);
                                                            if(_loc5_)
                                                            {
                                                               addr246:
                                                               §§goto(addr347);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr320);
                                                            }
                                                         }
                                                         §§goto(addr347);
                                                      }
                                                      else
                                                      {
                                                         §§push(§]0§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     §§push(4);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§goto(addr223);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr243);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        addr235:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§goto(addr243);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr289:
                                                                              §§push(7);
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                              }
                                                                              addr281:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr289);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr334);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§^!w§);
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    addr306:
                                                                                    §§push(_loc3_);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr309:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr322:
                                                                                          §§push(§<R§);
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
                                                                                       §§goto(addr347);
                                                                                       §§push(10);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(6);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr347);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr342);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   else
                                                   {
                                                      §§push(§6b§);
                                                      if(!_loc4_)
                                                      {
                                                         addr273:
                                                         §§push(_loc3_);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§goto(addr281);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                   }
                                                   §§goto(addr347);
                                                }
                                                §§goto(addr322);
                                             }
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr306);
                                    }
                                    §§goto(addr347);
                                 }
                                 §§goto(addr281);
                              }
                              §§goto(addr306);
                           }
                           §§goto(addr334);
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr141);
                  addr93:
               }
               §§goto(addr93);
            }
            §§goto(addr347);
         }
         §§goto(addr93);
      }
      
      protected function §8j§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<w§);
            if(!_loc2_)
            {
               §§push(§§pop().parse(param1));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§<w§);
                        addr151:
                        while(true)
                        {
                           §§push(§§pop().§>!;§);
                           addr152:
                           loop2:
                           while(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 this.§>!O§();
                                 while(true)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr107:
                                          if(this.§@!R§ != this.§8I§)
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                addr85:
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break loop2;
                                                   }
                                                   this.§4X§ = 0;
                                                   addr110:
                                                }
                                                else
                                                {
                                                   addr131:
                                                   addr133:
                                                }
                                                continue loop0;
                                             }
                                             if(!_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§@!R§ = this.§<C§;
                                                   §§goto(addr85);
                                                }
                                                this.§"d§ = new ByteArray();
                                                break;
                                                addr157:
                                             }
                                             continue;
                                             return true;
                                          }
                                          while(true)
                                          {
                                             §§push(false);
                                             if(_loc2_ && _loc2_)
                                             {
                                                break;
                                             }
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop2;
                                             §§goto(addr107);
                                          }
                                          addr36:
                                          if(_loc3_ || this)
                                          {
                                             return §§pop();
                                          }
                                          addr20:
                                          §§goto(addr110);
                                       }
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 addr139:
                                 while(true)
                                 {
                                    this.§9x§ = 0;
                                    §§goto(addr131);
                                 }
                                 §§goto(addr133);
                              }
                           }
                           while(true)
                           {
                              this.§@!R§ = this.§1!"§;
                              §§goto(addr157);
                           }
                        }
                     }
                  }
                  §§goto(addr20);
               }
               §§goto(addr152);
            }
            §§goto(addr151);
         }
         §§goto(addr139);
      }
      
      protected function §1!"§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc4_ && _loc2_))
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(false);
                     if(!(_loc4_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§9x§);
                        if(!(_loc4_ && this))
                        {
                           addr150:
                           §§push(8);
                           if(!(_loc4_ && param1))
                           {
                              addr147:
                              §§push(§§pop() >>> §§pop());
                              §§push(_loc2_ << 24);
                           }
                           §§pop().§9x§ = §§pop() | §§pop();
                           while(true)
                           {
                              §§push(this.§9x§);
                              if(_loc3_ || param1)
                              {
                                 break;
                              }
                              addr158:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 continue loop4;
                              }
                              §§goto(addr150);
                           }
                           addr152:
                           if(§§pop() == §6b§)
                           {
                              while(true)
                              {
                                 this.§"d§.length -= 3;
                                 loop2:
                                 while(_loc3_)
                                 {
                                    this.§@!R§ = this.§7t§;
                                    while(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    return true;
                                 }
                                 §§goto(addr152);
                                 §§goto(addr152);
                              }
                              addr106:
                           }
                           addr52:
                           this.§"d§.writeByte(_loc2_);
                           continue loop0;
                        }
                        §§goto(addr147);
                     }
                  }
                  §§goto(addr60);
               }
               else if(!(_loc4_ && _loc2_))
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr52);
               }
               §§goto(addr91);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr158);
         }
      }
      
      protected function §7t§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(!_loc5_)
         {
            if(param1.bytesAvailable < 12)
            {
               §§push(false);
               if(!(_loc5_ && _loc2_))
               {
                  return §§pop();
               }
               addr43:
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
                  loop2:
                  while(true)
                  {
                     §§push(uint(param1.readUnsignedInt()));
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(uint(param1.readUnsignedInt()));
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(this.§"d§.length != _loc3_)
                                    {
                                       this.§"d§.writeUnsignedInt(_loc2_);
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             loop7:
                                             for(; !(_loc6_ || _loc3_); this.§@!R§ = this.§<C§)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§<w§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop().§1!3§ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(this.§<w§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§pop().§4B§ = §§pop();
                                                                        while(_loc6_ || _loc2_)
                                                                        {
                                                                           if(_loc5_ && param1)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           continue loop12;
                                                                           §§pop().§7f§(this.§"d§);
                                                                           do
                                                                           {
                                                                              this.§>!O§();
                                                                           }
                                                                           while(!_loc6_);
                                                                           
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr201:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          addr131:
                                          this.§"d§.writeUnsignedInt(_loc3_);
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§"d§.writeUnsignedInt(_loc4_);
                                                this.§@!R§ = this.§1!"§;
                                                if(_loc6_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr43);
                                    }
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§"d§.position = 0;
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr201);
                                 §§push(this.§<w§);
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      protected function §>!O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§6q§.push(this.§<w§);
            do
            {
               if(this.§<w§.§-F§)
               {
                  loop1:
                  while(true)
                  {
                     this.§2h§[this.§<w§.§-F§] = this.§<w§;
                     addr100:
                     addr79:
                     while(true)
                     {
                     }
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     §§goto(addr100);
                  }
               }
               while(true)
               {
                  dispatchEvent(new §5#§(§5#§.§0!t§,this.§<w§));
                  §§goto(addr79);
                  §§goto(addr100);
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      protected function §;q§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var evt:Event = param1;
         if(!_loc5_)
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§2!2§))
            {
               if(!(_loc5_ && _loc3_))
               {
                  this.close();
                  if(!_loc5_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
         catch(e:Error)
         {
            if(!_loc5_)
            {
               close();
            }
            while(hasEventListener(§'!U§.§2!v§))
            {
               if(!_loc4_)
               {
                  continue;
               }
               dispatchEvent(new §'!U§(§'!U§.§2!v§,e.message));
            }
            throw e;
         }
      }
      
      protected function §&g§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §1o§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(!_loc3_);
         
      }
      
      protected function §"!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§2!2§.addEventListener(Event.COMPLETE,this.§&g§);
            loop0:
            while(true)
            {
               this.§2!2§.addEventListener(Event.OPEN,this.§&g§);
               loop1:
               do
               {
                  this.§2!2§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&g§);
                  while(_loc1_)
                  {
                     this.§2!2§.addEventListener(IOErrorEvent.IO_ERROR,this.§1o§);
                     do
                     {
                        this.§2!2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1o§);
                        do
                        {
                           this.§2!2§.addEventListener(ProgressEvent.PROGRESS,this.§;q§);
                        }
                        while(_loc2_ && this);
                        
                     }
                     while(!_loc1_);
                     
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc1_);
               
            }
         }
      }
      
      protected function §1!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§2!2§.removeEventListener(Event.COMPLETE,this.§&g§);
            loop0:
            while(true)
            {
               this.§2!2§.removeEventListener(Event.OPEN,this.§&g§);
               do
               {
                  this.§2!2§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&g§);
                  loop2:
                  do
                  {
                     this.§2!2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1o§);
                     while(true)
                     {
                        this.§2!2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1o§);
                        while(!(_loc1_ && this))
                        {
                           continue loop0;
                           this.§2!2§.removeEventListener(ProgressEvent.PROGRESS,this.§;q§);
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc1_ && _loc1_);
                  
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
   }
}
