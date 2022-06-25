package §6K§
{
   import §&7§.§9]§;
   import flash.utils.*;
   
   public class §,$§
   {
      
      public static const §,!"§:int = 0;
      
      public static const §-!,§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §`2§:int = 6;
      
      public static const §-K§:int = 7;
      
      public static const §7i§:int = 8;
      
      public static const §="§:int = 9;
      
      public static const §?!!§:int = 10;
      
      protected static var §;!A§:Boolean = describeType(ByteArray).factory.method.(if(_loc6_)
      {
         if(@name != "uncompress")
         {
            continue loop0;
         }
         if(_loc7_ && _loc3_)
         {
            continue loop0;
         }
      }, _loc1_[_loc2_] = _loc4_, false).parameter.length() > 0;
      
      protected static var § !3§:Boolean;
      
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc1_)
         {
            §-!,§ = 1;
            COMPRESSION_REDUCED_1 = 2;
            if(!_loc7_)
            {
               COMPRESSION_REDUCED_2 = 3;
               COMPRESSION_REDUCED_3 = 4;
               COMPRESSION_REDUCED_4 = 5;
               §`2§ = 6;
               if(!(_loc7_ && _loc3_))
               {
                  §-K§ = 7;
                  if(!(_loc7_ && _loc3_))
                  {
                     §7i§ = 8;
                  }
               }
               §§goto(addr69);
            }
            §="§ = 9;
         }
         addr69:
         if(!_loc7_)
         {
            § !3§ = describeType(ByteArray).factory.method.(if(_loc6_)
            {
               if(@name != "inflate")
               {
                  continue loop1;
               }
               if(!(_loc6_ || _loc2_))
               {
                  continue loop1;
               }
            }, _loc1_[_loc2_] = _loc4_, false).length() > 0;
         }
      }
      
      protected var §;C§:int = 0;
      
      protected var §31§:String = "2.0";
      
      protected var §<§:int = 8;
      
      protected var §&!0§:Boolean = false;
      
      protected var §1u§:int = -1;
      
      protected var §[!2§:int = -1;
      
      protected var §9!F§:int = -1;
      
      protected var §,#§:Boolean = false;
      
      protected var §2O§:Boolean = false;
      
      protected var §;!7§:Date;
      
      protected var §5^§:uint;
      
      protected var §7n§:Boolean = false;
      
      protected var §75§:uint = 0;
      
      protected var §7y§:uint = 0;
      
      protected var §>!3§:String = "";
      
      protected var §>r§:String;
      
      protected var §;!@§:Dictionary;
      
      protected var §%!-§:String = "";
      
      protected var §>!F§:ByteArray;
      
      var §-!6§:uint;
      
      var §-y§:uint = 0;
      
      var §"!L§:uint = 0;
      
      protected var §]R§:Boolean = false;
      
      protected var §`i§:Function;
      
      public function §,$§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§`i§ = this.§2!G§;
         if(_loc3_)
         {
            super();
            this.§>r§ = param1;
            this.§;!@§ = new Dictionary();
            if(_loc3_ || param1)
            {
               this.§>!F§ = new ByteArray();
               if(!_loc2_)
               {
                  this.§>!F§.endian = Endian.BIG_ENDIAN;
               }
            }
         }
      }
      
      public function get §<!4§() : Date
      {
         return this.§;!7§;
      }
      
      public function set §<!4§(param1:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            if(!_loc2_)
            {
               §§pop().§;!7§ = param1 != null ? param1 : new Date();
               §§goto(addr47);
            }
            §§goto(addr40);
         }
         addr47:
      }
      
      public function get §%;§() : String
      {
         return this.§>!3§;
      }
      
      public function set §%;§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§>!3§ = param1;
         }
      }
      
      function get §<!H§() : Boolean
      {
         return this.§,#§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§]R§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.uncompress();
               }
            }
         }
         return this.§>!F§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§98§(param1);
         }
      }
      
      public function §98§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1 == null);
         if(!_loc4_)
         {
            §§push(!§§pop());
            if(_loc5_ || param2)
            {
               if(§§pop())
               {
                  if(_loc5_ || param1)
                  {
                     §§pop();
                     §§push(param1.length > 0);
                     if(!_loc5_)
                     {
                     }
                     §§goto(addr122);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     param1.position = 0;
                     param1.readBytes(this.§>!F§,0,param1.length);
                  }
                  this.§-!6§ = §9]§.§>"§(this.§>!F§);
                  if(_loc5_)
                  {
                     this.§7n§ = false;
                     addr121:
                     addr122:
                     if(§§pop())
                     {
                        addr123:
                        this.compress();
                        if(_loc5_ || param2)
                        {
                           addr132:
                        }
                     }
                     else
                     {
                        this.§"!L§ = this.§-y§ = this.§>!F§.length;
                     }
                     return;
                     §§push(param2);
                  }
                  §§goto(addr123);
               }
               else
               {
                  this.§>!F§.length = 0;
                  if(!(_loc4_ && param2))
                  {
                     this.§>!F§.position = 0;
                     if(_loc5_ || _loc3_)
                     {
                        this.§]R§ = false;
                        §§goto(addr121);
                     }
                  }
               }
               §§goto(addr132);
            }
         }
         §§goto(addr122);
      }
      
      public function get §-!@§() : String
      {
         return this.§31§;
      }
      
      public function get §]1§() : uint
      {
         return this.§-y§;
      }
      
      public function get §^!<§() : uint
      {
         return this.§"!L§;
      }
      
      public function §3L§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         §§push(this.§]R§);
         if(_loc4_ || param2)
         {
            if(§§pop())
            {
               this.uncompress();
               if(_loc4_ || _loc3_)
               {
                  addr38:
                  this.§>!F§.position = 0;
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(param2);
                     if(_loc4_ || param2)
                     {
                        if(§§pop() == "utf-8")
                        {
                           if(_loc4_)
                           {
                              addr71:
                              §§push(this.§>!F§.readUTFBytes(this.§>!F§.bytesAvailable));
                              if(_loc4_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc4_)
                                 {
                                    addr93:
                                 }
                                 addr105:
                                 this.§>!F§.position = 0;
                                 if(_loc4_ || param1)
                                 {
                                    addr117:
                                    if(!param1)
                                    {
                                    }
                                    addr121:
                                    return _loc3_;
                                    addr120:
                                 }
                                 this.compress();
                                 §§goto(addr120);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr93);
                        }
                        else
                        {
                           §§push(this.§>!F§.readMultiByte(this.§>!F§.bytesAvailable,param2));
                           if(_loc4_)
                           {
                              _loc3_ = §§pop();
                              §§goto(addr105);
                           }
                        }
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr71);
               }
               §§goto(addr121);
            }
            §§goto(addr38);
         }
         §§goto(addr117);
      }
      
      public function §#h§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§>!F§.length = 0;
            if(_loc5_)
            {
               addr24:
               this.§>!F§.position = 0;
               this.§]R§ = false;
               §§push(param1);
               if(!_loc6_)
               {
                  §§push(§§pop() == null);
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                     if(!(_loc6_ && param3))
                     {
                        addr46:
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr50:
                              §§pop();
                              §§push(param1);
                              if(_loc5_)
                              {
                                 §§push(§§pop().length > 0);
                                 if(_loc5_)
                                 {
                                    addr69:
                                    if(§§pop())
                                    {
                                       addr71:
                                       if(param2 == "utf-8")
                                       {
                                          this.§>!F§.writeUTFBytes(param1);
                                          if(_loc6_ && this)
                                          {
                                          }
                                          §§goto(addr109);
                                       }
                                       else
                                       {
                                          this.§>!F§.writeMultiByte(param1,param2);
                                       }
                                       this.§-!6§ = §9]§.§>"§(this.§>!F§);
                                       this.§7n§ = false;
                                    }
                                    addr109:
                                    §§goto(addr110);
                                 }
                                 addr110:
                                 if(param3)
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       this.compress();
                                    }
                                 }
                                 else
                                 {
                                    this.§"!L§ = this.§-y§ = this.§>!F§.length;
                                 }
                                 return;
                              }
                              §§goto(addr71);
                           }
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr46);
               }
               §§goto(addr71);
            }
            §§goto(addr50);
         }
         §§goto(addr24);
      }
      
      public function §[!A§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:* = false;
         if(!(_loc20_ && param1))
         {
            if(param1 == null)
            {
               if(!_loc20_)
               {
                  return 0;
               }
            }
            if(param3)
            {
               param1.writeUnsignedInt(§7!;§.§-!&§);
               if(!_loc20_)
               {
                  param1.writeShort(this.§;C§ << 8 | 20);
                  if(_loc19_)
                  {
                     addr61:
                     param1.writeShort(this.§;C§ << 8 | 20);
                     param1.writeShort(this.§>r§ == "utf-8" ? 2048 : 0);
                     param1.writeShort(!!this.§]R§ ? int(§7i§) : int(§,!"§));
                     addr78:
                  }
                  var _loc5_:Date = this.§;!7§ != null ? this.§;!7§ : new Date();
                  §§push(uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5);
                  if(_loc19_)
                  {
                     §§push(§§pop() | uint(_loc5_.getHours()) << 11);
                  }
                  var _loc6_:uint = §§pop();
                  §§push(uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5);
                  if(_loc19_ || param1)
                  {
                     §§push(§§pop() | uint(_loc5_.getFullYear() - 1980) << 9);
                  }
                  var _loc7_:uint = §§pop();
                  if(_loc19_ || param1)
                  {
                     param1.writeShort(_loc6_);
                     if(!(_loc20_ && param2))
                     {
                        param1.writeShort(_loc7_);
                        if(_loc19_ || this)
                        {
                           addr181:
                           param1.writeUnsignedInt(this.§-!6§);
                           if(_loc20_)
                           {
                           }
                           addr197:
                           var _loc8_:ByteArray;
                           (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
                           if(!(_loc20_ && this))
                           {
                              if(this.§>r§ == "utf-8")
                              {
                                 if(!_loc20_)
                                 {
                                    _loc8_.writeUTFBytes(this.§>!3§);
                                    if(!_loc20_)
                                    {
                                       addr224:
                                    }
                                 }
                              }
                              else
                              {
                                 _loc8_.writeMultiByte(this.§>!3§,this.§>r§);
                              }
                              var _loc9_:uint = _loc8_.position;
                              for(_loc10_ in this.§;!@§)
                              {
                                 if((_loc15_ = this.§;!@§[_loc10_] as ByteArray) != null)
                                 {
                                    if(!(_loc20_ && param2))
                                    {
                                       _loc8_.writeShort(uint(_loc10_));
                                       if(_loc19_)
                                       {
                                          _loc8_.writeShort(uint(_loc15_.length));
                                          if(!_loc19_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    _loc8_.writeBytes(_loc15_);
                                 }
                              }
                              §§push(param2);
                              if(_loc19_ || param3)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc19_ || param3)
                                    {
                                       §§push(this.§7n§);
                                       if(!(_loc20_ && param2))
                                       {
                                          if(!§§pop())
                                          {
                                             addr314:
                                             §§push(this.§]R§);
                                             if(_loc19_ || param2)
                                             {
                                                addr323:
                                                §§push(Boolean(§§pop()));
                                                if(!_loc20_)
                                                {
                                                   §§push(_loc16_ = §§pop());
                                                   if(!(_loc20_ && this))
                                                   {
                                                      addr345:
                                                      if(§§pop())
                                                      {
                                                         this.uncompress();
                                                      }
                                                      this.§5^§ = §9]§.§4i§(this.§>!F§,0,this.§>!F§.length);
                                                      this.§7n§ = true;
                                                      §§push(_loc16_);
                                                   }
                                                }
                                                §§goto(addr345);
                                             }
                                             if(§§pop())
                                             {
                                                this.compress();
                                                if(_loc19_)
                                                {
                                                   addr367:
                                                   _loc8_.writeShort(56026);
                                                }
                                                _loc8_.writeShort(4);
                                                _loc8_.writeUnsignedInt(this.§5^§);
                                                addr377:
                                                var _loc11_:uint = _loc8_.position - _loc9_;
                                                if(!_loc20_)
                                                {
                                                   §§push(param3);
                                                   if(!(_loc20_ && param2))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc19_)
                                                      {
                                                         addr396:
                                                         if(§§pop())
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               addr400:
                                                               §§pop();
                                                               if(_loc19_ || param1)
                                                               {
                                                                  addr408:
                                                                  §§push(this.§%!-§);
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     addr420:
                                                                     if(§§pop().length > 0)
                                                                     {
                                                                        if(_loc19_)
                                                                        {
                                                                           addr425:
                                                                           if(this.§>r§ == "utf-8")
                                                                           {
                                                                              if(_loc19_ || this)
                                                                              {
                                                                              }
                                                                              addr447:
                                                                              §§push(_loc8_.position - _loc9_);
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(§§pop() - _loc11_);
                                                                              }
                                                                              var _loc12_:uint = §§pop();
                                                                              param1.writeShort(_loc9_);
                                                                              param1.writeShort(_loc11_);
                                                                              if(param3)
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    param1.writeShort(_loc12_);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       param1.writeShort(0);
                                                                                    }
                                                                                    param1.writeShort(0);
                                                                                    param1.writeUnsignedInt(0);
                                                                                    if(!(_loc20_ && param1))
                                                                                    {
                                                                                       param1.writeUnsignedInt(param4);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr493:
                                                                                          §§push(_loc9_);
                                                                                          if(!(_loc20_ && this))
                                                                                          {
                                                                                             §§push(§§pop() + _loc11_);
                                                                                             if(!(_loc20_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() + _loc12_);
                                                                                             }
                                                                                             if(§§pop() > 0)
                                                                                             {
                                                                                                param1.writeBytes(_loc8_);
                                                                                                addr517:
                                                                                                §§push(uint(0));
                                                                                             }
                                                                                             §§goto(addr517);
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             §§push(!param3);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr535:
                                                                                                      §§pop();
                                                                                                      §§push(this.§>!F§.length > 0);
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         if(this.§]R§)
                                                                                                         {
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               addr552:
                                                                                                               §§push(Boolean(§;!A§));
                                                                                                               if(!Boolean(§;!A§))
                                                                                                               {
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc19_ || param1)
                                                                                                                     {
                                                                                                                        addr564:
                                                                                                                        if(§ !3§)
                                                                                                                        {
                                                                                                                           §§push(uint(this.§>!F§.length));
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              addr573:
                                                                                                                              param1.writeBytes(this.§>!F§,0,_loc13_);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr598:
                                                                                                                                 param1.writeBytes(this.§>!F§,2,_loc13_);
                                                                                                                              }
                                                                                                                              §§push(30 + _loc9_);
                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc19_ || this)
                                                                                                                                    {
                                                                                                                                       addr646:
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          addr654:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc19_ || this)
                                                                                                                                          {
                                                                                                                                             addr673:
                                                                                                                                             §§push(§§pop() + _loc13_);
                                                                                                                                          }
                                                                                                                                          var _loc14_:* = uint(§§pop());
                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                          {
                                                                                                                                             if(param3)
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(uint(§§pop() + 16));
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         addr695:
                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                      }
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr695);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr695);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr673);
                                                                                                                                 }
                                                                                                                                 §§goto(addr654);
                                                                                                                              }
                                                                                                                              §§goto(addr673);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr597:
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              §§goto(addr598);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.§>!F§.length - 6);
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              §§push(uint(§§pop()));
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§goto(addr597);
                                                                                                                              }
                                                                                                                              §§goto(addr654);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr646);
                                                                                                                     }
                                                                                                                     §§goto(addr573);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            §§goto(addr598);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(uint(this.§>!F§.length));
                                                                                                            if(_loc19_ || param3)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  param1.writeBytes(this.§>!F§,0,_loc13_);
                                                                                                               }
                                                                                                               §§goto(addr573);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr654);
                                                                                                      }
                                                                                                      §§goto(addr564);
                                                                                                   }
                                                                                                   §§goto(addr573);
                                                                                                }
                                                                                                §§goto(addr552);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr535);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr517);
                                                                                 }
                                                                              }
                                                                              §§goto(addr493);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc8_.writeMultiByte(this.§%!-§,this.§>r§);
                                                                              §§goto(addr447);
                                                                           }
                                                                        }
                                                                        _loc8_.writeUTFBytes(this.§%!-§);
                                                                        if(!_loc19_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  §§goto(addr425);
                                                               }
                                                               §§goto(addr447);
                                                            }
                                                         }
                                                         §§goto(addr420);
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   §§goto(addr396);
                                                }
                                                §§goto(addr408);
                                             }
                                          }
                                          §§goto(addr367);
                                       }
                                       §§goto(addr323);
                                    }
                                    §§goto(addr314);
                                 }
                                 §§goto(addr377);
                              }
                              §§goto(addr345);
                           }
                           §§goto(addr224);
                        }
                        param1.writeUnsignedInt(this.§-y§);
                        if(!_loc20_)
                        {
                           param1.writeUnsignedInt(this.§"!L§);
                        }
                        §§goto(addr197);
                     }
                  }
                  §§goto(addr181);
               }
               §§goto(addr78);
            }
            else
            {
               param1.writeUnsignedInt(§7!;§.§&!M§);
            }
            §§goto(addr61);
         }
         §§goto(addr92);
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         do
         {
            §§push(Boolean(param1.bytesAvailable));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(Boolean(this.§`i§(param1)));
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr57:
                  }
               }
            }
         }
         while(§§pop());
         
         §§goto(addr57);
         §§push(this.§`i§ === this.§+i§);
      }
      
      protected function §+i§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §2!G§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1.bytesAvailable >= 30)
            {
               if(!_loc3_)
               {
                  this.§9E§(param1);
                  if(this.§75§ + this.§7y§ > 0)
                  {
                     this.§`i§ = this.§!`§;
                     if(_loc2_ || _loc2_)
                     {
                        addr70:
                     }
                  }
                  else
                  {
                     this.§`i§ = this.§]Q§;
                  }
               }
               §§push(true);
               if(_loc2_ || this)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(false);
            }
            return §§pop();
         }
         §§goto(addr70);
      }
      
      protected function §!`§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1.bytesAvailable >= this.§75§ + this.§7y§)
            {
               if(!_loc2_)
               {
                  addr54:
                  this.§,x§(param1);
                  if(_loc3_)
                  {
                     this.§`i§ = this.§]Q§;
                     if(!_loc2_)
                     {
                        §§push(true);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr69:
                        §§push(false);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr69);
         }
         §§goto(addr54);
      }
      
      protected function §]Q§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         §§push(this.§,#§);
         if(!_loc4_)
         {
            if(§§pop())
            {
               this.§`i§ = this.§+i§;
               if(_loc3_)
               {
                  §§push(false);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr37:
                     _loc2_ = §§pop();
                  }
                  else
                  {
                     addr110:
                     _loc2_ = §§pop();
                  }
               }
               else
               {
                  addr53:
                  this.§`i§ = this.§+i§;
                  if(_loc3_ || this)
                  {
                  }
               }
               addr112:
               return _loc2_;
               addr111:
            }
            else
            {
               if(this.§-y§ == 0)
               {
                  §§goto(addr53);
               }
               else if(param1.bytesAvailable >= this.§-y§)
               {
                  this.§&i§(param1);
                  if(!(_loc4_ && this))
                  {
                     this.§`i§ = this.§+i§;
                     if(_loc3_ || _loc2_)
                     {
                        addr101:
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr101);
               }
               else
               {
                  §§push(false);
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr110);
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr53);
         }
         §§goto(addr37);
      }
      
      protected function §9E§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc13_ || param1)
         {
            this.§;C§ = _loc2_ >> 8;
            if(!(_loc12_ && _loc3_))
            {
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(_loc13_ || _loc3_)
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§31§ = §§pop();
            }
         }
         var _loc3_:uint = param1.readUnsignedShort();
         this.§<§ = param1.readUnsignedShort();
         if(!(_loc12_ && this))
         {
            §§push(this);
            §§push((_loc3_ & 1) === 0);
            if(!_loc12_)
            {
               §§push(!§§pop());
            }
            §§pop().§&!0§ = §§pop();
            §§push(this);
            §§push((_loc3_ & 8) === 0);
            if(!_loc12_)
            {
               §§push(!§§pop());
            }
            §§pop().§,#§ = §§pop();
            §§push(this);
            §§push((_loc3_ & 32) === 0);
            if(_loc13_ || this)
            {
               §§push(!§§pop());
            }
            §§pop().§2O§ = §§pop();
            if(_loc13_)
            {
               §§push(_loc3_);
               if(_loc13_ || param1)
               {
                  §§push(§§pop() & 800);
                  if(_loc13_)
                  {
                     §§push(0);
                     if(_loc13_ || _loc3_)
                     {
                        if(§§pop() !== §§pop())
                        {
                           this.§>r§ = "utf-8";
                           addr140:
                           §§push(this.§<§);
                           if(_loc13_)
                           {
                              addr144:
                              §§push(§`2§);
                              if(!(_loc12_ && _loc3_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    addr153:
                                    §§push(this);
                                    if(_loc13_)
                                    {
                                       §§push(_loc3_ & 2);
                                       if(!_loc12_)
                                       {
                                          if(§§pop() !== 0)
                                          {
                                             addr173:
                                             §§push(8192);
                                             if(_loc13_ || _loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(4096);
                                          }
                                       }
                                       §§pop().§1u§ = §§pop();
                                       §§push(this);
                                       if(!(_loc12_ && this))
                                       {
                                          §§push(_loc3_ & 4);
                                          if(!_loc12_)
                                          {
                                             if(§§pop() !== 0)
                                             {
                                                addr199:
                                                §§push(3);
                                                if(!_loc12_)
                                                {
                                                   addr202:
                                                }
                                             }
                                             else
                                             {
                                                §§push(2);
                                             }
                                             §§pop().§[!2§ = §§pop();
                                             if(!_loc12_)
                                             {
                                                addr229:
                                                var _loc4_:uint = param1.readUnsignedShort();
                                                var _loc5_:uint = param1.readUnsignedShort();
                                                var _loc6_:* = _loc4_ & 31;
                                                addr226:
                                                §§push(_loc4_ & 2016);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() >> 5);
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(_loc4_ & 63488);
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop() >> 11);
                                                }
                                                var _loc8_:* = §§pop();
                                                var _loc9_:* = _loc5_ & 31;
                                                §§push(_loc5_ & 480);
                                                if(_loc13_ || param1)
                                                {
                                                   §§push(§§pop() >> 5);
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(_loc5_ & 65024);
                                                if(!_loc12_)
                                                {
                                                   §§push(9);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() >> §§pop());
                                                      if(_loc13_)
                                                      {
                                                         addr283:
                                                         §§push(int(§§pop() + 1980));
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      if(!_loc12_)
                                                      {
                                                         this.§;!7§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                                                         this.§-!6§ = param1.readUnsignedInt();
                                                         if(_loc13_ || this)
                                                         {
                                                            this.§-y§ = param1.readUnsignedInt();
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               addr332:
                                                               this.§"!L§ = param1.readUnsignedInt();
                                                               if(!_loc12_)
                                                               {
                                                                  this.§75§ = param1.readUnsignedShort();
                                                               }
                                                               this.§7y§ = param1.readUnsignedShort();
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr332);
                                                   }
                                                }
                                                §§goto(addr283);
                                             }
                                             else
                                             {
                                                addr212:
                                                §§push(this);
                                                §§push(_loc3_ & 6);
                                                if(!(_loc12_ && _loc3_))
                                                {
                                                   §§push(§§pop() >> 1);
                                                }
                                                §§pop().§9!F§ = §§pop();
                                                §§goto(addr226);
                                             }
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr173);
                                 }
                                 else
                                 {
                                    addr211:
                                    if(this.§<§ === §7i§)
                                    {
                                       §§goto(addr212);
                                    }
                                 }
                                 §§goto(addr226);
                              }
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr144);
               }
               §§goto(addr229);
            }
            §§goto(addr153);
         }
         §§goto(addr140);
      }
      
      protected function §,x§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:uint = 0;
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(!_loc6_)
         {
            if(this.§>r§ == "utf-8")
            {
               if(_loc7_)
               {
                  this.§>!3§ = param1.readUTFBytes(this.§75§);
                  if(_loc7_)
                  {
                     addr42:
                  }
               }
               §§goto(addr42);
            }
            else
            {
               this.§>!3§ = param1.readMultiByte(this.§75§,this.§>r§);
            }
            §§push(this.§7y§);
            if(_loc7_ || param1)
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(4);
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§goto(addr228);
                        }
                        _loc3_ = param1.readUnsignedShort();
                        §§push(uint(param1.readUnsignedShort()));
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              §§push(_loc2_);
                              if(_loc7_)
                              {
                                 addr80:
                                 if(§§pop() > §§pop())
                                 {
                                    throw new Error("Parse error in file " + this.§>!3§ + ": Extra field data size too big.");
                                 }
                                 §§push(_loc3_);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(56026);
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() === §§pop());
                                    if(!(_loc6_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop();
                                             §§push(_loc4_);
                                             if(_loc7_ || param1)
                                             {
                                                addr132:
                                                §§push(4);
                                                if(!_loc7_)
                                                {
                                                   continue;
                                                }
                                                addr136:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue loop0;
                                                   }
                                                   this.§5^§ = param1.readUnsignedInt();
                                                   this.§7n§ = true;
                                                   addr184:
                                                   §§push(_loc2_);
                                                   if(_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc7_)
                                                   {
                                                      §§push(0);
                                                      if(_loc7_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc5_ = new ByteArray();
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  param1.readBytes(_loc5_,0,_loc4_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     this.§;!@§[_loc3_] = _loc5_;
                                                                  }
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      break loop1;
                                                   }
                                                }
                                                §§push(uint(§§pop() - (_loc4_ + 4)));
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc7_ || _loc3_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr80);
                        }
                        break;
                        §§goto(addr217);
                     }
                     break;
                  }
                  break;
               }
               if(§§pop() > §§pop())
               {
                  if(!_loc6_)
                  {
                     param1.readBytes(new ByteArray(),0,_loc2_);
                  }
               }
               addr228:
               if(_loc7_)
               {
                  addr217:
                  §§push(_loc2_);
                  break loop2;
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      function §&i§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         if(!_loc3_)
         {
            §§push(this.§<§);
            if(_loc4_ || _loc2_)
            {
               §§push(§7i§);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() === §§pop());
                  §§push(§§pop() === §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           §§push(!this.§&!0§);
                           if(_loc4_ || _loc2_)
                           {
                              addr57:
                              if(§§pop())
                              {
                                 if(_loc4_ || this)
                                 {
                                    addr68:
                                    §§push(Boolean(§;!A§));
                                    if(!Boolean(§;!A§))
                                    {
                                       addr97:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§pop();
                                          §§push(Boolean(§ !3§));
                                       }
                                       if(!§§pop())
                                       {
                                          throw new Error("Adler32 checksum not found.");
                                       }
                                       this.§>!F§.writeByte(120);
                                       if(_loc4_)
                                       {
                                          §§push(this.§9!F§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr113:
                                             §§push(~§§pop());
                                             if(!_loc3_)
                                             {
                                                §§goto(addr116);
                                             }
                                             §§goto(addr132);
                                          }
                                          addr116:
                                          §§push(6);
                                          if(!_loc3_)
                                          {
                                             addr129:
                                             §§push(§§pop() << §§pop());
                                             if(_loc4_)
                                             {
                                                addr132:
                                                §§push(192);
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§goto(addr140);
                                                }
                                             }
                                             §§goto(addr225);
                                          }
                                          addr140:
                                          §§push(§§pop() & §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(uint(§§pop()));
                                             if(!_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                addr147:
                                                §§push(_loc2_);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr155:
                                                   §§push(31);
                                                   §§push(120);
                                                   if(!_loc3_)
                                                   {
                                                      addr177:
                                                      §§push(8);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() << §§pop());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr170:
                                                            §§push(§§pop() | _loc2_);
                                                         }
                                                         §§push(31);
                                                      }
                                                      _loc2_ = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                      this.§>!F§.writeByte(_loc2_);
                                                      param1.readBytes(this.§>!F§,2,this.§-y§);
                                                      if(!_loc3_)
                                                      {
                                                         this.§>!F§.position = this.§>!F§.length;
                                                         addr197:
                                                         this.§>!F§.writeUnsignedInt(this.§5^§);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr216:
                                                            this.§]R§ = true;
                                                            if(_loc3_)
                                                            {
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         else
                                                         {
                                                            addr243:
                                                            param1.readBytes(this.§>!F§,0,this.§-y§);
                                                            addr250:
                                                            this.§]R§ = false;
                                                         }
                                                         addr263:
                                                         this.§>!F§.position = 0;
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr155);
                                          }
                                          else
                                          {
                                             addr225:
                                             if(§§pop() != §,!"§)
                                             {
                                                throw new Error("Compression method " + this.§<§ + " is not supported.");
                                             }
                                             if(_loc4_ || this)
                                             {
                                                §§goto(addr243);
                                             }
                                          }
                                          addr267:
                                          return;
                                       }
                                       §§goto(addr243);
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          param1.readBytes(this.§>!F§,0,this.§-y§);
                                       }
                                       §§goto(addr216);
                                    }
                                    else
                                    {
                                       §§goto(addr97);
                                       §§push(this.§7n§);
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr147);
                              }
                              else
                              {
                                 §§push(this.§<§);
                              }
                              §§goto(addr225);
                           }
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr68);
               }
               §§goto(addr129);
            }
            §§goto(addr113);
         }
         §§goto(addr197);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]R§);
         if(_loc1_)
         {
            if(!§§pop())
            {
               if(this.§>!F§.length > 0)
               {
                  if(_loc1_)
                  {
                     this.§>!F§.position = 0;
                     this.§"!L§ = this.§>!F§.length;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§ !3§);
                        if(_loc1_ || _loc1_)
                        {
                           addr52:
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 this.§>!F§.deflate();
                                 if(!_loc2_)
                                 {
                                    this.§-y§ = this.§>!F§.length;
                                 }
                                 else
                                 {
                                    addr102:
                                 }
                                 addr137:
                                 this.§>!F§.position = 0;
                                 if(_loc1_)
                                 {
                                    this.§]R§ = true;
                                    addr160:
                                    return;
                                    addr146:
                                 }
                                 §§goto(addr160);
                              }
                           }
                           else
                           {
                              addr77:
                              if(§;!A§)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§>!F§.compress.apply(this.§>!F§,["deflate"]);
                                    if(_loc1_ || this)
                                    {
                                       this.§-y§ = this.§>!F§.length;
                                       if(!_loc2_)
                                       {
                                          §§goto(addr102);
                                       }
                                       else
                                       {
                                          addr113:
                                          this.§-y§ = this.§>!F§.length - 6;
                                          if(!(_loc2_ && this))
                                          {
                                             §§goto(addr137);
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr160);
                              }
                              else
                              {
                                 this.§>!F§.compress();
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§goto(addr113);
                                 }
                              }
                           }
                           addr157:
                           this.§"!L§ = 0;
                           §§goto(addr160);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr113);
               }
               else
               {
                  this.§-y§ = 0;
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr157);
                  }
               }
            }
            §§goto(addr160);
         }
         §§goto(addr52);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§]R§);
         if(!_loc1_)
         {
            §§push(Boolean(§§pop()));
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop();
                     if(_loc2_ || _loc1_)
                     {
                        §§push(this.§>!F§.length > 0);
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr103);
         }
         addr68:
         if(§§pop())
         {
            if(_loc2_)
            {
               this.§>!F§.position = 0;
               if(_loc2_)
               {
                  §§push(§ !3§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr98:
                           this.§>!F§.inflate();
                        }
                        else
                        {
                           addr112:
                        }
                     }
                     else
                     {
                        addr103:
                        if(§;!A§)
                        {
                           this.§>!F§.uncompress.apply(this.§>!F§,["deflate"]);
                           §§goto(addr112);
                        }
                        else
                        {
                           this.§>!F§.uncompress();
                        }
                     }
                     this.§>!F§.position = 0;
                     this.§]R§ = false;
                     §§goto(addr123);
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr112);
         }
         addr123:
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipFile]");
         §§push("\n  name:");
         if(_loc1_ || _loc2_)
         {
            §§push(§§pop() + §§pop());
            §§push(this.§>!3§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + §§pop());
               if(_loc1_)
               {
                  §§push("\n  date:");
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this.§;!7§);
                        if(_loc1_ || _loc2_)
                        {
                           addr61:
                           §§push(§§pop() + "\n  sizeCompressed:");
                           §§push(this.§-y§);
                           if(!_loc2_)
                           {
                              addr67:
                              §§push(§§pop() + §§pop() + "\n  sizeUncompressed:");
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(this.§"!L§);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(§§pop() + §§pop() + "\n  versionHost:");
                                    if(_loc1_)
                                    {
                                       §§push(this.§;C§);
                                       if(_loc1_)
                                       {
                                          addr104:
                                          §§push(§§pop() + §§pop() + "\n  versionNumber:");
                                          if(_loc1_)
                                          {
                                             addr108:
                                             §§push(this.§31§);
                                             if(_loc1_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push("\n  compressionMethod:");
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      addr131:
                                                      §§push(§§pop() + §§pop() + this.§<§);
                                                      if(_loc1_)
                                                      {
                                                         §§push("\n  encrypted:");
                                                         if(!_loc2_)
                                                         {
                                                            addr138:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(this.§&!0§);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(§§pop() + §§pop() + "\n  hasDataDescriptor:");
                                                               §§push(this.§,#§);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop() + "\n  hasCompressedPatchedData:");
                                                                  §§push(this.§2O§);
                                                               }
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            §§push("\n  filenameEncoding:");
                                                            if(_loc1_)
                                                            {
                                                               addr166:
                                                               addr164:
                                                               §§push(§§pop() + §§pop() + this.§>r§);
                                                               §§push("\n  crc32:");
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                               }
                                                               addr212:
                                                               return §§pop() + §§pop() + this.§5^§.toString(16);
                                                               addr208:
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§push(this.§-!6§);
                                                            if(!_loc2_)
                                                            {
                                                               addr197:
                                                               §§push(16);
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  addr207:
                                                                  §§goto(addr208);
                                                                  §§push(§§pop() + §§pop().toString(§§pop()));
                                                                  §§push("\n  adler32:");
                                                               }
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr67);
               }
               §§goto(addr61);
            }
            §§goto(addr166);
         }
         §§goto(addr61);
      }
   }
}
