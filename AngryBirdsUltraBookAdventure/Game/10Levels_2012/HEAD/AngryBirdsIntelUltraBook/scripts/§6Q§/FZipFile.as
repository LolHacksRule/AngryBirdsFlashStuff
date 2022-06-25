package §6Q§
{
   import §@Y§.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const COMPRESSION_NONE:int = 0;
      
      public static const COMPRESSION_SHRUNK:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const COMPRESSION_IMPLODED:int = 6;
      
      public static const COMPRESSION_TOKENIZED:int = 7;
      
      public static const COMPRESSION_DEFLATED:int = 8;
      
      public static const COMPRESSION_DEFLATED_EXT:int = 9;
      
      public static const COMPRESSION_IMPLODED_PKWARE:int = 10;
      
      protected static var HAS_UNCOMPRESS:Boolean;
      
      protected static var HAS_INFLATE:Boolean;
      
      {
         var COMPRESSION_REDUCED_4:Boolean = false;
         var COMPRESSION_IMPLODED:Boolean = true;
         if(!COMPRESSION_REDUCED_4)
         {
            loop0:
            while(true)
            {
               COMPRESSION_NONE = 0;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     COMPRESSION_SHRUNK = 1;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           COMPRESSION_REDUCED_1 = 2;
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 COMPRESSION_REDUCED_2 = 3;
                                 while(true)
                                 {
                                    continue loop2;
                                    addr135:
                                    if(!(COMPRESSION_IMPLODED || COMPRESSION_REDUCED_1))
                                    {
                                       continue;
                                    }
                                    COMPRESSION_TOKENIZED = 7;
                                    while(true)
                                    {
                                       while(!COMPRESSION_REDUCED_4)
                                       {
                                          continue loop3;
                                          if(!(COMPRESSION_REDUCED_4 && COMPRESSION_NONE))
                                          {
                                             addr85:
                                             if(COMPRESSION_IMPLODED || COMPRESSION_NONE)
                                             {
                                                continue loop4;
                                             }
                                             addr133:
                                             addr164:
                                             while(COMPRESSION_IMPLODED)
                                             {
                                                §§goto(addr135);
                                                §§goto(addr85);
                                             }
                                             while(!COMPRESSION_REDUCED_4)
                                             {
                                                COMPRESSION_IMPLODED = 6;
                                                continue loop6;
                                             }
                                             while(!COMPRESSION_REDUCED_4)
                                             {
                                                if(!COMPRESSION_IMPLODED)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr157);
                                             }
                                             addr157:
                                             continue loop5;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(COMPRESSION_REDUCED_4 && COMPRESSION_REDUCED_1)
                  {
                     continue;
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr171);
      }
      
      protected var §9N§:int = 0;
      
      protected var §]$§:String = "2.0";
      
      protected var §3i§:int = 8;
      
      protected var §5!^§:Boolean = false;
      
      protected var §+!6§:int = -1;
      
      protected var §=t§:int = -1;
      
      protected var §,!G§:int = -1;
      
      protected var §3_§:Boolean = false;
      
      protected var §@!R§:Boolean = false;
      
      protected var §+u§:Date;
      
      protected var §8!i§:uint;
      
      protected var §=!c§:Boolean = false;
      
      protected var §-!U§:uint = 0;
      
      protected var §4!'§:uint = 0;
      
      protected var §<4§:String = "";
      
      protected var §&H§:String;
      
      protected var §,! §:Dictionary;
      
      protected var §3!k§:String = "";
      
      protected var §-!0§:ByteArray;
      
      var § e§:uint;
      
      var §"i§:uint = 0;
      
      var §,!T§:uint = 0;
      
      protected var §1f§:Boolean = false;
      
      protected var §,!6§:Function;
      
      public function FZipFile(filenameEncoding:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || filenameEncoding)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(!_loc2_)
               {
                  this.§,!6§ = this.§[!T§;
                  loop2:
                  for(; !_loc2_; while(!(_loc2_ && filenameEncoding))
                  {
                     this.§,! § = new Dictionary();
                     §§goto(addr111);
                  })
                  {
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              this.§&H§ = filenameEncoding;
                              while(true)
                              {
                                 continue loop2;
                                 addr78:
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 addr87:
                                 if(_loc2_ && filenameEncoding)
                                 {
                                    loop13:
                                    while(!_loc2_)
                                    {
                                       addr54:
                                       if(!(_loc2_ && filenameEncoding))
                                       {
                                          addr61:
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§goto(addr78);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§goto(addr61);
                                             }
                                             addr111:
                                          }
                                       }
                                       while(_loc3_)
                                       {
                                          this.§-!0§ = new ByteArray();
                                          while(true)
                                          {
                                             break loop13;
                                          }
                                          §§goto(addr54);
                                       }
                                       continue loop3;
                                       §§goto(addr87);
                                    }
                                    while(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             this.§-!0§.endian = Endian.BIG_ENDIAN;
                                             §§goto(addr52);
                                          }
                                          return;
                                          addr44:
                                          addr94:
                                       }
                                       continue loop2;
                                    }
                                    addr52:
                                    §§goto(addr100);
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr44);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function get §+X§() : Date
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return this.§+u§;
      }
      
      public function set §+X§(value:Date) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            do
            {
               §§push(this);
               if(!_loc3_)
               {
                  §§pop().§+u§ = value != null ? value : new Date();
                  while(_loc2_)
                  {
                     if(_loc2_ || value)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               §§goto(addr81);
            }
            while(!(_loc2_ || value));
            
            return;
         }
      }
      
      public function get §2!e§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return this.§<4§;
      }
      
      public function set §2!e§(value:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(!_loc3_)
               {
                  this.§<4§ = value;
                  while(_loc2_ || this)
                  {
                     if(_loc2_ || this)
                     {
                        return;
                        addr56:
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      function get §,%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.§3_§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc1_)
         {
            while(this.§1f§)
            {
               loop1:
               while(true)
               {
                  addr81:
                  while(true)
                  {
                     this.uncompress();
                     while(_loc2_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return this.§-!0§;
         }
         §§goto(addr81);
      }
      
      public function set content(data:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  this.§]!]§(data);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc2_ || data)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §]!]§(data:ByteArray, doCompress:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc5_ || doCompress)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!(_loc4_ && doCompress))
                  {
                     §§push(data == null);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc4_ && this)
                                    {
                                       break;
                                    }
                                    §§push(data.length > 0);
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    loop6:
                                    while(_loc5_ || data)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§-!0§.length = 0;
                                             while(true)
                                             {
                                                if(!(_loc4_ && doCompress))
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.§-!0§.position = 0;
                                                      if(_loc5_ || doCompress)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            loop10:
                                                            while(_loc5_)
                                                            {
                                                               if(!(_loc4_ && data))
                                                               {
                                                                  this.§1f§ = false;
                                                                  addr89:
                                                                  while(true)
                                                                  {
                                                                     addr82:
                                                                     while(!_loc5_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     addr62:
                                                                     addr205:
                                                                     while(true)
                                                                     {
                                                                        §§push(doCompress);
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     addr205:
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        addr228:
                                                                        while(true)
                                                                        {
                                                                           data.position = 0;
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr89:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                               while(true)
                                                               {
                                                                  data.readBytes(this.§-!0§,0,data.length);
                                                                  addr164:
                                                                  if(_loc4_ && doCompress)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  this.§=!c§ = false;
                                                                  if(!_loc5_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr62);
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   addr289:
                                                   break loop5;
                                                }
                                                while(true)
                                                {
                                                   this.§ e§ = ChecksumUtil.§=N§(this.§-!0§);
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr228);
                                                         }
                                                         addr227:
                                                      }
                                                      §§goto(addr205);
                                                      addr51:
                                                      if(!(_loc5_ || doCompress))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§goto(addr62);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             addr128:
                                          }
                                          §§goto(addr227);
                                       }
                                    }
                                    continue loop4;
                                 }
                                 return;
                              }
                              §§goto(addr225);
                           }
                        }
                     }
                  }
                  §§goto(addr289);
               }
            }
         }
         §§goto(addr89);
      }
      
      public function get §`b§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§]$§;
      }
      
      public function get §#!C§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return this.§"i§;
      }
      
      public function get §9^§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.§,!T§;
      }
      
      public function §,s§(recompress:Boolean = true, charset:String = "utf-8") : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         var str:* = null;
         if(_loc5_)
         {
            while(true)
            {
               loop1:
               for(; !(_loc4_ && recompress); loop3:
               while(_loc5_ || this)
               {
                  §§push(this.§1f§);
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           addr201:
                           while(_loc5_)
                           {
                              this.uncompress();
                              while(true)
                              {
                                 addr180:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           continue loop3;
                        }
                        addr200:
                     }
                     while(true)
                     {
                        this.§-!0§.position = 0;
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(charset);
                              loop10:
                              while(true)
                              {
                                 if(§§pop() != "utf-8")
                                 {
                                    §§push(this.§-!0§.readMultiByte(this.§-!0§.bytesAvailable,charset));
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(this.§-!0§.readUTFBytes(this.§-!0§.bytesAvailable));
                                    loop12:
                                    while(true)
                                    {
                                       str = §§pop();
                                       loop13:
                                       while(_loc5_)
                                       {
                                          while(true)
                                          {
                                             this.§-!0§.position = 0;
                                             loop15:
                                             while(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop15;
                                                   }
                                                   addr27:
                                                   §§push(str);
                                                   if(_loc5_ || charset)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop10;
                                                   addr89:
                                                }
                                                §§goto(addr216);
                                             }
                                             continue loop9;
                                             addr125:
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               })
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr185);
      }
      
      public function §%!R§(value:String, charset:String = "utf-8", doCompress:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(!(_loc5_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop8:
                     for(; !(_loc5_ && this); while(_loc6_ || this)
                     {
                        §§goto(addr129);
                     })
                     {
                        loop9:
                        while(true)
                        {
                           §§push(value);
                           loop10:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(_loc6_)
                              {
                                 §§push(!§§pop());
                                 loop11:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr228:
                                    if(_loc5_ && value)
                                    {
                                       continue;
                                    }
                                    §§push(Boolean(§§pop()));
                                    loop17:
                                    while(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop19:
                                             while(!_loc5_)
                                             {
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(charset);
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop() == "utf-8")
                                                   {
                                                      while(!(_loc5_ && charset))
                                                      {
                                                         while(true)
                                                         {
                                                            this.§-!0§.writeUTFBytes(value);
                                                            continue loop9;
                                                         }
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         this.§-!0§.position = 0;
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§1f§ = false;
                                                               continue loop8;
                                                               addr67:
                                                               if(!(_loc5_ && doCompress))
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr186:
                                                            if(!(_loc5_ && this))
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§ e§ = ChecksumUtil.§=N§(this.§-!0§);
                                                                  addr137:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!(_loc5_ && charset))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              this.§=!c§ = false;
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(_loc6_ || doCompress)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(doCompress);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§goto(addr228);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      break loop19;
                                                                                                   }
                                                                                                   addr257:
                                                                                                }
                                                                                             }
                                                                                             continue loop11;
                                                                                             addr221:
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             this.§,!T§ = this.§"i§ = this.§-!0§.length;
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                addr333:
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr53:
                                                                                          if(_loc6_ || charset)
                                                                                          {
                                                                                             if(_loc5_ && doCompress)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             §§goto(addr67);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop8;
                                                                                                §§goto(addr53);
                                                                                             }
                                                                                             addr172:
                                                                                          }
                                                                                       }
                                                                                       addr334:
                                                                                       return;
                                                                                       addr44:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§-!0§.length = 0;
                                                                                 addr291:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr208);
                                                                           }
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  continue loop1;
                                                                  §§goto(addr193);
                                                               }
                                                               addr193:
                                                               addr129:
                                                            }
                                                         }
                                                      }
                                                      addr200:
                                                   }
                                                   else
                                                   {
                                                      this.§-!0§.writeMultiByte(value,charset);
                                                      §§goto(addr172);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr44);
                                          }
                                          while(true)
                                          {
                                             §§push(value);
                                             continue loop10;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          §§goto(addr238);
                                       }
                                       §§goto(addr257);
                                    }
                                    addr252:
                                 }
                              }
                              §§goto(addr252);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr304);
      }
      
      public function §%f§(stream:IDataOutput, includeAdler32:Boolean, centralDir:Boolean = false, centralDirOffset:uint = 0) : uint
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         if(!_loc20_)
         {
         }
         var headerId:Object = null;
         var extraBytes:ByteArray = null;
         var compressed:Boolean = false;
         if(_loc20_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          addr275:
                                          addr136:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                while(!_loc19_)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   if(_loc20_ || stream)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          if(!(_loc19_ && this))
                                          {
                                             if(!_loc19_)
                                             {
                                                loop20:
                                                while(!_loc19_)
                                                {
                                                   stream.writeShort(this.§&H§ == "utf-8" ? int(2048) : int(0));
                                                   loop21:
                                                   while(true)
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         if(!_loc19_)
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               addr88:
                                                               if(_loc20_ || includeAdler32)
                                                               {
                                                                  if(!(_loc19_ && stream))
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           stream.writeShort(!!this.§1f§ ? int(COMPRESSION_DEFLATED) : int(COMPRESSION_NONE));
                                                                           addr68:
                                                                           while(true)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                        continue loop20;
                                                                        addr54:
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc19_ && stream)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  addr221:
                                                               }
                                                               while(_loc20_)
                                                               {
                                                                  §§goto(addr88);
                                                               }
                                                               continue loop1;
                                                               addr161:
                                                            }
                                                            while(_loc20_)
                                                            {
                                                               while(true)
                                                               {
                                                                  stream.writeShort(this.§9N§ << 8 | 20);
                                                                  addr181:
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(!_loc19_)
                                                         {
                                                            §§goto(addr136);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc20_ || includeAdler32)
                                                            {
                                                               addr199:
                                                               if(_loc19_ && includeAdler32)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(stream == null)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!centralDir)
                                                                        {
                                                                           stream.writeUnsignedInt(FZip.SIG_LOCAL_FILE_HEADER);
                                                                           §§goto(addr161);
                                                                        }
                                                                        addr256:
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  return 0;
                                                               }
                                                               addr259:
                                                               addr254:
                                                               continue loop2;
                                                            }
                                                            while(_loc20_)
                                                            {
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr256);
                                                            addr242:
                                                            stream.writeUnsignedInt(FZip.SIG_CENTRAL_FILE_HEADER);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                continue loop8;
                                                addr121:
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr259);
      }
      
      function parse(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            §§push(Boolean(stream.bytesAvailable));
            while(true)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr96:
                     while(!(_loc3_ && this))
                     {
                        §§push(Boolean(this.§,!6§(stream)));
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     continue loop0;
                  }
                  if(!(_loc3_ && stream))
                  {
                     if(_loc2_)
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr85);
               }
               §§goto(addr31);
            }
         }
      }
      
      protected function §extends§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc2_)
         {
         }
         while(_loc2_)
         {
         }
         return false;
      }
      
      protected function §[!T§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || stream)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(stream.bytesAvailable < 30)
                  {
                     §§push(false);
                     if(!(_loc3_ && this))
                     {
                        return §§pop();
                     }
                     break;
                  }
                  while(true)
                  {
                     continue loop0;
                     addr112:
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           this.§,!6§ = this.§,]§;
                           addr41:
                           §§push(true);
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr97);
      }
      
      protected function §,]§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || stream)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  if(stream.bytesAvailable < this.§-!U§ + this.§4!'§)
                  {
                     §§push(false);
                     if(!(_loc2_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  if(_loc2_ && _loc2_)
                  {
                     loop2:
                     for(; !_loc2_; if(_loc2_ && _loc2_)
                     {
                        continue;
                     },§§goto(addr99))
                     {
                        this.§]^§(stream);
                        loop3:
                        while(true)
                        {
                           loop4:
                           do
                           {
                              this.§,!6§ = this.§!!W§;
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                                 addr99:
                                 if(!(_loc2_ && stream))
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           while(_loc2_ && _loc2_);
                           
                        }
                     }
                     continue;
                  }
                  addr143:
                  continue loop0;
               }
               §§goto(addr49);
            }
         }
         addr49:
         true;
         return §§pop();
      }
      
      protected function §!!W§(stream:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(_loc4_ || this)
         {
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  continue loop0;
               }
            }
            addr51:
         }
         while(true)
         {
            if(!_loc4_)
            {
               continue;
            }
            if(!(_loc3_ && this))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr51);
            }
            §§goto(addr47);
         }
         §§push(true);
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var continueParsing:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            loop3:
            while(true)
            {
               §§push(this.§3_§);
               loop4:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(this.§"i§ != 0)
                     {
                        if(stream.bytesAvailable >= this.§"i§)
                        {
                           if(_loc3_ && this)
                           {
                           }
                           loop5:
                           while(true)
                           {
                              this.§4W§(stream);
                              loop6:
                              while(true)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          addr148:
                                          addr203:
                                          while(_loc4_)
                                          {
                                             this.§,!6§ = this.§extends§;
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             this.§,!6§ = this.§extends§;
                                             addr191:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(continueParsing);
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      addr101:
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continueParsing = §§pop();
                                                            for(; !_loc3_; if(!_loc3_)
                                                            {
                                                               continue loop6;
                                                            })
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr207:
                                                         while(true)
                                                         {
                                                            continueParsing = §§pop();
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr69:
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr207);
                                                         §§goto(addr69);
                                                      }
                                                      addr206:
                                                   }
                                                   return §§pop();
                                                   addr65:
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§goto(addr65);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         break loop10;
                                                      }
                                                      addr246:
                                                   }
                                                }
                                                loop21:
                                                while(true)
                                                {
                                                   this.§,!6§ = this.§extends§;
                                                   addr234:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         addr241:
                                                      }
                                                      continue loop21;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr206);
                                       §§goto(addr241);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr202:
                                 }
                                 §§goto(addr203);
                                 if(_loc3_ && stream)
                                 {
                                    continue;
                                 }
                                 if(_loc4_ || continueParsing)
                                 {
                                    §§goto(addr65);
                                 }
                                 §§goto(addr234);
                              }
                              continue loop3;
                           }
                        }
                        else
                        {
                           §§push(false);
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr246);
               }
            }
         }
         §§goto(addr167);
      }
      
      protected function §@J§(data:IDataInput) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || vSrc)
         {
         }
         if(!(_loc13_ && vSrc))
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 addr94:
                                 while(!_loc13_)
                                 {
                                    if(!_loc13_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           addr64:
                           if(_loc12_ || flag)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               while(_loc12_ || vSrc)
               {
                  while(true)
                  {
                     §§goto(addr81);
                  }
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §]^§(data:IDataInput) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || bytesLeft)
         {
         }
         var headerId:* = uint(0);
         var dataSize:* = uint(0);
         var extraBytes:ByteArray = null;
         if(!(_loc7_ && this))
         {
            while(true)
            {
               addr65:
               if(_loc7_ && headerId)
               {
                  continue;
               }
               addr72:
               if(false)
               {
                  addr74:
               }
               §§push(this.§4!'§);
               if(!(_loc7_ && this))
               {
                  §§push(uint(§§pop()));
               }
               var bytesLeft:* = §§pop();
               loop7:
               while(true)
               {
                  §§push(bytesLeft);
                  loop8:
                  while(true)
                  {
                     §§push(4);
                     loop9:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc6_ || bytesLeft))
                           {
                              continue loop7;
                           }
                           loop10:
                           for(; !_loc7_; if(!(_loc6_ || headerId))
                           {
                              continue;
                           },if(!_loc7_)
                           {
                              §§goto(addr252);
                           },§§goto(addr544))
                           {
                              §§push(uint(data.readUnsignedShort()));
                              loop11:
                              while(true)
                              {
                                 headerId = §§pop();
                                 loop12:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(uint(data.readUnsignedShort()));
                                       loop14:
                                       while(true)
                                       {
                                          dataSize = §§pop();
                                          if(!(_loc7_ && headerId))
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(dataSize);
                                                continue loop11;
                                                addr252:
                                                if(!(_loc6_ || this))
                                                {
                                                   continue;
                                                }
                                                this.§8!i§ = data.readUnsignedInt();
                                                if(_loc6_)
                                                {
                                                   this.§=!c§ = true;
                                                   if(_loc6_)
                                                   {
                                                      addr437:
                                                      §§push(bytesLeft);
                                                      if(!_loc7_)
                                                      {
                                                         addr440:
                                                         §§push(uint(§§pop() - (dataSize + 4)));
                                                         if(!(_loc7_ && this))
                                                         {
                                                            bytesLeft = §§pop();
                                                            if(!(_loc7_ && headerId))
                                                            {
                                                               addr460:
                                                               continue loop7;
                                                               addr460:
                                                            }
                                                            else
                                                            {
                                                               data.readBytes(new ByteArray(),0,bytesLeft);
                                                               addr538:
                                                               while(true)
                                                               {
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  if(_loc7_ && headerId)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(bytesLeft);
                                                                        if(!(_loc6_ || bytesLeft))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  addr544:
                                                                  addr544:
                                                                  addr544:
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr544);
                                                                        }
                                                                        addr543:
                                                                     }
                                                                     §§goto(addr544);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ || bytesLeft))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr538);
                                                                  }
                                                               }
                                                               addr538:
                                                            }
                                                         }
                                                      }
                                                      §§push(0);
                                                      if(!(_loc6_ || data))
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr529:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         break loop10;
                                                      }
                                                      §§goto(addr544);
                                                      addr139:
                                                   }
                                                   break loop10;
                                                   addr197:
                                                }
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(dataSize);
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   addr210:
                                                   if(_loc6_ || bytesLeft)
                                                   {
                                                      §§push(4);
                                                      if(!_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(§§pop() === §§pop());
                                                      if(_loc6_ || data)
                                                      {
                                                         if(_loc7_ && headerId)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               continue loop20;
                                                            }
                                                         }
                                                         addr290:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(dataSize);
                                                            if(_loc6_)
                                                            {
                                                               addr146:
                                                               if(!(_loc7_ && headerId))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop8;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr544);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(56026);
                                                         if(!(_loc7_ && bytesLeft))
                                                         {
                                                            §§push(§§pop() === §§pop());
                                                            if(_loc7_ && data)
                                                            {
                                                               continue loop20;
                                                            }
                                                            §§goto(addr290);
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      addr273:
                                                   }
                                                   §§goto(addr529);
                                                }
                                                §§goto(addr440);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr460);
                                          }
                                       }
                                       continue loop12;
                                       if(_loc7_ && this)
                                       {
                                          continue;
                                       }
                                       if(!(_loc7_ && headerId))
                                       {
                                          if(false)
                                          {
                                             §§goto(addr139);
                                          }
                                          else
                                          {
                                             extraBytes = new ByteArray();
                                             if(_loc6_ || headerId)
                                             {
                                                data.readBytes(extraBytes,0,dataSize);
                                                addr417:
                                                addr436:
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || data)
                                                   {
                                                      addr401:
                                                      this.§,! §[headerId] = extraBytes;
                                                      if(_loc6_ || headerId)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr399:
                                                            if(false)
                                                            {
                                                               §§goto(addr401);
                                                            }
                                                            §§goto(addr437);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      §§goto(addr417);
                                                   }
                                                   §§goto(addr436);
                                                }
                                                addr434:
                                                §§goto(addr434);
                                             }
                                             §§goto(addr399);
                                          }
                                       }
                                       §§goto(addr460);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr531);
                           }
                        }
                        §§goto(addr543);
                     }
                  }
               }
            }
         }
         loop1:
         while(true)
         {
            loop2:
            for(; this.§&H§ != "utf-8"; if(!(_loc6_ || this))
            {
               continue;
            },§§goto(addr65))
            {
               this.§<4§ = data.readMultiByte(this.§-!U§,this.§&H§);
               loop3:
               while(_loc6_)
               {
                  if(_loc6_ || bytesLeft)
                  {
                     if(!(_loc7_ && headerId))
                     {
                        continue loop2;
                     }
                     addr107:
                     while(true)
                     {
                        this.§<4§ = data.readUTFBytes(this.§-!U§);
                        break loop3;
                     }
                     continue loop1;
                  }
               }
               while(true)
               {
                  if(_loc7_)
                  {
                     break loop2;
                  }
                  §§goto(addr74);
               }
            }
            while(true)
            {
               if(_loc7_)
               {
                  continue loop1;
               }
               §§goto(addr107);
            }
         }
         §§goto(addr72);
      }
      
      function §4W§(data:IDataInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && _loc3_)
         {
         }
         var flg:* = uint(0);
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§3i§);
                  loop2:
                  while(true)
                  {
                     §§push(COMPRESSION_DEFLATED);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() === §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             addr469:
                                             §§push(this.§5!^§);
                                             if(_loc3_)
                                             {
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                §§push(!§§pop());
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr419:
                                                if(_loc4_ && flg)
                                                {
                                                   continue;
                                                }
                                                §§push(Boolean(§§pop()));
                                                loop41:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc4_ && this)
                                                      {
                                                         continue loop8;
                                                      }
                                                      loop42:
                                                      do
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(this.§=!c§);
                                                            if(_loc4_)
                                                            {
                                                               continue loop41;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc4_ && data))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     throw new Error("Adler32 checksum not found.");
                                                                  }
                                                                  loop43:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           this.§-!0§.writeByte(120);
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop31;
                                                                                 }
                                                                                 §§push(this.§,!G§);
                                                                                 if(_loc3_ || data)
                                                                                 {
                                                                                    §§push(~§§pop());
                                                                                 }
                                                                                 loop50:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(6);
                                                                                    loop48:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() << §§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(192);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() & §§pop());
                                                                                          }
                                                                                          addr354:
                                                                                       }
                                                                                       loop51:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             flg = §§pop();
                                                                                             loop46:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop30;
                                                                                                }
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(flg);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      §§push(31);
                                                                                                      §§push(120);
                                                                                                      if(!(_loc4_ && flg))
                                                                                                      {
                                                                                                         §§push(8);
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() << §§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr326:
                                                                                                               §§push(§§pop() | flg);
                                                                                                               §§push(31);
                                                                                                            }
                                                                                                            §§goto(addr326);
                                                                                                         }
                                                                                                         addr331:
                                                                                                         flg = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  this.§-!0§.writeByte(flg);
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ && data)
                                                                                                                     {
                                                                                                                        continue loop43;
                                                                                                                     }
                                                                                                                     loop37:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        data.readBytes(this.§-!0§,2,this.§"i§);
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || data)
                                                                                                                           {
                                                                                                                              loop32:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§-!0§.position = this.§-!0§.length;
                                                                                                                                 addr234:
                                                                                                                                 addr226:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ && data)
                                                                                                                                    {
                                                                                                                                       continue loop28;
                                                                                                                                    }
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr496:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(HAS_UNCOMPRESS);
                                                                                                                                          addr445:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             addr446:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc3_ || flg)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && flg))
                                                                                                                                                      {
                                                                                                                                                         continue loop42;
                                                                                                                                                      }
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop53:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§-!0§.writeUnsignedInt(this.§8!i§);
                                                                                                                                    addr214:
                                                                                                                                    addr223:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || flg)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       §§goto(addr234);
                                                                                                                                       continue loop53;
                                                                                                                                    }
                                                                                                                                    loop21:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§1f§ = true;
                                                                                                                                       addr195:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             break loop21;
                                                                                                                                          }
                                                                                                                                          §§goto(addr214);
                                                                                                                                       }
                                                                                                                                       §§goto(addr223);
                                                                                                                                    }
                                                                                                                                    addr53:
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§-!0§.position = 0;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || data)
                                                                                                                                                            {
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      continue loop53;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr223);
                                                                                                                                                }
                                                                                                                                                §§goto(addr195);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                loop16:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr112:
                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ && this)
                                                                                                                                                         {
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            this.§1f§ = false;
                                                                                                                                                            break loop18;
                                                                                                                                                         }
                                                                                                                                                         addr438:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr439:
                                                                                                                                                            while(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               data.readBytes(this.§-!0§,0,this.§"i§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr223);
                                                                                                                                                                  §§goto(addr441);
                                                                                                                                                               }
                                                                                                                                                               addr441:
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr138:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      continue loop38;
                                                                                                                                                   }
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                loop13:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || data)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && data))
                                                                                                                                                            {
                                                                                                                                                               data.readBytes(this.§-!0§,0,this.§"i§);
                                                                                                                                                               §§goto(addr138);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(HAS_INFLATE);
                                                                                                                                                                  addr412:
                                                                                                                                                                  addr494:
                                                                                                                                                                  while(_loc3_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr419);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr495);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§3i§);
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop51;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc3_ || flg))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop50;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(COMPRESSION_NONE);
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || flg)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 throw new Error("Compression method " + this.§3i§ + " is not supported.");
                                                                                                                                                                              }
                                                                                                                                                                              continue loop13;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop48;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr354);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                               addr468:
                                                                                                                                                            }
                                                                                                                                                            break loop18;
                                                                                                                                                         }
                                                                                                                                                         continue loop46;
                                                                                                                                                      }
                                                                                                                                                      addr180:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr496);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                break loop18;
                                                                                                                                             }
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop32;
                                                                                                                                             }
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                continue loop29;
                                                                                                                                             }
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr408);
                                                                                                                                       }
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                    while(!(_loc4_ && flg))
                                                                                                                                    {
                                                                                                                                       §§goto(addr53);
                                                                                                                                    }
                                                                                                                                    §§goto(addr180);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr439);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr326);
                                                                                                   }
                                                                                                   §§goto(addr331);
                                                                                                }
                                                                                                addr359:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr469);
                                                               }
                                                               §§goto(addr446);
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                         §§goto(addr438);
                                                      }
                                                      while(§§pop());
                                                      
                                                      §§pop();
                                                      §§goto(addr468);
                                                   }
                                                   §§goto(addr445);
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr494);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr226);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!(_loc1_ && this))
         {
            loop0:
            while(true)
            {
               §§push(this.§1f§);
               if(_loc2_ || _loc1_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(this.§-!0§.length <= 0)
                           {
                              this.§"i§ = 0;
                              loop4:
                              for(; _loc2_ || _loc2_; loop5:
                              while(true)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       this.§,!T§ = 0;
                                       while(_loc2_ || _loc1_)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr192);
                                    }
                                    break;
                                 }
                                 continue loop4;
                              },§§goto(addr150))
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(_loc2_ || this)
                                    {
                                       continue;
                                    }
                                    loop22:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          loop17:
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                this.§"i§ = this.§-!0§.length;
                                                loop9:
                                                while(true)
                                                {
                                                   this.§-!0§.position = 0;
                                                   addr163:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && this))
                                                            {
                                                               this.§1f§ = true;
                                                               break loop4;
                                                            }
                                                            addr282:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  this.§-!0§.compress.apply(this.§-!0§,["deflate"]);
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  addr245:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§-!0§.position = 0;
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        addr361:
                                                                        while(true)
                                                                        {
                                                                           this.§,!T§ = this.§-!0§.length;
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    for(§§push(HAS_INFLATE); !§§pop(); )
                                                                                    {
                                                                                       §§push(HAS_UNCOMPRESS);
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    addr319:
                                                                                    if(_loc1_ && _loc1_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(!(_loc2_ || _loc2_))
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr334:
                                                                                       while(_loc1_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                    addr206:
                                                                                    if(!(_loc2_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    this.§"i§ = this.§-!0§.length - 6;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          addr173:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§"i§ = this.§-!0§.length;
                                                                                             addr231:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                          addr234:
                                                                                       }
                                                                                       §§goto(addr213);
                                                                                    }
                                                                                    addr213:
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr375:
                                                               }
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         addr150:
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                }
                                                addr34:
                                                return;
                                                addr147:
                                                addr291:
                                             }
                                             else
                                             {
                                                addr374:
                                             }
                                             while(true)
                                             {
                                             }
                                             §§goto(addr375);
                                          }
                                       }
                                       §§goto(addr334);
                                    }
                                 }
                                 §§goto(addr163);
                              }
                              while(true)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc1_ && _loc2_)
                                       {
                                          §§goto(addr361);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr231);
                                 }
                                 else
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr206);
                                          }
                                          §§goto(addr291);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop15;
                                             }
                                             addr274:
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§goto(addr282);
                                             }
                                             continue loop15;
                                          }
                                          §§goto(addr147);
                                          addr222:
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                              }
                           }
                           §§goto(addr374);
                        }
                     }
                  }
                  §§goto(addr34);
               }
            }
         }
         §§goto(addr333);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               §§push(this.§1f§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(this.§-!0§.length > 0);
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr224:
                                 while(_loc2_ || _loc1_)
                                 {
                                 }
                                 continue loop2;
                                 loop12:
                                 while(_loc2_ || this)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    if(!§§pop())
                                    {
                                       §§push(HAS_UNCOMPRESS);
                                       if(_loc1_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc1_ && this))
                                       {
                                          if(!§§pop())
                                          {
                                             this.§-!0§.uncompress();
                                             loop20:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   addr129:
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      if(!(_loc1_ && this))
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && this))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     this.§-!0§.uncompress.apply(this.§-!0§,["deflate"]);
                                                                     addr154:
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        addr68:
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           this.§-!0§.position = 0;
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_ && _loc2_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 while(_loc2_)
                                                                                 {
                                                                                    this.§1f§ = false;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc1_ && this))
                                                                                       {
                                                                                          addr55:
                                                                                          if(!(_loc2_ || _loc1_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       break loop16;
                                                                                       §§goto(addr55);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr200:
                                                                              }
                                                                              §§goto(addr195);
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                        addr234:
                                                                        while(true)
                                                                        {
                                                                           this.§-!0§.position = 0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr171:
                                                            }
                                                            addr216:
                                                            while(true)
                                                            {
                                                               §§goto(addr200);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr171);
                                       }
                                       else
                                       {
                                          §§goto(addr224);
                                       }
                                    }
                                    §§goto(addr194);
                                 }
                              }
                           }
                        }
                     }
                     while(§§pop())
                     {
                        §§goto(addr233);
                     }
                     §§goto(addr24);
                  }
               }
            }
         }
         §§goto(addr216);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         §§push("[FZipFile]");
         if(_loc2_)
         {
            §§push("\n  name:");
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§<4§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc2_ || _loc2_)
                        {
                           §§push("\n  date:");
                           if(_loc2_ || _loc1_)
                           {
                              addr73:
                              if(_loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_)
                                 {
                                    addr79:
                                    §§push(§§pop() + this.§+u§);
                                    if(_loc2_)
                                    {
                                       §§push("\n  sizeCompressed:");
                                       if(!_loc1_)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc1_ && this))
                                             {
                                                §§push(this.§"i§);
                                                if(_loc2_ || this)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§push("\n  sizeUncompressed:");
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§push(this.§,!T§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push("\n  versionHost:");
                                                                     if(!_loc1_)
                                                                     {
                                                                        addr149:
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc1_)
                                                                           {
                                                                              addr155:
                                                                              §§push(this.§9N§);
                                                                              if(!(_loc1_ && this))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    §§push("\n  versionNumber:");
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       addr180:
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§push(this.§]$§);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push("\n  compressionMethod:");
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      addr216:
                                                                                                      if(!(_loc1_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            addr229:
                                                                                                            §§push(§§pop() + this.§3i§);
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               §§push("\n  encrypted:");
                                                                                                               if(!(_loc1_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     addr248:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr256:
                                                                                                                        §§push(this.§5!^§);
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              addr263:
                                                                                                                              §§push("\n  hasDataDescriptor:");
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 addr266:
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    addr269:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc2_ || this)
                                                                                                                                    {
                                                                                                                                       addr277:
                                                                                                                                       §§push(this.§3_§);
                                                                                                                                       if(!(_loc1_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc1_ && this))
                                                                                                                                          {
                                                                                                                                             addr294:
                                                                                                                                             §§push("\n  hasCompressedPatchedData:");
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr297:
                                                                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   addr305:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc2_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr315:
                                                                                                                                                      §§push(§§pop() + this.§@!R§);
                                                                                                                                                      if(!_loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr318:
                                                                                                                                                         §§push("\n  filenameEncoding:");
                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  addr339:
                                                                                                                                                                  §§push(§§pop() + this.§&H§);
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr342:
                                                                                                                                                                     §§push("\n  crc32:");
                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr350:
                                                                                                                                                                        if(!(_loc1_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr358:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!_loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr361:
                                                                                                                                                                              §§push(this.§ e§);
                                                                                                                                                                              if(!_loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr365:
                                                                                                                                                                                 §§push(16);
                                                                                                                                                                                 if(!(_loc1_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                                                                                                    if(!_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr387:
                                                                                                                                                                                       §§push("\n  adler32:");
                                                                                                                                                                                       if(!_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr391:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc1_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr399:
                                                                                                                                                                                             §§push(this.§8!i§);
                                                                                                                                                                                             §§push(16);
                                                                                                                                                                                          }
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                          addr390:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr391);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr399);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr399);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr391);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr391);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr387);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr350);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr399);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr361);
                                                                                                                                                }
                                                                                                                                                §§goto(addr358);
                                                                                                                                             }
                                                                                                                                             §§goto(addr390);
                                                                                                                                          }
                                                                                                                                          §§goto(addr399);
                                                                                                                                       }
                                                                                                                                       §§goto(addr315);
                                                                                                                                    }
                                                                                                                                    §§goto(addr318);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr297);
                                                                                                                           }
                                                                                                                           §§goto(addr294);
                                                                                                                        }
                                                                                                                        §§goto(addr315);
                                                                                                                     }
                                                                                                                     §§goto(addr361);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr358);
                                                                                                            }
                                                                                                            §§goto(addr263);
                                                                                                         }
                                                                                                         §§goto(addr342);
                                                                                                      }
                                                                                                      §§goto(addr269);
                                                                                                   }
                                                                                                   §§goto(addr358);
                                                                                                }
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                     }
                                                                     §§goto(addr180);
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr399);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr365);
                                             }
                                             §§goto(addr361);
                                          }
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr263);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr277);
                     }
                     §§goto(addr339);
                  }
                  §§goto(addr79);
               }
               §§goto(addr73);
            }
            §§goto(addr305);
         }
         §§goto(addr155);
      }
   }
}
