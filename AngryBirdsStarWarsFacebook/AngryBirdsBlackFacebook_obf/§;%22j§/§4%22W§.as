package §;"j§
{
   import §,3§.§7§;
   import flash.utils.*;
   
   public class §4"W§
   {
      
      public static const §-Y§:int = 0;
      
      public static const §^!,§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^!4§:int = 6;
      
      public static const §3"B§:int = 7;
      
      public static const §1"k§:int = 8;
      
      public static const §-!#§:int = 9;
      
      public static const §%#^§:int = 10;
      
      protected static var §&!P§:Boolean;
      
      protected static var §7o§:Boolean;
      
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && §4"W§))
         {
            §-Y§ = 0;
            loop0:
            while(true)
            {
               §^!,§ = 1;
               loop1:
               while(true)
               {
                  COMPRESSION_REDUCED_1 = 2;
                  loop2:
                  while(true)
                  {
                     COMPRESSION_REDUCED_2 = 3;
                     while(true)
                     {
                        COMPRESSION_REDUCED_3 = 4;
                        while(_loc6_ || §4"W§)
                        {
                           if(!_loc7_)
                           {
                              COMPRESSION_REDUCED_4 = 5;
                              while(_loc6_ || §4"W§)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
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
         §§goto(addr64);
      }
      
      protected var §!",§:int = 0;
      
      protected var §,J§:String = "2.0";
      
      protected var §6!k§:int = 8;
      
      protected var §<"K§:Boolean = false;
      
      protected var §#!f§:int = -1;
      
      protected var §="7§:int = -1;
      
      protected var §]"I§:int = -1;
      
      protected var §?#X§:Boolean = false;
      
      protected var §^!8§:Boolean = false;
      
      protected var §3A§:Date;
      
      protected var §;U§:uint;
      
      protected var §@!o§:Boolean = false;
      
      protected var §5!k§:uint = 0;
      
      protected var §<#S§:uint = 0;
      
      protected var §-=§:String = "";
      
      protected var §4!k§:String;
      
      protected var §+"-§:Dictionary;
      
      protected var §=U§:String = "";
      
      protected var §3#"§:ByteArray;
      
      var §?!+§:uint;
      
      var §-"U§:uint = 0;
      
      var §`!+§:uint = 0;
      
      protected var §6"&§:Boolean = false;
      
      protected var §;L§:Function;
      
      public function §4"W§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;L§ = this.§-!8§;
            while(true)
            {
               super();
               addr84:
               while(!_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.§4!k§ = param1;
            loop3:
            do
            {
               this.§+"-§ = new Dictionary();
               while(true)
               {
                  this.§3#"§ = new ByteArray();
                  while(_loc3_)
                  {
                     this.§3#"§.endian = Endian.BIG_ENDIAN;
                     if(!_loc2_)
                     {
                        continue loop3;
                     }
                  }
               }
            }
            while(_loc2_ && _loc3_);
            
            if(_loc3_)
            {
               break;
            }
            §§goto(addr84);
         }
      }
      
      public function get date() : Date
      {
         return this.§3A§;
      }
      
      public function set date(param1:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§pop().§3A§ = param1 != null ? param1 : new Date();
               §§goto(addr52);
            }
            §§goto(addr45);
         }
         addr52:
      }
      
      public function get §1"n§() : String
      {
         return this.§-=§;
      }
      
      public function set §1"n§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§-=§ = param1;
         }
      }
      
      function get §["@§() : Boolean
      {
         return this.§?#X§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§6"&§)
            {
               if(_loc2_)
               {
                  this.uncompress();
               }
            }
         }
         return this.§3#"§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§58§(param1);
         }
      }
      
      public function §58§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(param1 == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     addr159:
                     while(true)
                     {
                        §§pop();
                        addr160:
                        while(true)
                        {
                           §§push(param1.length > 0);
                        }
                     }
                     addr159:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§3#"§.length = 0;
                           while(true)
                           {
                              this.§3#"§.position = 0;
                              if(!_loc5_)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       this.§6"&§ = false;
                                       addr78:
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             addr118:
                                             while(true)
                                             {
                                             }
                                             addr118:
                                          }
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc5_ && this)
                                                {
                                                   break loop5;
                                                }
                                                continue loop0;
                                             }
                                             continue loop2;
                                             §§goto(addr118);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr159);
                                    }
                                    addr74:
                                 }
                              }
                              §§goto(addr183);
                           }
                           addr113:
                        }
                        while(true)
                        {
                           param1.position = 0;
                           loop9:
                           while(true)
                           {
                              param1.readBytes(this.§3#"§,0,param1.length);
                              addr137:
                              while(!_loc4_)
                              {
                                 continue loop9;
                              }
                              this.§?!+§ = §7§.§ u§(this.§3#"§);
                              if(_loc4_)
                              {
                                 this.§@!o§ = false;
                                 §§goto(addr118);
                              }
                              §§goto(addr183);
                           }
                        }
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr159);
            }
         }
         addr183:
      }
      
      public function get §2b§() : String
      {
         return this.§,J§;
      }
      
      public function get §0h§() : uint
      {
         return this.§-"U§;
      }
      
      public function get §[&§() : uint
      {
         return this.§`!+§;
      }
      
      public function §7#E§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc5_ && param2))
         {
            §§push(this.§6"&§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.uncompress();
                     addr160:
                     while(true)
                     {
                     }
                  }
                  addr158:
               }
               addr139:
               while(true)
               {
                  this.§3#"§.position = 0;
               }
               loop8:
               while(true)
               {
                  §§push(param1);
                  if(_loc5_ && this)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_ || this)
                        {
                           this.compress();
                           addr57:
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                           if(!(_loc5_ && this))
                           {
                              addr27:
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    return §§pop();
                                 }
                                 addr137:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr138:
                                    loop9:
                                    while(true)
                                    {
                                       addr82:
                                       addr99:
                                       while(true)
                                       {
                                          this.§3#"§.position = 0;
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr100:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop9;
                                             }
                                             if(_loc5_ && this)
                                             {
                                                break;
                                             }
                                             §§goto(addr82);
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                 }
                                 addr137:
                              }
                              else
                              {
                                 §§goto(addr99);
                              }
                              §§goto(addr100);
                           }
                           loop10:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(_loc5_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr137);
                                 §§push(this.§3#"§.readUTFBytes(this.§3#"§.bytesAvailable));
                              }
                              addr154:
                              while(true)
                              {
                                 §§push(param2);
                                 if(_loc4_ || param2)
                                 {
                                    if(§§pop() == "utf-8")
                                    {
                                       continue loop10;
                                    }
                                    §§goto(addr99);
                                    §§push(this.§3#"§.readMultiByte(this.§3#"§.bytesAvailable,param2));
                                 }
                                 else
                                 {
                                    §§goto(addr137);
                                 }
                                 §§goto(addr138);
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr27);
               }
               §§goto(addr139);
            }
         }
         §§goto(addr154);
      }
      
      public function §-"D§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§3#"§.length = 0;
            loop0:
            while(true)
            {
               this.§3#"§.position = 0;
               loop1:
               while(true)
               {
                  this.§6"&§ = false;
                  if(!(_loc5_ && param3))
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() == null);
                        loop3:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc6_ || param1)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().length > 0);
                                          loop7:
                                          for(; _loc6_ || this; loop13:
                                          while(true)
                                          {
                                             §§push(param3);
                                             if(_loc5_ && param2)
                                             {
                                                continue loop7;
                                             }
                                             if(!(_loc6_ || param2))
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc6_ || param3))
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue loop6;
                                                      }
                                                      this.compress();
                                                      if(_loc6_ || this)
                                                      {
                                                         addr71:
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(false)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§@!o§ = false;
                                                                  if(_loc5_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  addr160:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§?!+§ = §7§.§ u§(this.§3#"§);
                                                                        }
                                                                        addr106:
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               addr217:
                                                               return;
                                                               addr77:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         while(!(_loc5_ && param3))
                                                         {
                                                            §§goto(addr77);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr106);
                                                            §§goto(addr113);
                                                         }
                                                         addr113:
                                                         addr129:
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§3#"§.writeUTFBytes(param1);
                                                      §§goto(addr160);
                                                   }
                                                   addr156:
                                                }
                                                §§goto(addr71);
                                             }
                                             else
                                             {
                                                this.§`!+§ = this.§-"U§ = this.§3#"§.length;
                                                §§goto(addr217);
                                             }
                                          },§§goto(addr153))
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   §§push(param2);
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() != "utf-8")
                                          {
                                             this.§3#"§.writeMultiByte(param1,param2);
                                             §§goto(addr129);
                                          }
                                          §§goto(addr156);
                                          §§goto(addr153);
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr151);
                           }
                        }
                     }
                  }
                  §§goto(addr217);
               }
            }
         }
         §§goto(addr153);
      }
      
      public function §?" §(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc10_:Object = null;
         var _loc15_:ByteArray = null;
         var _loc16_:Boolean = false;
         if(!_loc19_)
         {
            if(param1 != null)
            {
               while(true)
               {
                  if(!param3)
                  {
                     param1.writeUnsignedInt(§[h§.§ #%§);
                     loop1:
                     while(!(_loc19_ && this))
                     {
                        if(_loc19_ && param1)
                        {
                           §§goto(addr144);
                        }
                        loop2:
                        while(true)
                        {
                           param1.writeShort(this.§!",§ << 8 | 20);
                           loop3:
                           while(!_loc19_)
                           {
                              while(true)
                              {
                                 param1.writeShort(this.§4!k§ == "utf-8" ? 2048 : 0);
                                 while(true)
                                 {
                                    if(!(_loc19_ && param2))
                                    {
                                       if(_loc20_ || this)
                                       {
                                          param1.writeShort(!!this.§6"&§ ? int(§1"k§) : int(§-Y§));
                                          if(!(_loc20_ || param1))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 addr151:
                                 §§goto(addr158);
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              param1.writeShort(this.§!",§ << 8 | 20);
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr136);
               }
            }
            addr144:
            return 0;
         }
         §§goto(addr151);
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
               if(_loc2_)
               {
                  continue;
               }
            }
            §§pop();
            if(!(_loc3_ || this))
            {
               break;
            }
            §§push(Boolean(this.§;L§(param1)));
            if(_loc2_ && _loc3_)
            {
               return §§pop();
            }
            addr78:
         }
         while(§§pop());
         
         §§goto(addr78);
         §§push(this.§;L§ === this.§"!<§);
      }
      
      protected function §"!<§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §-!8§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.bytesAvailable >= 30)
            {
               this.§""m§(param1);
               do
               {
                  if(this.§5!k§ + this.§<#S§ > 0)
                  {
                     continue;
                  }
                  this.§;L§ = this.§+x§;
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  §§push(true);
               }
               while(this.§;L§ = this.§^#?§, _loc3_);
               
               §§goto(addr26);
               addr98:
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
         §§goto(addr98);
      }
      
      protected function §^#?§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(param1.bytesAvailable >= this.§5!k§ + this.§<#S§)
            {
               do
               {
                  this.§;"V§(param1);
                  this.§;L§ = this.§+x§;
               }
               while(_loc2_ && _loc3_);
               
               §§push(true);
               addr81:
            }
            else
            {
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr81);
      }
      
      protected function §+x§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§?#X§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(this.§-"U§ != 0)
                  {
                     if(param1.bytesAvailable >= this.§-"U§)
                     {
                        if(!_loc3_)
                        {
                           this.§2!u§(param1);
                        }
                        while(true)
                        {
                           this.§;L§ = this.§"!<§;
                           addr81:
                           loop2:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   this.§;L§ = this.§"!<§;
                                                   addr146:
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      continue loop3;
                                                   }
                                                }
                                                addr142:
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                       continue loop0;
                                       addr124:
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§;L§ = this.§"!<§;
                                       addr113:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr109:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                    addr75:
                                 }
                                 return §§pop();
                              }
                              §§goto(addr113);
                           }
                           addr58:
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr75);
                        }
                     }
                     else
                     {
                        §§push(false);
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr81);
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr142);
            }
         }
         §§goto(addr146);
      }
      
      protected function §""m§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc13_ || this)
         {
            this.§!",§ = _loc2_ >> 8;
            if(!(_loc12_ && _loc3_))
            {
               addr40:
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!_loc12_)
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§,J§ = §§pop();
            }
            var _loc3_:uint = param1.readUnsignedShort();
            if(_loc13_)
            {
               this.§6!k§ = param1.readUnsignedShort();
               while(true)
               {
                  §§push(this);
                  §§push((_loc3_ & 1) === 0);
                  if(_loc13_ || this)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§<"K§ = §§pop();
                  addr191:
                  if(!(_loc13_ || _loc3_))
                  {
                     continue;
                  }
                  this.§4!k§ = "utf-8";
                  loop7:
                  while(!_loc12_)
                  {
                     loop8:
                     while(true)
                     {
                        §§push(this.§6!k§);
                        loop9:
                        while(_loc13_)
                        {
                           §§push(§^!4§);
                           while(§§pop() !== §§pop())
                           {
                              §§push(this.§6!k§);
                              if(!_loc12_)
                              {
                                 §§push(§1"k§);
                                 if(_loc12_ && param1)
                                 {
                                    continue;
                                 }
                                 if(_loc13_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc13_ || _loc3_)
                                       {
                                          if(!(_loc12_ && param1))
                                          {
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             §§push(this);
                                             §§push(_loc3_ & 6);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() >> 1);
                                             }
                                             §§pop().§]"I§ = §§pop();
                                             addr109:
                                             if(_loc13_ || this)
                                             {
                                                if(!_loc12_)
                                                {
                                                   if(false)
                                                   {
                                                      addr120:
                                                      §§push(this);
                                                      if(_loc13_ || param1)
                                                      {
                                                         §§push(_loc3_ & 4);
                                                         if(!_loc12_)
                                                         {
                                                            if(§§pop() !== 0)
                                                            {
                                                               addr136:
                                                               §§push(3);
                                                               if(!(_loc12_ && _loc2_))
                                                               {
                                                                  addr144:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(2);
                                                            }
                                                            §§pop().§="7§ = §§pop();
                                                            addr268:
                                                            var _loc4_:uint = param1.readUnsignedShort();
                                                            var _loc5_:uint = param1.readUnsignedShort();
                                                            var _loc6_:* = _loc4_ & 31;
                                                            addr265:
                                                            §§push(_loc4_ & 2016);
                                                            if(!_loc12_)
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
                                                            if(_loc13_ || this)
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
                                                                     addr322:
                                                                     §§push(int(§§pop() + 1980));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  if(_loc13_)
                                                                  {
                                                                     this.§3A§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                                                                     this.§?!+§ = param1.readUnsignedInt();
                                                                     addr379:
                                                                     if(!(_loc12_ && param1))
                                                                     {
                                                                        this.§-"U§ = param1.readUnsignedInt();
                                                                        this.§`!+§ = param1.readUnsignedInt();
                                                                        this.§5!k§ = param1.readUnsignedShort();
                                                                        addr373:
                                                                        addr367:
                                                                        if(!(_loc12_ && param1))
                                                                        {
                                                                           this.§<#S§ = param1.readUnsignedShort();
                                                                           if(!(_loc12_ && this))
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§goto(addr373);
                                                                                 }
                                                                                 return;
                                                                                 addr348:
                                                                              }
                                                                              §§goto(addr367);
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     addr409:
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                            }
                                                            §§goto(addr322);
                                                            addr147:
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr265);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push((_loc3_ & 8) === 0);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      §§pop().§?#X§ = §§pop();
                                                      break loop7;
                                                   }
                                                   addr259:
                                                }
                                             }
                                             §§goto(addr147);
                                          }
                                          addr175:
                                          §§goto(addr120);
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr265);
                                 }
                                 while(true)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       continue loop8;
                                    }
                                    while(_loc13_ || param1)
                                    {
                                       §§goto(addr191);
                                    }
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop() & 800);
                                          break loop9;
                                       }
                                       break;
                                       §§goto(addr184);
                                    }
                                    addr184:
                                    §§goto(addr268);
                                 }
                                 continue;
                              }
                              continue loop9;
                           }
                           if(!_loc13_)
                           {
                              continue loop7;
                           }
                           if(_loc13_)
                           {
                              break loop8;
                           }
                           §§goto(addr184);
                        }
                        while(true)
                        {
                           §§goto(addr183);
                        }
                        §§goto(addr100);
                     }
                     §§push(this);
                     if(_loc13_)
                     {
                        §§push(_loc3_ & 2);
                        if(!_loc12_)
                        {
                           if(§§pop() !== 0)
                           {
                              addr169:
                              §§push(8192);
                              if(!_loc13_)
                              {
                              }
                           }
                           else
                           {
                              §§push(4096);
                           }
                        }
                        §§pop().§#!f§ = §§pop();
                        §§goto(addr175);
                     }
                     §§goto(addr169);
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push((_loc3_ & 32) === 0);
                     if(!(_loc12_ && _loc3_))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§^!8§ = §§pop();
                     §§goto(addr230);
                  }
               }
            }
            §§goto(addr259);
         }
         §§goto(addr40);
      }
      
      protected function §;"V§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(!(_loc7_ && _loc2_))
         {
            if(this.§4!k§ == "utf-8")
            {
               if(_loc6_)
               {
                  this.§-=§ = param1.readUTFBytes(this.§5!k§);
                  if(_loc6_ || _loc3_)
                  {
                     addr51:
                  }
               }
            }
            else
            {
               this.§-=§ = param1.readMultiByte(this.§5!k§,this.§4!k§);
            }
            §§push(this.§<#S§);
            if(_loc6_ || this)
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
                              §§goto(addr324);
                           }
                           §§push(uint(param1.readUnsignedShort()));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(uint(param1.readUnsignedShort()));
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ || param1)
                                    {
                                       _loc4_ = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc6_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   throw new Error("Parse error in file " + this.§-=§ + ": Extra field data size too big.");
                                                }
                                                continue loop0;
                                             }
                                             §§push(_loc3_);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(56026);
                                                if(_loc7_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop() === §§pop());
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(_loc7_ && this)
                                                         {
                                                            break;
                                                            addr80:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr147:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr232:
                                                               §§push(0);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!(_loc6_ || param1))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                               }
                                                               break loop1;
                                                            }
                                                            break;
                                                         }
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            this.§;U§ = param1.readUnsignedInt();
                                                            if(!_loc7_)
                                                            {
                                                               this.§@!o§ = true;
                                                               if(!_loc7_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     addr271:
                                                                     §§push(_loc2_);
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(_loc4_);
                                                                        break loop4;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr80);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            else
                                                            {
                                                               addr248:
                                                               _loc5_ = new ByteArray();
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  param1.readBytes(_loc5_,0,_loc4_);
                                                                  if(_loc7_)
                                                                  {
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               this.§+"-§[_loc3_] = _loc5_;
                                                            }
                                                         }
                                                         addr324:
                                                         if(!_loc7_)
                                                         {
                                                            addr298:
                                                            §§push(_loc2_);
                                                            break loop1;
                                                         }
                                                         param1.readBytes(new ByteArray(),0,_loc2_);
                                                         return;
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr298);
                                                      addr116:
                                                   }
                                                   §§goto(addr324);
                                                   addr109:
                                                   if(_loc7_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr116);
                                                }
                                             }
                                             §§goto(addr232);
                                          }
                                          break;
                                       }
                                    }
                                    §§push(uint(§§pop() - (§§pop() + 4)));
                                    if(!_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr248);
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(4);
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              §§push(§§pop() === §§pop());
                              if(!_loc7_)
                              {
                                 §§goto(addr109);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr298);
                        }
                     }
                     break;
                  }
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§goto(addr324);
                     }
                  }
                  §§goto(addr324);
               }
               §§goto(addr298);
            }
         }
         §§goto(addr51);
      }
      
      function §2!u§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = uint(0);
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§6!k§);
            loop0:
            while(true)
            {
               §§push(§1"k§);
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
                                 §§push(this.§<"K§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§6!k§);
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§-Y§);
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         while(!(_loc4_ && this))
                                                         {
                                                            §§push(§§pop() << §§pop());
                                                            while(true)
                                                            {
                                                               §§push(192);
                                                               addr277:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  addr278:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop1;
                                                         addr268:
                                                      }
                                                      if(§§pop() != §§pop())
                                                      {
                                                         break;
                                                      }
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               param1.readBytes(this.§3#"§,0,this.§-"U§);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  this.§6"&§ = false;
                                                                  addr93:
                                                                  while(!_loc3_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        this.§3#"§.position = 0;
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr139:
                                                                           while(true)
                                                                           {
                                                                              this.§6"&§ = true;
                                                                              addr143:
                                                                              while(_loc3_ || _loc2_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                           addr139:
                                                                        }
                                                                        else if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr79:
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§7o§);
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc4_ && param1)
                                                                                             {
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc4_ && param1)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr362:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         addr362:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                continue loop4;
                                                                                                addr350:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.readBytes(this.§3#"§,0,this.§-"U§);
                                                                                                   addr340:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr139);
                                                                                                      §§goto(addr143);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             throw new Error("Adler32 checksum not found.");
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                this.§3#"§.writeByte(120);
                                                                                                addr316:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§]"I§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(~§§pop());
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                addr316:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr333);
                                                                                             }
                                                                                             §§goto(addr79);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr192:
                                                                              if(_loc3_)
                                                                              {
                                                                                 this.§3#"§.writeUnsignedInt(this.§;U§);
                                                                                 addr194:
                                                                                 break;
                                                                                 addr194:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(31);
                                                                                    §§push(120);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(8);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() << §§pop());
                                                                                          if(_loc3_ || param1)
                                                                                          {
                                                                                             addr240:
                                                                                             §§push(§§pop() | _loc2_);
                                                                                             §§push(31);
                                                                                          }
                                                                                          §§goto(addr240);
                                                                                       }
                                                                                       addr245:
                                                                                       §§push(uint(§§pop() + (§§pop() - §§pop() % §§pop())));
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr240);
                                                                                 }
                                                                                 §§goto(addr245);
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              do
                                                                              {
                                                                                 this.§3#"§.writeByte(_loc2_);
                                                                              }
                                                                              while(_loc4_ && this);
                                                                              
                                                                              param1.readBytes(this.§3#"§,2,this.§-"U§);
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    this.§3#"§.position = this.§3#"§.length;
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              §§goto(addr194);
                                                                              addr203:
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr93);
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              §§goto(addr139);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr349:
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        §§goto(addr203);
                                                                        §§goto(addr194);
                                                                     }
                                                                  }
                                                                  §§goto(addr211);
                                                               }
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr276);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr349);
                                       }
                                       throw new Error("Compression method " + this.§6!k§ + " is not supported.");
                                       addr347:
                                    }
                                    §§goto(addr362);
                                 }
                              }
                           }
                        }
                        §§goto(addr347);
                     }
                  }
               }
            }
         }
         §§goto(addr316);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§6"&§);
            loop0:
            for(; !§§pop(); if(!(_loc1_ || this))
            {
               continue;
            },if(§§pop())
            {
               if(!(_loc2_ && this))
               {
                  this.§3#"§.compress.apply(this.§3#"§,["deflate"]);
               }
               §§goto(addr175);
            },§§goto(addr103))
            {
               if(_loc1_ || _loc1_)
               {
                  if(this.§3#"§.length <= 0)
                  {
                     this.§-"U§ = 0;
                     loop1:
                     for(; !_loc2_; this.§`!+§ = 0,if(!_loc1_)
                     {
                        continue;
                     },if(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        addr175:
                        while(true)
                        {
                           this.§-"U§ = this.§3#"§.length;
                           §§goto(addr133);
                        }
                     },§§goto(addr77))
                     {
                        if(_loc1_ || _loc1_)
                        {
                           continue;
                        }
                        loop2:
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              loop3:
                              while(true)
                              {
                                 this.§3#"§.position = 0;
                                 addr77:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       this.§6"&§ = true;
                                       break loop1;
                                    }
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             break;
                                          }
                                          loop5:
                                          while(_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(§7o§);
                                                while(!§§pop())
                                                {
                                                   §§push(§&!P§);
                                                   if(_loc1_ || this)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             while(true)
                                             {
                                                this.§-"U§ = this.§3#"§.length;
                                                continue loop5;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(!(_loc1_ || _loc1_))
                                          {
                                          }
                                          addr133:
                                       }
                                       continue loop3;
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§3#"§.deflate();
                                             §§goto(addr193);
                                          }
                                          else
                                          {
                                             addr226:
                                             while(true)
                                             {
                                                this.§3#"§.position = 0;
                                                addr230:
                                                while(true)
                                                {
                                                   this.§`!+§ = this.§3#"§.length;
                                                }
                                             }
                                             addr226:
                                          }
                                          §§goto(addr200);
                                       }
                                       addr103:
                                       this.§3#"§.compress();
                                    }
                                    continue loop2;
                                 }
                              }
                              break loop0;
                              addr71:
                           }
                           §§goto(addr193);
                        }
                     }
                     while(true)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           §§goto(addr230);
                        }
                        §§goto(addr71);
                     }
                  }
                  §§goto(addr226);
               }
               §§goto(addr230);
            }
            return;
         }
         §§goto(addr226);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6"&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           this.§3#"§.position = 0;
                           addr163:
                           loop7:
                           while(true)
                           {
                              §§push(§7o§);
                              addr115:
                              loop8:
                              while(_loc2_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(§&!P§);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop())
                                    {
                                       continue loop6;
                                    }
                                    this.§3#"§.uncompress();
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc1_ && _loc2_)
                                       {
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§3#"§.length > 0);
                                                      break loop8;
                                                   }
                                                   addr170:
                                                }
                                             }
                                             else
                                             {
                                                addr126:
                                                while(true)
                                                {
                                                }
                                                addr126:
                                             }
                                          }
                                          continue loop6;
                                          addr108:
                                       }
                                       while(true)
                                       {
                                          this.§3#"§.position = 0;
                                          continue loop9;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§3#"§.inflate();
                                    §§goto(addr126);
                                 }
                              }
                              while(!(_loc1_ && this))
                              {
                                 continue loop0;
                                 §§goto(addr115);
                              }
                              addr169:
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr170);
                              }
                           }
                        }
                     }
                     return;
                     addr147:
                  }
                  §§goto(addr169);
               }
            }
         }
         §§goto(addr163);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipFile]" + "\n  name:");
         if(_loc2_ || this)
         {
            §§push(this.§-=§);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() + "\n  date:");
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() + this.§3A§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() + "\n  sizeCompressed:");
                        if(!(_loc1_ && this))
                        {
                           §§push(this.§-"U§);
                           if(_loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop() + "\n  sizeUncompressed:");
                                 if(_loc2_ || this)
                                 {
                                    §§push(this.§`!+§);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr102:
                                       §§push(§§pop() + §§pop());
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop() + "\n  versionHost:");
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§push(this.§!",§);
                                             if(!(_loc1_ && this))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() + "\n  versionNumber:");
                                                   if(_loc2_)
                                                   {
                                                      addr135:
                                                      §§push(this.§,J§);
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         addr154:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc2_)
                                                         {
                                                            addr157:
                                                            §§push(§§pop() + "\n  compressionMethod:");
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               addr166:
                                                               §§push(§§pop() + this.§6!k§);
                                                               if(_loc2_)
                                                               {
                                                                  addr171:
                                                                  §§push(§§pop() + "\n  encrypted:");
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(this.§<"K§);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr182:
                                                                           §§push(§§pop() + "\n  hasDataDescriptor:");
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §§push(this.§?#X§);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc1_ && this))
                                                                                 {
                                                                                    addr245:
                                                                                    §§push(§§pop() + "\n  hasCompressedPatchedData:");
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§push(this.§^!8§);
                                                                                    }
                                                                                    §§push(this.§?!+§);
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       §§push(16);
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          §§goto(addr285);
                                                                                       }
                                                                                       addr290:
                                                                                       §§push(§§pop() + "\n  adler32:");
                                                                                       if(!(_loc1_ && _loc2_))
                                                                                       {
                                                                                          addr285:
                                                                                          §§push(this.§;U§);
                                                                                          §§push(16);
                                                                                       }
                                                                                       return §§pop();
                                                                                       §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(§§pop() + "\n  filenameEncoding:");
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           addr226:
                                                                           §§push(§§pop() + this.§4!k§);
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              §§push(§§pop() + "\n  crc32:");
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                }
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr290);
                                    }
                                    §§goto(addr285);
                                 }
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr285);
               }
               §§goto(addr290);
            }
            §§goto(addr154);
         }
         §§goto(addr135);
      }
   }
}
