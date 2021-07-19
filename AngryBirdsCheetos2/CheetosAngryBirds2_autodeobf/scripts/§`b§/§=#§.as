package §`b§
{
   import §`L§.§7B§;
   import flash.utils.*;
   
   public class §=#§
   {
      
      public static const §#`§:int = 0;
      
      public static const §%!e§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §8!e§:int = 6;
      
      public static const §+!§:int = 7;
      
      public static const §@!D§:int = 8;
      
      public static const §9&§:int = 9;
      
      public static const §0U§:int = 10;
      
      protected static var §<!X§:Boolean;
      
      protected static var §,'§:Boolean;
      
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc1_))
         {
            §#`§ = 0;
            loop0:
            while(true)
            {
               §%!e§ = 1;
               loop1:
               while(true)
               {
                  COMPRESSION_REDUCED_1 = 2;
                  addr39:
                  if(_loc7_ && _loc3_)
                  {
                     continue;
                  }
                  if(true)
                  {
                     var _loc2_:int = 0;
                     var _loc3_:* = §§checkfilter(describeType(ByteArray).factory.method);
                     var _loc1_:* = new XMLList("");
                     addr164:
                     §§push(§§findproperty(§<!X§));
                     for each(var _loc4_ in _loc3_)
                     {
                        var _loc5_:*;
                        with(_loc5_ = _loc4_)
                        {
                           
                           if(!_loc7_)
                           {
                              if(@name == "uncompress")
                              {
                                 if(_loc6_)
                                 {
                                    addr157:
                                    _loc1_[_loc2_] = _loc4_;
                                 }
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr157);
                     }
                     §§pop().§<!X§ = _loc1_.parameter.length() > 0;
                     if(!(_loc7_ && _loc1_))
                     {
                        _loc2_ = 0;
                        _loc3_ = §§checkfilter(describeType(ByteArray).factory.method);
                        _loc1_ = new XMLList("");
                        addr227:
                        §§push(§§findproperty(§,'§));
                        for each(_loc4_ in _loc3_)
                        {
                           with(_loc4_)
                           {
                              
                              if(!_loc7_)
                              {
                                 if(@name == "inflate")
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       _loc1_[_loc2_] = _loc4_;
                                    }
                                 }
                              }
                           }
                           §§goto(addr227);
                        }
                        §§pop().§,'§ = _loc1_.length() > 0;
                     }
                     return;
                  }
                  loop9:
                  while(true)
                  {
                     §9&§ = 9;
                     addr52:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        addr104:
                        addr85:
                        loop7:
                        while(_loc6_)
                        {
                           §@!D§ = 8;
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue loop9;
                              }
                              addr80:
                              while(true)
                              {
                                 §+!§ = 7;
                                 continue loop7;
                              }
                           }
                           continue loop0;
                        }
                        while(_loc6_)
                        {
                           §8!e§ = 6;
                           §§goto(addr80);
                        }
                        while(true)
                        {
                           COMPRESSION_REDUCED_2 = 3;
                           addr99:
                           while(true)
                           {
                              COMPRESSION_REDUCED_3 = 4;
                              break loop9;
                           }
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc7_)
                  {
                     COMPRESSION_REDUCED_4 = 5;
                     §§goto(addr85);
                  }
                  §§goto(addr99);
               }
            }
         }
         §§goto(addr104);
      }
      
      protected var §!m§:int = 0;
      
      protected var §'7§:String = "2.0";
      
      protected var §"v§:int = 8;
      
      protected var §^=§:Boolean = false;
      
      protected var §%!@§:int = -1;
      
      protected var §%S§:int = -1;
      
      protected var §'4§:int = -1;
      
      protected var §=!?§:Boolean = false;
      
      protected var §;^§:Boolean = false;
      
      protected var §8=§:Date;
      
      protected var §5!<§:uint;
      
      protected var §<!C§:Boolean = false;
      
      protected var §>9§:uint = 0;
      
      protected var §&K§:uint = 0;
      
      protected var §>U§:String = "";
      
      protected var §%9§:String;
      
      protected var §8J§:Dictionary;
      
      protected var §8!S§:String = "";
      
      protected var §#!-§:ByteArray;
      
      var §6!]§:uint;
      
      var §>!4§:uint = 0;
      
      var override:uint = 0;
      
      protected var §,!Y§:Boolean = false;
      
      protected var §+e§:Function;
      
      public function §=#§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+e§ = this.§6!J§;
            while(true)
            {
               super();
               while(!_loc2_)
               {
                  this.§%9§ = param1;
                  loop2:
                  while(_loc3_ || _loc3_)
                  {
                     this.§8J§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        this.§#!-§ = new ByteArray();
                        do
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        while(this.§#!-§.endian = Endian.BIG_ENDIAN, !_loc3_);
                        
                        §§goto(addr32);
                     }
                  }
               }
            }
         }
         addr32:
      }
      
      public function get § !B§() : Date
      {
         return this.§8=§;
      }
      
      public function set § !B§(param1:Date) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_)
            {
               §§pop().§8=§ = param1 != null ? param1 : new Date();
               §§goto(addr51);
            }
            §§goto(addr44);
         }
         addr51:
      }
      
      public function get §@b§() : String
      {
         return this.§>U§;
      }
      
      public function set §@b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>U§ = param1;
         }
      }
      
      function get §`!R§() : Boolean
      {
         return this.§=!?§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§,!Y§)
            {
               if(_loc1_)
               {
                  this.uncompress();
               }
            }
         }
         return this.§#!-§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#r§(param1);
         }
      }
      
      public function §#r§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1 == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc4_ && param2))
               {
                  if(§§pop())
                  {
                     addr185:
                     while(true)
                     {
                        §§pop();
                        addr186:
                        while(true)
                        {
                           §§push(param1.length > 0);
                        }
                     }
                     addr185:
                  }
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§#!-§.length = 0;
                           while(true)
                           {
                              if(_loc5_ || param2)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    this.§#!-§.position = 0;
                                    while(true)
                                    {
                                       addr87:
                                       addr69:
                                       while(true)
                                       {
                                          this.§,!Y§ = false;
                                          addr91:
                                          while(true)
                                          {
                                          }
                                       }
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr87);
                                             }
                                             §§goto(addr209);
                                          }
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             param1.readBytes(this.§#!-§,0,param1.length);
                                             loop9:
                                             while(true)
                                             {
                                                this.§6!]§ = §7B§.§8!9§(this.§#!-§);
                                                addr142:
                                                while(true)
                                                {
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      continue loop9;
                                                   }
                                                   this.§<!C§ = false;
                                                   while(true)
                                                   {
                                                      §§goto(addr20);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr134);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       param1.position = 0;
                                       addr169:
                                       §§goto(addr20);
                                    }
                                    addr166:
                                 }
                                 addr20:
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!(_loc5_ || this))
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr142);
                              addr46:
                              if(_loc4_ && param2)
                              {
                                 continue;
                              }
                              this.compress();
                              if(!(_loc4_ && param1))
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    §§goto(addr69);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr209);
                           }
                        }
                        §§goto(addr166);
                     }
                  }
               }
               §§goto(addr185);
            }
         }
         addr209:
      }
      
      public function get §?y§() : String
      {
         return this.§'7§;
      }
      
      public function get §,p§() : uint
      {
         return this.§>!4§;
      }
      
      public function get §2!1§() : uint
      {
         return this.override;
      }
      
      public function §;!§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            §§push(this.§,!Y§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     this.uncompress();
                     addr146:
                     while(true)
                     {
                     }
                     addr146:
                  }
                  §§goto(addr146);
               }
               while(true)
               {
                  this.§#!-§.position = 0;
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc4_)
                     {
                        if(§§pop() != "utf-8")
                        {
                           §§push(this.§#!-§.readMultiByte(this.§#!-§.bytesAvailable,param2));
                           loop3:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    while(!_loc4_)
                                    {
                                       §§push(this.§#!-§.readUTFBytes(this.§#!-§.bytesAvailable));
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr117:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    continue loop2;
                                    addr107:
                                 }
                                 while(true)
                                 {
                                    this.§#!-§.position = 0;
                                    addr78:
                                    while(true)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                    §§goto(addr117);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr116);
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function §[w§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§#!-§.length = 0;
            loop0:
            while(true)
            {
               this.§#!-§.position = 0;
               loop1:
               while(true)
               {
                  this.§,!Y§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop() == null);
                        if(_loc6_ || param1)
                        {
                           §§push(!§§pop());
                           if(_loc6_)
                           {
                              addr170:
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§push(param3);
                                             if(!_loc6_)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc6_ || param2)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.override = this.§>!4§ = this.§#!-§.length;
                                                   break;
                                                }
                                                if(_loc6_ || param2)
                                                {
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            this.compress();
                                                            if(!_loc5_)
                                                            {
                                                               addr64:
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§<!C§ = false;
                                                                  addr70:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr108);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr70);
                                                }
                                                §§goto(addr64);
                                             }
                                             §§goto(addr173);
                                          }
                                          return;
                                       }
                                       if(_loc6_ || param2)
                                       {
                                          §§push(param2);
                                          while(true)
                                          {
                                             if(§§pop() == "utf-8")
                                             {
                                                addr149:
                                                while(_loc6_)
                                                {
                                                   this.§#!-§.writeUTFBytes(param1);
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                continue loop0;
                                                addr149:
                                             }
                                             else
                                             {
                                                addr108:
                                             }
                                             this.§#!-§.writeMultiByte(param1,param2);
                                             while(_loc6_ || param1)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             continue;
                                             while(true)
                                             {
                                                this.§6!]§ = §7B§.§8!9§(this.§#!-§);
                                                continue loop2;
                                                §§goto(addr155);
                                             }
                                          }
                                       }
                                       §§goto(addr149);
                                       §§goto(addr173);
                                    }
                                    addr134:
                                 }
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr173);
                              §§goto(addr24);
                           }
                        }
                        §§goto(addr170);
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                        §§goto(addr134);
                     }
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      public function §;!T§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:* = false;
         if(!_loc19_)
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  if(!param3)
                  {
                     param1.writeUnsignedInt(§ !9§.§&D§);
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           param1.writeShort(this.§!m§ << 8 | 20);
                           if(_loc20_)
                           {
                              loop3:
                              while(true)
                              {
                                 param1.writeShort(this.§%9§ == "utf-8" ? 2048 : 0);
                                 if(_loc20_ || param3)
                                 {
                                    if(!_loc19_)
                                    {
                                       param1.writeShort(!!this.§,!Y§ ? int(§@!D§) : int(§#`§));
                                       if(!_loc19_)
                                       {
                                          if(_loc19_)
                                          {
                                             continue loop1;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          if(this.§8=§ != null)
                                          {
                                             break;
                                          }
                                          addr138:
                                          var _loc5_:Date = new Date();
                                          §§push(uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() | uint(_loc5_.getHours()) << 11);
                                          }
                                          var _loc6_:uint = §§pop();
                                          §§push(uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5);
                                          if(!(_loc19_ && param3))
                                          {
                                             §§push(§§pop() | uint(_loc5_.getFullYear() - 1980) << 9);
                                          }
                                          var _loc7_:uint = §§pop();
                                          if(_loc20_ || param3)
                                          {
                                             param1.writeShort(_loc6_);
                                             param1.writeShort(_loc7_);
                                             addr251:
                                          }
                                          param1.writeUnsignedInt(this.§6!]§);
                                          addr247:
                                          if(!(_loc19_ && param2))
                                          {
                                             addr210:
                                             param1.writeUnsignedInt(this.§>!4§);
                                             if(!(_loc19_ && param3))
                                             {
                                                if(!(_loc19_ && this))
                                                {
                                                   param1.writeUnsignedInt(this.override);
                                                   if(!_loc19_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr210);
                                                      }
                                                      var _loc8_:ByteArray;
                                                      (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
                                                      if(_loc20_ || param3)
                                                      {
                                                         if(this.§%9§ == "utf-8")
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               _loc8_.writeUTFBytes(this.§>U§);
                                                               if(_loc20_ || param2)
                                                               {
                                                                  addr284:
                                                               }
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         else
                                                         {
                                                            _loc8_.writeMultiByte(this.§>U§,this.§%9§);
                                                         }
                                                         var _loc9_:uint = _loc8_.position;
                                                         var _loc17_:int = 0;
                                                         var _loc18_:* = this.§8J§;
                                                         addr344:
                                                         for(_loc10_ in _loc18_)
                                                         {
                                                            if((_loc15_ = this.§8J§[_loc10_] as ByteArray) != null)
                                                            {
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  _loc8_.writeShort(uint(_loc10_));
                                                                  if(_loc20_)
                                                                  {
                                                                     _loc8_.writeShort(uint(_loc15_.length));
                                                                     if(!_loc20_)
                                                                     {
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  _loc8_.writeBytes(_loc15_);
                                                               }
                                                            }
                                                            §§goto(addr344);
                                                         }
                                                         if(!_loc19_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc20_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr449:
                                                                  §§push(this.§<!C§);
                                                                  if(!_loc19_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr454:
                                                                        addr464:
                                                                        addr476:
                                                                        §§push(this.§,!Y§);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           addr463:
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(_loc16_ = §§pop())
                                                                        {
                                                                           addr477:
                                                                           this.uncompress();
                                                                           addr479:
                                                                        }
                                                                        this.§5!<§ = §7B§.§9Y§(this.§#!-§,0,this.§#!-§.length);
                                                                        this.§<!C§ = true;
                                                                        addr439:
                                                                        addr427:
                                                                        §§push(_loc16_);
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr411:
                                                                                 this.compress();
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       addr381:
                                                                                       _loc8_.writeShort(56026);
                                                                                       addr385:
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             if(_loc20_ || param3)
                                                                                             {
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   addr374:
                                                                                                   _loc8_.writeShort(4);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      _loc8_.writeUnsignedInt(this.§5!<§);
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                            if(_loc20_ || param3)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr374);
                                                                                                               }
                                                                                                               addr480:
                                                                                                               var _loc11_:uint = _loc8_.position - _loc9_;
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(param3);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(_loc20_ || param2)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr557:
                                                                                                                           §§pop();
                                                                                                                           addr558:
                                                                                                                           §§push(this.§8!S§);
                                                                                                                           if(_loc20_ || param3)
                                                                                                                           {
                                                                                                                              §§push(§§pop().length > 0);
                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                              {
                                                                                                                                 addr527:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       addr533:
                                                                                                                                       if(this.§%9§ == "utf-8")
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr558);
                                                                                                                                             }
                                                                                                                                             _loc8_.writeUTFBytes(this.§8!S§);
                                                                                                                                             addr559:
                                                                                                                                             §§push(_loc8_.position - _loc9_);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - _loc11_);
                                                                                                                                             }
                                                                                                                                             var _loc12_:uint = §§pop();
                                                                                                                                             if(_loc20_ || param3)
                                                                                                                                             {
                                                                                                                                                param1.writeShort(_loc9_);
                                                                                                                                                param1.writeShort(_loc11_);
                                                                                                                                                addr678:
                                                                                                                                                addr682:
                                                                                                                                                if(param3)
                                                                                                                                                {
                                                                                                                                                   addr663:
                                                                                                                                                   param1.writeShort(_loc12_);
                                                                                                                                                   if(_loc20_ || param3)
                                                                                                                                                   {
                                                                                                                                                      param1.writeShort(0);
                                                                                                                                                      addr652:
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         param1.writeShort(0);
                                                                                                                                                         param1.writeUnsignedInt(0);
                                                                                                                                                         addr640:
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr629:
                                                                                                                                                            param1.writeUnsignedInt(param4);
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               addr577:
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc20_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + _loc11_);
                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + _loc12_);
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop() > 0)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc20_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    param1.writeBytes(_loc8_);
                                                                                                                                                                                    addr627:
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr629);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc13_:* = uint(0);
                                                                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr845:
                                                                                                                                                                                       if(!param3 && this.§#!-§.length > 0)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr846:
                                                                                                                                                                                          §§push(this.§,!Y§);
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr867:
                                                                                                                                                                                                   §§push(§<!X§);
                                                                                                                                                                                                   if(_loc20_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr883:
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            addr884:
                                                                                                                                                                                                            §§push(§,'§);
                                                                                                                                                                                                            if(_loc20_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc19_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr821:
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr828:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr834:
                                                                                                                                                                                                                              _loc13_ = uint(this.§#!-§.length);
                                                                                                                                                                                                                              addr835:
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 param1.writeBytes(this.§#!-§,0,_loc13_);
                                                                                                                                                                                                                                 addr785:
                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_ && param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr884);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr707:
                                                                                                                                                                                                                                    §§push(30 + _loc9_);
                                                                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(_loc20_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr912:
                                                                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr919:
                                                                                                                                                                                                                                                   §§push(§§pop() + _loc13_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr919);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr921:
                                                                                                                                                                                                                                          var _loc14_:* = uint(§§pop());
                                                                                                                                                                                                                                          if(_loc20_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr933:
                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(uint(§§pop() + 16));
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr951:
                                                                                                                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                                                                                                                         return _loc14_;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr951);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr951);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr933);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr919);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr912);
                                                                                                                                                                                                                                    addr707:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr835);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr846);
                                                                                                                                                                                                                              addr830:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(this.§#!-§.length - 6);
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(uint(§§pop()));
                                                                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                                                                 addr763:
                                                                                                                                                                                                                                 if(_loc20_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc20_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       param1.writeBytes(this.§#!-§,2,_loc13_);
                                                                                                                                                                                                                                       addr741:
                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr830);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr707);
                                                                                                                                                                                                                                       addr777:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr890);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr785);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr921);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr919);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr845);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr867);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr883);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr821);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr828);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr845);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr889);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(uint(this.§#!-§.length));
                                                                                                                                                                                                if(_loc20_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                                                                      addr729:
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            param1.writeBytes(this.§#!-§,0,_loc13_);
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr741);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr707);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr729);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr867);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr763);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr834);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr921);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr845);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr883);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr707);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr777);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr663);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr652);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr640);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr629);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr627);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr663);
                                                                                                                                                         }
                                                                                                                                                         addr647:
                                                                                                                                                         §§goto(addr647);
                                                                                                                                                         addr659:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr678);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr682);
                                                                                                                                                }
                                                                                                                                                §§goto(addr577);
                                                                                                                                             }
                                                                                                                                             §§goto(addr659);
                                                                                                                                             addr543:
                                                                                                                                          }
                                                                                                                                          §§goto(addr543);
                                                                                                                                       }
                                                                                                                                       _loc8_.writeMultiByte(this.§8!S§,this.§%9§);
                                                                                                                                       if(_loc20_ || this)
                                                                                                                                       {
                                                                                                                                          addr505:
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr558);
                                                                                                                                          }
                                                                                                                                          §§goto(addr559);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                              §§goto(addr557);
                                                                                                                           }
                                                                                                                           §§goto(addr533);
                                                                                                                        }
                                                                                                                        §§goto(addr527);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                               }
                                                                                                               §§goto(addr505);
                                                                                                            }
                                                                                                            §§goto(addr479);
                                                                                                         }
                                                                                                         §§goto(addr411);
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr385);
                                                                                                }
                                                                                                §§goto(addr454);
                                                                                             }
                                                                                             §§goto(addr439);
                                                                                          }
                                                                                          §§goto(addr427);
                                                                                       }
                                                                                       §§goto(addr411);
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 §§goto(addr477);
                                                                              }
                                                                              §§goto(addr381);
                                                                           }
                                                                           §§goto(addr464);
                                                                        }
                                                                        §§goto(addr476);
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                                  §§goto(addr454);
                                                               }
                                                               §§goto(addr480);
                                                            }
                                                            §§goto(addr463);
                                                         }
                                                         §§goto(addr454);
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr210);
                                                }
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr251);
                                       }
                                       break;
                                    }
                                    addr98:
                                    loop4:
                                    while(true)
                                    {
                                       param1.writeShort(this.§!m§ << 8 | 20);
                                       if(!_loc20_)
                                       {
                                          break loop3;
                                       }
                                       if(_loc20_)
                                       {
                                          break;
                                       }
                                       addr102:
                                       while(!(_loc19_ && this))
                                       {
                                          if(!(_loc20_ || this))
                                          {
                                             return 0;
                                          }
                                          addr124:
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 break;
                              }
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  §§goto(addr102);
               }
            }
            §§goto(addr124);
         }
         §§goto(addr98);
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
               if(!§§pop())
               {
                  continue;
               }
               if(_loc3_)
               {
                  continue;
               }
            }
            §§pop();
            if(_loc3_ && _loc2_)
            {
               break;
            }
            §§push(Boolean(this.§+e§(param1)));
            if(_loc3_)
            {
               return §§pop();
            }
            addr67:
         }
         while(§§pop());
         
         §§goto(addr67);
         §§push(this.§+e§ === this.§]"§);
      }
      
      protected function §]"§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6!J§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.bytesAvailable >= 30)
            {
               loop0:
               while(true)
               {
                  this.§[!`§(param1);
                  while(true)
                  {
                     if(this.§>9§ + this.§&K§ > 0)
                     {
                        if(!(_loc3_ && this))
                        {
                           this.§+e§ = this.§@!V§;
                           break;
                        }
                        continue;
                     }
                     this.§+e§ = this.§%i§;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               addr110:
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
         §§goto(addr110);
      }
      
      protected function §@!V§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1.bytesAvailable >= this.§>9§ + this.§&K§)
            {
               do
               {
                  this.§#7§(param1);
                  do
                  {
                     this.§+e§ = this.§%i§;
                  }
                  while(_loc2_ && param1);
                  
               }
               while(!(_loc3_ || _loc3_));
               
               §§push(true);
               addr77:
            }
            else
            {
               §§push(false);
               if(_loc3_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr77);
      }
      
      protected function §%i§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         if(!_loc4_)
         {
            §§push(this.§=!?§);
            do
            {
               if(!§§pop())
               {
                  if(this.§>!4§ != 0)
                  {
                     if(param1.bytesAvailable < this.§>!4§)
                     {
                        §§push(false);
                        loop1:
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    addr100:
                                    while(true)
                                    {
                                       this.§3!Y§(param1);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§+e§ = this.§]"§;
                                          addr84:
                                          while(true)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                continue loop1;
                                             }
                                             addr118:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§+e§ = this.§]"§;
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr151:
                                                         while(true)
                                                         {
                                                            this.§+e§ = this.§]"§;
                                                            addr155:
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               addr136:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   addr124:
                                                }
                                                §§goto(addr155);
                                             }
                                          }
                                       }
                                       addr110:
                                    }
                                    §§goto(addr124);
                                 }
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr136);
                        }
                        continue;
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr118);
               }
               §§goto(addr151);
            }
            while(!(_loc3_ || this));
            
            return §§pop();
         }
         §§goto(addr110);
      }
      
      protected function §[!`§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:uint = param1.readUnsignedShort();
         if(!(_loc13_ && this))
         {
            this.§!m§ = _loc2_ >> 8;
            if(!(_loc13_ && _loc2_))
            {
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!_loc13_)
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§'7§ = §§pop();
            }
         }
         var _loc3_:uint = param1.readUnsignedShort();
         if(!_loc13_)
         {
            this.§"v§ = param1.readUnsignedShort();
            loop0:
            while(true)
            {
               §§push(this);
               §§push((_loc3_ & 1) === 0);
               if(_loc12_ || param1)
               {
                  §§push(!§§pop());
               }
               §§pop().§^=§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push((_loc3_ & 8) === 0);
                  if(!(_loc13_ && _loc2_))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§=!?§ = §§pop();
                  loop7:
                  for(; !(_loc13_ && param1); while(true)
                  {
                     if(!(_loc12_ || _loc3_))
                     {
                        continue loop7;
                     }
                     if(_loc12_)
                     {
                        §§push(this);
                        if(!_loc13_)
                        {
                           §§push(_loc3_ & 2);
                           if(!(_loc13_ && param1))
                           {
                              if(§§pop() !== 0)
                              {
                                 addr185:
                                 §§push(8192);
                                 if(_loc12_ || this)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(4096);
                              }
                           }
                           §§pop().§%!@§ = §§pop();
                           continue loop0;
                        }
                        §§goto(addr185);
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push((_loc3_ & 32) === 0);
                           if(!_loc13_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().§;^§ = §§pop();
                           §§goto(addr244);
                        }
                        addr261:
                     }
                  })
                  {
                     while(true)
                     {
                        §§push(this.§"v§);
                        loop9:
                        while(true)
                        {
                           §§push(§8!e§);
                           addr160:
                           while(§§pop() !== §§pop())
                           {
                              continue loop9;
                           }
                           continue loop7;
                        }
                     }
                     §§goto(addr287);
                     §§push(uint(param1.readUnsignedShort()));
                  }
               }
               while(true)
               {
                  if(_loc13_ && param1)
                  {
                     continue loop0;
                  }
                  §§goto(addr124);
               }
            }
         }
         §§goto(addr261);
      }
      
      protected function §#7§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(!(_loc7_ && _loc2_))
         {
            if(this.§%9§ == "utf-8")
            {
               if(!_loc7_)
               {
                  this.§>U§ = param1.readUTFBytes(this.§>9§);
                  if(!(_loc7_ && param1))
                  {
                     addr51:
                  }
               }
               §§goto(addr51);
            }
            else
            {
               this.§>U§ = param1.readMultiByte(this.§>9§,this.§%9§);
            }
            §§push(this.§&K§);
            if(!(_loc7_ && this))
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(4);
                     if(_loc6_)
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc7_)
                              {
                                 addr289:
                                 if(_loc2_ > 0)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       addr308:
                                       param1.readBytes(new ByteArray(),0,_loc2_);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(uint(param1.readUnsignedShort()));
                              if(!_loc7_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(uint(param1.readUnsignedShort()));
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(_loc2_);
                                             if(!_loc7_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      addr115:
                                                      if(!(_loc6_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      this.§<!C§ = true;
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            if(false)
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr99:
                                                                        §§push(§§pop() === §§pop());
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       _loc5_ = new ByteArray();
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          param1.readBytes(_loc5_,0,_loc4_);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                          }
                                                                                          addr256:
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc7_ && _loc2_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr289);
                                                                                       }
                                                                                       this.§8J§[_loc3_] = _loc5_;
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§5!<§ = param1.readUnsignedInt();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§goto(addr115);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr308);
                                                                              §§goto(addr256);
                                                                              §§goto(addr99);
                                                                           }
                                                                           addr264:
                                                                           §§push(uint(§§pop() - (_loc4_ + 4)));
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              addr276:
                                                                              _loc2_ = §§pop();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop1;
                                                                           addr107:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr145:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   addr201:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§push(56026);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop() === §§pop());
                                                   if(!(_loc7_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr145);
                                                      }
                                                      §§goto(addr107);
                                                   }
                                                   §§goto(addr145);
                                                   §§goto(addr201);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr289);
                              }
                              §§goto(addr276);
                           }
                           addr314:
                           return;
                        }
                        throw new Error("Parse error in file " + this.§>U§ + ": Extra field data size too big.");
                     }
                     §§goto(addr289);
                  }
               }
               §§goto(addr289);
            }
         }
         §§goto(addr51);
      }
      
      function §3!Y§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         if(_loc4_ || _loc2_)
         {
            §§push(this.§"v§);
            loop0:
            while(true)
            {
               §§push(§@!D§);
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
                           while(true)
                           {
                              §§pop();
                              addr417:
                              loop35:
                              while(true)
                              {
                                 §§push(this.§^=§);
                                 addr370:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr371:
                                    while(_loc4_ || this)
                                    {
                                    }
                                    continue loop35;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§"v§);
                              if(!_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§#`§);
                                       if(!_loc3_)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                break;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         param1.readBytes(this.§#!-§,0,this.§>!4§);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  this.§,!Y§ = false;
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ || this))
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              this.§#!-§.writeByte(_loc2_);
                                                                              while(true)
                                                                              {
                                                                                 param1.readBytes(this.§#!-§,2,this.§>!4§);
                                                                                 addr197:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    this.§#!-§.position = this.§#!-§.length;
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          this.§#!-§.writeUnsignedInt(this.§5!<§);
                                                                                          while(true)
                                                                                          {
                                                                                             break loop11;
                                                                                          }
                                                                                          addr178:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§<!X§);
                                                                                             loop20:
                                                                                             while(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc4_ || _loc3_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr398:
                                                                                                      §§pop();
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§,'§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc4_ || param1)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                           addr357:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.readBytes(this.§#!-§,0,this.§>!4§);
                                                                                                                              addr366:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  §§goto(addr370);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr371);
                                                                                                      }
                                                                                                      addr409:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§#!-§.writeByte(120);
                                                                                                            addr323:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(this.§'4§);
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(~§§pop());
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(6);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() << §§pop());
                                                                                                                           addr278:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(192);
                                                                                                                              addr279:
                                                                                                                              while(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() & §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(uint(§§pop()));
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       addr289:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          if(_loc4_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop33;
                                                                                                                                             }
                                                                                                                                             §§push(31);
                                                                                                                                             §§push(120);
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(8);
                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() << §§pop());
                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr254:
                                                                                                                                                      §§push(§§pop() | _loc2_);
                                                                                                                                                      §§push(31);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr254);
                                                                                                                                                }
                                                                                                                                                addr259:
                                                                                                                                                _loc2_ = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             §§goto(addr254);
                                                                                                                                          }
                                                                                                                                          §§goto(addr259);
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                     addr274:
                                                                                                                  }
                                                                                                                  §§goto(addr278);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      throw new Error("Adler32 checksum not found.");
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          addr380:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§,!Y§ = true;
                                                                                       addr161:
                                                                                       while(true)
                                                                                       {
                                                                                          addr32:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§#!-§.position = 0;
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr417);
                                                                                 §§goto(addr262);
                                                                              }
                                                                              addr262:
                                                                              addr215:
                                                                           }
                                                                           §§goto(addr359);
                                                                        }
                                                                     }
                                                                     §§goto(addr32);
                                                                  }
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                      }
                                                      §§goto(addr366);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr178);
                                             }
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr279);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr380);
                        }
                        throw new Error("Compression method " + this.§"v§ + " is not supported.");
                     }
                  }
               }
            }
         }
         §§goto(addr417);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,!Y§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(this.§#!-§.length <= 0)
                     {
                        this.§>!4§ = 0;
                        loop2:
                        for(; !(_loc1_ && _loc1_); this.override = 0,if(!_loc2_)
                        {
                           continue;
                        },if(_loc2_ || this)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 §§goto(addr20);
                              }
                              else
                              {
                                 §§goto(addr170);
                              }
                           }
                           §§goto(addr126);
                        },§§goto(addr67))
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           loop11:
                           while(true)
                           {
                              this.§>!4§ = this.§#!-§.length;
                              addr126:
                              while(true)
                              {
                                 addr72:
                                 loop4:
                                 while(true)
                                 {
                                    this.§#!-§.position = 0;
                                    loop5:
                                    while(!_loc1_)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             this.§,!Y§ = true;
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                addr207:
                                                while(true)
                                                {
                                                   this.§#!-§.position = 0;
                                                   addr211:
                                                   while(true)
                                                   {
                                                      this.override = this.§#!-§.length;
                                                      loop7:
                                                      for(; !_loc1_; if(_loc2_ || _loc1_)
                                                      {
                                                         this.§#!-§.compress.apply(this.§#!-§,["deflate"]);
                                                         continue loop11;
                                                      })
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§,'§);
                                                            while(!§§pop())
                                                            {
                                                               §§push(§<!X§);
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        this.§#!-§.compress();
                                                                     }
                                                                     if(!(_loc2_ || this))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop7;
                                                                     break loop5;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             addr20:
                                             return;
                                             addr67:
                                          }
                                          while(true)
                                          {
                                             this.§#!-§.deflate();
                                          }
                                          this.§>!4§ = this.§#!-§.length;
                                          addr179:
                                          while(true)
                                          {
                                             continue loop4;
                                             §§goto(addr179);
                                          }
                                          addr179:
                                          addr170:
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr211);
                                          }
                                          §§goto(addr179);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§>!4§ = this.§#!-§.length - 6;
                                       break loop2;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr72);
                        }
                     }
                     §§goto(addr207);
                  }
               }
               §§goto(addr20);
            }
         }
         §§goto(addr188);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§,!Y§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§#!-§.length > 0);
                           while(_loc1_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              addr74:
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(§§pop())
                              {
                                 loop13:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr99:
                                       if(_loc1_ || this)
                                       {
                                          this.§#!-§.uncompress.apply(this.§#!-§,["deflate"]);
                                          loop14:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   this.§#!-§.position = 0;
                                                   loop11:
                                                   while(!_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§,!Y§ = false;
                                                         if(_loc2_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         addr29:
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§goto(addr19);
                                                         }
                                                         addr148:
                                                         addr53:
                                                         addr148:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc1_ || this)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop14;
                                                            §§goto(addr29);
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr148);
                                             }
                                             §§pop().position = §§pop();
                                             break loop13;
                                          }
                                       }
                                       break;
                                    }
                                    addr132:
                                    while(true)
                                    {
                                       this.§#!-§.inflate();
                                       §§goto(addr135);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§,'§);
                                    while(true)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr132);
                                    §§goto(addr99);
                                 }
                                 continue;
                              }
                              this.§#!-§.uncompress();
                              §§goto(addr53);
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr148);
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipFile]" + "\n  name:");
         if(_loc2_)
         {
            §§push(this.§>U§);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() + "\n  date:");
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop() + this.§8=§);
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop() + "\n  sizeCompressed:");
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§>!4§);
                           if(!_loc1_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_)
                              {
                                 §§push(§§pop() + "\n  sizeUncompressed:");
                                 if(_loc2_)
                                 {
                                    §§push(this.override);
                                    if(_loc2_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop() + "\n  versionHost:");
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(this.§!m§);
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc2_ || this)
                                                {
                                                   §§push(§§pop() + "\n  versionNumber:");
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§'7§);
                                                      if(_loc2_)
                                                      {
                                                         addr134:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc1_)
                                                         {
                                                            addr137:
                                                            §§push(§§pop() + "\n  compressionMethod:");
                                                            if(!_loc1_)
                                                            {
                                                               addr143:
                                                               §§push(§§pop() + this.§"v§);
                                                               if(!_loc1_)
                                                               {
                                                                  §§push(§§pop() + "\n  encrypted:");
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     addr155:
                                                                     §§push(this.§^=§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                           addr162:
                                                                           §§push(§§pop() + "\n  hasDataDescriptor:");
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              addr171:
                                                                              §§push(this.§=!?§);
                                                                              if(_loc2_ || _loc1_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    addr220:
                                                                                    §§push(§§pop() + "\n  hasCompressedPatchedData:");
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr192:
                                                                                       §§push(this.§;^§);
                                                                                    }
                                                                                    §§push(this.§6!]§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(16);
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             §§goto(addr236);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr255);
                                                                                 }
                                                                                 §§goto(addr206);
                                                                              }
                                                                           }
                                                                           §§goto(addr206);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        addr202:
                                                                        §§push(§§pop() + "\n  filenameEncoding:");
                                                                        if(_loc2_)
                                                                        {
                                                                           §§goto(addr206);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§goto(addr171);
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr255);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr255);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr255);
                        }
                        addr206:
                        §§push(§§pop() + this.§%9§);
                        if(!_loc1_)
                        {
                           addr211:
                           §§push(§§pop() + "\n  crc32:");
                           if(!(_loc1_ && this))
                           {
                              §§goto(addr220);
                           }
                        }
                        addr236:
                        §§push(§§pop() + "\n  adler32:");
                        if(!(_loc1_ && _loc2_))
                        {
                           addr255:
                           return §§pop() + this.§5!<§.toString(16);
                        }
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr155);
               }
               §§goto(addr202);
            }
            §§goto(addr134);
         }
         §§goto(addr211);
      }
   }
}
