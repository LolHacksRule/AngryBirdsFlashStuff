package §+O§
{
   import §^$§.§;U§;
   import flash.utils.*;
   
   public class §=F§
   {
      
      public static const §1_§:int = 0;
      
      public static const §='§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §[7§:int = 6;
      
      public static const § 3§:int = 7;
      
      public static const §"i§:int = 8;
      
      public static const §!x§:int = 9;
      
      public static const §5^§:int = 10;
      
      protected static var §3i§:Boolean;
      
      protected static var §0X§:Boolean;
      
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         loop0:
         while(true)
         {
            COMPRESSION_REDUCED_2 = 3;
            loop1:
            while(true)
            {
               COMPRESSION_REDUCED_3 = 4;
               COMPRESSION_REDUCED_4 = 5;
               loop2:
               while(true)
               {
                  §[7§ = 6;
                  while(!_loc6_)
                  {
                     continue loop1;
                     loop5:
                     while(true)
                     {
                        §!x§ = 9;
                        if(!(_loc7_ || _loc1_))
                        {
                           break;
                        }
                        §5^§ = 10;
                        addr42:
                        if(_loc7_ || §=F§)
                        {
                           if(true)
                           {
                              var _loc2_:int = 0;
                              var _loc3_:* = §§checkfilter(describeType(ByteArray).factory.method);
                              var _loc1_:* = new XMLList("");
                              addr153:
                              §§push(§§findproperty(§3i§));
                           }
                           continue;
                           for each(var _loc4_ in _loc3_)
                           {
                              with(_loc4_)
                              {
                                 
                                 if(_loc7_ || §=F§)
                                 {
                                    if(@name == "uncompress")
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc1_[_loc2_] = _loc4_;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr153);
                           }
                           §§pop().§3i§ = _loc1_.parameter.length() > 0;
                           if(!_loc6_)
                           {
                              _loc2_ = 0;
                              _loc3_ = §§checkfilter(describeType(ByteArray).factory.method);
                              _loc1_ = new XMLList("");
                              addr221:
                              §§push(§§findproperty(§0X§));
                              for each(_loc4_ in _loc3_)
                              {
                                 var _loc5_:*;
                                 with(_loc5_ = _loc4_)
                                 {
                                    
                                    if(_loc7_ || §=F§)
                                    {
                                       if(@name == "inflate")
                                       {
                                          if(!_loc6_)
                                          {
                                             addr214:
                                             _loc1_[_loc2_] = _loc4_;
                                          }
                                       }
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr214);
                              }
                              §§pop().§0X§ = _loc1_.length() > 0;
                           }
                           return;
                        }
                        addr47:
                        while(_loc7_)
                        {
                           continue loop5;
                           §§goto(addr42);
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected var §^C§:int = 0;
      
      protected var §+[§:String = "2.0";
      
      protected var §0!2§:int = 8;
      
      protected var §[^§:Boolean = false;
      
      protected var §3T§:int = -1;
      
      protected var §'H§:int = -1;
      
      protected var §0h§:int = -1;
      
      protected var §#P§:Boolean = false;
      
      protected var §%!E§:Boolean = false;
      
      protected var §"c§:Date;
      
      protected var §4f§:uint;
      
      protected var §5S§:Boolean = false;
      
      protected var §[B§:uint = 0;
      
      protected var §>e§:uint = 0;
      
      protected var § o§:String = "";
      
      protected var §;B§:String;
      
      protected var §;!"§:Dictionary;
      
      protected var §-h§:String = "";
      
      protected var §0`§:ByteArray;
      
      var §;!I§:uint;
      
      var §59§:uint = 0;
      
      var §;!Q§:uint = 0;
      
      protected var §@%§:Boolean = false;
      
      protected var §1S§:Function;
      
      public function §=F§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§1S§ = this.§^N§;
         do
         {
            super();
            do
            {
               this.§;B§ = param1;
            }
            while(_loc3_);
            
         }
         while(_loc3_ && _loc3_);
         
         this.§;!"§ = new Dictionary();
         this.§0`§ = new ByteArray();
         this.§0`§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §%n§() : Date
      {
         return this.§"c§;
      }
      
      public function set §%n§(param1:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(_loc3_ || _loc3_)
            {
               §§pop().§"c§ = param1 != null ? param1 : new Date();
               §§goto(addr47);
            }
            §§goto(addr40);
         }
         addr47:
      }
      
      public function get §26§() : String
      {
         return this.§ o§;
      }
      
      public function set §26§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§ o§ = param1;
         }
      }
      
      function get §'!>§() : Boolean
      {
         return this.§#P§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§@%§)
            {
               if(!(_loc1_ && this))
               {
                  addr44:
                  this.uncompress();
               }
            }
            return this.§0`§;
         }
         §§goto(addr44);
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!!N§(param1);
         }
      }
      
      public function §!!N§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1 == null);
            if(!_loc4_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§0`§.length = 0;
                           if(_loc5_ || _loc3_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 this.§0`§.position = 0;
                                 loop2:
                                 while(true)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       while(true)
                                       {
                                          this.§@%§ = false;
                                          addr58:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr54:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          param1.position = 0;
                                          addr153:
                                          while(true)
                                          {
                                             param1.readBytes(this.§0`§,0,param1.length);
                                             this.§;!I§ = §;U§.§++§(this.§0`§);
                                             addr116:
                                             while(true)
                                             {
                                                this.§5S§ = false;
                                             }
                                          }
                                       }
                                       addr150:
                                    }
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§;!Q§ = this.§59§ = this.§0`§.length;
                                          }
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          if(!(_loc4_ && param2))
                                          {
                                             if(_loc5_)
                                             {
                                                this.compress();
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr54);
                                                }
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue;
                                          break;
                                       }
                                       addr162:
                                       while(true)
                                       {
                                          §§pop();
                                          §§push(param1.length > 0);
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr153);
                           }
                           addr176:
                           return;
                        }
                        §§goto(addr150);
                     }
                     addr148:
                  }
               }
            }
            §§goto(addr162);
         }
         §§goto(addr116);
      }
      
      public function get §1!%§() : String
      {
         return this.§+[§;
      }
      
      public function get §'n§() : uint
      {
         return this.§59§;
      }
      
      public function get §-d§() : uint
      {
         return this.§;!Q§;
      }
      
      public function §2o§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc5_ && param2))
         {
            §§push(this.§@%§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  this.uncompress();
               }
               this.§0`§.position = 0;
               loop1:
               while(true)
               {
                  §§push(param2);
                  while(true)
                  {
                     if(§§pop() != "utf-8")
                     {
                        §§push(this.§0`§.readMultiByte(this.§0`§.bytesAvailable,param2));
                        while(!_loc5_)
                        {
                           _loc3_ = §§pop();
                        }
                        continue;
                        addr102:
                     }
                     §§push(this.§0`§.readUTFBytes(this.§0`§.bytesAvailable));
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr118:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              addr68:
                              while(true)
                              {
                                 this.§0`§.position = 0;
                                 if(!(_loc4_ || param2))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        §§goto(addr68);
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function §3o§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§0`§.length = 0;
         this.§0`§.position = 0;
         loop0:
         while(true)
         {
            this.§@%§ = false;
            §§push(param1);
            addr122:
            while(true)
            {
               §§push(§§pop() == null);
               addr124:
               loop2:
               while(true)
               {
                  §§push(!§§pop());
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue loop0;
                     }
                     loop12:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop13:
                           while(true)
                           {
                              §§push(param2);
                              addr113:
                              while(true)
                              {
                                 if(§§pop() == "utf-8")
                                 {
                                    this.§0`§.writeUTFBytes(param1);
                                    while(true)
                                    {
                                       addr44:
                                       if(_loc5_ || param2)
                                       {
                                          if(false)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                this.§5S§ = false;
                                                if(_loc5_ || this)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param3);
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      else
                                                      {
                                                         addr108:
                                                      }
                                                      while(_loc5_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop2;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc6_ && param3)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      this.§;!Q§ = this.§59§ = this.§0`§.length;
                                                      break;
                                                   }
                                                   if(!(_loc6_ && this))
                                                   {
                                                      this.compress();
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr44);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                      addr84:
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr169);
                                          }
                                          addr169:
                                       }
                                       continue;
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    this.§0`§.writeMultiByte(param1,param2);
                                 }
                                 while(true)
                                 {
                                    this.§;!I§ = §;U§.§++§(this.§0`§);
                                    §§goto(addr84);
                                 }
                                 continue loop13;
                              }
                           }
                        }
                        §§goto(addr17);
                     }
                  }
               }
            }
         }
      }
      
      public function §?!E§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:Boolean = false;
         if(_loc19_)
         {
            if(param1 != null)
            {
               while(true)
               {
                  if(!param3)
                  {
                     param1.writeUnsignedInt(§?^§.§5"§);
                     if(!_loc20_)
                     {
                        if(!_loc19_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           param1.writeShort(this.§^C§ << 8 | 20);
                           if(!(_loc20_ && param1))
                           {
                              loop2:
                              while(true)
                              {
                                 param1.writeShort(this.§;B§ == "utf-8" ? 2048 : 0);
                                 if(!(_loc20_ && param2))
                                 {
                                    param1.writeShort(!!this.§@%§ ? int(§"i§) : int(§1_§));
                                    if(!(_loc20_ && param3))
                                    {
                                       if(_loc19_ || param3)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          var _loc5_:Date = this.§"c§ != null ? this.§"c§ : new Date();
                                          §§push(uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5);
                                          if(_loc19_)
                                          {
                                             §§push(§§pop() | uint(_loc5_.getHours()) << 11);
                                          }
                                          var _loc6_:uint = §§pop();
                                          §§push(uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop() | uint(_loc5_.getFullYear() - 1980) << 9);
                                          }
                                          var _loc7_:uint = §§pop();
                                          if(_loc19_ || param3)
                                          {
                                             param1.writeShort(_loc6_);
                                          }
                                          param1.writeShort(_loc7_);
                                          param1.writeUnsignedInt(this.§;!I§);
                                          addr246:
                                          if(!(_loc20_ && this))
                                          {
                                             addr212:
                                             param1.writeUnsignedInt(this.§59§);
                                             if(_loc19_ || this)
                                             {
                                                param1.writeUnsignedInt(this.§;!Q§);
                                                if(_loc19_)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr212);
                                                      }
                                                      var _loc8_:ByteArray;
                                                      (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
                                                      if(_loc19_ || param1)
                                                      {
                                                         if(this.§;B§ == "utf-8")
                                                         {
                                                            if(!(_loc20_ && param3))
                                                            {
                                                               _loc8_.writeUTFBytes(this.§ o§);
                                                               if(_loc19_)
                                                               {
                                                                  addr279:
                                                               }
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         else
                                                         {
                                                            _loc8_.writeMultiByte(this.§ o§,this.§;B§);
                                                         }
                                                         var _loc9_:uint = _loc8_.position;
                                                         var _loc17_:int = 0;
                                                         var _loc18_:* = this.§;!"§;
                                                         addr349:
                                                         for(_loc10_ in _loc18_)
                                                         {
                                                            if((_loc15_ = this.§;!"§[_loc10_] as ByteArray) != null)
                                                            {
                                                               if(_loc19_ || this)
                                                               {
                                                                  _loc8_.writeShort(uint(_loc10_));
                                                                  if(_loc19_ || param2)
                                                                  {
                                                                     addr333:
                                                                     _loc8_.writeShort(uint(_loc15_.length));
                                                                     if(_loc20_ && this)
                                                                     {
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  _loc8_.writeBytes(_loc15_);
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         addr429:
                                                         if(param2)
                                                         {
                                                            §§push(this.§5S§);
                                                            if(!(_loc20_ && param2))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr442:
                                                                  addr443:
                                                                  addr445:
                                                                  if(_loc16_ = this.§@%§)
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        this.uncompress();
                                                                     }
                                                                     addr450:
                                                                  }
                                                                  this.§4f§ = §;U§.§=m§(this.§0`§,0,this.§0`§.length);
                                                                  if(!_loc20_)
                                                                  {
                                                                     this.§5S§ = true;
                                                                     §§push(_loc16_);
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§goto(addr429);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 this.compress();
                                                                                 addr380:
                                                                                 _loc8_.writeShort(56026);
                                                                                 addr361:
                                                                                 _loc8_.writeShort(4);
                                                                                 addr408:
                                                                                 if(!(_loc20_ && param1))
                                                                                 {
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       _loc8_.writeUnsignedInt(this.§4f§);
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       addr451:
                                                                                       var _loc11_:uint = _loc8_.position - _loc9_;
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr525:
                                                                                          §§push(Boolean(param3));
                                                                                          if(Boolean(param3))
                                                                                          {
                                                                                             addr528:
                                                                                             §§pop();
                                                                                             addr489:
                                                                                             addr529:
                                                                                             §§push(this.§-h§);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(§§pop().length > 0);
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   if(!(_loc20_ && this))
                                                                                                   {
                                                                                                      if(!(_loc20_ && this))
                                                                                                      {
                                                                                                         addr513:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr515:
                                                                                                            if(this.§;B§ != "utf-8")
                                                                                                            {
                                                                                                               _loc8_.writeMultiByte(this.§-h§,this.§;B§);
                                                                                                               if(_loc19_ || param3)
                                                                                                               {
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr489);
                                                                                                                           }
                                                                                                                           addr530:
                                                                                                                           §§push(_loc8_.position - _loc9_);
                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc11_);
                                                                                                                           }
                                                                                                                           var _loc12_:uint = §§pop();
                                                                                                                           param1.writeShort(_loc9_);
                                                                                                                           param1.writeShort(_loc11_);
                                                                                                                           if(param3)
                                                                                                                           {
                                                                                                                              addr604:
                                                                                                                              param1.writeShort(_loc12_);
                                                                                                                              param1.writeShort(0);
                                                                                                                              addr598:
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 param1.writeShort(0);
                                                                                                                                 param1.writeUnsignedInt(0);
                                                                                                                                 addr579:
                                                                                                                                 param1.writeUnsignedInt(param4);
                                                                                                                                 addr583:
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(_loc19_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + _loc11_);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + _loc12_);
                                                                                                                                    }
                                                                                                                                    if(§§pop() > 0)
                                                                                                                                    {
                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                       {
                                                                                                                                          param1.writeBytes(_loc8_);
                                                                                                                                       }
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr579);
                                                                                                                                             }
                                                                                                                                             addr619:
                                                                                                                                             var _loc13_:* = uint(0);
                                                                                                                                             addr617:
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                addr757:
                                                                                                                                                if(!param3 && this.§0`§.length > 0)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§@%§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr744:
                                                                                                                                                            §§push(Boolean(§3i§));
                                                                                                                                                            §§push(Boolean(§3i§));
                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr754:
                                                                                                                                                                  §§push(§0X§);
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr704:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr712:
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§0`§.length - 6);
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(uint(§§pop()));
                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                             addr686:
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr754);
                                                                                                                                                                                             }
                                                                                                                                                                                             param1.writeBytes(this.§0`§,2,_loc13_);
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr696:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(30 + _loc9_);
                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr785);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr785:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr783:
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      var _loc14_:* = uint(§§pop());
                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc19_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr813);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr832);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr813:
                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(uint(§§pop() + 16));
                                                                                                                                                                                                         if(!(_loc20_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                            addr832:
                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr783);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr785);
                                                                                                                                                                                             addr641:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr785);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(uint(this.§0`§.length));
                                                                                                                                                                                    if(_loc19_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                                                                       param1.writeBytes(this.§0`§,0,_loc13_);
                                                                                                                                                                                       §§goto(addr696);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr785);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr757);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr759);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr757);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr744);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr704);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr712);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr757);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr754);
                                                                                                                                                      }
                                                                                                                                                      §§push(uint(this.§0`§.length));
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         param1.writeBytes(this.§0`§,0,_loc13_);
                                                                                                                                                         if(!(_loc19_ || this))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr686);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr641);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr686);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr712);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr785);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr744);
                                                                                                                                                }
                                                                                                                                                §§goto(addr686);
                                                                                                                                             }
                                                                                                                                             §§goto(addr744);
                                                                                                                                          }
                                                                                                                                          §§goto(addr598);
                                                                                                                                       }
                                                                                                                                       §§goto(addr583);
                                                                                                                                    }
                                                                                                                                    §§goto(addr617);
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                              §§goto(addr604);
                                                                                                                           }
                                                                                                                           §§goto(addr579);
                                                                                                                        }
                                                                                                                        §§goto(addr529);
                                                                                                                     }
                                                                                                                     §§goto(addr515);
                                                                                                                  }
                                                                                                                  addr519:
                                                                                                                  _loc8_.writeUTFBytes(this.§-h§);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr519);
                                                                                                         }
                                                                                                         §§goto(addr530);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr525);
                                                                                                }
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                             §§goto(addr515);
                                                                                          }
                                                                                          §§goto(addr513);
                                                                                       }
                                                                                       §§goto(addr519);
                                                                                    }
                                                                                    §§goto(addr408);
                                                                                 }
                                                                                 addr384:
                                                                                 §§goto(addr384);
                                                                              }
                                                                              §§goto(addr380);
                                                                           }
                                                                           §§goto(addr442);
                                                                        }
                                                                        §§goto(addr443);
                                                                     }
                                                                     §§goto(addr445);
                                                                  }
                                                                  §§goto(addr450);
                                                               }
                                                               §§goto(addr380);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr451);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr246);
                                          }
                                          addr242:
                                          §§goto(addr242);
                                       }
                                       else
                                       {
                                          addr121:
                                          while(true)
                                          {
                                             param1.writeUnsignedInt(§?^§.§ e§);
                                             addr125:
                                             while(true)
                                             {
                                                param1.writeShort(this.§^C§ << 8 | 20);
                                                break loop2;
                                             }
                                          }
                                          addr121:
                                       }
                                    }
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc19_ || param2))
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr136);
                        }
                        continue;
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr121);
               }
            }
            return 0;
         }
         §§goto(addr121);
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         while(true)
         {
            §§push(Boolean(param1.bytesAvailable));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(Boolean(this.§1S§(param1)));
                        if(!_loc2_)
                        {
                           addr52:
                           if(§§pop())
                           {
                              continue;
                           }
                        }
                        break;
                     }
                     §§push(this.§1S§ === this.§<$§);
                     break;
                  }
                  break;
               }
               §§goto(addr52);
            }
            break;
         }
         return §§pop();
      }
      
      protected function §<$§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §^N§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.bytesAvailable >= 30)
            {
               this.§&Y§(param1);
               do
               {
                  if(this.§[B§ + this.§>e§ > 0)
                  {
                     addr80:
                     this.§1S§ = this.§"^§;
                     break;
                  }
                  this.§1S§ = this.§<+§;
               }
               while(!(_loc2_ || this));
               
               return true;
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr80);
      }
      
      protected function §"^§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.bytesAvailable >= this.§[B§ + this.§>e§)
            {
               this.§8%§(param1);
               do
               {
                  this.§1S§ = this.§<+§;
               }
               while(_loc3_ && this);
               
               §§push(true);
               addr88:
            }
            else
            {
               §§push(false);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr88);
      }
      
      protected function §<+§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(!_loc3_)
         {
            §§push(this.§#P§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(this.§59§ != 0)
                  {
                     if(param1.bytesAvailable >= this.§59§)
                     {
                        this.§5!6§(param1);
                        do
                        {
                           this.§1S§ = this.§<$§;
                        }
                        while(!_loc4_);
                        
                        if(_loc3_ && _loc3_)
                        {
                           addr96:
                           if(!_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 addr119:
                                 this.§1S§ = this.§<$§;
                                 §§push(false);
                                 continue;
                              }
                              this.§1S§ = this.§<$§;
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr115:
                           }
                        }
                        do
                        {
                           §§push(_loc2_);
                        }
                        while(!(_loc4_ || _loc3_));
                        
                        return §§pop();
                        addr22:
                     }
                     else
                     {
                        §§push(false);
                     }
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        _loc2_ = §§pop();
                        §§goto(addr22);
                     }
                     continue;
                  }
                  §§goto(addr96);
               }
               §§goto(addr119);
            }
         }
         §§goto(addr115);
      }
      
      protected function §&Y§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc13_)
         {
            this.§^C§ = _loc2_ >> 8;
            if(_loc13_)
            {
               addr30:
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!(_loc12_ && param1))
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§+[§ = §§pop();
            }
            var _loc3_:uint = param1.readUnsignedShort();
            if(!(_loc12_ && _loc3_))
            {
               this.§0!2§ = param1.readUnsignedShort();
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push((_loc3_ & 1) === 0);
                  if(_loc13_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§[^§ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push((_loc3_ & 8) === 0);
                     if(!_loc12_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§#P§ = §§pop();
                     §§push(this);
                     §§push((_loc3_ & 32) === 0);
                     if(!(_loc12_ && param1))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§%!E§ = §§pop();
                     §§push(_loc3_);
                     if(!_loc12_)
                     {
                        §§push(§§pop() & 800);
                        loop2:
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() !== §§pop())
                              {
                                 addr198:
                                 while(true)
                                 {
                                    this.§;B§ = "utf-8";
                                 }
                                 addr198:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(this.§0!2§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§[7§);
                                    while(true)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          continue loop1;
                                       }
                                       §§push(this.§0!2§);
                                       if(!(_loc13_ || _loc2_))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc12_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§"i§);
                                       if(_loc12_)
                                       {
                                          continue;
                                       }
                                       if(!_loc13_)
                                       {
                                          break loop4;
                                       }
                                       if(§§pop() !== §§pop())
                                       {
                                          break;
                                       }
                                       if(_loc13_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr198);
                                    }
                                    addr248:
                                    break loop1;
                                 }
                              }
                           }
                        }
                     }
                     break;
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:uint = param1.readUnsignedShort();
                  var _loc6_:* = _loc4_ & 31;
                  §§push(_loc4_ & 2016);
                  if(!_loc12_)
                  {
                     §§push(§§pop() >> 5);
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc4_ & 63488);
                  if(_loc13_)
                  {
                     §§push(§§pop() >> 11);
                  }
                  var _loc8_:* = §§pop();
                  var _loc9_:* = _loc5_ & 31;
                  §§push(_loc5_ & 480);
                  if(!(_loc12_ && this))
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
                        if(_loc13_)
                        {
                           addr305:
                           §§push(int(§§pop() + 1980));
                        }
                        var _loc11_:* = §§pop();
                        this.§"c§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                        this.§;!I§ = param1.readUnsignedInt();
                        this.§59§ = param1.readUnsignedInt();
                        this.§;!Q§ = param1.readUnsignedInt();
                        addr369:
                        if(!(_loc12_ && _loc3_))
                        {
                           this.§[B§ = param1.readUnsignedShort();
                           addr331:
                           if(_loc13_)
                           {
                              if(_loc13_ || this)
                              {
                                 this.§>e§ = param1.readUnsignedShort();
                                 if(!(_loc13_ || this))
                                 {
                                    §§goto(addr331);
                                 }
                                 return;
                              }
                           }
                           §§goto(addr369);
                        }
                        addr375:
                        §§goto(addr375);
                     }
                  }
                  §§goto(addr305);
               }
            }
            §§goto(addr198);
         }
         §§goto(addr30);
      }
      
      protected function §8%§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:uint = 0;
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(_loc7_)
         {
            if(this.§;B§ == "utf-8")
            {
               if(!_loc6_)
               {
                  addr34:
                  this.§ o§ = param1.readUTFBytes(this.§[B§);
                  if(!_loc7_)
                  {
                  }
               }
            }
            else
            {
               this.§ o§ = param1.readMultiByte(this.§[B§,this.§;B§);
            }
            §§push(this.§>e§);
            if(!_loc6_)
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(4);
                  if(_loc7_)
                  {
                     loop1:
                     while(§§pop() > §§pop())
                     {
                        _loc3_ = param1.readUnsignedShort();
                        §§push(uint(param1.readUnsignedShort()));
                        §§push(uint(param1.readUnsignedShort()));
                        if(_loc7_ || this)
                        {
                           _loc4_ = §§pop();
                           do
                           {
                              §§push(_loc2_);
                           }
                           while(_loc7_ || param1);
                           
                           continue loop0;
                           addr140:
                        }
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              throw new Error("Parse error in file " + this.§ o§ + ": Extra field data size too big.");
                           }
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              §§push(56026);
                              if(!(_loc7_ || this))
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() === §§pop());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       if(_loc7_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc7_)
                                             {
                                                §§push(4);
                                                if(_loc6_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr140);
                                             addr93:
                                             this.§4f§ = param1.readUnsignedInt();
                                             this.§5S§ = true;
                                             if(true)
                                             {
                                                §§push(_loc2_);
                                             }
                                             else
                                             {
                                                addr212:
                                             }
                                          }
                                          addr245:
                                          if(§§pop() > §§pop())
                                          {
                                             addr246:
                                             param1.readBytes(new ByteArray(),0,_loc2_);
                                             break;
                                          }
                                          break;
                                          addr64:
                                       }
                                       break;
                                    }
                                    return;
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(_loc4_);
                                       §§push(0);
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                _loc5_ = new ByteArray();
                                                if(_loc7_ || param1)
                                                {
                                                   param1.readBytes(_loc5_,0,_loc4_);
                                                   if(_loc7_ || this)
                                                   {
                                                   }
                                                   break;
                                                }
                                                this.§;!"§[_loc3_] = _loc5_;
                                                break;
                                             }
                                             break loop1;
                                          }
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr212);
                                 §§goto(addr64);
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr91);
                              }
                           }
                           break;
                        }
                        §§push(_loc4_);
                        continue loop0;
                     }
                     §§push(_loc2_);
                     break;
                  }
                  §§goto(addr245);
               }
               break;
            }
            §§goto(addr245);
            §§push(0);
         }
         §§goto(addr34);
      }
      
      function §5!6§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         if(_loc4_)
         {
            §§push(this.§0!2§);
            loop0:
            while(true)
            {
               §§push(§"i§);
               loop1:
               while(true)
               {
                  §§push(§§pop() === §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop15:
                              while(true)
                              {
                                 §§push(this.§[^§);
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_ || this)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§push(§0X§);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                       loop10:
                                       do
                                       {
                                          while(!§§pop())
                                          {
                                             §§push(this.§5S§);
                                             if(_loc3_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   this.§0`§.writeByte(120);
                                                   §§push(this.§0h§);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§push(~§§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr194:
                                                         §§push(6);
                                                         while(_loc4_ || _loc2_)
                                                         {
                                                            §§push(§§pop() << §§pop());
                                                            if(_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(192);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                               }
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         continue loop1;
                                                         addr195:
                                                      }
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§push(_loc2_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(31);
                                                               §§push(120);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(8);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() << §§pop());
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr174:
                                                                        §§push(§§pop() | _loc2_);
                                                                        §§push(31);
                                                                     }
                                                                     §§goto(addr174);
                                                                  }
                                                                  addr179:
                                                                  _loc2_ = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                  this.§0`§.writeByte(_loc2_);
                                                                  param1.readBytes(this.§0`§,2,this.§59§);
                                                                  this.§0`§.position = this.§0`§.length;
                                                                  this.§0`§.writeUnsignedInt(this.§4f§);
                                                                  break loop6;
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§3i§));
                                                               break loop7;
                                                            }
                                                            addr281:
                                                         }
                                                      }
                                                   }
                                                   addr88:
                                                   this.§@%§ = true;
                                                   while(true)
                                                   {
                                                      this.§0`§.position = 0;
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      addr80:
                                                      param1.readBytes(this.§0`§,0,this.§59§);
                                                      this.§@%§ = false;
                                                   }
                                                   return;
                                                   addr27:
                                                   addr209:
                                                }
                                                throw new Error("Adler32 checksum not found.");
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          if(!_loc3_)
                                          {
                                             param1.readBytes(this.§0`§,0,this.§59§);
                                          }
                                          §§goto(addr88);
                                       }
                                       while(§§pop());
                                       
                                    }
                                 }
                              }
                           }
                           addr302:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§0!2§);
                              if(_loc4_)
                              {
                                 §§push(§1_§);
                                 if(_loc4_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          throw new Error("Compression method " + this.§0!2§ + " is not supported.");
                                       }
                                       §§goto(addr80);
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr281);
                        }
                     }
                  }
                  §§goto(addr302);
               }
            }
         }
         §§goto(addr88);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§@%§);
            loop0:
            for(; !§§pop(); if(!(_loc1_ || this))
            {
               continue;
            },if(!§§pop())
            {
               this.§0`§.compress();
               this.§59§ = this.§0`§.length - 6;
               §§goto(addr78);
            },this.§0`§.compress.apply(this.§0`§,["deflate"]),if(!_loc2_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§59§ = this.§0`§.length;
                  §§goto(addr109);
               }
               §§goto(addr170);
            })
            {
               loop1:
               while(true)
               {
                  if(this.§0`§.length > 0)
                  {
                     this.§0`§.position = 0;
                     loop3:
                     while(true)
                     {
                        this.§;!Q§ = this.§0`§.length;
                        §§push(§0X§);
                        while(!§§pop())
                        {
                           §§push(§3i§);
                           if(!(_loc2_ && this))
                           {
                              continue loop0;
                           }
                        }
                        addr167:
                        addr170:
                        addr163:
                        this.§0`§.deflate();
                        this.§59§ = this.§0`§.length;
                        while(true)
                        {
                           addr64:
                           addr61:
                           while(true)
                           {
                              this.§0`§.position = 0;
                              addr109:
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr167);
                           §§goto(addr170);
                        }
                        break loop0;
                        addr78:
                        while(true)
                        {
                           if(!(_loc1_ || this))
                           {
                              continue loop3;
                           }
                           §§goto(addr64);
                        }
                     }
                     continue loop0;
                  }
                  this.§59§ = 0;
                  while(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§;!Q§ = 0;
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        §§goto(addr78);
                     }
                     this.§@%§ = true;
                     break;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr109);
                  §§goto(addr69);
               }
            }
            return;
         }
         §§goto(addr163);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§@%§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  addr165:
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        addr168:
                        while(true)
                        {
                           §§push(this.§0`§.length > 0);
                           continue loop0;
                        }
                     }
                     addr167:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr143);
                     }
                     §§goto(addr19);
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr165);
         }
         §§goto(addr54);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipFile]" + "\n  name:");
         §§push(this.§ o§);
         if(_loc2_ || this)
         {
            §§push(§§pop() + §§pop());
            if(_loc2_)
            {
               §§push(§§pop() + "\n  date:" + this.§"c§);
               if(_loc2_)
               {
                  §§push(§§pop() + "\n  sizeCompressed:");
                  if(_loc2_)
                  {
                     §§push(this.§59§);
                     if(!(_loc1_ && this))
                     {
                        addr53:
                        §§push(§§pop() + §§pop() + "\n  sizeUncompressed:");
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this.§;!Q§);
                           if(!(_loc1_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_ || _loc2_)
                              {
                                 §§push("\n  versionHost:");
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr95:
                                       §§push(this.§^C§);
                                       if(!_loc1_)
                                       {
                                          addr101:
                                          §§push(§§pop() + §§pop() + "\n  versionNumber:");
                                          if(_loc2_)
                                          {
                                             addr104:
                                             §§push(this.§+[§);
                                             if(!(_loc1_ && this))
                                             {
                                                addr124:
                                                §§push(§§pop() + §§pop() + "\n  compressionMethod:");
                                                if(_loc2_)
                                                {
                                                   addr130:
                                                   §§push(§§pop() + this.§0!2§);
                                                   if(!_loc1_)
                                                   {
                                                      §§push("\n  encrypted:");
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         §§push(this.§[^§);
                                                         if(!_loc1_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            §§push("\n  hasDataDescriptor:");
                                                            if(_loc2_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc1_)
                                                               {
                                                                  addr153:
                                                                  §§push(this.§#P§);
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     addr162:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        addr170:
                                                                        §§push("\n  hasCompressedPatchedData:");
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           §§goto(addr181);
                                                                        }
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  addr181:
                                                                  §§push(§§pop() + §§pop() + this.§%!E§);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push("\n  filenameEncoding:");
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           addr197:
                                                                           §§push(§§pop() + this.§;B§);
                                                                           if(!(_loc1_ && this))
                                                                           {
                                                                              addr205:
                                                                              §§push(§§pop() + "\n  crc32:");
                                                                              §§push(this.§;!I§);
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 addr226:
                                                                                 §§push(16);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop().toString(§§pop()));
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            addr245:
                                                            §§push(§§pop() + §§pop().toString(§§pop()) + "\n  adler32:");
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               addr242:
                                                               §§push(this.§4f§);
                                                               return 16;
                                                            }
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr153);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr242);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr95);
               }
               §§goto(addr104);
            }
            §§goto(addr53);
         }
         §§goto(addr197);
      }
   }
}
