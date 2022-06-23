package §?,§
{
   import §8f§.§"!+§;
   import flash.utils.*;
   
   public class §9b§
   {
      
      public static const §3!6§:int = 0;
      
      public static const §]!G§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §7!6§:int = 6;
      
      public static const §%S§:int = 7;
      
      public static const §%!0§:int = 8;
      
      public static const §3R§:int = 9;
      
      public static const §`B§:int = 10;
      
      protected static var §7T§:Boolean = describeType(ByteArray).factory.method.(_loc7_ || _loc1_).parameter.length() > 0;
      
      protected static var §1! §:Boolean;
      
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && _loc2_))
         {
            §3!6§ = 0;
            if(!(_loc6_ && §9b§))
            {
               §]!G§ = 1;
               if(!(_loc6_ && _loc2_))
               {
                  COMPRESSION_REDUCED_1 = 2;
                  COMPRESSION_REDUCED_2 = 3;
                  if(!_loc6_)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr62);
               }
               §§goto(addr81);
            }
            §§goto(addr62);
         }
         addr52:
         if(_loc7_ || §9b§)
         {
            addr62:
            COMPRESSION_REDUCED_4 = 5;
            §7!6§ = 6;
            §%S§ = 7;
            if(_loc7_)
            {
               §%!0§ = 8;
            }
            §3R§ = 9;
            if(_loc7_)
            {
               addr81:
               §`B§ = 10;
            }
         }
         if(!(_loc6_ && describeType(ByteArray).factory.method.(_loc7_ || _loc1_)))
         {
            §1! § = describeType(ByteArray).factory.method.(!(_loc6_ && _loc2_)).length() > 0;
         }
      }
      
      protected var §[!+§:int = 0;
      
      protected var §>Y§:String = "2.0";
      
      protected var §1<§:int = 8;
      
      protected var §]D§:Boolean = false;
      
      protected var §@!B§:int = -1;
      
      protected var §[i§:int = -1;
      
      protected var §<O§:int = -1;
      
      protected var §;§:Boolean = false;
      
      protected var §-!5§:Boolean = false;
      
      protected var §0]§:Date;
      
      protected var §'$§:uint;
      
      protected var §+!2§:Boolean = false;
      
      protected var §>?§:uint = 0;
      
      protected var §<c§:uint = 0;
      
      protected var §"Y§:String = "";
      
      protected var §2D§:String;
      
      protected var §96§:Dictionary;
      
      protected var §<?§:String = "";
      
      protected var §]S§:ByteArray;
      
      var §4B§:uint;
      
      var §5c§:uint = 0;
      
      var §5^§:uint = 0;
      
      protected var §+<§:Boolean = false;
      
      protected var §[6§:Function;
      
      public function §9b§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§[6§ = this.§+F§;
         if(!_loc2_)
         {
            super();
            this.§2D§ = param1;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr55);
            }
            §§goto(addr61);
         }
         addr55:
         this.§96§ = new Dictionary();
         if(_loc3_)
         {
            addr61:
            this.§]S§ = new ByteArray();
         }
         this.§]S§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §]G§() : Date
      {
         return this.§0]§;
      }
      
      public function set §]G§(param1:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(!(_loc2_ && _loc3_))
            {
               §§pop().§0]§ = param1 != null ? param1 : new Date();
               §§goto(addr47);
            }
            §§goto(addr40);
         }
         addr47:
      }
      
      public function get §1§() : String
      {
         return this.§"Y§;
      }
      
      public function set §1§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§"Y§ = param1;
         }
      }
      
      function get §3Q§() : Boolean
      {
         return this.§;§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§+<§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.uncompress();
               }
            }
         }
         return this.§]S§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§3I§(param1);
         }
      }
      
      public function §3I§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1 == null);
         if(!(_loc4_ && _loc3_))
         {
            §§push(!§§pop());
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(param1.length > 0);
                     if(_loc4_ && param1)
                     {
                     }
                  }
                  §§goto(addr121);
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     param1.position = 0;
                     if(_loc5_)
                     {
                        param1.readBytes(this.§]S§,0,param1.length);
                        if(!_loc4_)
                        {
                           this.§4B§ = §"!+§.§?3§(this.§]S§);
                           this.§+!2§ = false;
                           if(_loc4_)
                           {
                           }
                           §§goto(addr121);
                        }
                        addr120:
                        addr121:
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              this.compress();
                              if(_loc5_)
                              {
                                 addr128:
                              }
                           }
                        }
                        else
                        {
                           this.§5^§ = this.§5c§ = this.§]S§.length;
                        }
                        return;
                        §§push(param2);
                     }
                     else
                     {
                        this.§+<§ = false;
                        addr100:
                        if(_loc5_ || param1)
                        {
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr121);
                  }
                  else
                  {
                     addr94:
                     this.§]S§.position = 0;
                     if(!_loc4_)
                     {
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr128);
               }
               else
               {
                  this.§]S§.length = 0;
               }
               §§goto(addr94);
            }
         }
         §§goto(addr121);
      }
      
      public function get §#s§() : String
      {
         return this.§>Y§;
      }
      
      public function get §<!,§() : uint
      {
         return this.§5c§;
      }
      
      public function get §`!A§() : uint
      {
         return this.§5^§;
      }
      
      public function § V§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         §§push(this.§+<§);
         if(_loc4_ || this)
         {
            if(§§pop())
            {
               if(_loc4_ || this)
               {
                  this.uncompress();
                  if(!(_loc5_ && param2))
                  {
                     addr45:
                     this.§]S§.position = 0;
                     §§push(param2);
                     if(!(_loc5_ && _loc3_))
                     {
                        if(§§pop() == "utf-8")
                        {
                           if(_loc4_)
                           {
                              §§push(this.§]S§.readUTFBytes(this.§]S§.bytesAvailable));
                              if(!_loc5_)
                              {
                                 addr80:
                                 _loc3_ = §§pop();
                                 if(_loc4_ || param2)
                                 {
                                    addr88:
                                 }
                                 addr112:
                                 this.§]S§.position = 0;
                                 if(!_loc5_)
                                 {
                                    addr118:
                                    addr119:
                                    if(param1)
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          addr127:
                                          this.compress();
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr127);
                              }
                              addr130:
                              return _loc3_;
                           }
                           §§goto(addr88);
                        }
                        else
                        {
                           §§push(this.§]S§.readMultiByte(this.§]S§.bytesAvailable,param2));
                           if(!_loc5_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 §§goto(addr112);
                              }
                              §§goto(addr118);
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr118);
            }
            §§goto(addr45);
         }
         §§goto(addr119);
      }
      
      public function §`8§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§]S§.length = 0;
         this.§]S§.position = 0;
         this.§+<§ = false;
         if(_loc5_ || param1)
         {
            §§push(param1);
            if(_loc5_ || this)
            {
               §§push(§§pop() == null);
               if(!(_loc6_ && param1))
               {
                  §§push(!§§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param2)
                        {
                           §§pop();
                           if(!(_loc6_ && param3))
                           {
                              §§push(param1);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(§§pop().length > 0);
                                 if(!(_loc6_ && this))
                                 {
                                    addr99:
                                    if(§§pop())
                                    {
                                       addr101:
                                       if(param2 == "utf-8")
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             this.§]S§.writeUTFBytes(param1);
                                             if(_loc6_)
                                             {
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr150);
                                       }
                                       else
                                       {
                                          this.§]S§.writeMultiByte(param1,param2);
                                          §§goto(addr122);
                                       }
                                       this.§+!2§ = false;
                                       §§goto(addr131);
                                    }
                                    addr131:
                                    §§goto(addr142);
                                 }
                                 addr142:
                                 if(param3)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       addr150:
                                       this.compress();
                                       if(!(_loc6_ && param1))
                                       {
                                          addr159:
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 else
                                 {
                                    this.§5^§ = this.§5c§ = this.§]S§.length;
                                 }
                                 return;
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr122);
            }
            §§goto(addr101);
         }
         §§goto(addr122);
      }
      
      public function §!k§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:* = false;
         if(!_loc19_)
         {
            if(param1 == null)
            {
               return 0;
            }
         }
         if(param3)
         {
            if(_loc20_)
            {
               param1.writeUnsignedInt(§ d§.§^Y§);
               if(_loc20_)
               {
                  addr49:
                  param1.writeShort(this.§[!+§ << 8 | 20);
                  param1.writeShort(this.§[!+§ << 8 | 20);
               }
               param1.writeShort(this.§2D§ == "utf-8" ? 2048 : 0);
               param1.writeShort(!!this.§+<§ ? int(§%!0§) : int(§3!6§));
               if(!_loc19_)
               {
                  var _loc5_:Date = this.§0]§ != null ? this.§0]§ : new Date();
                  §§push(uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5);
                  if(!_loc19_)
                  {
                     §§push(§§pop() | uint(_loc5_.getHours()) << 11);
                  }
                  var _loc6_:uint = §§pop();
                  §§push(uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5);
                  if(_loc20_)
                  {
                     §§push(§§pop() | uint(_loc5_.getFullYear() - 1980) << 9);
                  }
                  var _loc7_:uint = §§pop();
                  if(!_loc19_)
                  {
                     param1.writeShort(_loc6_);
                     if(_loc20_ || param3)
                     {
                        param1.writeShort(_loc7_);
                        if(!(_loc19_ && param2))
                        {
                           param1.writeUnsignedInt(this.§4B§);
                           if(_loc20_)
                           {
                              addr180:
                              param1.writeUnsignedInt(this.§5c§);
                              if(_loc20_ || this)
                              {
                              }
                              addr195:
                              var _loc8_:ByteArray;
                              (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
                              if(!_loc19_)
                              {
                                 if(this.§2D§ == "utf-8")
                                 {
                                    if(_loc20_)
                                    {
                                       addr211:
                                       _loc8_.writeUTFBytes(this.§"Y§);
                                       if(!_loc20_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc8_.writeMultiByte(this.§"Y§,this.§2D§);
                                 }
                                 var _loc9_:uint = _loc8_.position;
                                 for(_loc10_ in this.§96§)
                                 {
                                    if((_loc15_ = this.§96§[_loc10_] as ByteArray) != null)
                                    {
                                       if(!(_loc19_ && param1))
                                       {
                                          _loc8_.writeShort(uint(_loc10_));
                                          if(_loc19_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc8_.writeShort(uint(_loc15_.length));
                                       if(!(_loc19_ && param3))
                                       {
                                          _loc8_.writeBytes(_loc15_);
                                       }
                                    }
                                 }
                                 §§push(param2);
                                 if(_loc20_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc20_ || param3)
                                       {
                                          §§push(this.§+!2§);
                                          if(!_loc19_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc19_ && param2))
                                                {
                                                   §§push(this.§+<§);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc19_)
                                                      {
                                                         §§push(_loc16_ = §§pop());
                                                         if(_loc19_ && this)
                                                         {
                                                         }
                                                         addr356:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               this.compress();
                                                               addr359:
                                                               if(!_loc19_)
                                                               {
                                                                  addr373:
                                                                  _loc8_.writeShort(56026);
                                                                  if(_loc20_)
                                                                  {
                                                                     addr378:
                                                                     _loc8_.writeShort(4);
                                                                     if(_loc19_)
                                                                     {
                                                                     }
                                                                     addr387:
                                                                     var _loc11_:uint = _loc8_.position - _loc9_;
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(param3);
                                                                        if(_loc20_ || param1)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc20_ || param3)
                                                                           {
                                                                              addr411:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    addr420:
                                                                                    §§pop();
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       addr428:
                                                                                       §§push(this.§<?§);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          addr435:
                                                                                          if(§§pop().length > 0)
                                                                                          {
                                                                                             if(_loc20_ || param1)
                                                                                             {
                                                                                                addr445:
                                                                                                if(this.§2D§ == "utf-8")
                                                                                                {
                                                                                                   if(_loc20_ || param1)
                                                                                                   {
                                                                                                      addr454:
                                                                                                      _loc8_.writeUTFBytes(this.§<?§);
                                                                                                      if(_loc19_ && param1)
                                                                                                      {
                                                                                                      }
                                                                                                      addr472:
                                                                                                      §§push(_loc8_.position - _loc9_);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc11_);
                                                                                                      }
                                                                                                      var _loc12_:uint = §§pop();
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         param1.writeShort(_loc9_);
                                                                                                         param1.writeShort(_loc11_);
                                                                                                         if(param3)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               param1.writeShort(_loc12_);
                                                                                                               param1.writeShort(0);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  param1.writeShort(0);
                                                                                                                  addr510:
                                                                                                                  param1.writeUnsignedInt(0);
                                                                                                                  param1.writeUnsignedInt(param4);
                                                                                                                  addr516:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc11_);
                                                                                                                     if(!(_loc19_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc12_);
                                                                                                                     }
                                                                                                                     if(§§pop() > 0)
                                                                                                                     {
                                                                                                                        if(_loc20_ || param2)
                                                                                                                        {
                                                                                                                           addr539:
                                                                                                                           param1.writeBytes(_loc8_);
                                                                                                                           addr542:
                                                                                                                           §§push(uint(0));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr542);
                                                                                                                  }
                                                                                                                  var _loc13_:* = §§pop();
                                                                                                                  §§push(!param3);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc19_ && this))
                                                                                                                              {
                                                                                                                                 §§push(this.§]S§.length > 0);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    addr570:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc19_ && param2))
                                                                                                                                       {
                                                                                                                                          addr580:
                                                                                                                                          if(this.§+<§)
                                                                                                                                          {
                                                                                                                                             §§push(§7T§);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr584:
                                                                                                                                                addr586:
                                                                                                                                                addr585:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!Boolean(§§pop()))
                                                                                                                                                {
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr589:
                                                                                                                                                      §§pop();
                                                                                                                                                      addr682:
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr592:
                                                                                                                                                         §§push(§1! §);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§push(30 + _loc9_);
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr692:
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc19_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr703:
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr721:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc14_:* = uint(§§pop());
                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                           if(!(_loc19_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(uint(§§pop() + 16));
                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                 addr748:
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           return §§pop();
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr748);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr721);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr703);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(uint(this.§]S§.length));
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr611:
                                                                                                                                                         param1.writeBytes(this.§]S§,0,_loc13_);
                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr648:
                                                                                                                                                         param1.writeBytes(this.§]S§,2,_loc13_);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr676:
                                                                                                                                                            param1.writeBytes(this.§]S§,0,_loc13_);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr682);
                                                                                                                                                      }
                                                                                                                                                      addr656:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr668:
                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr676);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr682);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(this.§]S§.length - 6);
                                                                                                                                                   if(!(_loc19_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(uint(§§pop()));
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         if(_loc20_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr648);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr656);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr668);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr692);
                                                                                                                                             }
                                                                                                                                             §§goto(addr589);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(uint(this.§]S§.length));
                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                             {
                                                                                                                                                §§goto(addr668);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr721);
                                                                                                                                       }
                                                                                                                                       §§goto(addr611);
                                                                                                                                    }
                                                                                                                                    §§goto(addr589);
                                                                                                                                 }
                                                                                                                                 §§goto(addr584);
                                                                                                                              }
                                                                                                                              §§goto(addr592);
                                                                                                                           }
                                                                                                                           §§goto(addr580);
                                                                                                                        }
                                                                                                                        §§goto(addr570);
                                                                                                                     }
                                                                                                                     §§goto(addr586);
                                                                                                                  }
                                                                                                                  §§goto(addr585);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr539);
                                                                                                         }
                                                                                                         §§goto(addr516);
                                                                                                      }
                                                                                                      §§goto(addr510);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc8_.writeMultiByte(this.§<?§,this.§2D§);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr445);
                                                                                    }
                                                                                    §§goto(addr454);
                                                                                 }
                                                                              }
                                                                              §§goto(addr435);
                                                                           }
                                                                           §§goto(addr420);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     §§goto(addr428);
                                                                  }
                                                                  _loc8_.writeUnsignedInt(this.§'$§);
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      addr331:
                                                      this.uncompress();
                                                      if(!(_loc19_ && param3))
                                                      {
                                                         addr340:
                                                         this.§'$§ = §"!+§.§'1§(this.§]S§,0,this.§]S§.length);
                                                         if(!_loc19_)
                                                         {
                                                            addr352:
                                                            this.§+!2§ = true;
                                                            §§goto(addr356);
                                                            §§push(_loc16_);
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr340);
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr356);
                                       }
                                    }
                                    §§goto(addr378);
                                 }
                                 §§goto(addr356);
                              }
                              §§goto(addr211);
                           }
                        }
                        param1.writeUnsignedInt(this.§5^§);
                        §§goto(addr195);
                     }
                  }
                  §§goto(addr180);
               }
               §§goto(addr95);
            }
            §§goto(addr49);
         }
         else
         {
            param1.writeUnsignedInt(§ d§.§0c§);
         }
         §§goto(addr49);
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         while(true)
         {
            §§push(Boolean(param1.bytesAvailable));
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(!(_loc3_ && param1))
                     {
                        §§push(Boolean(this.§[6§(param1)));
                        if(_loc2_ || _loc3_)
                        {
                           addr71:
                           if(§§pop())
                           {
                              continue;
                           }
                        }
                        break;
                     }
                     §§push(this.§[6§ === this.§&"§);
                     break;
                  }
                  break;
               }
               §§goto(addr71);
            }
            break;
         }
         return §§pop();
      }
      
      protected function §&"§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §+F§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1.bytesAvailable >= 30)
            {
               this.§#!E§(param1);
               if(!_loc3_)
               {
                  addr52:
                  if(this.§>?§ + this.§<c§ > 0)
                  {
                     if(!_loc3_)
                     {
                        this.§[6§ = this.§'x§;
                     }
                  }
                  else
                  {
                     this.§[6§ = this.§08§;
                  }
               }
               §§push(true);
               if(!(_loc3_ && this))
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
         §§goto(addr52);
      }
      
      protected function §'x§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.bytesAvailable >= this.§>?§ + this.§<c§)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§'%§(param1);
                  if(!_loc2_)
                  {
                     §§goto(addr59);
                  }
               }
            }
            §§goto(addr79);
         }
         addr59:
         this.§[6§ = this.§08§;
         if(_loc3_ || _loc2_)
         {
            §§push(true);
            if(!(_loc2_ && _loc2_))
            {
               return §§pop();
            }
         }
         else
         {
            addr79:
            §§push(false);
         }
         return §§pop();
      }
      
      protected function §08§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         §§push(this.§;§);
         if(_loc3_ || this)
         {
            if(§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  this.§[6§ = this.§&"§;
                  if(!(_loc4_ && this))
                  {
                     §§push(false);
                     if(!(_loc4_ && param1))
                     {
                        _loc2_ = §§pop();
                     }
                     else
                     {
                        addr117:
                        return §§pop();
                        addr118:
                     }
                     §§goto(addr118);
                  }
               }
               else
               {
                  addr109:
                  this.§[6§ = this.§&"§;
                  addr113:
               }
               §§goto(addr118);
            }
            else if(this.§5c§ == 0)
            {
               if(!(_loc4_ && _loc2_))
               {
                  this.§[6§ = this.§&"§;
               }
               else
               {
                  §§goto(addr113);
               }
               §§goto(addr118);
            }
            else if(param1.bytesAvailable >= this.§5c§)
            {
               if(!_loc4_)
               {
                  this.§%!;§(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr109);
                  }
               }
               §§goto(addr109);
            }
            else
            {
               §§push(false);
               if(!_loc4_)
               {
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr117);
      }
      
      protected function §#!E§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc13_)
         {
            this.§[!+§ = _loc2_ >> 8;
            if(_loc13_ || param1)
            {
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!_loc12_)
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§>Y§ = §§pop();
            }
         }
         var _loc3_:uint = param1.readUnsignedShort();
         this.§1<§ = param1.readUnsignedShort();
         if(_loc13_ || _loc2_)
         {
            §§push(this);
            §§push((_loc3_ & 1) === 0);
            if(_loc13_ || _loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().§]D§ = §§pop();
            if(!(_loc12_ && _loc2_))
            {
               §§push(this);
               §§push((_loc3_ & 8) === 0);
               if(_loc13_)
               {
                  §§push(!§§pop());
               }
               §§pop().§;§ = §§pop();
               if(_loc13_)
               {
                  §§push(this);
                  §§push((_loc3_ & 32) === 0);
                  if(_loc13_ || this)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§-!5§ = §§pop();
                  §§push(_loc3_);
                  if(_loc13_)
                  {
                     §§push(§§pop() & 800);
                     if(_loc13_)
                     {
                        §§push(0);
                        if(_loc13_)
                        {
                           if(§§pop() !== §§pop())
                           {
                              this.§2D§ = "utf-8";
                              if(!_loc12_)
                              {
                                 addr134:
                                 §§push(this.§1<§);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§push(§7!6§);
                                    if(!(_loc12_ && this))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc12_)
                                          {
                                             §§push(this);
                                             if(_loc13_ || this)
                                             {
                                                §§push(_loc3_ & 2);
                                                if(!_loc12_)
                                                {
                                                   if(§§pop() !== 0)
                                                   {
                                                      addr179:
                                                      §§push(8192);
                                                      if(_loc12_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(4096);
                                                   }
                                                }
                                                §§pop().§@!B§ = §§pop();
                                                addr185:
                                                §§push(this);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc3_ & 4);
                                                   if(!_loc12_)
                                                   {
                                                      if(§§pop() !== 0)
                                                      {
                                                         addr195:
                                                         §§push(3);
                                                         if(_loc12_ && _loc2_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(2);
                                                      }
                                                   }
                                                   §§pop().§[i§ = §§pop();
                                                   addr228:
                                                   var _loc4_:uint = param1.readUnsignedShort();
                                                   var _loc5_:uint = param1.readUnsignedShort();
                                                   var _loc6_:* = _loc4_ & 31;
                                                   addr225:
                                                   §§push(_loc4_ & 2016);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() >> 5);
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   §§push(_loc4_ & 63488);
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      §§push(§§pop() >> 11);
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   var _loc9_:* = _loc5_ & 31;
                                                   §§push(_loc5_ & 480);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() >> 5);
                                                   }
                                                   var _loc10_:* = §§pop();
                                                   §§push(_loc5_ & 65024);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(9);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() >> §§pop());
                                                         if(!_loc12_)
                                                         {
                                                            addr282:
                                                            §§push(int(§§pop() + 1980));
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         this.§0]§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            this.§4B§ = param1.readUnsignedInt();
                                                            if(_loc13_ || this)
                                                            {
                                                               this.§5c§ = param1.readUnsignedInt();
                                                               §§goto(addr329);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         addr329:
                                                         this.§5^§ = param1.readUnsignedInt();
                                                         if(!(_loc12_ && _loc2_))
                                                         {
                                                            addr340:
                                                            this.§>?§ = param1.readUnsignedShort();
                                                            this.§<c§ = param1.readUnsignedShort();
                                                         }
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr179);
                                          }
                                       }
                                       else
                                       {
                                          addr210:
                                          if(this.§1<§ === §%!0§)
                                          {
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                              §§push(this);
                              §§push(_loc3_ & 6);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(§§pop() >> 1);
                              }
                              §§pop().§<O§ = §§pop();
                              §§goto(addr225);
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr210);
                  }
               }
               §§goto(addr228);
            }
            §§goto(addr134);
         }
         §§goto(addr185);
      }
      
      protected function §'%§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:uint = 0;
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(_loc7_ || _loc2_)
         {
            if(this.§2D§ == "utf-8")
            {
               if(!(_loc6_ && param1))
               {
                  this.§"Y§ = param1.readUTFBytes(this.§>?§);
                  if(!(_loc6_ && param1))
                  {
                     addr57:
                  }
               }
               §§goto(addr57);
            }
            else
            {
               this.§"Y§ = param1.readMultiByte(this.§>?§,this.§2D§);
            }
            §§push(this.§<c§);
            if(!_loc6_)
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               §§push(4);
               if(_loc7_)
               {
                  while(true)
                  {
                     if(§§pop() <= §§pop())
                     {
                        §§goto(addr253);
                     }
                     _loc3_ = param1.readUnsignedShort();
                     §§push(uint(param1.readUnsignedShort()));
                     §§push(uint(param1.readUnsignedShort()));
                     if(!(_loc6_ && this))
                     {
                        _loc4_ = §§pop();
                        if(_loc7_ || _loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              addr100:
                              if(§§pop() <= §§pop())
                              {
                                 §§push(_loc3_);
                                 §§push(56026);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() === §§pop());
                                    if(_loc7_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop();
                                             §§push(_loc4_);
                                             if(_loc7_ || this)
                                             {
                                                §§push(4);
                                                if(!_loc6_)
                                                {
                                                   addr151:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      this.§'$§ = param1.readUnsignedInt();
                                                      if(_loc7_)
                                                      {
                                                         this.§+!2§ = true;
                                                      }
                                                      addr204:
                                                      §§push(_loc2_);
                                                      if(_loc7_ || this)
                                                      {
                                                         addr213:
                                                         §§push(uint(§§pop() - (_loc4_ + 4)));
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(0);
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               _loc5_ = new ByteArray();
                                                               if(_loc7_ || param1)
                                                               {
                                                                  param1.readBytes(_loc5_,0,_loc4_);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     this.§96§[_loc3_] = _loc5_;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                break;
                                             }
                                             _loc2_ = §§pop();
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr253);
                                          }
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                              }
                              if(!_loc6_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                              break;
                           }
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr100);
                     §§goto(addr243);
                  }
               }
               if(§§pop() > §§pop())
               {
                  if(_loc7_)
                  {
                     param1.readBytes(new ByteArray(),0,_loc2_);
                  }
               }
               addr253:
               if(_loc7_)
               {
                  addr243:
                  §§push(_loc2_);
                  break loop1;
               }
               return;
            }
            throw new Error("Parse error in file " + this.§"Y§ + ": Extra field data size too big.");
         }
         §§goto(addr57);
      }
      
      function §%!;§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         if(_loc3_)
         {
            §§push(this.§1<§);
            if(!(_loc4_ && param1))
            {
               §§push(§%!0§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() === §§pop());
                  §§push(§§pop() === §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(this.§]D§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              addr56:
                              if(§§pop())
                              {
                                 addr58:
                                 §§push(Boolean(§7T§));
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr67:
                                    if(!§§pop())
                                    {
                                       addr68:
                                       §§pop();
                                       §§push(§1! §);
                                       if(!_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc4_ && param1))
                                          {
                                             addr80:
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   param1.readBytes(this.§]S§,0,this.§5c§);
                                                   if(_loc3_)
                                                   {
                                                      addr249:
                                                      this.§+<§ = true;
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr259:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr100:
                                                      §§push(this.§<O§);
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§push(~§§pop());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr117:
                                                            §§push(6);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               addr125:
                                                               §§push(§§pop() << §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(192);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           §§push(_loc2_);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr171:
                                                                              §§push(31);
                                                                              §§push(120);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr193);
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           addr193:
                                                                           §§push(8);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() << §§pop());
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 addr186:
                                                                                 §§push(§§pop() | _loc2_);
                                                                              }
                                                                              §§push(31);
                                                                           }
                                                                           _loc2_ = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              this.§]S§.writeByte(_loc2_);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 param1.readBytes(this.§]S§,2,this.§5c§);
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    this.§]S§.position = this.§]S§.length;
                                                                                    if(_loc4_ && param1)
                                                                                    {
                                                                                    }
                                                                                    addr244:
                                                                                    §§goto(addr249);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    param1.readBytes(this.§]S§,0,this.§5c§);
                                                                                    addr264:
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       this.§+<§ = false;
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                 }
                                                                              }
                                                                              this.§]S§.writeUnsignedInt(this.§'$§);
                                                                              §§goto(addr244);
                                                                           }
                                                                           addr301:
                                                                           this.§]S§.position = 0;
                                                                           return;
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr262:
                                                                        if(§§pop() != §3!6§)
                                                                        {
                                                                           throw new Error("Compression method " + this.§1<§ + " is not supported.");
                                                                        }
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr259);
                                             }
                                             else
                                             {
                                                addr95:
                                                if(!this.§+!2§)
                                                {
                                                   throw new Error("Adler32 checksum not found.");
                                                }
                                                this.§]S§.writeByte(120);
                                             }
                                             §§goto(addr100);
                                          }
                                       }
                                       §§goto(addr95);
                                    }
                                    §§goto(addr80);
                                 }
                                 §§goto(addr68);
                              }
                              else
                              {
                                 §§push(this.§1<§);
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr67);
               }
               §§goto(addr125);
            }
            §§goto(addr117);
         }
         §§goto(addr244);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§+<§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  addr28:
                  if(this.§]S§.length > 0)
                  {
                     this.§]S§.position = 0;
                     if(!_loc2_)
                     {
                        this.§5^§ = this.§]S§.length;
                        if(!_loc2_)
                        {
                           §§push(§1! §);
                           if(_loc1_)
                           {
                              addr49:
                              if(§§pop())
                              {
                                 this.§]S§.deflate();
                                 this.§5c§ = this.§]S§.length;
                                 if(_loc1_)
                                 {
                                    addr123:
                                    this.§]S§.position = 0;
                                    if(!_loc1_)
                                    {
                                       addr136:
                                       this.§5^§ = 0;
                                    }
                                    §§goto(addr139);
                                 }
                                 this.§+<§ = true;
                                 §§goto(addr132);
                              }
                              else
                              {
                                 §§push(§7T§);
                              }
                              §§goto(addr136);
                           }
                           if(§§pop())
                           {
                              this.§]S§.compress.apply(this.§]S§,["deflate"]);
                              this.§5c§ = this.§]S§.length;
                              if(_loc2_ && _loc2_)
                              {
                                 this.§5c§ = this.§]S§.length - 6;
                                 addr99:
                                 if(_loc1_ || this)
                                 {
                                    §§goto(addr123);
                                 }
                              }
                           }
                           else
                           {
                              this.§]S§.compress();
                              if(!_loc2_)
                              {
                                 §§goto(addr99);
                              }
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr123);
                     }
                     addr132:
                     addr139:
                     return;
                  }
                  this.§5c§ = 0;
               }
               §§goto(addr136);
            }
            §§goto(addr49);
         }
         §§goto(addr28);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§+<§);
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           addr47:
                           §§push(this.§]S§.length > 0);
                           if(_loc1_)
                           {
                              addr64:
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    this.§]S§.position = 0;
                                    §§push(§1! §);
                                    if(!_loc2_)
                                    {
                                       addr79:
                                       if(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§]S§.inflate();
                                          }
                                          else
                                          {
                                             addr105:
                                             this.§]S§.uncompress.apply(this.§]S§,["deflate"]);
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr120:
                                             }
                                             §§goto(addr131);
                                          }
                                          addr131:
                                          return;
                                       }
                                       addr87:
                                       if(§7T§)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§goto(addr105);
                                          }
                                       }
                                       else
                                       {
                                          this.§]S§.uncompress();
                                       }
                                       this.§]S§.position = 0;
                                       this.§+<§ = false;
                                       §§goto(addr105);
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr120);
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr64);
               }
               §§goto(addr79);
            }
            §§goto(addr87);
         }
         §§goto(addr47);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipFile]");
         if(_loc1_ || _loc2_)
         {
            §§push("\n  name:");
            if(_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_)
               {
                  §§push(this.§"Y§);
                  if(_loc1_ || _loc2_)
                  {
                     addr40:
                     §§push(§§pop() + §§pop());
                     §§push("\n  date:");
                     if(_loc1_)
                     {
                        §§push(§§pop() + §§pop() + this.§0]§);
                        §§push("\n  sizeCompressed:");
                        if(_loc1_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && this))
                           {
                              §§push(this.§5c§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc1_)
                                 {
                                    §§push(§§pop() + "\n  sizeUncompressed:");
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr84:
                                       §§push(this.§5^§);
                                       if(_loc1_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push("\n  versionHost:");
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                §§push(this.§[!+§);
                                                if(_loc1_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc2_)
                                                   {
                                                      §§push("\n  versionNumber:");
                                                      if(!_loc2_)
                                                      {
                                                         addr120:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc1_)
                                                         {
                                                            §§push(this.§>Y§);
                                                            if(_loc1_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc1_ || this)
                                                               {
                                                                  addr139:
                                                                  §§push(§§pop() + "\n  compressionMethod:" + this.§1<§);
                                                                  if(_loc1_)
                                                                  {
                                                                     §§push("\n  encrypted:");
                                                                     if(_loc1_ || this)
                                                                     {
                                                                        addr150:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(this.§]D§);
                                                                           if(!(_loc2_ && _loc1_))
                                                                           {
                                                                              addr163:
                                                                              §§push(§§pop() + §§pop() + "\n  hasDataDescriptor:");
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr167:
                                                                                 §§push(this.§;§);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + "\n  hasCompressedPatchedData:");
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr183:
                                                                                          §§push(§§pop() + this.§-!5§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr188:
                                                                                             §§push("\n  filenameEncoding:");
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                addr197:
                                                                                                §§push(§§pop() + §§pop() + this.§2D§);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr202:
                                                                                                   §§push("\n  crc32:");
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      addr221:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push(this.§4B§);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr225:
                                                                                                         §§push(16);
                                                                                                         if(_loc1_ || this)
                                                                                                         {
                                                                                                            §§goto(addr249);
                                                                                                         }
                                                                                                         addr249:
                                                                                                         §§push(§§pop() + §§pop().toString(§§pop()) + "\n  adler32:");
                                                                                                         if(_loc1_ || this)
                                                                                                         {
                                                                                                            addr246:
                                                                                                            §§push(this.§'$§);
                                                                                                            §§push(16);
                                                                                                         }
                                                                                                         return §§pop();
                                                                                                         §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr246);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          §§goto(addr202);
                                                                                       }
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                    §§goto(addr183);
                                                                                 }
                                                                              }
                                                                              §§goto(addr202);
                                                                           }
                                                                           §§goto(addr183);
                                                                        }
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr202);
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr197);
               }
               §§goto(addr84);
            }
            §§goto(addr150);
         }
         §§goto(addr40);
      }
   }
}
