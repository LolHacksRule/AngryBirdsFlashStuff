package § !C§
{
   import §%X§.§=!;§;
   import flash.utils.*;
   
   public class §>!y§
   {
      
      public static const §%"!§:int = 0;
      
      public static const §7t§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §0!F§:int = 6;
      
      public static const §;%§:int = 7;
      
      public static const §3e§:int = 8;
      
      public static const §<z§:int = 9;
      
      public static const §,!!§:int = 10;
      
      protected static var §+!R§:Boolean;
      
      protected static var §=A§:Boolean;
      
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §%"!§ = 0;
            loop0:
            while(true)
            {
               §7t§ = 1;
               while(true)
               {
                  COMPRESSION_REDUCED_1 = 2;
                  while(_loc6_)
                  {
                     COMPRESSION_REDUCED_2 = 3;
                     loop3:
                     while(true)
                     {
                        COMPRESSION_REDUCED_3 = 4;
                        loop4:
                        while(true)
                        {
                           COMPRESSION_REDUCED_4 = 5;
                           while(true)
                           {
                              §0!F§ = 6;
                              while(_loc6_ || §>!y§)
                              {
                                 §;%§ = 7;
                                 while(_loc6_ || _loc3_)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                    if(_loc6_ || _loc1_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     loop9:
                     for(; !(_loc7_ && §>!y§); while(_loc6_ || _loc1_)
                     {
                        §,!!§ = 10;
                        if(!(_loc6_ || §>!y§))
                        {
                           continue;
                        }
                        §§goto(addr30);
                     })
                     {
                        while(true)
                        {
                           §<z§ = 9;
                           continue loop9;
                        }
                        §§goto(addr74);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §3e§ = 8;
            §§goto(addr62);
         }
      }
      
      protected var §7J§:int = 0;
      
      protected var §@0§:String = "2.0";
      
      protected var §8!4§:int = 8;
      
      protected var §=!c§:Boolean = false;
      
      protected var §4h§:int = -1;
      
      protected var §=I§:int = -1;
      
      protected var §@]§:int = -1;
      
      protected var §3! §:Boolean = false;
      
      protected var §;`§:Boolean = false;
      
      protected var §,!^§:Date;
      
      protected var §<!"§:uint;
      
      protected var §"">§:Boolean = false;
      
      protected var §<! §:uint = 0;
      
      protected var §?z§:uint = 0;
      
      protected var § if§:String = "";
      
      protected var §&^§:String;
      
      protected var §2!$§:Dictionary;
      
      protected var §!<§:String = "";
      
      protected var §0F§:ByteArray;
      
      var §-!D§:uint;
      
      var §&C§:uint = 0;
      
      var §2!3§:uint = 0;
      
      protected var §9X§:Boolean = false;
      
      protected var §'"%§:Function;
      
      public function §>!y§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'"%§ = this.§4M§;
            while(true)
            {
               super();
               addr95:
               while(true)
               {
                  this.§&^§ = param1;
               }
            }
            addr100:
         }
         loop2:
         while(true)
         {
            this.§2!$§ = new Dictionary();
            while(true)
            {
               if(_loc3_ && _loc3_)
               {
                  continue loop2;
               }
               if(_loc2_)
               {
                  this.§0F§ = new ByteArray();
                  continue;
               }
               §§goto(addr100);
            }
            §§goto(addr95);
         }
      }
      
      public function get §?!F§() : Date
      {
         return this.§,!^§;
      }
      
      public function set §?!F§(param1:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§pop().§,!^§ = param1 != null ? param1 : new Date();
               §§goto(addr52);
            }
            §§goto(addr45);
         }
         addr52:
      }
      
      public function get §8`§() : String
      {
         return this.§ if§;
      }
      
      public function set §8`§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ if§ = param1;
         }
      }
      
      function get §8!2§() : Boolean
      {
         return this.§3! §;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§9X§)
            {
               if(_loc1_ || this)
               {
                  addr48:
                  this.uncompress();
               }
            }
            return this.§0F§;
         }
         §§goto(addr48);
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=E§(param1);
         }
      }
      
      public function §=E§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1 == null);
            if(_loc4_ || param2)
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
                           this.§0F§.length = 0;
                           loop2:
                           while(true)
                           {
                              this.§0F§.position = 0;
                              loop3:
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§9X§ = false;
                                          loop5:
                                          while(true)
                                          {
                                             addr19:
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!_loc5_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§2!3§ = this.§&C§ = this.§0F§.length;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc4_ || param1)
                                                   {
                                                      this.compress();
                                                      if(_loc5_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue loop5;
                                                   continue loop2;
                                                   break;
                                                }
                                                addr159:
                                                while(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr160:
                                                   while(true)
                                                   {
                                                      §§goto(addr131);
                                                      continue loop11;
                                                   }
                                                }
                                                addr131:
                                             }
                                          }
                                       }
                                       addr55:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          param1.readBytes(this.§0F§,0,param1.length);
                                          while(true)
                                          {
                                             this.§-!D§ = §=!;§.§ !<§(this.§0F§);
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       §§goto(addr160);
                                       addr145:
                                    }
                                    addr183:
                                    return;
                                 }
                                 §§goto(addr97);
                              }
                           }
                        }
                        while(true)
                        {
                           param1.position = 0;
                           §§goto(addr145);
                        }
                     }
                     addr140:
                  }
               }
            }
            §§goto(addr159);
         }
         §§goto(addr53);
      }
      
      public function get §]!V§() : String
      {
         return this.§@0§;
      }
      
      public function get §4";§() : uint
      {
         return this.§&C§;
      }
      
      public function get §5!&§() : uint
      {
         return this.§2!3§;
      }
      
      public function §'!G§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§9X§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.uncompress();
                     addr180:
                     while(true)
                     {
                     }
                  }
                  addr178:
               }
               while(true)
               {
                  this.§0F§.position = 0;
                  loop4:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc4_ || this)
                     {
                        if(§§pop() != "utf-8")
                        {
                           §§push(this.§0F§.readMultiByte(this.§0F§.bytesAvailable,param2));
                           loop5:
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             this.§0F§.position = 0;
                                             addr90:
                                             addr27:
                                             while(true)
                                             {
                                                if(_loc4_ || param2)
                                                {
                                                   continue loop0;
                                                }
                                                addr143:
                                                while(true)
                                                {
                                                   §§push(this.§0F§.readUTFBytes(this.§0F§.bytesAvailable));
                                                   addr150:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr151:
                                                      while(!(_loc5_ && _loc3_))
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                }
                                             }
                                             addr27:
                                             §§push(_loc3_);
                                             if(_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr151);
                                    addr67:
                                    if(_loc5_ && param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr27);
                                 }
                                 continue loop4;
                              }
                              §§goto(addr150);
                           }
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr150);
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §&!E§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§0F§.length = 0;
            loop0:
            while(true)
            {
               this.§0F§.position = 0;
               loop1:
               while(true)
               {
                  this.§9X§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() == null);
                        loop4:
                        while(true)
                        {
                           §§push(!§§pop());
                           if(!(_loc6_ && param2))
                           {
                              if(§§pop())
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc6_)
                                    {
                                       return;
                                       addr162:
                                    }
                                    addr201:
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       addr108:
                                       §§push(§§pop().length > 0);
                                       while(_loc6_)
                                       {
                                          continue loop12;
                                          §§goto(addr108);
                                       }
                                       addr111:
                                       if(_loc5_ || param2)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr60:
                                                            addr60:
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§2!3§ = this.§&C§ = this.§0F§.length;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr111);
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(param2);
                                                      continue loop3;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr111);
                                          }
                                          addr120:
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 addr159:
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr159);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §0!@§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc10_:Object = null;
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
                     param1.writeUnsignedInt(§&4§.§'9§);
                     loop1:
                     for(; !_loc20_; while(_loc19_ || param1)
                     {
                        while(true)
                        {
                           param1.writeShort(this.§&^§ == "utf-8" ? 2048 : 0);
                           while(true)
                           {
                              if(!_loc20_)
                              {
                                 continue;
                              }
                              addr129:
                              while(true)
                              {
                                 param1.writeShort(this.§7J§ << 8 | 20);
                                 §§goto(addr114);
                              }
                           }
                           §§goto(addr147);
                        }
                     })
                     {
                        loop2:
                        while(true)
                        {
                           param1.writeShort(this.§7J§ << 8 | 20);
                           continue loop1;
                           addr114:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr125);
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         do
         {
            §§push(Boolean(param1.bytesAvailable));
            if(!(_loc3_ && param1))
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
            if(!(_loc2_ || this))
            {
               break;
            }
            §§push(Boolean(this.§'"%§(param1)));
            if(_loc3_)
            {
               return §§pop();
            }
            addr72:
         }
         while(§§pop());
         
         §§goto(addr72);
         §§push(this.§'"%§ === this.§#!0§);
      }
      
      protected function §#!0§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §4M§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.bytesAvailable >= 30)
            {
               do
               {
                  this.§'S§(param1);
                  if(this.§<! § + this.§?z§ > 0)
                  {
                     continue;
                  }
                  this.§'"%§ = this.§@!]§;
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr95:
                  }
                  §§push(true);
               }
               while(!_loc2_);
               
               this.§'"%§ = this.§&!0§;
               §§goto(addr95);
            }
            else
            {
               addr19:
               §§push(false);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr19);
      }
      
      protected function §&!0§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1.bytesAvailable >= this.§<! § + this.§?z§)
            {
               do
               {
                  this.§`9§(param1);
                  do
                  {
                     this.§'"%§ = this.§@!]§;
                  }
                  while(!(_loc3_ || _loc2_));
                  
               }
               while(!_loc3_);
               
               §§push(true);
               addr86:
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
         §§goto(addr86);
      }
      
      protected function §@!]§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         if(!_loc4_)
         {
            §§push(this.§3! §);
            do
            {
               if(!§§pop())
               {
                  if(this.§&C§ != 0)
                  {
                     if(param1.bytesAvailable < this.§&C§)
                     {
                        §§push(false);
                        loop1:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(_loc4_ && _loc2_)
                                 {
                                    loop2:
                                    for(; _loc3_ || _loc3_; this.§!!9§(param1))
                                    {
                                       this.§'"%§ = this.§#!0§;
                                       loop4:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             addr146:
                                             while(true)
                                             {
                                                this.§'"%§ = this.§#!0§;
                                                addr150:
                                                while(true)
                                                {
                                                   §§push(false);
                                                   addr124:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      break loop2;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   continue loop2;
                                                }
                                                addr117:
                                                addr117:
                                                while(true)
                                                {
                                                   this.§'"%§ = this.§#!0§;
                                                   break loop4;
                                                }
                                             }
                                             addr92:
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    while(_loc4_ && _loc2_)
                                    {
                                       §§goto(addr150);
                                       §§goto(addr124);
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr57);
                           }
                           §§goto(addr124);
                        }
                        continue;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr117);
               }
               §§goto(addr146);
            }
            while(!_loc3_);
            
            return §§pop();
         }
         §§goto(addr117);
      }
      
      protected function §'S§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc13_ || _loc2_)
         {
            this.§7J§ = _loc2_ >> 8;
            if(!(_loc12_ && _loc3_))
            {
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!_loc12_)
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§@0§ = §§pop();
            }
         }
         var _loc3_:uint = param1.readUnsignedShort();
         if(_loc13_ || this)
         {
            this.§8!4§ = param1.readUnsignedShort();
            loop0:
            while(true)
            {
               §§push(this);
               §§push((_loc3_ & 1) === 0);
               if(!(_loc12_ && _loc2_))
               {
                  §§push(!§§pop());
               }
               §§pop().§=!c§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push((_loc3_ & 8) === 0);
                  if(!_loc12_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§3! § = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push((_loc3_ & 32) === 0);
                     if(!(_loc12_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§;`§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc12_)
                        {
                           §§push(§§pop() & 800);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 if(§§pop() !== §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§&^§ = "utf-8";
                                       addr228:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr225:
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§8!4§);
                                    loop9:
                                    while(_loc13_)
                                    {
                                       §§push(§0!F§);
                                       while(true)
                                       {
                                          if(!(_loc13_ || this))
                                          {
                                             continue loop5;
                                          }
                                          if(§§pop() !== §§pop())
                                          {
                                             §§push(this.§8!4§);
                                             if(!(_loc13_ || param1))
                                             {
                                                continue loop9;
                                             }
                                             §§push(§3e§);
                                             if(_loc12_)
                                             {
                                                §§goto(addr154);
                                             }
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc12_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(_loc3_ & 6);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() >> 1);
                                                      }
                                                      §§pop().§@]§ = §§pop();
                                                   }
                                                   addr94:
                                                }
                                                while(true)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(false)
                                                         {
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr214);
                                                      }
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                             §§goto(addr280);
                                             continue loop9;
                                          }
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             if(!_loc12_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr225);
                                          }
                                          else
                                          {
                                             addr214:
                                             while(true)
                                             {
                                                if(!_loc13_)
                                                {
                                                   break loop8;
                                                }
                                                while(true)
                                                {
                                                   §§push(this);
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      §§push(_loc3_ & 4);
                                                      if(_loc13_ || _loc2_)
                                                      {
                                                         if(§§pop() !== 0)
                                                         {
                                                            addr132:
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
                                                      §§pop().§=I§ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      addr143:
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                             addr214:
                                          }
                                          §§goto(addr228);
                                       }
                                       §§push(uint(param1.readUnsignedShort()));
                                       break loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                              if(_loc12_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr280);
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
                     if(!_loc12_)
                     {
                        §§push(§§pop() >> 11);
                     }
                     var _loc8_:* = §§pop();
                     var _loc9_:* = _loc5_ & 31;
                     §§push(_loc5_ & 480);
                     if(!(_loc12_ && param1))
                     {
                        §§push(§§pop() >> 5);
                     }
                     var _loc10_:* = §§pop();
                     §§push(_loc5_ & 65024);
                     if(!(_loc12_ && _loc2_))
                     {
                        §§push(9);
                        if(!_loc12_)
                        {
                           addr349:
                           §§push(§§pop() >> §§pop());
                           if(!(_loc12_ && _loc3_))
                           {
                              §§push(1980);
                           }
                           var _loc11_:* = §§pop();
                           if(!_loc12_)
                           {
                              this.§,!^§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                              this.§-!D§ = param1.readUnsignedInt();
                              this.§&C§ = param1.readUnsignedInt();
                              addr406:
                              if(!_loc12_)
                              {
                                 this.§2!3§ = param1.readUnsignedInt();
                                 addr390:
                                 if(!_loc12_)
                                 {
                                    this.§<! § = param1.readUnsignedShort();
                                    addr377:
                                    if(_loc13_ || _loc3_)
                                    {
                                       this.§?z§ = param1.readUnsignedShort();
                                       if(_loc13_)
                                       {
                                          if(_loc12_ && _loc3_)
                                          {
                                             §§goto(addr406);
                                          }
                                          return;
                                          addr371:
                                       }
                                       §§goto(addr377);
                                    }
                                    §§goto(addr390);
                                 }
                                 §§goto(addr406);
                              }
                              addr429:
                              §§goto(addr429);
                           }
                           §§goto(addr371);
                        }
                        §§push(int(§§pop() + §§pop()));
                     }
                     §§goto(addr349);
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      protected function §`9§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(!_loc7_)
         {
            if(this.§&^§ == "utf-8")
            {
               if(!_loc7_)
               {
                  addr33:
                  this.§ if§ = param1.readUTFBytes(this.§<! §);
                  if(_loc7_ && param1)
                  {
                  }
                  addr55:
                  §§push(this.§?z§);
                  if(_loc6_)
                  {
                     §§push(uint(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(4);
                           if(_loc6_ || _loc2_)
                           {
                              loop2:
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       addr289:
                                       §§push(_loc2_);
                                       break loop1;
                                    }
                                    break;
                                 }
                                 §§push(uint(param1.readUnsignedShort()));
                                 if(!_loc7_)
                                 {
                                    _loc3_ = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(uint(param1.readUnsignedShort()));
                                       if(_loc6_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && this))
                                          {
                                             _loc4_ = §§pop();
                                             if(!(_loc7_ && this))
                                             {
                                                §§push(_loc2_);
                                                if(!_loc7_)
                                                {
                                                   addr164:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         throw new Error("Parse error in file " + this.§ if§ + ": Extra field data size too big.");
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§push(_loc3_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(56026);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() === §§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop6:
                                                                  while(!_loc7_)
                                                                  {
                                                                     addr128:
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(4);
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() === §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    this.§<!"§ = param1.readUnsignedInt();
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       this.§"">§ = true;
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             addr241:
                                                                                             §§push(_loc2_);
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                addr250:
                                                                                                §§push(uint(§§pop() - (_loc4_ + 4)));
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr261:
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop0;
                                                                                       addr102:
                                                                                    }
                                                                                    break loop3;
                                                                                 }
                                                                                 §§goto(addr102);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    addr202:
                                                                                    §§push(0);
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       break loop5;
                                                                                    }
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          _loc5_ = new ByteArray();
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             param1.readBytes(_loc5_,0,_loc4_);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                          this.§2!$§[_loc3_] = _loc5_;
                                                                                          §§goto(addr241);
                                                                                       }
                                                                                       break loop2;
                                                                                    }
                                                                                    §§goto(addr241);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr125:
                                                            }
                                                            §§goto(addr87);
                                                         }
                                                         §§goto(addr125);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr202);
                                                }
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr164);
                                       }
                                       else
                                       {
                                          §§goto(addr289);
                                       }
                                    }
                                    §§goto(addr314);
                                 }
                                 §§goto(addr250);
                                 §§goto(addr289);
                              }
                              §§goto(addr308);
                           }
                           break;
                        }
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              addr308:
                              param1.readBytes(new ByteArray(),0,_loc2_);
                              §§goto(addr314);
                           }
                        }
                        addr314:
                        return;
                     }
                     §§goto(addr289);
                  }
               }
            }
            else
            {
               this.§ if§ = param1.readMultiByte(this.§<! §,this.§&^§);
            }
            §§goto(addr55);
         }
         §§goto(addr33);
      }
      
      function §!!9§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         if(_loc4_)
         {
            §§push(this.§8!4§);
            loop0:
            while(true)
            {
               §§push(§3e§);
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
                                 §§push(this.§=!c§);
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(§+!R§);
                                                loop29:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_ && this)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr374:
                                                                  while(true)
                                                                  {
                                                                     §§push(§=A§);
                                                                     addr311:
                                                                     while(!_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               while(!§§pop())
                                                               {
                                                                  §§push(this.§"">§);
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        continue loop29;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        throw new Error("Adler32 checksum not found.");
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§0F§.writeByte(120);
                                                                        addr308:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§@]§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(~§§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                           §§push(6);
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() << §§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(192);
                                                                           }
                                                                           addr271:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() & §§pop());
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr304:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr311);
                                                                  }
                                                               }
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  param1.readBytes(this.§0F§,0,this.§&C§);
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        this.§9X§ = true;
                                                                        while(_loc4_)
                                                                        {
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              this.§0F§.position = 0;
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    addr41:
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.§0F§.position = this.§0F§.length;
                                                                                             addr169:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   break loop20;
                                                                                                }
                                                                                                if(!(_loc3_ && param1))
                                                                                                {
                                                                                                   this.§0F§.writeUnsignedInt(this.§<!"§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   addr161:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr374);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr41);
                                                                                       }
                                                                                       addr197:
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break loop22;
                                                                                    }
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       this.§9X§ = false;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             addr220:
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(31);
                                                                                             §§push(120);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr249:
                                                                                                §§push(8);
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() << §§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr242:
                                                                                                      §§push(§§pop() | _loc2_);
                                                                                                   }
                                                                                                   §§push(31);
                                                                                                }
                                                                                                _loc2_ = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                                                break loop20;
                                                                                             }
                                                                                             §§goto(addr242);
                                                                                          }
                                                                                          §§goto(addr249);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          §§goto(addr281);
                                                                                          §§goto(addr220);
                                                                                       }
                                                                                       addr281:
                                                                                       addr280:
                                                                                    }
                                                                                 }
                                                                                 addr124:
                                                                              }
                                                                              else if(_loc4_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§goto(addr169);
                                                                                    }
                                                                                    §§goto(addr161);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          param1.readBytes(this.§0F§,0,this.§&C§);
                                                                                          §§goto(addr124);
                                                                                       }
                                                                                       addr210:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.readBytes(this.§0F§,2,this.§&C§);
                                                                                          §§goto(addr197);
                                                                                          continue loop25;
                                                                                       }
                                                                                    }
                                                                                    addr110:
                                                                                 }
                                                                                 §§goto(addr169);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                        §§goto(addr308);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§0F§.writeByte(_loc2_);
                                                                        §§goto(addr210);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop29;
                                                         }
                                                         continue loop3;
                                                         addr354:
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             §§goto(addr374);
                                          }
                                          else
                                          {
                                             §§push(this.§8!4§);
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§%"!§);
                                             if(!(_loc3_ && param1))
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   throw new Error("Compression method " + this.§8!4§ + " is not supported.");
                                                }
                                                §§goto(addr110);
                                             }
                                          }
                                          §§goto(addr271);
                                       }
                                       continue loop1;
                                       addr334:
                                    }
                                 }
                                 §§goto(addr354);
                              }
                           }
                        }
                        §§goto(addr334);
                     }
                  }
               }
            }
         }
         §§goto(addr204);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§9X§);
            loop0:
            for(; !§§pop(); if(!(_loc2_ || _loc2_))
            {
               continue;
            },if(§§pop())
            {
               §§goto(addr153);
            },this.§0F§.compress(),§§goto(addr122))
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     if(this.§0F§.length <= 0)
                     {
                        this.§&C§ = 0;
                        loop12:
                        while(!_loc1_)
                        {
                           this.§2!3§ = 0;
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!(_loc1_ && this))
                              {
                                 if(!_loc1_)
                                 {
                                    break loop0;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§=A§);
                                    while(!§§pop())
                                    {
                                       §§push(§+!R§);
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    addr179:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          this.§0F§.deflate();
                                          loop6:
                                          while(true)
                                          {
                                             this.§&C§ = this.§0F§.length;
                                             addr175:
                                             while(true)
                                             {
                                                addr82:
                                                addr108:
                                                while(true)
                                                {
                                                   this.§0F§.position = 0;
                                                   addr87:
                                                   while(!_loc1_)
                                                   {
                                                      this.§9X§ = true;
                                                      break loop12;
                                                   }
                                                   break;
                                                }
                                                addr122:
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   §§goto(addr82);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      this.§&C§ = this.§0F§.length - 6;
                                                      continue;
                                                   }
                                                   continue loop6;
                                                }
                                                addr212:
                                                while(true)
                                                {
                                                   this.§0F§.position = 0;
                                                }
                                             }
                                          }
                                       }
                                       addr216:
                                       while(true)
                                       {
                                          this.§2!3§ = this.§0F§.length;
                                          continue loop13;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr82);
                              }
                              addr138:
                           }
                           §§goto(addr87);
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr179);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§0F§.compress.apply(this.§0F§,["deflate"]);
                                    addr161:
                                    while(true)
                                    {
                                       if(!(_loc1_ && this))
                                       {
                                          this.§&C§ = this.§0F§.length;
                                          §§goto(addr138);
                                       }
                                    }
                                 }
                                 addr153:
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr161);
                        }
                     }
                     §§goto(addr212);
                  }
                  addr197:
               }
               §§goto(addr216);
            }
            return;
         }
         §§goto(addr197);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§9X§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     addr184:
                     while(true)
                     {
                        §§pop();
                        addr185:
                        while(true)
                        {
                           §§push(this.§0F§.length > 0);
                        }
                     }
                     addr184:
                  }
                  loop1:
                  while(true)
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop1;
                           }
                           this.§0F§.position = 0;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(§=A§);
                           while(!§§pop())
                           {
                              §§push(§+!R§);
                              if(_loc1_ && this)
                              {
                                 continue;
                              }
                              if(_loc1_ && this)
                              {
                                 break loop3;
                              }
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 if(§§pop())
                                 {
                                    continue loop3;
                                 }
                                 this.§0F§.uncompress();
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc1_ && this)
                                    {
                                       continue loop3;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       this.§0F§.position = 0;
                                       loop7:
                                       while(_loc2_ || _loc1_)
                                       {
                                          while(true)
                                          {
                                             this.§9X§ = false;
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                continue loop5;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       addr139:
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr184);
                              }
                           }
                           while(true)
                           {
                              this.§0F§.inflate();
                              §§goto(addr139);
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr184);
            }
         }
         §§goto(addr69);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipFile]" + "\n  name:");
         if(_loc1_ || this)
         {
            §§push(this.§ if§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + §§pop());
               if(_loc1_)
               {
                  §§push(§§pop() + "\n  date:");
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() + this.§,!^§);
                     if(_loc1_ || this)
                     {
                        §§push(§§pop() + "\n  sizeCompressed:");
                        if(_loc1_)
                        {
                           addr61:
                           §§push(this.§&C§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc1_)
                              {
                                 addr68:
                                 §§push(§§pop() + "\n  sizeUncompressed:");
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(this.§2!3§);
                                    if(_loc1_ || this)
                                    {
                                       addr86:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() + "\n  versionHost:");
                                          if(!(_loc2_ && this))
                                          {
                                             addr98:
                                             §§push(this.§7J§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc2_ && this))
                                                {
                                                   §§push(§§pop() + "\n  versionNumber:");
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§@0§);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr133:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc1_ || this)
                                                         {
                                                            §§push(§§pop() + "\n  compressionMethod:");
                                                            if(!_loc2_)
                                                            {
                                                               addr147:
                                                               §§push(§§pop() + this.§8!4§);
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  addr155:
                                                                  §§push(§§pop() + "\n  encrypted:");
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(this.§=!c§);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           addr171:
                                                                           §§push(§§pop() + "\n  hasDataDescriptor:");
                                                                           if(_loc2_ && _loc1_)
                                                                           {
                                                                           }
                                                                           addr254:
                                                                           return §§pop() + this.§<!"§.toString(16);
                                                                           addr249:
                                                                        }
                                                                        §§push(this.§3! §);
                                                                        if(_loc1_)
                                                                        {
                                                                           addr184:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              addr192:
                                                                              §§push(§§pop() + "\n  hasCompressedPatchedData:");
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr198:
                                                                                 §§push(§§pop() + this.§;`§);
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() + "\n  filenameEncoding:");
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr210:
                                                                                       §§push(§§pop() + this.§&^§);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr215:
                                                                                          §§push(§§pop() + "\n  crc32:");
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             addr224:
                                                                                             §§push(this.§-!D§);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr228:
                                                                                                §§push(16);
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() + "\n  adler32:");
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§goto(addr249);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr254);
                                                                                    }
                                                                                    §§goto(addr224);
                                                                                 }
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                     §§goto(addr184);
                                                                  }
                                                                  §§goto(addr254);
                                                               }
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr98);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr192);
               }
               §§goto(addr68);
            }
            §§goto(addr133);
         }
         §§goto(addr224);
      }
   }
}
