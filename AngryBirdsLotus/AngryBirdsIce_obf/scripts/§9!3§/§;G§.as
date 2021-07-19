package §9!3§
{
   import §2%§.§@Y§;
   import flash.utils.*;
   
   public class §;G§
   {
      
      public static const §^x§:int = 0;
      
      public static const §>!?§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §,!D§:int = 6;
      
      public static const §3i§:int = 7;
      
      public static const § var§:int = 8;
      
      public static const §-3§:int = 9;
      
      public static const §2d§:int = 10;
      
      protected static var §+!,§:Boolean;
      
      protected static var §4D§:Boolean;
      
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc2_))
         {
            §^x§ = 0;
            loop0:
            while(true)
            {
               §>!?§ = 1;
               COMPRESSION_REDUCED_1 = 2;
               COMPRESSION_REDUCED_2 = 3;
               while(true)
               {
                  COMPRESSION_REDUCED_3 = 4;
                  COMPRESSION_REDUCED_4 = 5;
                  §,!D§ = 6;
                  loop2:
                  while(!_loc7_)
                  {
                     §3i§ = 7;
                     while(!_loc7_)
                     {
                        while(!(_loc7_ && _loc3_))
                        {
                           while(true)
                           {
                              §-3§ = 9;
                              do
                              {
                                 §2d§ = 10;
                              }
                              while(_loc7_ && _loc1_);
                              
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(_loc6_ || _loc1_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr46);
                                 }
                                 §+!,§ = describeType(ByteArray).factory.method.(if(!(_loc7_ && §;G§))
                                 {
                                    if(@name != "uncompress")
                                    {
                                       continue loop8;
                                    }
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue loop8;
                                    }
                                 }, _loc1_[_loc2_] = _loc4_, false).parameter.length() > 0;
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §4D§ = describeType(ByteArray).factory.method.(!(_loc7_ && _loc3_)).length() > 0;
                                 }
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            § var§ = 8;
            §§goto(addr55);
         }
      }
      
      protected var §]!@§:int = 0;
      
      protected var §?@§:String = "2.0";
      
      protected var §@c§:int = 8;
      
      protected var §'&§:Boolean = false;
      
      protected var §@a§:int = -1;
      
      protected var §1;§:int = -1;
      
      protected var §;`§:int = -1;
      
      protected var §`!D§:Boolean = false;
      
      protected var §`O§:Boolean = false;
      
      protected var §^F§:Date;
      
      protected var §2!3§:uint;
      
      protected var §@h§:Boolean = false;
      
      protected var §]x§:uint = 0;
      
      protected var §!S§:uint = 0;
      
      protected var §;T§:String = "";
      
      protected var §"i§:String;
      
      protected var §7,§:Dictionary;
      
      protected var §[!8§:String = "";
      
      protected var §]!0§:ByteArray;
      
      var §3!@§:uint;
      
      var §?!7§:uint = 0;
      
      var §5H§:uint = 0;
      
      protected var §?!<§:Boolean = false;
      
      protected var § N§:Function;
      
      public function §;G§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§ N§ = this.§7!C§;
         super();
         loop0:
         while(true)
         {
            this.§"i§ = param1;
            while(true)
            {
               this.§7,§ = new Dictionary();
               loop2:
               while(_loc3_)
               {
                  this.§]!0§ = new ByteArray();
                  while(_loc3_)
                  {
                     this.§]!0§.endian = Endian.BIG_ENDIAN;
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop2;
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function get §=_§() : Date
      {
         return this.§^F§;
      }
      
      public function set §=_§(param1:Date) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            if(_loc2_)
            {
               §§pop().§^F§ = param1 != null ? param1 : new Date();
               §§goto(addr46);
            }
            §§goto(addr39);
         }
         addr46:
      }
      
      public function get §;V§() : String
      {
         return this.§;T§;
      }
      
      public function set §;V§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;T§ = param1;
         }
      }
      
      function get §-!C§() : Boolean
      {
         return this.§`!D§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§?!<§)
            {
               if(_loc2_)
               {
                  addr24:
                  this.uncompress();
               }
            }
            return this.§]!0§;
         }
         §§goto(addr24);
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?l§(param1);
         }
      }
      
      public function §?l§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(param1 == null);
            if(!(_loc4_ && _loc3_))
            {
               §§push(!§§pop());
            }
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr171:
                     while(true)
                     {
                        §§push(param1.length > 0);
                     }
                  }
                  addr170:
               }
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || this)
                        {
                           param1.position = 0;
                        }
                        param1.readBytes(this.§]!0§,0,param1.length);
                        this.§3!@§ = §@Y§.§>!C§(this.§]!0§);
                        this.§@h§ = false;
                        addr156:
                     }
                     else
                     {
                        this.§]!0§.length = 0;
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              this.§]!0§.position = 0;
                              while(true)
                              {
                                 this.§?!<§ = false;
                                 addr71:
                                 while(_loc5_)
                                 {
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr171);
                              }
                              addr67:
                           }
                           else
                           {
                              §§goto(addr156);
                           }
                        }
                     }
                  }
               }
               if(_loc4_ && param2)
               {
                  continue;
               }
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     if(_loc5_ || param2)
                     {
                        this.compress();
                        if(false)
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr184);
               }
               this.§5H§ = this.§?!7§ = this.§]!0§.length;
               §§goto(addr184);
            }
         }
         §§goto(addr73);
      }
      
      public function get §?F§() : String
      {
         return this.§?@§;
      }
      
      public function get §@§() : uint
      {
         return this.§?!7§;
      }
      
      public function get §]!D§() : uint
      {
         return this.§5H§;
      }
      
      public function §5r§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(_loc4_ || param1)
         {
            §§push(this.§?!<§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.uncompress();
                  }
                  addr136:
               }
               while(true)
               {
                  this.§]!0§.position = 0;
                  §§push(param2);
                  loop1:
                  while(true)
                  {
                     if(§§pop() != "utf-8")
                     {
                        §§push(this.§]!0§.readMultiByte(this.§]!0§.bytesAvailable,param2));
                        continue;
                     }
                     loop4:
                     while(true)
                     {
                        §§push(this.§]!0§.readUTFBytes(this.§]!0§.bytesAvailable));
                        addr125:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop6:
                           while(true)
                           {
                              addr64:
                              while(true)
                              {
                                 this.§]!0§.position = 0;
                                 if(!(_loc5_ && this))
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 continue loop6;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public function §;!#§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§]!0§.length = 0;
         this.§]!0§.position = 0;
         this.§?!<§ = false;
         loop0:
         while(true)
         {
            §§push(param1);
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc5_ || param2)
               {
                  §§push(!§§pop());
                  if(_loc5_)
                  {
                     addr128:
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(param2);
                                 addr107:
                                 while(true)
                                 {
                                    if(§§pop() == "utf-8")
                                    {
                                       this.§]!0§.writeUTFBytes(param1);
                                    }
                                    else
                                    {
                                       this.§]!0§.writeMultiByte(param1,param2);
                                       if(!_loc5_)
                                       {
                                          addr172:
                                          return;
                                       }
                                       if(_loc6_ && this)
                                       {
                                          addr113:
                                       }
                                       this.§3!@§ = §@Y§.§>!C§(this.§]!0§);
                                       if(!(_loc5_ || this))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          this.§@h§ = false;
                                          continue loop4;
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                              }
                           }
                        }
                        addr104:
                     }
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
               §§goto(addr128);
               addr94:
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§goto(addr104);
               §§push(§§pop().length > 0);
            }
         }
      }
      
      public function §"`§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:* = false;
         if(_loc19_)
         {
            if(param1 == null)
            {
               if(!(_loc20_ && param3))
               {
                  return 0;
               }
               addr108:
            }
            if(param3)
            {
               if(_loc19_ || param3)
               {
                  param1.writeUnsignedInt(§=!6§.§=9§);
               }
               param1.writeShort(this.§]!@§ << 8 | 20);
               loop0:
               while(true)
               {
                  param1.writeShort(this.§]!@§ << 8 | 20);
                  while(true)
                  {
                     param1.writeShort(this.§"i§ == "utf-8" ? 2048 : 0);
                     if(!_loc19_)
                     {
                        break;
                     }
                     param1.writeShort(!!this.§?!<§ ? int(§ var§) : int(§^x§));
                     if(false)
                     {
                        continue;
                     }
                     var _loc5_:Date = this.§^F§ != null ? this.§^F§ : new Date();
                     §§push(uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5);
                     if(_loc19_ || param1)
                     {
                        §§push(§§pop() | uint(_loc5_.getHours()) << 11);
                     }
                     var _loc6_:uint = §§pop();
                     §§push(uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5);
                     if(!(_loc20_ && param3))
                     {
                        §§push(§§pop() | uint(_loc5_.getFullYear() - 1980) << 9);
                     }
                     var _loc7_:uint = §§pop();
                     if(!_loc20_)
                     {
                        param1.writeShort(_loc6_);
                        loop2:
                        while(true)
                        {
                           param1.writeShort(_loc7_);
                           while(true)
                           {
                              param1.writeUnsignedInt(this.§3!@§);
                              loop4:
                              while(!_loc20_)
                              {
                                 continue loop2;
                                 loop6:
                                 while(true)
                                 {
                                    param1.writeUnsignedInt(this.§5H§);
                                    if(!(_loc19_ || this))
                                    {
                                       continue;
                                    }
                                    if(!_loc19_)
                                    {
                                       continue loop4;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       param1.writeUnsignedInt(this.§?!7§);
                                       continue loop6;
                                    }
                                 }
                                 var _loc8_:ByteArray;
                                 (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
                                 if(!_loc20_)
                                 {
                                    if(this.§"i§ == "utf-8")
                                    {
                                       if(_loc19_)
                                       {
                                          addr245:
                                          _loc8_.writeUTFBytes(this.§;T§);
                                          if(!_loc19_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc8_.writeMultiByte(this.§;T§,this.§"i§);
                                    }
                                    var _loc9_:uint = _loc8_.position;
                                    for(_loc10_ in this.§7,§)
                                    {
                                       if((_loc15_ = this.§7,§[_loc10_] as ByteArray) != null)
                                       {
                                          if(!_loc20_)
                                          {
                                             _loc8_.writeShort(uint(_loc10_));
                                             if(!(_loc20_ && param1))
                                             {
                                                _loc8_.writeShort(uint(_loc15_.length));
                                                if(!(_loc20_ && this))
                                                {
                                                   _loc8_.writeBytes(_loc15_);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc20_ && param3))
                                    {
                                       §§push(param2);
                                       if(_loc19_)
                                       {
                                          if(§§pop())
                                          {
                                             §§push(this.§@h§);
                                             if(_loc19_ || param2)
                                             {
                                                addr406:
                                                if(!§§pop())
                                                {
                                                   addr407:
                                                   §§push(this.§?!<§);
                                                   if(_loc19_)
                                                   {
                                                      addr411:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc19_)
                                                      {
                                                         addr414:
                                                         §§push(_loc16_ = §§pop());
                                                      }
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            this.uncompress();
                                                         }
                                                         this.§2!3§ = §@Y§.§,x§(this.§]!0§,0,this.§]!0§.length);
                                                         while(true)
                                                         {
                                                            this.§@h§ = true;
                                                            continue loop8;
                                                            addr343:
                                                            _loc8_.writeUnsignedInt(this.§2!3§);
                                                            if(!_loc19_)
                                                            {
                                                               continue;
                                                            }
                                                            if(false)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc8_.writeShort(4);
                                                                  if(!_loc20_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(_loc19_ || param3)
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     addr363:
                                                                     while(true)
                                                                     {
                                                                        this.compress();
                                                                        addr344:
                                                                        while(true)
                                                                        {
                                                                           _loc8_.writeShort(56026);
                                                                           continue loop13;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue;
                                                            }
                                                            var _loc11_:uint = _loc8_.position - _loc9_;
                                                            if(!(_loc20_ && param1))
                                                            {
                                                               §§push(param3);
                                                               if(_loc19_ || param2)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop37:
                                                                           while(true)
                                                                           {
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§[!8§);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(§§pop().length > 0);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop36;
                                                                                    }
                                                                                    loop15:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!(_loc20_ && param2))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§"i§);
                                                                                             addr475:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() == "utf-8")
                                                                                                {
                                                                                                   if(!(_loc20_ && param1))
                                                                                                   {
                                                                                                      _loc8_.writeUTFBytes(this.§[!8§);
                                                                                                      break loop38;
                                                                                                   }
                                                                                                   break loop38;
                                                                                                }
                                                                                                _loc8_.writeMultiByte(this.§[!8§,this.§"i§);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   break loop38;
                                                                                                }
                                                                                                if(!(_loc20_ && param3))
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break loop15;
                                                                                                   }
                                                                                                   continue loop38;
                                                                                                }
                                                                                                continue loop37;
                                                                                             }
                                                                                          }
                                                                                          addr473:
                                                                                       }
                                                                                       break loop38;
                                                                                    }
                                                                                    §§push(_loc8_.position - _loc9_);
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() - _loc11_);
                                                                                    }
                                                                                    var _loc12_:uint = §§pop();
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       param1.writeShort(_loc9_);
                                                                                       param1.writeShort(_loc11_);
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          if(param3)
                                                                                          {
                                                                                             param1.writeShort(_loc12_);
                                                                                             param1.writeShort(0);
                                                                                             while(true)
                                                                                             {
                                                                                                param1.writeShort(0);
                                                                                                addr566:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.writeUnsignedInt(0);
                                                                                                   addr552:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.writeUnsignedInt(param4);
                                                                                                      addr556:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr571:
                                                                                          }
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc11_);
                                                                                                if(!(_loc20_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop() + _loc12_);
                                                                                                }
                                                                                                if(§§pop() > 0)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         param1.writeBytes(_loc8_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               addr588:
                                                                                                               §§push(uint(0));
                                                                                                               break loop21;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr571);
                                                                                                      }
                                                                                                      §§goto(addr552);
                                                                                                   }
                                                                                                   §§goto(addr566);
                                                                                                }
                                                                                                §§goto(addr588);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(param3);
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§push(this.§]!0§.length > 0);
                                                                                                         }
                                                                                                         addr745:
                                                                                                      }
                                                                                                      loop27:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§?!<§);
                                                                                                            loop29:
                                                                                                            while(_loc19_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§push(uint(this.§]!0§.length));
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                     {
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           param1.writeBytes(this.§]!0§,0,_loc13_);
                                                                                                                           if(_loc19_ || param3)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              break loop27;
                                                                                                                           }
                                                                                                                           addr726:
                                                                                                                           §§push(§+!,§);
                                                                                                                           loop32:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc20_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§4D§);
                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       if(_loc20_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr745);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr711:
                                                                                                                                       _loc13_ = uint(this.§]!0§.length);
                                                                                                                                       param1.writeBytes(this.§]!0§,0,_loc13_);
                                                                                                                                       addr712:
                                                                                                                                       if(!(_loc19_ || param2))
                                                                                                                                       {
                                                                                                                                          §§goto(addr712);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.§]!0§.length - 6);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(uint(§§pop()));
                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                          {
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                          §§goto(addr782);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr781:
                                                                                                                                          addr782:
                                                                                                                                          addr782:
                                                                                                                                          var _loc14_:* = §§pop();
                                                                                                                                          if(!(_loc20_ && param2))
                                                                                                                                          {
                                                                                                                                             if(param3)
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr794);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr808);
                                                                                                                                          }
                                                                                                                                          addr794:
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(uint(§§pop() + 16));
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                addr808:
                                                                                                                                                §§push(_loc14_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          return §§pop();
                                                                                                                                          §§push(uint(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr782);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr610:
                                                                                                                           break loop27;
                                                                                                                        }
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§goto(addr740);
                                                                                                                           }
                                                                                                                           §§goto(addr610);
                                                                                                                           addr666:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.writeBytes(this.§]!0§,2,_loc13_);
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                        §§goto(addr740);
                                                                                                                     }
                                                                                                                     §§goto(addr711);
                                                                                                                  }
                                                                                                                  §§goto(addr782);
                                                                                                               }
                                                                                                               §§goto(addr726);
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(30 + _loc9_);
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               addr763:
                                                                                                               §§push(_loc12_);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr770:
                                                                                                                     §§push(§§pop() + _loc13_);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr770);
                                                                                                            }
                                                                                                            §§goto(addr781);
                                                                                                         }
                                                                                                         §§goto(addr770);
                                                                                                      }
                                                                                                      §§goto(addr763);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr666);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr550);
                                                                                 }
                                                                                 §§goto(addr475);
                                                                              }
                                                                              §§goto(addr504);
                                                                           }
                                                                        }
                                                                        addr502:
                                                                     }
                                                                     §§goto(addr464);
                                                                  }
                                                               }
                                                               §§goto(addr502);
                                                            }
                                                            §§goto(addr473);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr414);
                                                }
                                                §§goto(addr344);
                                             }
                                             §§goto(addr411);
                                          }
                                          §§goto(addr420);
                                       }
                                       §§goto(addr406);
                                    }
                                    §§goto(addr407);
                                 }
                                 §§goto(addr245);
                              }
                           }
                        }
                     }
                     §§goto(addr204);
                  }
                  addr70:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            else
            {
               param1.writeUnsignedInt(§=!6§.§%c§);
            }
            §§goto(addr70);
         }
         §§goto(addr108);
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         do
         {
            §§push(Boolean(param1.bytesAvailable));
            if(_loc3_ || param1)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
            }
            §§pop();
            if(!(_loc3_ || _loc2_))
            {
               break;
            }
            §§push(Boolean(this.§ N§(param1)));
            if(!_loc3_)
            {
               return §§pop();
            }
            addr78:
         }
         while(§§pop());
         
         §§goto(addr78);
         §§push(this.§ N§ === this.§9q§);
      }
      
      protected function §9q§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §7!C§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1.bytesAvailable >= 30)
         {
            this.§[@§(param1);
            do
            {
               if(this.§]x§ + this.§!S§ > 0)
               {
                  if(_loc2_)
                  {
                     this.§ N§ = this.§?w§;
                  }
                  continue;
               }
               this.§ N§ = this.§?&§;
               if(_loc3_)
               {
                  continue;
               }
               §§push(true);
            }
            while(_loc3_ && this);
            
            §§goto(addr29);
         }
         else
         {
            §§push(false);
            if(!(_loc3_ && this))
            {
               return §§pop();
            }
         }
         return §§pop();
      }
      
      protected function §?w§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.bytesAvailable >= this.§]x§ + this.§!S§)
            {
               this.§@!#§(param1);
               do
               {
                  this.§ N§ = this.§?&§;
               }
               while(_loc2_ && param1);
               
               §§push(true);
               addr87:
            }
            else
            {
               §§push(false);
               if(!(_loc2_ && param1))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr87);
      }
      
      protected function §?&§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         §§push(this.§`!D§);
         while(true)
         {
            if(§§pop())
            {
               this.§ N§ = this.§9q§;
               §§push(false);
               while(true)
               {
                  _loc2_ = §§pop();
                  §§goto(addr20);
               }
               addr123:
               addr114:
            }
            else
            {
               if(this.§?!7§ != 0)
               {
                  if(param1.bytesAvailable >= this.§?!7§)
                  {
                     loop1:
                     while(true)
                     {
                        this.§,?§(param1);
                        while(_loc4_)
                        {
                           if(!_loc4_)
                           {
                              this.§ N§ = this.§9q§;
                           }
                           else
                           {
                              addr100:
                           }
                           this.§ N§ = this.§9q§;
                           if(!_loc4_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr20);
                        }
                        else
                        {
                           §§goto(addr123);
                        }
                     }
                  }
                  else
                  {
                     addr38:
                     §§push(false);
                     while(!_loc3_)
                     {
                        _loc2_ = §§pop();
                        addr20:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                        }
                        return §§pop();
                     }
                     continue;
                     addr38:
                  }
                  §§goto(addr38);
               }
               §§goto(addr100);
            }
            §§goto(addr38);
         }
      }
      
      protected function §[@§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc13_)
         {
            this.§]!@§ = _loc2_ >> 8;
            if(_loc13_)
            {
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!(_loc12_ && _loc3_))
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§?@§ = §§pop();
            }
         }
         var _loc3_:uint = param1.readUnsignedShort();
         this.§@c§ = param1.readUnsignedShort();
         loop0:
         while(true)
         {
            §§push(this);
            §§push((_loc3_ & 1) === 0);
            if(!_loc12_)
            {
               §§push(!§§pop());
            }
            §§pop().§'&§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push((_loc3_ & 8) === 0);
               if(_loc13_)
               {
                  §§push(!§§pop());
               }
               §§pop().§`!D§ = §§pop();
               continue loop0;
               loop6:
               while(!(_loc12_ && this))
               {
                  loop7:
                  while(true)
                  {
                     §§push(this.§@c§);
                     addr124:
                     addr196:
                     loop8:
                     for(; !(_loc12_ && this); §§push(this.§@c§),if(!(_loc13_ || this))
                     {
                        continue;
                     },§§push(§ var§),if(!_loc13_)
                     {
                        §§goto(addr132);
                     },if(§§pop() === §§pop())
                     {
                        if(!(_loc12_ && param1))
                        {
                           §§push(this);
                           §§push(_loc3_ & 6);
                           if(_loc13_ || param1)
                           {
                              §§push(§§pop() >> 1);
                           }
                           §§pop().§;`§ = §§pop();
                           if(false)
                           {
                           }
                           §§goto(addr257);
                        }
                        else
                        {
                           §§goto(addr179);
                        }
                     },§§goto(addr257))
                     {
                        §§push(§,!D§);
                        while(true)
                        {
                           if(!(_loc12_ && param1))
                           {
                              if(§§pop() !== §§pop())
                              {
                                 continue loop8;
                              }
                              if(!_loc12_)
                              {
                                 if(!(_loc13_ || _loc3_))
                                 {
                                    continue loop6;
                                 }
                                 if(_loc13_ || _loc2_)
                                 {
                                    if(!_loc13_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(this);
                                    if(!_loc12_)
                                    {
                                       §§push(_loc3_ & 2);
                                       if(_loc13_)
                                       {
                                          if(§§pop() !== 0)
                                          {
                                             addr168:
                                             §§push(8192);
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                addr176:
                                             }
                                          }
                                          else
                                          {
                                             §§push(4096);
                                          }
                                          §§pop().§@a§ = §§pop();
                                          addr179:
                                          §§push(this);
                                          if(_loc13_)
                                          {
                                             §§push(_loc3_ & 4);
                                             if(_loc13_ || _loc2_)
                                             {
                                                if(§§pop() !== 0)
                                                {
                                                   addr114:
                                                   §§push(3);
                                                   if(_loc13_)
                                                   {
                                                      addr117:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(2);
                                                }
                                                §§pop().§1;§ = §§pop();
                                                break;
                                             }
                                             §§goto(addr117);
                                          }
                                          §§goto(addr114);
                                          addr179:
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr168);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§"i§ = "utf-8";
                                       continue loop6;
                                    }
                                    addr198:
                                 }
                              }
                              §§goto(addr179);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    continue loop7;
                                 }
                              }
                              addr197:
                           }
                           §§goto(addr198);
                        }
                        var _loc4_:uint = param1.readUnsignedShort();
                        var _loc5_:uint = param1.readUnsignedShort();
                        var _loc6_:* = _loc4_ & 31;
                        §§push(_loc4_ & 2016);
                        if(_loc13_)
                        {
                           §§push(§§pop() >> 5);
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc4_ & 63488);
                        if(_loc13_ || _loc3_)
                        {
                           §§push(§§pop() >> 11);
                        }
                        var _loc8_:* = §§pop();
                        var _loc9_:* = _loc5_ & 31;
                        §§push(_loc5_ & 480);
                        if(!_loc12_)
                        {
                           §§push(§§pop() >> 5);
                        }
                        var _loc10_:* = §§pop();
                        §§push(_loc5_ & 65024);
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(9);
                           if(_loc13_ || this)
                           {
                              §§push(§§pop() >> §§pop());
                              if(_loc13_)
                              {
                                 addr324:
                                 §§push(int(§§pop() + 1980));
                              }
                              var _loc11_:* = §§pop();
                              this.§^F§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                              this.§3!@§ = param1.readUnsignedInt();
                              this.§?!7§ = param1.readUnsignedInt();
                              this.§5H§ = param1.readUnsignedInt();
                              addr378:
                              if(!_loc12_)
                              {
                                 this.§]x§ = param1.readUnsignedShort();
                                 this.§!S§ = param1.readUnsignedShort();
                                 if(_loc13_)
                                 {
                                    if(_loc13_)
                                    {
                                       if(_loc12_ && param1)
                                       {
                                          §§goto(addr378);
                                       }
                                       return;
                                    }
                                    §§goto(addr378);
                                 }
                                 addr354:
                                 §§goto(addr354);
                              }
                              addr384:
                              §§goto(addr384);
                           }
                        }
                        §§goto(addr324);
                     }
                     while(true)
                     {
                        §§goto(addr197);
                        §§goto(addr124);
                     }
                  }
               }
            }
         }
      }
      
      protected function §@!#§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:uint = 0;
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(_loc7_ || _loc3_)
         {
            if(this.§"i§ == "utf-8")
            {
               if(!(_loc6_ && _loc3_))
               {
                  this.§;T§ = param1.readUTFBytes(this.§]x§);
                  if(!_loc6_)
                  {
                     addr52:
                  }
               }
            }
            else
            {
               this.§;T§ = param1.readMultiByte(this.§]x§,this.§"i§);
            }
            §§push(this.§!S§);
            if(!_loc6_)
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(4);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop() > §§pop())
                     {
                        _loc3_ = param1.readUnsignedShort();
                        loop1:
                        while(true)
                        {
                           §§push(uint(param1.readUnsignedShort()));
                           §§push(uint(param1.readUnsignedShort()));
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              §§push(_loc2_);
                              if(_loc7_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    throw new Error("Parse error in file " + this.§;T§ + ": Extra field data size too big.");
                                 }
                                 addr232:
                                 §§push(_loc3_);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(56026);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() === §§pop());
                                       loop2:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   this.§2!3§ = param1.readUnsignedInt();
                                                   if(_loc7_)
                                                   {
                                                      this.§@h§ = true;
                                                      if(false)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            §§push(4);
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() === §§pop());
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               continue loop2;
                                                            }
                                                         }
                                                         addr264:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               addr272:
                                                               param1.readBytes(new ByteArray(),0,_loc2_);
                                                            }
                                                         }
                                                         return;
                                                         addr74:
                                                      }
                                                      addr224:
                                                      §§push(_loc2_);
                                                      §§push(_loc4_);
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                                §§push(_loc4_);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(0);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr188:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            _loc5_ = new ByteArray();
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               param1.readBytes(_loc5_,0,_loc4_);
                                                               if(_loc7_ || this)
                                                               {
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            this.§7,§[_loc3_] = _loc5_;
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                break;
                                                §§goto(addr264);
                                             }
                                             addr263:
                                             §§goto(addr264);
                                             §§push(0);
                                             addr99:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr74);
                                          }
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc7_ || _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr262:
                                 §§goto(addr263);
                                 §§push(_loc2_);
                              }
                              break;
                           }
                           break;
                        }
                        §§push(uint(§§pop() - (§§pop() + 4)));
                        if(!_loc6_)
                        {
                           §§goto(addr232);
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr264);
               }
               §§goto(addr263);
            }
         }
         §§goto(addr52);
      }
      
      function §,?§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         if(_loc3_ || this)
         {
            §§push(this.§@c§);
            loop0:
            while(true)
            {
               §§push(§ var§);
               loop1:
               while(true)
               {
                  §§push(§§pop() === §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(this.§'&§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§@c§);
                                             if(_loc3_)
                                             {
                                                §§push(§^x§);
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      break;
                                                   }
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         param1.readBytes(this.§]!0§,0,this.§?!7§);
                                                         do
                                                         {
                                                            this.§?!<§ = false;
                                                         }
                                                         while(_loc4_);
                                                         
                                                         while(true)
                                                         {
                                                            addr31:
                                                            do
                                                            {
                                                               this.§]!0§.position = 0;
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop24;
                                                               }
                                                            }
                                                            while(!_loc4_);
                                                            
                                                            loop10:
                                                            while(true)
                                                            {
                                                               this.§]!0§.writeByte(120);
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(this.§;`§);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(~§§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        addr255:
                                                                        §§push(6);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           addr256:
                                                                           §§push(§§pop() << §§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 addr258:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(31);
                                                                                          §§push(120);
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             §§push(8);
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                §§push(§§pop() << §§pop());
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr205:
                                                                                                   §§push(§§pop() | _loc2_);
                                                                                                }
                                                                                                §§push(31);
                                                                                             }
                                                                                             §§push(uint(§§pop() + (§§pop() - §§pop() % §§pop())));
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§4D§);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      §§push(this.§@h§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                   }
                                                                                                   addr288:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.readBytes(this.§]!0§,0,this.§?!7§);
                                                                                                   }
                                                                                                }
                                                                                                throw new Error("Adler32 checksum not found.");
                                                                                                addr286:
                                                                                             }
                                                                                             addr323:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc4_ && _loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(!_loc4_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                   addr332:
                                                                                                }
                                                                                                §§goto(addr286);
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§?!<§ = true;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr321:
                                                                                          addr142:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§]!0§.writeUnsignedInt(this.§2!3§);
                                                                                             if(!(_loc3_ || param1))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                       }
                                                                                       if(_loc4_ && param1)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§goto(addr31);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr256:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr256);
                                                                        }
                                                                        addr255:
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         addr72:
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                }
                                                §§goto(addr255);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr321);
                                       }
                                       throw new Error("Compression method " + this.§@c§ + " is not supported.");
                                       addr319:
                                    }
                                    §§goto(addr332);
                                 }
                                 §§goto(addr323);
                              }
                           }
                        }
                        §§goto(addr319);
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?!<§);
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  if(this.§]!0§.length > 0)
                  {
                     this.§]!0§.position = 0;
                     while(true)
                     {
                        this.§5H§ = this.§]!0§.length;
                        §§push(§4D§);
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 addr163:
                                 this.§]!0§.deflate();
                                 this.§?!7§ = this.§]!0§.length;
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        §§goto(addr68);
                     }
                  }
                  else
                  {
                     this.§?!7§ = 0;
                     for(; !(_loc1_ && _loc1_); this.§5H§ = 0,if(_loc1_)
                     {
                        continue;
                     },if(_loc2_)
                     {
                        if(!(_loc1_ && this))
                        {
                           break loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr92);
                     },§§goto(addr163))
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr117);
               }
            }
            return;
         }
         §§goto(addr96);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§?!<§);
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr139:
                        while(true)
                        {
                           §§push(this.§]!0§.length > 0);
                           addr117:
                           while(_loc2_ && _loc1_)
                           {
                              continue loop6;
                           }
                        }
                     }
                     addr138:
                  }
                  loop1:
                  while(§§pop())
                  {
                     while(true)
                     {
                        this.§]!0§.position = 0;
                        do
                        {
                           §§push(§4D§);
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    this.§]!0§.inflate();
                                    break;
                                 }
                                 §§push(§+!,§);
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue;
                              }
                              §§goto(addr117);
                           }
                        }
                        while(!(_loc1_ || _loc1_));
                        
                        addr30:
                        this.§]!0§.position = 0;
                        addr35:
                        this.§?!<§ = false;
                        if(!_loc1_)
                        {
                           §§goto(addr35);
                        }
                        break loop1;
                     }
                  }
                  return;
               }
            }
            §§goto(addr138);
         }
         §§goto(addr139);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipFile]");
         §§push("\n  name:");
         if(_loc1_)
         {
            §§push(§§pop() + §§pop());
            if(!_loc2_)
            {
               §§push(this.§;T§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() + §§pop());
                  if(_loc1_)
                  {
                     §§push(§§pop() + "\n  date:");
                     if(_loc1_ || this)
                     {
                        §§push(§§pop() + this.§^F§);
                        §§push("\n  sizeCompressed:");
                        if(_loc1_ || _loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && this))
                           {
                              addr63:
                              §§push(this.§?!7§);
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(§§pop() + §§pop() + "\n  sizeUncompressed:");
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(this.§5H§);
                                    if(_loc1_)
                                    {
                                       addr86:
                                       §§push(§§pop() + §§pop());
                                       §§push("\n  versionHost:");
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          §§push(this.§]!@§);
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc1_)
                                             {
                                                §§push("\n  versionNumber:");
                                                if(_loc1_ || _loc2_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   §§push(this.§?@§);
                                                   if(!_loc2_)
                                                   {
                                                      addr131:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         §§push("\n  compressionMethod:");
                                                         if(_loc1_)
                                                         {
                                                            addr142:
                                                            §§push(§§pop() + §§pop() + this.§@c§ + "\n  encrypted:");
                                                            §§push(this.§'&§);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  addr166:
                                                                  §§push(§§pop() + "\n  hasDataDescriptor:");
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     §§push(this.§`!D§);
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        addr183:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push("\n  hasCompressedPatchedData:");
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc1_)
                                                                           {
                                                                              addr192:
                                                                              §§push(§§pop() + this.§`O§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push("\n  filenameEncoding:");
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    addr204:
                                                                                    §§push(§§pop() + §§pop() + this.§"i§);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr210:
                                                                                       §§push(§§pop() + "\n  crc32:");
                                                                                       §§push(this.§3!@§);
                                                                                       if(_loc1_ || this)
                                                                                       {
                                                                                          addr230:
                                                                                          §§push(16);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          addr249:
                                                                                          §§push(§§pop() + §§pop().toString(§§pop()) + "\n  adler32:");
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             addr246:
                                                                                             §§push(this.§2!3§);
                                                                                             §§push(16);
                                                                                          }
                                                                                          return §§pop();
                                                                                          §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                       }
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                 }
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        §§goto(addr210);
                                                                     }
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr210);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr63);
               }
               §§goto(addr131);
            }
            §§goto(addr210);
         }
         §§goto(addr166);
      }
   }
}
