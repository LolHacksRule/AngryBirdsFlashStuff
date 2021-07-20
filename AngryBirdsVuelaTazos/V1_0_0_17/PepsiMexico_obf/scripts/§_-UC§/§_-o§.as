package §_-UC§
{
   import §_-XW§.§_-sV§;
   import flash.utils.*;
   
   public class §_-o§
   {
      
      public static const §do§:int = 0;
      
      public static const §_-MG§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-Fw§:int = 6;
      
      public static const §_-RL§:int = 7;
      
      public static const §_-Hg§:int = 8;
      
      public static const §_-4T§:int = 9;
      
      public static const §_-x2§:int = 10;
      
      protected static var §_-sN§:Boolean = describeType(ByteArray).factory.method.(_loc6_ || _loc3_).parameter.length() > 0;
      
      protected static var §_-ny§:Boolean;
      
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §do§ = 0;
            §_-MG§ = 1;
            COMPRESSION_REDUCED_1 = 2;
            if(_loc6_)
            {
               COMPRESSION_REDUCED_2 = 3;
               COMPRESSION_REDUCED_3 = 4;
               COMPRESSION_REDUCED_4 = 5;
               §_-Fw§ = 6;
               §_-RL§ = 7;
               if(!(_loc7_ && _loc1_))
               {
                  §§goto(addr48);
               }
               §§goto(addr56);
            }
            §§goto(addr53);
         }
         addr48:
         if(_loc6_)
         {
            addr53:
            §_-4T§ = 9;
            addr56:
            §_-x2§ = 10;
         }
         if(_loc6_ || §_-o§)
         {
            §_-ny§ = describeType(ByteArray).factory.method.(if(_loc6_)
            {
               if(@name != "inflate")
               {
                  continue loop1;
               }
               if(!(_loc6_ || §_-o§))
               {
                  continue loop1;
               }
            }, _loc1_[_loc2_] = _loc4_, false).length() > 0;
         }
      }
      
      protected var §_-0Y§:int = 0;
      
      protected var §_-kc§:String = "2.0";
      
      protected var §_-78§:int = 8;
      
      protected var §_-Tl§:Boolean = false;
      
      protected var §_-oE§:int = -1;
      
      protected var §_-Ft§:int = -1;
      
      protected var §_-S3§:int = -1;
      
      protected var §_-Vq§:Boolean = false;
      
      protected var §_-TC§:Boolean = false;
      
      protected var §_-YS§:Date;
      
      protected var §_-rg§:uint;
      
      protected var §_-nA§:Boolean = false;
      
      protected var §_-WH§:uint = 0;
      
      protected var §_-7o§:uint = 0;
      
      protected var §_-WV§:String = "";
      
      protected var §_-hS§:String;
      
      protected var §_-Wk§:Dictionary;
      
      protected var §_-Zf§:String = "";
      
      protected var §_-SC§:ByteArray;
      
      var §_-YE§:uint;
      
      var §_-fV§:uint = 0;
      
      var §_-wE§:uint = 0;
      
      protected var §_-Cy§:Boolean = false;
      
      protected var §_-jN§:Function;
      
      public function §_-o§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-jN§ = this.§_-Ih§;
            if(!(_loc3_ && this))
            {
               super();
               this.§_-hS§ = param1;
            }
            this.§_-Wk§ = new Dictionary();
            if(_loc2_)
            {
               this.§_-SC§ = new ByteArray();
               if(_loc2_)
               {
                  addr62:
                  this.§_-SC§.endian = Endian.BIG_ENDIAN;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function get §function§() : Date
      {
         return this.§_-YS§;
      }
      
      public function set §function§(param1:Date) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || this)
            {
               §§pop().§_-YS§ = param1 != null ? param1 : new Date();
               §§goto(addr47);
            }
            §§goto(addr40);
         }
         addr47:
      }
      
      public function get §_-3K§() : String
      {
         return this.§_-WV§;
      }
      
      public function set §_-3K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-WV§ = param1;
         }
      }
      
      function get §_-Yi§() : Boolean
      {
         return this.§_-Vq§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§_-Cy§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr45:
                  this.uncompress();
               }
            }
            return this.§_-SC§;
         }
         §§goto(addr45);
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-zk§(param1);
         }
      }
      
      public function §_-zk§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1 == null);
         if(!(_loc4_ && param1))
         {
            §§push(!§§pop());
            if(_loc5_ || param2)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     §§pop();
                     §§push(param1.length > 0);
                     if(!_loc4_)
                     {
                        addr48:
                        if(§§pop())
                        {
                           if(_loc5_ || param2)
                           {
                              param1.position = 0;
                              param1.readBytes(this.§_-SC§,0,param1.length);
                              this.§_-YE§ = §_-sV§.§_-mh§(this.§_-SC§);
                              this.§_-nA§ = false;
                           }
                           §§goto(addr103);
                        }
                        else
                        {
                           this.§_-SC§.length = 0;
                           if(!(_loc4_ && param2))
                           {
                              this.§_-SC§.position = 0;
                              if(!_loc4_)
                              {
                                 this.§_-Cy§ = false;
                                 addr103:
                                 §§goto(addr104);
                              }
                           }
                        }
                        §§goto(addr109);
                     }
                  }
                  addr104:
                  if(param2)
                  {
                     if(_loc5_)
                     {
                        this.compress();
                        addr109:
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     this.§_-wE§ = this.§_-fV§ = this.§_-SC§.length;
                  }
                  return;
               }
            }
         }
         §§goto(addr48);
      }
      
      public function get §_-Kd§() : String
      {
         return this.§_-kc§;
      }
      
      public function get §_-D9§() : uint
      {
         return this.§_-fV§;
      }
      
      public function get §_-iA§() : uint
      {
         return this.§_-wE§;
      }
      
      public function §_-QP§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(_loc5_)
         {
            §§push(this.§_-Cy§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  this.uncompress();
                  if(!(_loc4_ && _loc3_))
                  {
                     addr38:
                     this.§_-SC§.position = 0;
                  }
                  §§push(param2);
                  if(!_loc4_)
                  {
                     if(§§pop() == "utf-8")
                     {
                        addr54:
                        §§push(this.§_-SC§.readUTFBytes(this.§_-SC§.bytesAvailable));
                        if(_loc5_ || _loc3_)
                        {
                           addr68:
                           _loc3_ = §§pop();
                           §§goto(addr95);
                        }
                        else
                        {
                           addr85:
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                              §§goto(addr95);
                           }
                        }
                        §§goto(addr101);
                     }
                     else
                     {
                        §§push(this.§_-SC§.readMultiByte(this.§_-SC§.bytesAvailable,param2));
                        if(_loc5_ || this)
                        {
                           §§goto(addr85);
                        }
                     }
                     addr95:
                     this.§_-SC§.position = 0;
                     §§goto(addr100);
                  }
                  §§goto(addr68);
               }
               §§goto(addr38);
            }
            addr100:
            if(param1)
            {
               addr101:
               this.compress();
            }
            return _loc3_;
         }
         §§goto(addr54);
      }
      
      public function §_-td§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§_-SC§.length = 0;
            this.§_-SC§.position = 0;
            if(_loc6_)
            {
               this.§_-Cy§ = false;
            }
            §§push(param1);
            if(_loc6_ || this)
            {
               §§push(§§pop() == null);
               if(_loc6_)
               {
                  §§push(!§§pop());
                  if(_loc6_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 §§goto(addr71);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr110);
            }
            addr71:
            §§push(§§pop().length > 0);
            if(!(_loc5_ && param2))
            {
               addr81:
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr85:
                     if(param2 == "utf-8")
                     {
                        addr87:
                        this.§_-SC§.writeUTFBytes(param1);
                        if(_loc6_)
                        {
                           addr99:
                           this.§_-YE§ = §_-sV§.§_-mh§(this.§_-SC§);
                           this.§_-nA§ = false;
                           if(!_loc5_)
                           {
                              §§goto(addr110);
                           }
                           §§goto(addr116);
                           addr93:
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        this.§_-SC§.writeMultiByte(param1,param2);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr87);
               }
               addr110:
               §§goto(addr111);
            }
            addr111:
            if(param3)
            {
               if(_loc6_)
               {
                  addr114:
                  this.compress();
                  addr116:
               }
            }
            else
            {
               this.§_-wE§ = this.§_-fV§ = this.§_-SC§.length;
            }
            return;
         }
         §§goto(addr99);
      }
      
      public function §_-eo§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:* = false;
         if(!(_loc19_ && this))
         {
            if(param1 == null)
            {
               return 0;
            }
            if(param3)
            {
               if(!_loc19_)
               {
                  param1.writeUnsignedInt(§_-vw§.§_-VM§);
                  param1.writeShort(this.§_-0Y§ << 8 | 20);
                  addr57:
                  param1.writeShort(this.§_-0Y§ << 8 | 20);
                  param1.writeShort(this.§_-hS§ == "utf-8" ? 2048 : 0);
                  param1.writeShort(!!this.§_-Cy§ ? int(§_-Hg§) : int(§do§));
               }
               var _loc5_:Date = this.§_-YS§ != null ? this.§_-YS§ : new Date();
               §§push(uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5);
               if(!_loc19_)
               {
                  §§push(§§pop() | uint(_loc5_.getHours()) << 11);
               }
               var _loc6_:uint = §§pop();
               §§push(uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5);
               if(!(_loc19_ && this))
               {
                  §§push(§§pop() | uint(_loc5_.getFullYear() - 1980) << 9);
               }
               var _loc7_:uint = §§pop();
               if(_loc20_ || param2)
               {
                  param1.writeShort(_loc6_);
                  if(!_loc19_)
                  {
                     param1.writeShort(_loc7_);
                     if(_loc20_)
                     {
                        addr167:
                        param1.writeUnsignedInt(this.§_-YE§);
                        if(_loc20_)
                        {
                           param1.writeUnsignedInt(this.§_-fV§);
                           if(_loc20_ || param1)
                           {
                           }
                           addr188:
                           var _loc8_:ByteArray;
                           (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
                           if(_loc20_)
                           {
                              if(this.§_-hS§ == "utf-8")
                              {
                                 if(_loc20_)
                                 {
                                    _loc8_.writeUTFBytes(this.§_-WV§);
                                    if(!_loc20_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 _loc8_.writeMultiByte(this.§_-WV§,this.§_-hS§);
                              }
                           }
                           var _loc9_:uint = _loc8_.position;
                           for(_loc10_ in this.§_-Wk§)
                           {
                              if((_loc15_ = this.§_-Wk§[_loc10_] as ByteArray) != null)
                              {
                                 if(_loc20_)
                                 {
                                    _loc8_.writeShort(uint(_loc10_));
                                    if(!_loc20_)
                                    {
                                       continue;
                                    }
                                    _loc8_.writeShort(uint(_loc15_.length));
                                    if(!(_loc20_ || this))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc8_.writeBytes(_loc15_);
                              }
                           }
                           if(!_loc19_)
                           {
                              §§push(param2);
                              if(!(_loc19_ && param3))
                              {
                                 if(§§pop())
                                 {
                                    §§push(this.§_-nA§);
                                    if(!(_loc19_ && param2))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc19_)
                                          {
                                             §§push(this.§_-Cy§);
                                             if(!(_loc19_ && this))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc20_ || param1)
                                                {
                                                   §§push(_loc16_ = §§pop());
                                                   if(_loc20_ || param3)
                                                   {
                                                      addr323:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            this.uncompress();
                                                            if(!_loc20_)
                                                            {
                                                            }
                                                            addr361:
                                                            this.compress();
                                                            if(!(_loc19_ && this))
                                                            {
                                                               addr377:
                                                               _loc8_.writeShort(56026);
                                                               addr380:
                                                               _loc8_.writeShort(4);
                                                               if(_loc19_ && this)
                                                               {
                                                               }
                                                               addr394:
                                                               var _loc11_:uint = _loc8_.position - _loc9_;
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  §§push(param3);
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc20_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc20_ || param3)
                                                                           {
                                                                              addr427:
                                                                              §§pop();
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(this.§_-Zf§);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr437:
                                                                                    if(§§pop().length > 0)
                                                                                    {
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          addr442:
                                                                                          if(this.§_-hS§ == "utf-8")
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr446:
                                                                                                _loc8_.writeUTFBytes(this.§_-Zf§);
                                                                                                if(_loc19_ && param3)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc8_.writeMultiByte(this.§_-Zf§,this.§_-hS§);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr446);
                                                                                    }
                                                                                    §§push(_loc8_.position - _loc9_);
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() - _loc11_);
                                                                                    }
                                                                                    var _loc12_:uint = §§pop();
                                                                                    param1.writeShort(_loc9_);
                                                                                    param1.writeShort(_loc11_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(param3)
                                                                                       {
                                                                                          if(!(_loc19_ && param2))
                                                                                          {
                                                                                             param1.writeShort(_loc12_);
                                                                                             param1.writeShort(0);
                                                                                             param1.writeShort(0);
                                                                                             if(_loc19_ && param1)
                                                                                             {
                                                                                             }
                                                                                             addr538:
                                                                                             param1.writeBytes(_loc8_);
                                                                                             var _loc13_:* = uint(0);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(!param3);
                                                                                                §§push(!param3);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(this.§_-SC§.length > 0);
                                                                                                         if(_loc20_ || this)
                                                                                                         {
                                                                                                            addr572:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§push(this.§_-Cy§);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  addr577:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§push(§_-sN§);
                                                                                                                     if(_loc20_ || param2)
                                                                                                                     {
                                                                                                                        addr588:
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!Boolean(§§pop()))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc20_ || param2)
                                                                                                                           {
                                                                                                                              addr599:
                                                                                                                              if(§_-ny§)
                                                                                                                              {
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(uint(this.§_-SC§.length));
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          addr626:
                                                                                                                                          param1.writeBytes(this.§_-SC§,0,_loc13_);
                                                                                                                                       }
                                                                                                                                       addr683:
                                                                                                                                       §§push(30 + _loc9_);
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                             {
                                                                                                                                                addr699:
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(!(_loc19_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr707:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr711:
                                                                                                                                                      §§push(§§pop() + _loc13_);
                                                                                                                                                   }
                                                                                                                                                   var _loc14_:* = uint(§§pop());
                                                                                                                                                   if(_loc20_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(param3)
                                                                                                                                                      {
                                                                                                                                                         if(_loc20_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(uint(§§pop() + 16));
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  addr746:
                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr746);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr711);
                                                                                                                                          }
                                                                                                                                          §§goto(addr707);
                                                                                                                                       }
                                                                                                                                       §§goto(addr711);
                                                                                                                                       addr662:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr669:
                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                       if(!(_loc19_ && param2))
                                                                                                                                       {
                                                                                                                                          addr677:
                                                                                                                                          param1.writeBytes(this.§_-SC§,0,_loc13_);
                                                                                                                                       }
                                                                                                                                       §§goto(addr683);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr683);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§_-SC§.length - 6);
                                                                                                                                 if(_loc20_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(uint(§§pop()));
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                       if(_loc20_ || param3)
                                                                                                                                       {
                                                                                                                                          param1.writeBytes(this.§_-SC§,2,_loc13_);
                                                                                                                                          §§goto(addr662);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr677);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr669);
                                                                                                                                    }
                                                                                                                                    §§goto(addr683);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr699);
                                                                                                                           }
                                                                                                                           §§goto(addr626);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr599);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(uint(this.§_-SC§.length));
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§goto(addr669);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr707);
                                                                                                               }
                                                                                                               §§goto(addr599);
                                                                                                            }
                                                                                                            §§goto(addr683);
                                                                                                         }
                                                                                                         §§goto(addr577);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr572);
                                                                                                }
                                                                                                §§goto(addr588);
                                                                                             }
                                                                                             §§goto(addr677);
                                                                                          }
                                                                                          param1.writeUnsignedInt(0);
                                                                                          param1.writeUnsignedInt(param4);
                                                                                          if(_loc20_ || param3)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§push(_loc9_);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc11_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc12_);
                                                                                          }
                                                                                          if(§§pop() > 0)
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§goto(addr538);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr538);
                                                                                 }
                                                                                 §§goto(addr442);
                                                                              }
                                                                              §§goto(addr446);
                                                                           }
                                                                        }
                                                                        §§goto(addr437);
                                                                     }
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr442);
                                                            }
                                                            _loc8_.writeUnsignedInt(this.§_-rg§);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      this.§_-rg§ = §_-sV§.§_-2K§(this.§_-SC§,0,this.§_-SC§.length);
                                                      if(_loc20_ || this)
                                                      {
                                                         this.§_-nA§ = true;
                                                         if(!_loc19_)
                                                         {
                                                            addr358:
                                                            if(_loc16_)
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                }
                                             }
                                             §§goto(addr358);
                                          }
                                          §§goto(addr361);
                                       }
                                       §§goto(addr377);
                                    }
                                    §§goto(addr323);
                                 }
                                 §§goto(addr377);
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr377);
                        }
                     }
                     param1.writeUnsignedInt(this.§_-wE§);
                     §§goto(addr188);
                  }
                  §§goto(addr167);
               }
               §§goto(addr188);
            }
            else
            {
               param1.writeUnsignedInt(§_-vw§.§_-9I§);
               if(_loc20_)
               {
                  §§goto(addr57);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr57);
      }
      
      function §_-Qq§(param1:IDataInput) : Boolean
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
                  if(_loc2_)
                  {
                     §§pop();
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                     §§push(Boolean(this.§_-jN§(param1)));
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr58);
               }
            }
         }
         while(§§pop());
         
         addr58:
         this.§_-jN§ === this.§_-Kw§;
         return §§pop();
      }
      
      protected function §_-Kw§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-Ih§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.bytesAvailable >= 30)
            {
               this.§_-6O§(param1);
               if(_loc2_ || _loc2_)
               {
                  if(this.§_-WH§ + this.§_-7o§ > 0)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§_-jN§ = this.§_-LH§;
                     }
                  }
                  else
                  {
                     this.§_-jN§ = this.§_-jx§;
                     if(_loc2_)
                     {
                        addr68:
                        §§push(true);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr72:
                        §§push(false);
                     }
                     return §§pop();
                  }
                  §§goto(addr68);
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function §_-LH§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1.bytesAvailable >= this.§_-WH§ + this.§_-7o§)
            {
               if(!_loc3_)
               {
                  this.§_-2b§(param1);
                  if(_loc3_ && _loc3_)
                  {
                  }
                  addr58:
                  §§push(true);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
                  §§goto(addr75);
               }
               this.§_-jN§ = this.§_-jx§;
               if(!(_loc3_ && param1))
               {
                  §§goto(addr58);
               }
               else
               {
                  addr74:
                  §§push(false);
               }
               addr75:
               return §§pop();
            }
            §§goto(addr74);
         }
         §§goto(addr58);
      }
      
      protected function §_-jx§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         §§push(this.§_-Vq§);
         if(!(_loc4_ && _loc2_))
         {
            if(§§pop())
            {
               this.§_-jN§ = this.§_-Kw§;
               if(_loc3_)
               {
                  §§push(false);
                  if(!_loc4_)
                  {
                     addr34:
                     _loc2_ = §§pop();
                  }
                  else
                  {
                     addr82:
                     _loc2_ = §§pop();
                  }
               }
               else
               {
                  addr66:
               }
               addr83:
               §§push(_loc2_);
            }
            else if(this.§_-fV§ == 0)
            {
               this.§_-jN§ = this.§_-Kw§;
               §§goto(addr83);
            }
            else if(param1.bytesAvailable >= this.§_-fV§)
            {
               this.§_-QG§(param1);
               this.§_-jN§ = this.§_-Kw§;
               if(_loc3_)
               {
                  §§goto(addr66);
               }
               §§goto(addr83);
            }
            else
            {
               §§push(false);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr82);
               }
            }
            return §§pop();
         }
         §§goto(addr34);
      }
      
      protected function §_-6O§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:uint = param1.readUnsignedShort();
         if(!_loc13_)
         {
            this.§_-0Y§ = _loc2_ >> 8;
            if(!_loc13_)
            {
               addr26:
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!_loc13_)
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§_-kc§ = §§pop();
            }
            var _loc3_:uint = param1.readUnsignedShort();
            this.§_-78§ = param1.readUnsignedShort();
            §§push(this);
            §§push((_loc3_ & 1) === 0);
            if(_loc12_)
            {
               §§push(!§§pop());
            }
            §§pop().§_-Tl§ = §§pop();
            if(!_loc13_)
            {
               §§push(this);
               §§push((_loc3_ & 8) === 0);
               if(_loc12_ || this)
               {
                  §§push(!§§pop());
               }
               §§pop().§_-Vq§ = §§pop();
               if(!(_loc13_ && this))
               {
                  §§push(this);
                  §§push((_loc3_ & 32) === 0);
                  if(!(_loc13_ && _loc2_))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§_-TC§ = §§pop();
                  §§push(_loc3_);
                  if(!(_loc13_ && _loc2_))
                  {
                     §§push(§§pop() & 800);
                     if(_loc12_)
                     {
                        §§push(0);
                        if(_loc12_ || param1)
                        {
                           if(§§pop() !== §§pop())
                           {
                              this.§_-hS§ = "utf-8";
                              if(!(_loc13_ && _loc2_))
                              {
                                 addr133:
                                 §§push(this.§_-78§);
                                 if(_loc12_)
                                 {
                                    addr137:
                                    §§push(§_-Fw§);
                                    if(!_loc13_)
                                    {
                                       addr140:
                                       if(§§pop() === §§pop())
                                       {
                                          addr141:
                                          §§push(this);
                                          if(_loc12_)
                                          {
                                             §§push(_loc3_ & 2);
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                if(§§pop() !== 0)
                                                {
                                                   addr156:
                                                   §§push(8192);
                                                   if(_loc13_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(4096);
                                                }
                                             }
                                             §§pop().§_-oE§ = §§pop();
                                             if(_loc12_ || _loc2_)
                                             {
                                                addr176:
                                                §§push(this);
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc3_ & 4);
                                                   if(_loc12_)
                                                   {
                                                      if(§§pop() !== 0)
                                                      {
                                                         addr186:
                                                         §§push(3);
                                                         if(_loc12_)
                                                         {
                                                            addr189:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(2);
                                                      }
                                                      §§pop().§_-Ft§ = §§pop();
                                                      addr211:
                                                      var _loc4_:uint = param1.readUnsignedShort();
                                                      var _loc5_:uint = param1.readUnsignedShort();
                                                      var _loc6_:* = _loc4_ & 31;
                                                      addr208:
                                                      §§push(_loc4_ & 2016);
                                                      if(_loc12_)
                                                      {
                                                         §§push(§§pop() >> 5);
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(_loc4_ & 63488);
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop() >> 11);
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      var _loc9_:* = _loc5_ & 31;
                                                      §§push(_loc5_ & 480);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         §§push(§§pop() >> 5);
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(_loc5_ & 65024);
                                                      if(_loc12_)
                                                      {
                                                         §§push(9);
                                                         if(_loc12_)
                                                         {
                                                            §§push(§§pop() >> §§pop());
                                                            if(!(_loc13_ && this))
                                                            {
                                                               addr270:
                                                               §§push(int(§§pop() + 1980));
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            this.§_-YS§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               this.§_-YE§ = param1.readUnsignedInt();
                                                               if(_loc12_ || _loc2_)
                                                               {
                                                                  addr303:
                                                                  this.§_-fV§ = param1.readUnsignedInt();
                                                                  if(_loc12_ || this)
                                                                  {
                                                                     this.§_-wE§ = param1.readUnsignedInt();
                                                                     if(!_loc13_)
                                                                     {
                                                                        this.§_-WH§ = param1.readUnsignedShort();
                                                                     }
                                                                  }
                                                               }
                                                               this.§_-7o§ = param1.readUnsignedShort();
                                                               return;
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                      §§goto(addr270);
                                                      addr192:
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr156);
                                       }
                                       else
                                       {
                                          addr196:
                                          if(this.§_-78§ === §_-Hg§)
                                          {
                                             if(_loc12_)
                                             {
                                                §§push(this);
                                                §§push(_loc3_ & 6);
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop() >> 1);
                                                }
                                                §§pop().§_-S3§ = §§pop();
                                             }
                                          }
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr211);
               }
               §§goto(addr141);
            }
            §§goto(addr176);
         }
         §§goto(addr26);
      }
      
      protected function §_-2b§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(_loc7_ || param1)
         {
            if(this.§_-hS§ == "utf-8")
            {
               if(!_loc6_)
               {
                  this.§_-WV§ = param1.readUTFBytes(this.§_-WH§);
                  if(_loc7_)
                  {
                     addr44:
                  }
               }
               §§goto(addr44);
            }
            else
            {
               this.§_-WV§ = param1.readMultiByte(this.§_-WH§,this.§_-hS§);
            }
            §§push(this.§_-7o§);
            if(!_loc6_)
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc6_ && this))
               {
                  §§push(4);
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc7_)
                           {
                              §§push(_loc2_);
                              break loop0;
                           }
                        }
                        else
                        {
                           §§push(uint(param1.readUnsignedShort()));
                           if(_loc7_ || this)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc7_ || _loc2_))
                              {
                                 continue loop0;
                              }
                              §§push(uint(param1.readUnsignedShort()));
                              §§push(uint(param1.readUnsignedShort()));
                              if(_loc7_)
                              {
                                 _loc4_ = §§pop();
                                 §§push(_loc2_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       throw new Error("Parse error in file " + this.§_-WV§ + ": Extra field data size too big.");
                                    }
                                    §§push(_loc3_);
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(56026);
                                       if(_loc7_ || this)
                                       {
                                          §§push(§§pop() === §§pop());
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   addr134:
                                                   §§pop();
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         addr145:
                                                         §§push(4);
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         addr149:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            this.§_-rg§ = param1.readUnsignedInt();
                                                            if(!(_loc6_ && this))
                                                            {
                                                               this.§_-nA§ = true;
                                                               if(!_loc6_)
                                                               {
                                                                  addr201:
                                                                  _loc2_ -= _loc4_ + 4;
                                                                  addr195:
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr233:
                                                                  addr233:
                                                                  param1.readBytes(new ByteArray(),0,_loc2_);
                                                                  addr166:
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr168:
                                                         §§push(_loc4_);
                                                         §§push(0);
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            _loc5_ = new ByteArray();
                                                            if(!_loc6_)
                                                            {
                                                               param1.readBytes(_loc5_,0,_loc4_);
                                                               if(_loc7_ || param1)
                                                               {
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            this.§_-Wk§[_loc3_] = _loc5_;
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr166);
                                                }
                                             }
                                             §§goto(addr149);
                                          }
                                          §§goto(addr134);
                                       }
                                       break;
                                    }
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr233);
                     }
                  }
                  §§goto(addr232);
               }
               break;
            }
            addr232:
            if(§§pop() > §§pop())
            {
               §§goto(addr233);
            }
            addr239:
            return;
            §§push(0);
         }
         §§goto(addr44);
      }
      
      function §_-QG§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§_-78§);
            if(_loc4_ || param1)
            {
               §§push(§_-Hg§);
               if(_loc4_ || this)
               {
                  §§push(§§pop() === §§pop());
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(!this.§_-Tl§);
                              if(_loc4_ || param1)
                              {
                                 addr66:
                                 if(§§pop())
                                 {
                                    addr70:
                                    §§push(Boolean(§_-sN§));
                                    if(!Boolean(§_-sN§))
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop();
                                          §§push(§_-ny§);
                                          if(!(_loc3_ && param1))
                                          {
                                             addr82:
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       §§goto(addr82);
                                    }
                                    if(§§pop())
                                    {
                                       param1.readBytes(this.§_-SC§,0,this.§_-fV§);
                                       if(!(_loc3_ && this))
                                       {
                                          §§goto(addr246);
                                       }
                                       else
                                       {
                                          addr268:
                                          this.§_-Cy§ = false;
                                          if(!_loc4_)
                                          {
                                          }
                                       }
                                       §§goto(addr292);
                                    }
                                    else
                                    {
                                       addr101:
                                       if(!this.§_-nA§)
                                       {
                                          throw new Error("Adler32 checksum not found.");
                                       }
                                       if(_loc4_)
                                       {
                                          addr104:
                                          this.§_-SC§.writeByte(120);
                                          §§push(this.§_-S3§);
                                          if(!_loc3_)
                                          {
                                             §§push(~§§pop());
                                             if(!(_loc3_ && param1))
                                             {
                                                addr120:
                                                §§push(6);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr128:
                                                   §§push(§§pop() << §§pop());
                                                   if(_loc4_ || this)
                                                   {
                                                      addr136:
                                                      §§push(192);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(!_loc3_)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               _loc2_ = §§pop();
                                                               §§push(_loc2_);
                                                               if(_loc4_ || this)
                                                               {
                                                                  addr171:
                                                                  §§push(31);
                                                                  §§push(120);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(8);
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() << §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr188:
                                                                           §§push(§§pop() | _loc2_);
                                                                           §§push(31);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                     addr193:
                                                                     _loc2_ = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                     this.§_-SC§.writeByte(_loc2_);
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        param1.readBytes(this.§_-SC§,2,this.§_-fV§);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           this.§_-SC§.position = this.§_-SC§.length;
                                                                           if(_loc4_)
                                                                           {
                                                                              this.§_-SC§.writeUnsignedInt(this.§_-rg§);
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 §§goto(addr239);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr261:
                                                                                 param1.readBytes(this.§_-SC§,0,this.§_-fV§);
                                                                                 §§goto(addr268);
                                                                              }
                                                                           }
                                                                           addr239:
                                                                           §§goto(addr246);
                                                                        }
                                                                        addr246:
                                                                        this.§_-Cy§ = true;
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr292:
                                                                           this.§_-SC§.position = 0;
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                         else
                                                         {
                                                            addr259:
                                                            if(§§pop() != §do§)
                                                            {
                                                               throw new Error("Compression method " + this.§_-78§ + " is not supported.");
                                                            }
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                   }
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr259);
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 else
                                 {
                                    §§push(this.§_-78§);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr82);
               }
               §§goto(addr128);
            }
            §§goto(addr120);
         }
         §§goto(addr104);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-Cy§);
         if(_loc1_)
         {
            if(!§§pop())
            {
               if(!_loc2_)
               {
                  if(this.§_-SC§.length > 0)
                  {
                     this.§_-SC§.position = 0;
                     if(_loc1_)
                     {
                        this.§_-wE§ = this.§_-SC§.length;
                        §§push(§_-ny§);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              this.§_-SC§.deflate();
                           }
                           else
                           {
                              addr50:
                              if(§_-sN§)
                              {
                                 this.§_-SC§.compress.apply(this.§_-SC§,["deflate"]);
                                 addr51:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.§_-fV§ = this.§_-SC§.length;
                                 }
                                 addr98:
                                 this.§_-SC§.position = 0;
                                 this.§_-Cy§ = true;
                                 return;
                                 addr112:
                              }
                              else
                              {
                                 this.§_-SC§.compress();
                                 if(_loc1_)
                                 {
                                    this.§_-fV§ = this.§_-SC§.length - 6;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr98);
                                    }
                                    §§goto(addr112);
                                 }
                                 else
                                 {
                                    addr116:
                                    this.§_-wE§ = 0;
                                    §§goto(addr98);
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr50);
                     }
                     this.§_-fV§ = this.§_-SC§.length;
                     §§goto(addr98);
                  }
                  else
                  {
                     this.§_-fV§ = 0;
                  }
                  §§goto(addr116);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr50);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-Cy§);
         if(!(_loc1_ && this))
         {
            §§push(Boolean(§§pop()));
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     §§push(this.§_-SC§.length > 0);
                     if(_loc2_ || _loc1_)
                     {
                        §§goto(addr53);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr95);
               }
            }
         }
         addr53:
         if(§§pop())
         {
            this.§_-SC§.position = 0;
            if(!_loc1_)
            {
               §§push(§_-ny§);
               if(_loc2_ || _loc1_)
               {
                  addr75:
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        this.§_-SC§.inflate();
                        if(_loc1_ && this)
                        {
                        }
                        addr122:
                        this.§_-SC§.position = 0;
                     }
                  }
                  else
                  {
                     addr95:
                     if(§_-sN§)
                     {
                        addr96:
                        this.§_-SC§.uncompress.apply(this.§_-SC§,["deflate"]);
                        §§goto(addr122);
                     }
                     else
                     {
                        this.§_-SC§.uncompress();
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr122);
                        }
                     }
                  }
                  this.§_-Cy§ = false;
                  §§goto(addr129);
               }
               §§goto(addr95);
            }
            §§goto(addr96);
         }
         addr129:
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipFile]" + "\n  name:");
         §§push(this.§_-WV§);
         if(_loc2_)
         {
            §§push(§§pop() + §§pop());
            if(_loc2_)
            {
               §§push(§§pop() + "\n  date:" + this.§_-YS§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() + "\n  sizeCompressed:");
                  §§push(this.§_-fV§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() + §§pop() + "\n  sizeUncompressed:");
                     §§push(this.§_-wE§);
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop() + "\n  versionHost:");
                        §§push(this.§_-0Y§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop() + "\n  versionNumber:");
                           §§push(this.§_-kc§);
                           if(_loc2_ || this)
                           {
                              addr78:
                              §§push(§§pop() + §§pop() + "\n  compressionMethod:");
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr97:
                                 §§push(§§pop() + this.§_-78§);
                                 if(!(_loc1_ && this))
                                 {
                                    addr107:
                                    §§push(§§pop() + "\n  encrypted:");
                                    §§push(this.§_-Tl§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() + §§pop() + "\n  hasDataDescriptor:");
                                       if(!(_loc1_ && this))
                                       {
                                          §§push(this.§_-Vq§);
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr130:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                addr138:
                                                §§push(§§pop() + "\n  hasCompressedPatchedData:");
                                                if(_loc2_ || _loc1_)
                                                {
                                                   addr150:
                                                   §§push(§§pop() + this.§_-TC§ + "\n  filenameEncoding:" + this.§_-hS§ + "\n  crc32:");
                                                   §§push(this.§_-YE§);
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      addr166:
                                                      §§push(16);
                                                      if(!_loc1_)
                                                      {
                                                         §§push(§§pop() + §§pop().toString(§§pop()));
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr180);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr184);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr130);
                                 }
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr166);
               }
               addr180:
               §§push(§§pop() + "\n  adler32:");
               if(_loc2_)
               {
                  addr184:
                  §§push(§§pop() + this.§_-rg§.toString(16));
               }
               return §§pop();
            }
            §§goto(addr107);
         }
         §§goto(addr78);
      }
   }
}
