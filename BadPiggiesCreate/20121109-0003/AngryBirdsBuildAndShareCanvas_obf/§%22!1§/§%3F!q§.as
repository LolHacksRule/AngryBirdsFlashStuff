package §"!1§
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
   
   public class §?!q§ extends EventDispatcher
   {
      
      static const §-!Q§:uint = 33639248;
      
      static const §9b§:uint = 808471376;
      
      static const §'!b§:uint = 67324752;
      
      static const §]!K§:uint = 84233040;
      
      static const §'!n§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §0L§:uint = 134695760;
      
      static const §3!w§:uint = 134630224;
      
      static const § n§:uint = 134695760;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!Q§ = 33639248;
            loop0:
            while(true)
            {
               §9b§ = 808471376;
               while(true)
               {
                  §'!b§ = 67324752;
                  loop2:
                  for(; _loc2_ || _loc2_; loop7:
                  while(_loc2_ || _loc2_)
                  {
                     §0L§ = 134695760;
                     while(!_loc1_)
                     {
                        §3!w§ = 134630224;
                        while(_loc2_)
                        {
                           § n§ = 134695760;
                           if(!(_loc2_ || §?!q§))
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop7;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr87);
                  })
                  {
                     §]!K§ = 84233040;
                     loop3:
                     while(true)
                     {
                        §'!n§ = 101010256;
                        addr94:
                        while(true)
                        {
                           SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                           addr87:
                           while(!_loc1_)
                           {
                              while(true)
                              {
                                 SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                                 continue loop2;
                              }
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr46);
            }
         }
         §§goto(addr89);
      }
      
      protected var §?!_§:Array;
      
      protected var §0u§:Dictionary;
      
      protected var §+!^§:URLStream;
      
      protected var §<d§:String;
      
      protected var §44§:Function;
      
      protected var §!!A§:§4!b§;
      
      protected var §+!_§:ByteArray;
      
      protected var §#"§:uint;
      
      protected var §6!S§:uint;
      
      public function §?!q§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§<d§ = param1;
               loop1:
               while(_loc2_ || _loc3_)
               {
                  while(true)
                  {
                     this.§44§ = this.§1§;
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
         §§goto(addr67);
      }
      
      public function get §`!U§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§44§ === this.§1§);
         if(_loc1_)
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
            §§push(!this.§+!^§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this.§44§ == this.§1§);
                        if(_loc3_ || this)
                        {
                           loop0:
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 this.§+!^§ = new URLStream();
                              }
                              loop1:
                              while(true)
                              {
                                 this.§+!^§.endian = Endian.LITTLE_ENDIAN;
                                 loop2:
                                 while(true)
                                 {
                                    this.§,T§();
                                    addr79:
                                    loop5:
                                    while(true)
                                    {
                                       this.§?!_§ = [];
                                       loop6:
                                       while(!_loc2_)
                                       {
                                          this.§0u§ = new Dictionary();
                                          while(true)
                                          {
                                             this.§44§ = this.§"Y§;
                                             while(!_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.§+!^§.load(param1);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop0;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue;
                                                      continue;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           return;
                           addr100:
                        }
                        break;
                     }
                  }
                  addr126:
               }
               §§goto(addr100);
            }
            §§goto(addr126);
         }
         §§goto(addr79);
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(!this.§+!^§);
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
                        §§push(this.§44§ == this.§1§);
                        loop3:
                        while(!_loc3_)
                        {
                           loop11:
                           while(true)
                           {
                              §§push(this.parse(param1));
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              if(!§§pop())
                              {
                                 dispatchEvent(new §&"<§(§&"<§.§,"$§,"EOF"));
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       addr84:
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§44§ = this.§1§;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         dispatchEvent(new Event(Event.COMPLETE));
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§goto(addr19);
                                                            }
                                                            continue loop13;
                                                            §§goto(addr98);
                                                         }
                                                         addr98:
                                                         addr57:
                                                      }
                                                      addr117:
                                                      while(true)
                                                      {
                                                         break loop13;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§44§ = this.§"Y§;
                                                      addr104:
                                                      addr139:
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         continue loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§?!_§ = [];
                                                         §§goto(addr104);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§0u§ = new Dictionary();
                                                }
                                             }
                                             while(true)
                                             {
                                                param1.position = 0;
                                             }
                                          }
                                          while(true)
                                          {
                                             param1.endian = Endian.LITTLE_ENDIAN;
                                             §§goto(addr117);
                                          }
                                       }
                                       §§goto(addr104);
                                    }
                                    §§goto(addr19);
                                 }
                                 §§goto(addr57);
                              }
                              §§goto(addr84);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               while(§§pop())
               {
                  §§goto(addr139);
               }
               addr19:
               return;
            }
         }
         §§goto(addr111);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§+!^§)
            {
               loop0:
               while(true)
               {
                  this.§44§ = this.§1§;
                  addr82:
                  while(true)
                  {
                     this.§1">§();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §>!3§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:* = uint(0);
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§4!b§ = null;
         if(!_loc10_)
         {
            §§push(param1 == null);
            if(_loc11_ || _loc3_)
            {
               §§push(!§§pop());
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        addr53:
                        §§pop();
                        addr69:
                        if(_loc11_)
                        {
                           §§push(this.§?!_§.length > 0);
                        }
                        _loc3_ = param1.endian;
                        _loc4_ = new ByteArray();
                        if(!(_loc10_ && _loc3_))
                        {
                           param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
                           if(_loc11_ || param1)
                           {
                              §§push(0);
                              loop0:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr144:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    addr145:
                                    while(true)
                                    {
                                       addr121:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr119);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc11_ || param1)
                     {
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr347);
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §-!E§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§?!_§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  addr46:
                  §§push(uint(this.§?!_§.length));
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
         §§goto(addr46);
      }
      
      public function §@!M§(param1:uint) : §4!b§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?!_§);
            if(_loc2_ || param1)
            {
               return !!§§pop() ? this.§?!_§[param1] as §4!b§ : null;
            }
         }
         §§goto(addr55);
      }
      
      public function §3" §(param1:String) : §4!b§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            return !!this.§0u§[param1] ? this.§0u§[param1] as §4!b§ : null;
         }
         §§goto(addr38);
      }
      
      public function §>!g§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §4!b§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this);
         if(_loc5_)
         {
            §§push(this.§?!_§);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  addr42:
                  §§push(uint(this.§?!_§.length));
                  if(_loc5_ || param1)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§?&§(§§pop(),param1,param2,param3);
            }
         }
         §§goto(addr42);
      }
      
      public function §+!Z§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §4!b§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         if(!_loc6_)
         {
            §§push(this.§?!_§);
            if(_loc5_ || param2)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(uint(this.§?!_§.length));
                  if(_loc6_ && param3)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§&r§(§§pop(),param1,param2,param3,param4);
            }
         }
         §§goto(addr41);
      }
      
      public function §?&§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §4!b§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.§?!_§ == null)
            {
               while(true)
               {
                  this.§?!_§ = [];
                  addr79:
                  while(true)
                  {
                  }
               }
               addr66:
            }
            while(this.§0u§ != null)
            {
               if(this.§0u§[param2])
               {
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        if(!(_loc6_ || param3))
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        §§goto(addr79);
                     }
                     addr61:
                  }
                  else if(_loc6_)
                  {
                     if(false)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr79);
               }
               var _loc5_:§4!b§;
               (_loc5_ = new §4!b§()).§['§ = param2;
               if(_loc6_)
               {
                  _loc5_.§'h§(param3,param4);
                  loop2:
                  while(true)
                  {
                     if(param1 < this.§?!_§.length)
                     {
                        §§push(this.§?!_§);
                        if(_loc6_)
                        {
                           §§pop().splice(param1,0,_loc5_);
                           loop3:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              addr150:
                              while(_loc6_)
                              {
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           §§pop().push(_loc5_);
                           §§goto(addr150);
                        }
                     }
                  }
               }
               §§goto(addr136);
            }
            this.§0u§ = new Dictionary();
            §§goto(addr61);
         }
         §§goto(addr79);
      }
      
      public function §&r§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §4!b§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            if(this.§?!_§ == null)
            {
               while(true)
               {
                  this.§?!_§ = [];
                  addr84:
                  while(true)
                  {
                  }
                  addr55:
                  if(_loc8_ && param1)
                  {
                     continue;
                  }
                  this.§0u§ = new Dictionary();
                  addr85:
                  var _loc6_:§4!b§;
                  (_loc6_ = new §4!b§()).§['§ = param2;
                  if(_loc7_)
                  {
                     _loc6_.§&!V§(param3,param4,param5);
                     loop3:
                     while(true)
                     {
                        if(param1 < this.§?!_§.length)
                        {
                           §§push(this.§?!_§);
                           if(!_loc8_)
                           {
                              §§pop().splice(param1,0,_loc6_);
                              loop4:
                              while(true)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    while(true)
                                    {
                                       this.§0u§[param2] = _loc6_;
                                       if(_loc8_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       addr136:
                                       addr157:
                                       while(true)
                                       {
                                          §§push(this.§?!_§);
                                       }
                                    }
                                    return _loc6_;
                                    addr110:
                                 }
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              §§pop().push(_loc6_);
                              continue loop3;
                           }
                        }
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr110);
                  addr66:
               }
            }
            loop2:
            while(true)
            {
               if(this.§0u§ != null)
               {
                  if(this.§0u§[param2])
                  {
                     if(!_loc8_)
                     {
                        if(!_loc8_)
                        {
                           throw new Error("File already exists: " + param2 + ". Please remove first.");
                        }
                        addr53:
                        if(_loc7_)
                        {
                           §§goto(addr55);
                        }
                        §§goto(addr84);
                     }
                     else if(!_loc8_)
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
                     §§goto(addr66);
                  }
                  break;
               }
               §§goto(addr53);
            }
            §§goto(addr85);
         }
         §§goto(addr46);
      }
      
      public function §1l§(param1:uint) : §4!b§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!b§ = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§?!_§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || this)
                           {
                              addr58:
                              §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr66:
                                 §§push(this.§0u§ == null);
                                 if(_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_)
                                    {
                                       addr75:
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             §§goto(addr94);
                                          }
                                       }
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr107);
                           }
                           addr94:
                           §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              addr107:
                              if(param1 < this.§?!_§.length)
                              {
                                 addr110:
                                 _loc2_ = this.§?!_§[param1] as §4!b§;
                                 §§goto(addr108);
                              }
                              §§goto(addr172);
                           }
                           addr108:
                           if(_loc3_ || this)
                           {
                              if(_loc2_ == null)
                              {
                                 addr172:
                                 return null;
                              }
                           }
                           this.§?!_§.splice(param1,1);
                           delete this.§0u§[_loc2_.§['§];
                           return _loc2_;
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr58);
               }
               §§goto(addr75);
            }
            §§goto(addr110);
         }
         §§goto(addr66);
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§44§(param1))
         {
         }
         return this.§44§ === this.§1§;
      }
      
      protected function §1§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"Y§(param1:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:uint = 0;
         if(_loc5_)
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
                     §§push(§'!b§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(0);
                                 if(!(_loc5_ || this))
                                 {
                                    addr274:
                                 }
                              }
                              else
                              {
                                 addr146:
                                 §§push(1);
                                 if(_loc4_ && _loc2_)
                                 {
                                    addr228:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§-!Q§);
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_ || this)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr146);
                                       }
                                       else
                                       {
                                          addr312:
                                          §§push(8);
                                          if(!_loc4_)
                                          {
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§44§ = this.§#!a§;
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
                                                   this.§44§ = this.§1§;
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc5_ || this))
                                                         {
                                                            break;
                                                         }
                                                         addr341:
                                                         §§push(true);
                                                         if(_loc5_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      addr74:
                                                   }
                                                   §§goto(addr341);
                                                default:
                                                   throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
                                             }
                                             this.§!!A§ = new §4!b§(this.§<d§);
                                             addr327:
                                             §§goto(addr74);
                                             addr327:
                                          }
                                          else
                                          {
                                             addr322:
                                             §§goto(addr327);
                                          }
                                          §§goto(addr327);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§'!n§);
                                       if(_loc5_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc4_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(2);
                                                   if(!(_loc5_ || this))
                                                   {
                                                      addr205:
                                                   }
                                                }
                                                §§goto(addr327);
                                             }
                                             else
                                             {
                                                §§push(§9b§);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(3);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr312);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§]!K§);
                                                         if(_loc5_)
                                                         {
                                                            addr209:
                                                            §§push(_loc3_);
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(4);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr228);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr312);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr240:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(5);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr271:
                                                                              §§push(6);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr274);
                                                                              }
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr263:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr294:
                                                                                       §§push(7);
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr327);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§0L§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr278:
                                                                                       §§push(_loc3_);
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          addr286:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr312);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§3!w§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr306:
                                                                                                §§push(_loc3_);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                }
                                                                                                addr318:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   addr319:
                                                                                                   §§push(9);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr322);
                                                                                                   }
                                                                                                   §§goto(addr327);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr327);
                                                                                                   §§push(10);
                                                                                                }
                                                                                                §§goto(addr327);
                                                                                             }
                                                                                             addr317:
                                                                                             §§goto(addr318);
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§goto(addr327);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                           §§goto(addr278);
                                                                        }
                                                                     }
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr312);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr319);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr317);
                                                                        §§push(§ n§);
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr209);
                                             }
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr327);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr278);
                           }
                           §§goto(addr327);
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr317);
                  }
                  §§goto(addr294);
                  addr93:
               }
               §§goto(addr93);
            }
            else
            {
               §§push(false);
            }
            addr346:
            return §§pop();
         }
         §§goto(addr93);
      }
      
      protected function §#!a§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§!!A§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop().parse(param1));
               loop0:
               do
               {
                  if(§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§push(this.§!!A§);
                        addr166:
                        loop8:
                        while(true)
                        {
                           §§push(§§pop().§'H§);
                           loop3:
                           for(; !§§pop(); continue loop8)
                           {
                              while(true)
                              {
                                 this.§9A§();
                                 while(true)
                                 {
                                    if(this.§44§ == this.§1§)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!(_loc2_ && param1))
                                          {
                                             break;
                                          }
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       return §§pop();
                                       addr20:
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!_loc3_)
                                       {
                                          addr115:
                                       }
                                       if(!_loc3_)
                                       {
                                          break loop3;
                                       }
                                       this.§44§ = this.§"Y§;
                                       addr87:
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          break;
                                       }
                                       continue;
                                       addr115:
                                       return true;
                                       addr123:
                                    }
                                    §§goto(addr87);
                                    §§goto(addr115);
                                 }
                                 if(_loc3_ || _loc3_)
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 continue loop9;
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr108);
                              }
                              else
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       while(true)
                                       {
                                          this.§#"§ = 0;
                                          continue loop7;
                                       }
                                       addr141:
                                    }
                                    this.§6!S§ = 0;
                                    §§goto(addr123);
                                 }
                              }
                              §§goto(addr115);
                           }
                           this.§44§ = this.§%!z§;
                           this.§+!_§ = new ByteArray();
                           §§goto(addr141);
                        }
                     }
                     addr164:
                  }
                  §§goto(addr20);
               }
               while(!_loc3_);
               
               return §§pop();
            }
            §§goto(addr166);
         }
         §§goto(addr164);
      }
      
      protected function §%!z§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:uint = 0;
         loop0:
         while(true)
         {
            if(param1.bytesAvailable <= 0)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc3_ || this)
                  {
                     §§push(false);
                     if(_loc3_ || _loc3_)
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
                        §§push(this.§#"§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(8);
                           if(!_loc4_)
                           {
                              addr137:
                              §§push(§§pop() >>> §§pop());
                              §§push(_loc2_ << 24);
                           }
                           §§pop().§#"§ = §§pop() | §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(this.§#"§);
                              if(_loc4_ && this)
                              {
                                 continue loop1;
                              }
                              if(§§pop() == §0L§)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    this.§+!_§.length -= 3;
                                 }
                                 this.§44§ = this.§`!t§;
                                 break;
                                 addr121:
                              }
                              loop3:
                              while(true)
                              {
                                 this.§+!_§.writeByte(_loc2_);
                                 addr55:
                                 while(true)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc4_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                           if(_loc4_)
                           {
                              §§goto(addr121);
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr137);
                     }
                  }
                  addr84:
                  return true;
               }
               §§goto(addr55);
            }
            else
            {
               §§push(uint(param1.readUnsignedByte()));
            }
            §§goto(addr158);
         }
      }
      
      protected function §`!t§(param1:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(!(_loc5_ && _loc2_))
         {
            if(param1.bytesAvailable < 12)
            {
               §§push(false);
               if(_loc6_ || this)
               {
                  return §§pop();
               }
               addr48:
               return §§pop();
            }
         }
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
                        if(_loc5_)
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        _loc4_ = §§pop();
                        loop5:
                        do
                        {
                           if(this.§+!_§.length != _loc3_)
                           {
                              this.§+!_§.writeUnsignedInt(_loc2_);
                              loop6:
                              while(true)
                              {
                                 this.§+!_§.writeUnsignedInt(_loc3_);
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr185);
                                    §§goto(addr201);
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr209);
                        }
                        while(!(_loc6_ || this));
                        
                        if(!_loc6_)
                        {
                           continue loop2;
                        }
                        §§goto(addr46);
                     }
                  }
               }
            }
         }
      }
      
      protected function §9A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?!_§.push(this.§!!A§);
            loop0:
            do
            {
               if(this.§!!A§.§['§)
               {
                  if(!_loc1_)
                  {
                     this.§0u§[this.§!!A§.§['§] = this.§!!A§;
                     addr85:
                     while(true)
                     {
                     }
                     addr85:
                  }
                  §§goto(addr85);
               }
               while(true)
               {
                  dispatchEvent(new §%3§(§%3§.§,"6§,this.§!!A§));
                  while(!(_loc1_ && this))
                  {
                     this.§!!A§ = null;
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr85);
               }
            }
            while(_loc1_);
            
            return;
         }
         §§goto(addr85);
      }
      
      protected function § J§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var evt:Event = param1;
         if(_loc4_ || param1)
         {
            dispatchEvent(evt.clone());
         }
         try
         {
            if(this.parse(this.§+!^§))
            {
               if(_loc4_ || _loc3_)
               {
                  this.close();
                  if(!_loc4_)
                  {
                  }
                  addr130:
                  return;
                  addr67:
               }
               dispatchEvent(new Event(Event.COMPLETE));
            }
            §§goto(addr67);
         }
         catch(e:Error)
         {
            if(_loc4_)
            {
               close();
               do
               {
                  if(!hasEventListener(§&"<§.§,"$§))
                  {
                     throw e;
                  }
               }
               while(_loc5_ && param1);
               
            }
            dispatchEvent(new §&"<§(§&"<§.§,"$§,e.message));
         }
         §§goto(addr130);
      }
      
      protected function §'Y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      protected function §>!<§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.close();
         }
         do
         {
            dispatchEvent(param1.clone());
         }
         while(_loc3_ && param1);
         
      }
      
      protected function §,T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§+!^§.addEventListener(Event.COMPLETE,this.§'Y§);
         }
         loop0:
         while(true)
         {
            this.§+!^§.addEventListener(Event.OPEN,this.§'Y§);
            while(true)
            {
               this.§+!^§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'Y§);
               loop2:
               while(true)
               {
                  this.§+!^§.addEventListener(IOErrorEvent.IO_ERROR,this.§>!<§);
                  while(true)
                  {
                     this.§+!^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!<§);
                     while(!_loc2_)
                     {
                        continue loop2;
                        this.§+!^§.addEventListener(ProgressEvent.PROGRESS,this.§ J§);
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §1">§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+!^§.removeEventListener(Event.COMPLETE,this.§'Y§);
            loop0:
            while(true)
            {
               this.§+!^§.removeEventListener(Event.OPEN,this.§'Y§);
               do
               {
                  this.§+!^§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'Y§);
                  while(true)
                  {
                     this.§+!^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!<§);
                     addr73:
                     while(_loc2_)
                     {
                        this.§+!^§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!<§);
                        continue loop0;
                     }
                  }
               }
               while(!_loc2_);
               
            }
         }
      }
   }
}
