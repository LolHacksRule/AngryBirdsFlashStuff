package §,!7§
{
   import §=N§.§6R§;
   import flash.utils.*;
   
   public class §7!G§
   {
      
      public static const §18§:int = 0;
      
      public static const §7t§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §"I§:int = 6;
      
      public static const §3m§:int = 7;
      
      public static const §3!D§:int = 8;
      
      public static const §"`§:int = 9;
      
      public static const §,!A§:int = 10;
      
      protected static var §+K§:Boolean;
      
      protected static var §?`§:Boolean;
      
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && §7!G§))
         {
            §18§ = 0;
            loop0:
            while(true)
            {
               §7t§ = 1;
               addr93:
               if(_loc6_ && _loc2_)
               {
                  continue;
               }
               §"I§ = 6;
               loop6:
               while(!(_loc6_ && _loc3_))
               {
                  if(_loc7_)
                  {
                     §3m§ = 7;
                     loop7:
                     while(!_loc6_)
                     {
                        §3!D§ = 8;
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              break;
                              addr45:
                           }
                           while(true)
                           {
                              §"`§ = 9;
                              while(true)
                              {
                                 if(_loc7_ || §7!G§)
                                 {
                                    if(!_loc6_)
                                    {
                                       §,!A§ = 10;
                                       if(_loc6_ && §7!G§)
                                       {
                                          continue;
                                       }
                                       §§goto(addr36);
                                    }
                                    break;
                                 }
                                 continue loop7;
                              }
                              §§goto(addr105);
                              continue loop7;
                           }
                           addr36:
                           if(_loc6_ && §7!G§)
                           {
                              continue;
                           }
                           if(true)
                           {
                              var _loc2_:int = 0;
                              var _loc3_:* = §§checkfilter(describeType(ByteArray).factory.method);
                              var _loc1_:* = new XMLList("");
                              addr180:
                              §§push(§§findproperty(§+K§));
                              for each(var _loc4_ in _loc3_)
                              {
                                 var _loc5_:*;
                                 with(_loc5_ = _loc4_)
                                 {
                                    
                                    if(!_loc6_)
                                    {
                                       if(@name == "uncompress")
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             addr173:
                                             _loc1_[_loc2_] = _loc4_;
                                          }
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr173);
                              }
                              §§pop().§+K§ = _loc1_.parameter.length() > 0;
                              if(!(_loc6_ && §7!G§))
                              {
                                 _loc2_ = 0;
                                 _loc3_ = §§checkfilter(describeType(ByteArray).factory.method);
                                 _loc1_ = new XMLList("");
                                 addr238:
                                 §§push(§§findproperty(§?`§));
                                 for each(_loc4_ in _loc3_)
                                 {
                                    with(_loc4_)
                                    {
                                       
                                       if(_loc7_)
                                       {
                                          if(@name == "inflate")
                                          {
                                             if(!_loc6_)
                                             {
                                                _loc1_[_loc2_] = _loc4_;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 §§pop().§?`§ = _loc1_.length() > 0;
                              }
                              return;
                           }
                           §§goto(addr45);
                        }
                        loop5:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr93);
                           }
                           else
                           {
                              while(true)
                              {
                                 COMPRESSION_REDUCED_3 = 4;
                                 addr105:
                                 while(true)
                                 {
                                    COMPRESSION_REDUCED_4 = 5;
                                    continue loop5;
                                 }
                              }
                              addr110:
                           }
                        }
                        continue loop0;
                     }
                     continue;
                  }
                  addr120:
                  while(true)
                  {
                     COMPRESSION_REDUCED_1 = 2;
                     break loop6;
                  }
               }
               while(true)
               {
                  COMPRESSION_REDUCED_2 = 3;
                  §§goto(addr110);
                  §§goto(addr77);
               }
               addr77:
            }
         }
         §§goto(addr120);
      }
      
      protected var §9!C§:int = 0;
      
      protected var §0!P§:String = "2.0";
      
      protected var §0!K§:int = 8;
      
      protected var §>0§:Boolean = false;
      
      protected var §#!R§:int = -1;
      
      protected var §[t§:int = -1;
      
      protected var §'W§:int = -1;
      
      protected var §^1§:Boolean = false;
      
      protected var §#!@§:Boolean = false;
      
      protected var §^t§:Date;
      
      protected var §;!Y§:uint;
      
      protected var §!O§:Boolean = false;
      
      protected var §2!R§:uint = 0;
      
      protected var §case§:uint = 0;
      
      protected var §2!S§:String = "";
      
      protected var §4d§:String;
      
      protected var §;!P§:Dictionary;
      
      protected var §1!P§:String = "";
      
      protected var §!!7§:ByteArray;
      
      var §^!T§:uint;
      
      var §%D§:uint = 0;
      
      var §>!R§:uint = 0;
      
      protected var §6!I§:Boolean = false;
      
      protected var §+c§:Function;
      
      public function §7!G§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+c§ = this.§6!%§;
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§4d§ = param1;
                  while(true)
                  {
                     this.§;!P§ = new Dictionary();
                     while(_loc3_)
                     {
                        continue loop0;
                        loop4:
                        while(!(_loc2_ && _loc2_))
                        {
                           continue loop1;
                           while(true)
                           {
                              this.§!!7§.endian = Endian.BIG_ENDIAN;
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §25§() : Date
      {
         return this.§^t§;
      }
      
      public function set §25§(param1:Date) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§pop().§^t§ = param1 != null ? param1 : new Date();
               §§goto(addr51);
            }
            §§goto(addr44);
         }
         addr51:
      }
      
      public function get §8!§() : String
      {
         return this.§2!S§;
      }
      
      public function set §8!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2!S§ = param1;
         }
      }
      
      function get §!!'§() : Boolean
      {
         return this.§^1§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§6!I§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.uncompress();
               }
            }
         }
         return this.§!!7§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#e§(param1);
         }
      }
      
      public function §#e§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1 == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§!!7§.length = 0;
                           loop6:
                           while(true)
                           {
                              this.§!!7§.position = 0;
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§6!I§ = false;
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(_loc5_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§>!R§ = this.§%D§ = this.§!!7§.length;
                                                   }
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      this.compress();
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   continue loop6;
                                                   continue loop6;
                                                   break;
                                                }
                                                addr175:
                                                addr142:
                                                while(!(_loc4_ && this))
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                addr119:
                                             }
                                             §§goto(addr199);
                                          }
                                          addr165:
                                          while(true)
                                          {
                                             param1.position = 0;
                                             loop12:
                                             while(true)
                                             {
                                                param1.readBytes(this.§!!7§,0,param1.length);
                                                addr136:
                                                loop13:
                                                while(true)
                                                {
                                                   this.§^!T§ = §6R§.§#<§(this.§!!7§);
                                                   addr127:
                                                   while(true)
                                                   {
                                                      this.§!O§ = false;
                                                      addr110:
                                                      while(_loc4_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(_loc5_ || this)
                                                      {
                                                         §§goto(addr119);
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr142);
                                          }
                                       }
                                    }
                                    addr61:
                                 }
                                 §§goto(addr136);
                              }
                              addr199:
                              return;
                           }
                        }
                        §§goto(addr165);
                     }
                     addr163:
                  }
                  §§goto(addr175);
               }
            }
         }
         §§goto(addr59);
      }
      
      public function get §^^§() : String
      {
         return this.§0!P§;
      }
      
      public function get §>J§() : uint
      {
         return this.§%D§;
      }
      
      public function get §'o§() : uint
      {
         return this.§>!R§;
      }
      
      public function §-7§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc5_ && param2))
         {
            §§push(this.§6!I§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.uncompress();
                     addr150:
                     while(true)
                     {
                     }
                  }
                  addr148:
               }
               while(true)
               {
                  this.§!!7§.position = 0;
                  loop4:
                  while(true)
                  {
                     §§push(param2);
                     loop5:
                     do
                     {
                        if(§§pop() == "utf-8")
                        {
                           if(!(_loc5_ && this))
                           {
                              if(_loc4_)
                              {
                                 addr125:
                                 §§push(this.§!!7§.readUTFBytes(this.§!!7§.bytesAvailable));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                                 addr125:
                              }
                              else
                              {
                                 §§goto(addr148);
                              }
                           }
                           while(_loc4_)
                           {
                              loop8:
                              while(true)
                              {
                                 this.§!!7§.position = 0;
                                 addr82:
                                 while(_loc4_ || param2)
                                 {
                                    continue loop0;
                                 }
                                 addr104:
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                              }
                              continue loop5;
                           }
                           continue loop4;
                           addr126:
                        }
                        else
                        {
                           addr101:
                        }
                        §§push(this.§!!7§.readMultiByte(this.§!!7§.bytesAvailable,param2));
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              _loc3_ = §§pop();
                              §§goto(addr104);
                           }
                           else
                           {
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr125);
                     }
                     while(!_loc4_);
                     
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §,!W§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§!!7§.length = 0;
            loop0:
            while(true)
            {
               this.§!!7§.position = 0;
               loop1:
               while(true)
               {
                  this.§6!I§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() == null);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop16:
                                 while(true)
                                 {
                                    §§pop();
                                    addr173:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc5_ && param3)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().length > 0);
                                       while(!(_loc6_ || param2))
                                       {
                                          continue loop16;
                                       }
                                       continue loop16;
                                    }
                                    continue loop3;
                                 }
                                 addr172:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param3);
                                       if(_loc6_ || param2)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          if(!§§pop())
                                          {
                                             this.§>!R§ = this.§%D§ = this.§!!7§.length;
                                             break;
                                          }
                                          if(_loc6_ || param3)
                                          {
                                             if(!_loc6_)
                                             {
                                                while(_loc6_)
                                                {
                                                   continue loop1;
                                                   this.§!!7§.writeUTFBytes(param1);
                                                }
                                                continue loop2;
                                             }
                                             this.compress();
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                continue loop6;
                                             }
                                             addr93:
                                             while(_loc6_ || param1)
                                             {
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§!O§ = false;
                                                      continue loop14;
                                                   }
                                                   addr56:
                                                }
                                                else
                                                {
                                                   §§goto(addr173);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc5_ && param3))
                                                {
                                                   addr110:
                                                   while(true)
                                                   {
                                                      this.§^!T§ = §6R§.§#<§(this.§!!7§);
                                                      §§goto(addr75);
                                                      §§goto(addr110);
                                                   }
                                                   addr68:
                                                }
                                                else
                                                {
                                                   addr132:
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      continue loop3;
                                                   }
                                                   addr132:
                                                }
                                             }
                                             addr75:
                                          }
                                       }
                                       §§goto(addr123);
                                    }
                                    addr212:
                                    return;
                                 }
                                 §§goto(addr132);
                              }
                           }
                        }
                        §§goto(addr172);
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function §`r§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc10_:Object = null;
         var _loc15_:ByteArray = null;
         var _loc16_:Boolean = false;
         if(!_loc20_)
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  if(!param3)
                  {
                     param1.writeUnsignedInt(§#!K§.§<_§);
                     if(!(_loc20_ && param3))
                     {
                        if(!(_loc20_ && param3))
                        {
                           loop1:
                           while(true)
                           {
                              param1.writeShort(this.§9!C§ << 8 | 20);
                              loop2:
                              while(true)
                              {
                                 if(_loc20_)
                                 {
                                    while(!_loc20_)
                                    {
                                       param1.writeUnsignedInt(§#!K§.§"Y§);
                                    }
                                    addr128:
                                    return 0;
                                    addr118:
                                 }
                                 while(true)
                                 {
                                    param1.writeShort(this.§4d§ == "utf-8" ? 2048 : 0);
                                    if(!_loc19_)
                                    {
                                       break;
                                    }
                                    if(_loc20_ && param1)
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc20_)
                                    {
                                       if(_loc19_ || param1)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr142);
                                 §§push(this.§^t§);
                                 while(true)
                                 {
                                    param1.writeShort(this.§9!C§ << 8 | 20);
                                    continue loop1;
                                 }
                              }
                           }
                           addr71:
                        }
                        while(true)
                        {
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr128);
         }
         §§goto(addr70);
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
                  if(_loc2_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(Boolean(this.§+c§(param1)));
                     if(!(_loc3_ && param1))
                     {
                        continue;
                     }
                  }
                  §§goto(addr72);
               }
            }
         }
         while(§§pop());
         
         addr72:
         this.§+c§ === this.§"<§;
         return §§pop();
      }
      
      protected function §"<§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6!%§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.bytesAvailable >= 30)
            {
               loop0:
               do
               {
                  this.§ !X§(param1);
                  do
                  {
                     if(this.§2!R§ + this.§case§ <= 0)
                     {
                        this.§+c§ = this.§@^§;
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        if(_loc2_ || _loc2_)
                        {
                           addr33:
                           return true;
                           addr31:
                        }
                     }
                  }
                  while(_loc3_);
                  
                  this.§+c§ = this.§-R§;
               }
               while(!(_loc2_ || this));
               
               §§goto(addr31);
            }
            else
            {
               addr19:
               §§push(false);
               if(!(_loc3_ && param1))
               {
                  return §§pop();
               }
            }
            §§goto(addr33);
         }
         §§goto(addr19);
      }
      
      protected function §-R§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.bytesAvailable >= this.§2!R§ + this.§case§)
            {
               do
               {
                  this.§!$§(param1);
                  do
                  {
                     this.§+c§ = this.§@^§;
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(!_loc2_);
               
               §§push(true);
               addr56:
            }
            else
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr56);
      }
      
      protected function §@^§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(_loc4_)
         {
            §§push(this.§^1§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(this.§%D§ != 0)
                  {
                     if(param1.bytesAvailable >= this.§%D§)
                     {
                        if(!(_loc3_ && param1))
                        {
                           this.§;N§(param1);
                        }
                        loop1:
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              this.§+c§ = this.§"<§;
                              loop2:
                              while(true)
                              {
                                 if(_loc4_ || this)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc3_ && _loc2_)
                                       {
                                          while(_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          continue loop0;
                                          addr45:
                                       }
                                       if(_loc4_ || _loc2_)
                                       {
                                          break;
                                       }
                                       addr137:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                    return §§pop();
                                    addr22:
                                 }
                                 while(true)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr134:
                           }
                           §§goto(addr22);
                        }
                     }
                     else
                     {
                        §§push(false);
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr121);
               }
               §§goto(addr152);
            }
         }
         §§goto(addr130);
      }
      
      protected function § !X§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(!(_loc12_ && this))
         {
            this.§9!C§ = _loc2_ >> 8;
            if(_loc13_)
            {
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!_loc12_)
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§0!P§ = §§pop();
            }
         }
         var _loc3_:uint = param1.readUnsignedShort();
         if(_loc13_ || _loc2_)
         {
            this.§0!K§ = param1.readUnsignedShort();
            while(true)
            {
               §§push(this);
               §§push((_loc3_ & 1) === 0);
               if(!_loc12_)
               {
                  §§push(!§§pop());
               }
               §§pop().§>0§ = §§pop();
               addr269:
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push((_loc3_ & 8) === 0);
                  if(_loc13_ || _loc3_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§^1§ = §§pop();
                  addr257:
                  while(true)
                  {
                     §§push(this);
                     §§push((_loc3_ & 32) === 0);
                     if(_loc13_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§#!@§ = §§pop();
                     addr238:
                     while(_loc13_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
            addr274:
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc13_ || param1)
            {
               §§push(§§pop() & 800);
               loop5:
               while(true)
               {
                  §§push(0);
                  loop6:
                  while(true)
                  {
                     if(§§pop() !== §§pop())
                     {
                        if(_loc13_)
                        {
                           if(!_loc12_)
                           {
                              this.§4d§ = "utf-8";
                              while(true)
                              {
                                 addr155:
                                 while(true)
                                 {
                                    §§push(this.§0!K§);
                                    loop9:
                                    while(!_loc12_)
                                    {
                                       §§push(§"I§);
                                       while(true)
                                       {
                                          if(!(_loc12_ && param1))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                break;
                                             }
                                             §§push(this.§0!K§);
                                             if(_loc13_)
                                             {
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop6;
                                       }
                                       §§push(this);
                                       if(!_loc12_)
                                       {
                                          §§push(_loc3_ & 2);
                                          if(!(_loc12_ && _loc2_))
                                          {
                                             if(§§pop() !== 0)
                                             {
                                                addr184:
                                                §§push(8192);
                                                if(_loc12_ && param1)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(4096);
                                             }
                                          }
                                          §§pop().§#!R§ = §§pop();
                                          §§goto(addr195);
                                       }
                                       §§goto(addr184);
                                    }
                                    continue loop5;
                                 }
                              }
                              addr226:
                           }
                           break;
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr257);
               }
            }
            break;
         }
         var _loc4_:* = §§pop();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         §§push(_loc4_ & 2016);
         if(!(_loc12_ && this))
         {
            §§push(§§pop() >> 5);
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_ & 63488);
         if(_loc13_ || _loc2_)
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
         if(_loc13_)
         {
            §§push(9);
            if(_loc13_)
            {
               §§goto(addr344);
            }
            §§push(int(§§pop() + §§pop()));
         }
         addr344:
         §§push(§§pop() >> §§pop());
         if(!(_loc12_ && _loc2_))
         {
            §§push(1980);
         }
         var _loc11_:* = §§pop();
         if(!(_loc12_ && _loc3_))
         {
            this.§^t§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
            loop11:
            do
            {
               this.§^!T§ = param1.readUnsignedInt();
               while(true)
               {
                  this.§%D§ = param1.readUnsignedInt();
                  loop13:
                  while(!_loc12_)
                  {
                     this.§>!R§ = param1.readUnsignedInt();
                     do
                     {
                        this.§2!R§ = param1.readUnsignedShort();
                        while(!(_loc12_ && _loc3_))
                        {
                           this.§case§ = param1.readUnsignedShort();
                           if(!_loc13_)
                           {
                              continue;
                           }
                           §§goto(addr364);
                        }
                        continue loop13;
                     }
                     while(!_loc13_);
                     
                     continue loop11;
                  }
               }
            }
            while(!_loc13_);
            
         }
      }
      
      protected function §!$§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(!_loc6_)
         {
            if(this.§4d§ == "utf-8")
            {
               if(_loc7_ || _loc3_)
               {
                  addr39:
                  this.§2!S§ = param1.readUTFBytes(this.§2!R§);
                  if(!_loc7_)
                  {
                  }
               }
            }
            else
            {
               this.§2!S§ = param1.readMultiByte(this.§2!R§,this.§4d§);
            }
            §§push(this.§case§);
            if(!_loc6_)
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc6_ && _loc2_))
               {
                  while(true)
                  {
                     §§push(4);
                     if(_loc7_)
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc7_)
                              {
                                 addr264:
                                 if(_loc2_ > 0)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr284:
                                       param1.readBytes(new ByteArray(),0,_loc2_);
                                    }
                                 }
                              }
                              return;
                           }
                           §§push(uint(param1.readUnsignedShort()));
                           if(_loc7_)
                           {
                              _loc3_ = §§pop();
                              if(_loc7_ || this)
                              {
                                 §§push(uint(param1.readUnsignedShort()));
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(_loc2_);
                                       if(!_loc6_)
                                       {
                                          addr160:
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc7_ || _loc2_)
                                             {
                                                throw new Error("Parse error in file " + this.§2!S§ + ": Extra field data size too big.");
                                             }
                                             §§goto(addr264);
                                          }
                                          else
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(56026);
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() === §§pop());
                                                   if(_loc7_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               addr134:
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(4);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr95:
                                                                        §§push(§§pop() === §§pop());
                                                                        if(!(_loc7_ || param1))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr198:
                                                                                 §§push(0);
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    addr206:
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(!(_loc7_ || _loc3_))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr214);
                                                                                    }
                                                                                 }
                                                                                 break loop6;
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              this.§;!Y§ = param1.readUnsignedInt();
                                                                              if(_loc7_)
                                                                              {
                                                                                 this.§!O§ = true;
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       addr237:
                                                                                       §§push(_loc2_);
                                                                                    }
                                                                                    continue loop6;
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr241:
                                                                                       §§push(uint(§§pop() - (_loc4_ + 4)));
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr264);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr237);
                                                                              }
                                                                              addr214:
                                                                              _loc5_ = new ByteArray();
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 param1.readBytes(_loc5_,0,_loc4_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    this.§;!P§[_loc3_] = _loc5_;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr284);
                                                                           §§goto(addr237);
                                                                           §§goto(addr95);
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         continue loop3;
                                                         addr129:
                                                      }
                                                      §§goto(addr103);
                                                   }
                                                   §§goto(addr129);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr284);
                           }
                           §§goto(addr247);
                           §§goto(addr284);
                        }
                        continue;
                     }
                     §§goto(addr264);
                  }
               }
               §§goto(addr264);
            }
         }
         §§goto(addr39);
      }
      
      function §;N§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§0!K§);
            loop0:
            while(true)
            {
               §§push(§3!D§);
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
                              loop5:
                              while(true)
                              {
                                 §§push(this.§>0§);
                                 loop6:
                                 while(_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || param1)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§0!K§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(6);
                                                      addr262:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() << §§pop());
                                                      }
                                                   }
                                                   addr261:
                                                }
                                                while(true)
                                                {
                                                   §§push(192);
                                                   addr264:
                                                   while(!(_loc4_ && this))
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(uint(§§pop()));
                                                loop32:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop18:
                                                   for(; !_loc4_; continue loop32)
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push(31);
                                                            §§push(120);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(8);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() << §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr234:
                                                                     §§push(§§pop() | _loc2_);
                                                                     §§push(31);
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               addr239:
                                                               §§push(uint(§§pop() + (§§pop() - §§pop() % §§pop())));
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop32;
                                                               }
                                                               addr246:
                                                               _loc2_ = §§pop();
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  this.§!!7§.writeByte(_loc2_);
                                                                  while(true)
                                                                  {
                                                                     param1.readBytes(this.§!!7§,2,this.§%D§);
                                                                     addr187:
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                        addr305:
                                                                        while(!(_loc4_ && this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§'W§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(~§§pop());
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               addr247:
                                                               if(_loc3_)
                                                               {
                                                                  this.§!!7§.position = this.§!!7§.length;
                                                                  this.§!!7§.writeUnsignedInt(this.§;!Y§);
                                                                  addr350:
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     this.§6!I§ = true;
                                                                     loop15:
                                                                     while(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 this.§!!7§.position = 0;
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       addr121:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             param1.readBytes(this.§!!7§,0,this.§%D§);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr187);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       this.§6!I§ = false;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    addr334:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr178);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr247);
                                                                           }
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  addr178:
                                                                  addr170:
                                                                  loop33:
                                                                  while(true)
                                                                  {
                                                                     §§push(§+K§);
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc3_)
                                                                           {
                                                                              while(_loc3_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr383:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§?`§);
                                                                                             addr315:
                                                                                             addr323:
                                                                                             while(!(_loc3_ || this))
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr372:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          break loop18;
                                                                                       }
                                                                                       §§push(this.§!O§);
                                                                                       if(_loc4_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             throw new Error("Adler32 checksum not found.");
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             this.§!!7§.writeByte(120);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop2;
                                                                              addr361:
                                                                           }
                                                                           §§goto(addr372);
                                                                           continue loop33;
                                                                        }
                                                                        addr358:
                                                                     }
                                                                     §§goto(addr361);
                                                                  }
                                                                  addr350:
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr383);
                                                   }
                                                   while(true)
                                                   {
                                                      param1.readBytes(this.§!!7§,0,this.§%D§);
                                                      §§goto(addr334);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr350);
                                       }
                                       continue loop0;
                                       addr348:
                                    }
                                    §§goto(addr358);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr348);
                     }
                  }
               }
            }
         }
         §§goto(addr312);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6!I§);
            loop0:
            for(; !§§pop(); for(; !(_loc1_ && _loc1_); §§push(§+K§),if(!(_loc2_ || _loc2_))
            {
               continue;
            },if(!§§pop())
            {
               this.§!!7§.compress();
               §§goto(addr115);
            },§§goto(addr144))
            {
               if(!§§pop())
               {
                  continue;
               }
               §§goto(addr186);
            })
            {
               loop1:
               while(true)
               {
                  if(this.§!!7§.length <= 0)
                  {
                     this.§%D§ = 0;
                     loop2:
                     for(; _loc2_; this.§>!R§ = 0,if(_loc1_)
                     {
                        continue;
                     },if(!_loc1_)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_ || _loc2_)
                           {
                              break loop0;
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr131);
                     }
                     else
                     {
                        §§goto(addr91);
                     })
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 continue;
                              }
                              addr186:
                              while(true)
                              {
                                 this.§!!7§.deflate();
                                 addr189:
                                 while(true)
                                 {
                                    this.§%D§ = this.§!!7§.length;
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    this.§%D§ = this.§!!7§.length - 6;
                                    while(true)
                                    {
                                       if(_loc1_ && _loc1_)
                                       {
                                          §§goto(addr189);
                                       }
                                       addr77:
                                       addr82:
                                       this.§!!7§.position = 0;
                                       this.§6!I§ = true;
                                       break loop2;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          this.§!!7§.compress.apply(this.§!!7§,["deflate"]);
                                          this.§%D§ = this.§!!7§.length;
                                          addr154:
                                          addr131:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr226);
                                             }
                                             addr196:
                                             while(true)
                                             {
                                                §§push(§?`§);
                                                continue loop0;
                                             }
                                          }
                                          addr161:
                                       }
                                       §§goto(addr77);
                                    }
                                    addr144:
                                 }
                              }
                              addr115:
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr82);
                     }
                     break loop0;
                  }
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§!!7§.position = 0;
                     addr226:
                     while(true)
                     {
                        this.§>!R§ = this.§!!7§.length;
                     }
                     addr226:
                  }
                  §§goto(addr226);
                  §§goto(addr196);
               }
            }
            return;
         }
         §§goto(addr226);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6!I§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr160:
                     while(true)
                     {
                        §§push(this.§!!7§.length > 0);
                     }
                  }
                  addr159:
               }
               while(true)
               {
                  addr131:
                  loop4:
                  while(§§pop())
                  {
                     while(true)
                     {
                        this.§!!7§.position = 0;
                        addr136:
                        while(true)
                        {
                           §§push(§?`§);
                           continue loop0;
                        }
                        continue loop4;
                     }
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr102);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipFile]" + "\n  name:");
         if(!(_loc2_ && this))
         {
            §§push(this.§2!S§);
            if(_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc2_)
               {
                  §§push(§§pop() + "\n  date:");
                  if(_loc1_)
                  {
                     §§push(§§pop() + this.§^t§);
                     if(_loc1_ || _loc2_)
                     {
                        addr47:
                        §§push(§§pop() + "\n  sizeCompressed:");
                        if(_loc1_ || _loc2_)
                        {
                           addr56:
                           §§push(this.§%D§);
                           if(_loc1_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(§§pop() + "\n  sizeUncompressed:");
                                 if(!_loc2_)
                                 {
                                    §§push(this.§>!R§);
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc1_)
                                       {
                                          §§push(§§pop() + "\n  versionHost:");
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(this.§9!C§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc1_)
                                                {
                                                   addr100:
                                                   §§push(§§pop() + "\n  versionNumber:");
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      §§push(this.§0!P§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         addr128:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            addr131:
                                                            §§push(§§pop() + "\n  compressionMethod:");
                                                            if(_loc1_)
                                                            {
                                                               addr137:
                                                               §§push(§§pop() + this.§0!K§);
                                                               if(!_loc2_)
                                                               {
                                                                  addr140:
                                                                  §§push(§§pop() + "\n  encrypted:");
                                                                  if(_loc1_)
                                                                  {
                                                                     addr144:
                                                                     §§push(this.§>0§);
                                                                     if(_loc1_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr156:
                                                                           §§push(§§pop() + "\n  hasDataDescriptor:");
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              addr165:
                                                                              §§push(this.§^1§);
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 addr174:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr204:
                                                                                    §§push(§§pop() + "\n  hasCompressedPatchedData:");
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr181:
                                                                                       §§push(this.§#!@§);
                                                                                    }
                                                                                    §§push(this.§^!T§);
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       addr213:
                                                                                       §§push(16);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          §§goto(addr239);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr237);
                                                                                 }
                                                                                 addr195:
                                                                                 §§push(§§pop() + "\n  crc32:");
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr204);
                                                                                 }
                                                                                 §§goto(addr237);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(§§pop() + "\n  filenameEncoding:");
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr190:
                                                                                    §§push(§§pop() + this.§4d§);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr195);
                                                                                    }
                                                                                    §§goto(addr204);
                                                                                 }
                                                                                 addr239:
                                                                                 §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr220:
                                                                                    §§push(§§pop() + "\n  adler32:");
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr237:
                                                                                       return §§pop() + this.§;!Y§.toString(16);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr220);
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     §§goto(addr174);
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr137);
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr140);
               }
               §§goto(addr47);
            }
            §§goto(addr128);
         }
         §§goto(addr47);
      }
   }
}
