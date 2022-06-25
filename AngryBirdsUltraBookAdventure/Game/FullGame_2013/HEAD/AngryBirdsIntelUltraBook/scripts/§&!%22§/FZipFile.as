package §&!"§
{
   import §2!#§.ChecksumUtil;
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
               loop1:
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
                              continue loop4;
                              addr105:
                              if(COMPRESSION_REDUCED_4 && COMPRESSION_REDUCED_1)
                              {
                                 continue;
                              }
                              COMPRESSION_DEFLATED = 8;
                              loop17:
                              while(COMPRESSION_IMPLODED || COMPRESSION_SHRUNK)
                              {
                                 loop18:
                                 while(true)
                                 {
                                    if(!(COMPRESSION_REDUCED_4 && COMPRESSION_REDUCED_1))
                                    {
                                       if(COMPRESSION_REDUCED_4)
                                       {
                                          break;
                                       }
                                       COMPRESSION_DEFLATED_EXT = 9;
                                       loop19:
                                       for(; !COMPRESSION_REDUCED_4; while(true)
                                       {
                                          if(!(COMPRESSION_REDUCED_4 && COMPRESSION_NONE))
                                          {
                                             if(!COMPRESSION_REDUCED_4)
                                             {
                                                if(COMPRESSION_REDUCED_4)
                                                {
                                                   continue loop4;
                                                }
                                                if(COMPRESSION_REDUCED_4)
                                                {
                                                   continue;
                                                }
                                                if(!COMPRESSION_REDUCED_4)
                                                {
                                                   continue loop18;
                                                }
                                                §§goto(addr53);
                                             }
                                             break;
                                          }
                                          continue loop19;
                                       },§§goto(addr150))
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             if(!(COMPRESSION_REDUCED_4 && COMPRESSION_NONE))
                                             {
                                                addr60:
                                                if(COMPRESSION_REDUCED_4 && COMPRESSION_NONE)
                                                {
                                                   break;
                                                }
                                                if(!COMPRESSION_REDUCED_4)
                                                {
                                                   while(true)
                                                   {
                                                      COMPRESSION_IMPLODED_PKWARE = 10;
                                                      continue loop19;
                                                   }
                                                   continue loop18;
                                                   addr35:
                                                }
                                                continue loop0;
                                             }
                                             addr134:
                                             loop12:
                                             while(COMPRESSION_IMPLODED || COMPRESSION_REDUCED_1)
                                             {
                                                if(COMPRESSION_REDUCED_4)
                                                {
                                                   continue loop3;
                                                }
                                                if(COMPRESSION_REDUCED_4)
                                                {
                                                   continue loop2;
                                                }
                                                COMPRESSION_IMPLODED = 6;
                                                while(true)
                                                {
                                                   if(!COMPRESSION_REDUCED_4)
                                                   {
                                                      break loop18;
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   COMPRESSION_REDUCED_3 = 4;
                                                   break loop12;
                                                }
                                             }
                                             while(true)
                                             {
                                                break loop20;
                                                §§goto(addr134);
                                             }
                                          }
                                          while(true)
                                          {
                                             COMPRESSION_REDUCED_4 = 5;
                                             addr150:
                                             while(true)
                                             {
                                                §§goto(addr134);
                                             }
                                             §§goto(addr60);
                                          }
                                       }
                                       continue loop17;
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       if(COMPRESSION_IMPLODED)
                                       {
                                          §§goto(addr105);
                                       }
                                       else
                                       {
                                          while(COMPRESSION_IMPLODED)
                                          {
                                             continue loop16;
                                          }
                                          §§goto(addr129);
                                          addr117:
                                       }
                                    }
                                    continue loop5;
                                 }
                                 while(COMPRESSION_IMPLODED)
                                 {
                                    COMPRESSION_TOKENIZED = 7;
                                    §§goto(addr117);
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§goto(addr161);
                                 §§goto(addr93);
                              }
                              addr93:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      protected var §;!T§:int = 0;
      
      protected var §4!,§:String = "2.0";
      
      protected var §-?§:int = 8;
      
      protected var §+s§:Boolean = false;
      
      protected var §5!Z§:int = -1;
      
      protected var §@e§:int = -1;
      
      protected var §!!U§:int = -1;
      
      protected var §%t§:Boolean = false;
      
      protected var §]N§:Boolean = false;
      
      protected var §,!`§:Date;
      
      protected var §?!b§:uint;
      
      protected var §+!0§:Boolean = false;
      
      protected var §1!^§:uint = 0;
      
      protected var §`!_§:uint = 0;
      
      protected var §1@§:String = "";
      
      protected var §0@§:String;
      
      protected var §0U§:Dictionary;
      
      protected var §@w§:String = "";
      
      protected var §2n§:ByteArray;
      
      var §'A§:uint;
      
      var §4!7§:uint = 0;
      
      var §3![§:uint = 0;
      
      protected var §3o§:Boolean = false;
      
      protected var §3Z§:Function;
      
      public function FZipFile(filenameEncoding:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || filenameEncoding)
         {
         }
         if(!(_loc3_ && filenameEncoding))
         {
            while(true)
            {
            }
            addr175:
         }
         loop1:
         while(true)
         {
            this.§3Z§ = this.§#z§;
            while(true)
            {
               loop3:
               for(; !_loc3_; loop10:
               for(; _loc2_ || filenameEncoding; if(_loc3_ && _loc3_)
               {
                  continue;
               },§§goto(addr63))
               {
                  loop11:
                  while(true)
                  {
                     this.§2n§.endian = Endian.BIG_ENDIAN;
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop10;
                        }
                        continue loop11;
                        addr82:
                        if(_loc2_ || _loc2_)
                        {
                           return;
                        }
                     }
                     addr128:
                     loop7:
                     while(true)
                     {
                        this.§0U§ = new Dictionary();
                        loop8:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop8;
                              }
                              if(!(_loc2_ || _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr110);
                              addr63:
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 continue loop7;
                              }
                              §§goto(addr82);
                           }
                           continue loop1;
                        }
                        §§goto(addr157);
                     }
                  }
               })
               {
                  super();
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§0@§ = filenameEncoding;
                        continue loop1;
                        addr110:
                        if(!(_loc3_ && _loc2_))
                        {
                           this.§2n§ = new ByteArray();
                           continue loop3;
                        }
                     }
                  }
                  §§goto(addr175);
               }
            }
         }
      }
      
      public function get §^!J§() : Date
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return this.§,!`§;
      }
      
      public function set §^!J§(value:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(_loc2_ && this)
         {
         }
         do
         {
            do
            {
               §§push(this);
               if(!_loc2_)
               {
                  if(value == null)
                  {
                     §§push(new Date());
                     continue;
                  }
               }
            }
            while(§§pop().§,!`§ = §§pop(), while(!_loc3_)
            {
            }, _loc2_);
            
         }
         while(!_loc3_);
         
      }
      
      public function get §4F§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.§1@§;
      }
      
      public function set §4F§(value:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || value)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            do
            {
               while(true)
               {
                  this.§1@§ = value;
                  while(!_loc2_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc3_ || value));
            
         }
      }
      
      function get §!!N§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.§%t§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            for(; this.§3o§; if(!(_loc2_ || _loc1_))
            {
               continue;
            })
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.uncompress();
                     loop3:
                     while(_loc2_)
                     {
                        continue loop0;
                        while(true)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(!(_loc1_ && this))
                              {
                                 break loop0;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            return this.§2n§;
         }
         §§goto(addr85);
      }
      
      public function set content(data:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(_loc2_ || data)
         {
            while(true)
            {
            }
            addr81:
         }
         loop1:
         while(true)
         {
            this.§=!'§(data);
            while(!_loc3_)
            {
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break loop1;
               }
               §§goto(addr81);
            }
         }
      }
      
      public function §=!'§(data:ByteArray, doCompress:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(data == null);
                     if(!_loc5_)
                     {
                        §§push(!§§pop());
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc5_ && doCompress))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 loop17:
                                 while(true)
                                 {
                                    §§pop();
                                    addr222:
                                    while(true)
                                    {
                                       §§push(data.length > 0);
                                       if(_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       addr197:
                                       while(!_loc5_)
                                       {
                                       }
                                       continue loop17;
                                    }
                                 }
                                 addr221:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§2n§.length = 0;
                                    if(_loc4_)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             this.§2n§.position = 0;
                                             loop6:
                                             while(true)
                                             {
                                                if(_loc4_ || doCompress)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         this.§3o§ = false;
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ || data))
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(doCompress);
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr268:
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              this.compress();
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           this.§3![§ = this.§4!7§ = this.§2n§.length;
                                                                           if(!(_loc5_ && data))
                                                                           {
                                                                              §§goto(addr268);
                                                                           }
                                                                           break;
                                                                           §§goto(addr268);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr197);
                                                                        }
                                                                     }
                                                                     addr269:
                                                                     return;
                                                                     addr43:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              data.readBytes(this.§2n§,0,data.length);
                                                                              if(_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§'A§ = ChecksumUtil.§?p§(this.§2n§);
                                                                                    addr159:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          this.§+!0§ = false;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§goto(addr43);
                                                                                          }
                                                                                          addr138:
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                 }
                                                                                 addr162:
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr201:
                                                                        while(true)
                                                                        {
                                                                           addr202:
                                                                           while(true)
                                                                           {
                                                                              data.position = 0;
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr162);
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr201);
                              }
                           }
                        }
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr268);
               }
            }
         }
         §§goto(addr222);
      }
      
      public function get § d§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§4!,§;
      }
      
      public function get §;!H§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§4!7§;
      }
      
      public function get §]!J§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.§3![§;
      }
      
      public function §^!-§(recompress:Boolean = true, charset:String = "utf-8") : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         var str:* = null;
         if(!(_loc4_ && recompress))
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
                        §§push(this.§3o§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.uncompress();
                                    while(_loc5_)
                                    {
                                       while(true)
                                       {
                                       }
                                       addr156:
                                       if(!(_loc4_ && charset))
                                       {
                                          while(!_loc4_)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                this.§2n§.position = 0;
                                                loop17:
                                                while(true)
                                                {
                                                   addr118:
                                                   addr32:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr202:
                                                      while(true)
                                                      {
                                                         §§push(this.§2n§.readUTFBytes(this.§2n§.bytesAvailable));
                                                         addr172:
                                                         while(!_loc4_)
                                                         {
                                                            str = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               addr211:
                                                               while(true)
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(charset);
                                                                     break loop16;
                                                                     addr147:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ || charset))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr156);
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break loop16;
                                                      }
                                                   }
                                                   addr32:
                                                   §§push(str);
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   addr146:
                                                   while(true)
                                                   {
                                                      str = §§pop();
                                                      §§goto(addr147);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop() == "utf-8")
                                                {
                                                   continue loop3;
                                                }
                                                §§goto(addr146);
                                                §§push(this.§2n§.readMultiByte(this.§2n§.bytesAvailable,charset));
                                             }
                                             addr73:
                                             if(!(_loc5_ || str))
                                             {
                                                continue;
                                             }
                                             addr80:
                                             if(!(_loc4_ && charset))
                                             {
                                                addr50:
                                                if(_loc4_ && str)
                                                {
                                                   loop20:
                                                   for(; !_loc4_; §§goto(addr50))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.compress();
                                                      while(!_loc4_)
                                                      {
                                                         §§goto(addr73);
                                                         §§goto(addr80);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop20;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   continue loop6;
                                                }
                                                if(_loc5_)
                                                {
                                                   if(!(_loc4_ && str))
                                                   {
                                                      §§goto(addr32);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr118);
                                             }
                                             §§goto(addr71);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§2n§.position = 0;
                              §§goto(addr211);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr179);
      }
      
      public function §2T§(value:String, charset:String = "utf-8", doCompress:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               if(!(_loc6_ && doCompress))
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        this.§2n§.length = 0;
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              this.§2n§.position = 0;
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§3o§ = false;
                                    loop7:
                                    while(true)
                                    {
                                       loop8:
                                       for(; !_loc6_; while(!(_loc6_ && charset))
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr112);
                                          §§goto(addr130);
                                       })
                                       {
                                          §§push(value);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop() == null);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr252:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc5_ || doCompress)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(charset);
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(§§pop() == "utf-8")
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr148:
                                                                     this.§2n§.writeMultiByte(value,charset);
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        addr130:
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && value))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§'A§ = ChecksumUtil.§?p§(this.§2n§);
                                                                                 if(!(_loc6_ && doCompress))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             this.§+!0§ = false;
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop27;
                                                                                       addr80:
                                                                                       if(!(_loc5_ || charset))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          while(_loc5_ || doCompress)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop5;
                                                                                          addr194:
                                                                                       }
                                                                                       this.compress();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(doCompress);
                                                                                                   if(_loc6_ && charset)
                                                                                                   {
                                                                                                      addr231:
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                      addr231:
                                                                                                   }
                                                                                                   addr42:
                                                                                                   if(_loc5_ || value)
                                                                                                   {
                                                                                                      if(_loc6_ && value)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         this.§3![§ = this.§4!7§ = this.§2n§.length;
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr342);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr342:
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr63:
                                                                                                            if(_loc5_ || value)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      addr92:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      §§goto(addr342);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop5;
                                                                                                         §§goto(addr42);
                                                                                                      }
                                                                                                      addr262:
                                                                                                   }
                                                                                                }
                                                                                                addr33:
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    continue loop26;
                                                                                 }
                                                                                 §§goto(addr342);
                                                                                 continue loop26;
                                                                              }
                                                                              addr112:
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     addr245:
                                                                  }
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr33);
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr342);
            }
         }
         §§goto(addr148);
      }
      
      public function §!E§(stream:IDataOutput, includeAdler32:Boolean, centralDir:Boolean = false, centralDirOffset:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(_loc20_)
         {
         }
         var headerId:* = null;
         var extraBytes:ByteArray = null;
         var compressed:* = false;
         if(_loc19_ || includeAdler32)
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
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             while(!_loc20_)
                                             {
                                                continue loop10;
                                                while(!(_loc20_ && this))
                                                {
                                                   loop14:
                                                   for(; _loc19_; if(!(_loc19_ || centralDir))
                                                   {
                                                      continue;
                                                   },if(_loc20_)
                                                   {
                                                      continue loop0;
                                                   },§§goto(addr194))
                                                   {
                                                      if(stream != null)
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(!centralDir)
                                                            {
                                                               stream.writeUnsignedInt(FZip.SIG_LOCAL_FILE_HEADER);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(_loc19_ || centralDir)
                                                                     {
                                                                        addr152:
                                                                        if(_loc20_ && stream)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc20_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              stream.writeShort(this.§;!T§ << 8 | 20);
                                                                              if(!(_loc20_ && stream))
                                                                              {
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    loop19:
                                                                                    while(_loc19_)
                                                                                    {
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          stream.writeShort(this.§0@§ == "utf-8" ? int(2048) : int(0));
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc20_ && includeAdler32)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                addr47:
                                                                                                addr308:
                                                                                                while(true)
                                                                                                {
                                                                                                   stream.writeShort(!!this.§3o§ ? int(COMPRESSION_DEFLATED) : int(COMPRESSION_NONE));
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                addr308:
                                                                                                var d:Date = this.§,!`§;
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                }
                                                                                                §§push(uint(d.getSeconds()) | uint(d.getMinutes()) << 5);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop() | uint(d.getHours()) << 11);
                                                                                                }
                                                                                                var msdosTime:uint = §§pop();
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                }
                                                                                                §§push(uint(d.getDate()) | uint(d.getMonth() + 1) << 5);
                                                                                                if(!(_loc20_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() | uint(d.getFullYear() - 1980) << 9);
                                                                                                }
                                                                                                var msdosDate:uint = §§pop();
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   stream.writeShort(msdosTime);
                                                                                                   stream.writeShort(msdosDate);
                                                                                                   stream.writeUnsignedInt(this.§'A§);
                                                                                                   addr479:
                                                                                                   addr471:
                                                                                                   addr468:
                                                                                                   addr477:
                                                                                                   addr462:
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      if(_loc19_ || includeAdler32)
                                                                                                      {
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            stream.writeUnsignedInt(this.§4!7§);
                                                                                                            addr403:
                                                                                                            if(!(_loc20_ && includeAdler32))
                                                                                                            {
                                                                                                               if(_loc19_ || centralDir)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     if(_loc19_ || centralDir)
                                                                                                                     {
                                                                                                                        addr392:
                                                                                                                        stream.writeUnsignedInt(this.§3![§);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              if(_loc19_ || stream)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr392);
                                                                                                                                 }
                                                                                                                                 var ba:ByteArray = new ByteArray();
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    ba.endian = Endian.LITTLE_ENDIAN;
                                                                                                                                    addr553:
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr544:
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          if(this.§0@§ == "utf-8")
                                                                                                                                          {
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                if(_loc20_ && this)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr544);
                                                                                                                                                }
                                                                                                                                                ba.writeUTFBytes(this.§1@§);
                                                                                                                                                addr558:
                                                                                                                                                var filenameSize:uint = ba.position;
                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                var _loc17_:int = 0;
                                                                                                                                                var _loc18_:* = this.§0U§;
                                                                                                                                                addr683:
                                                                                                                                                for(headerId in _loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr588:
                                                                                                                                                      }
                                                                                                                                                      extraBytes = this.§0U§[headerId] as ByteArray;
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         addr682:
                                                                                                                                                         if(extraBytes != null)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ || centralDir)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            ba.writeShort(uint(headerId));
                                                                                                                                                            ba.writeShort(uint(extraBytes.length));
                                                                                                                                                            addr667:
                                                                                                                                                            addr680:
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc20_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc20_ && centralDir))
                                                                                                                                                                  {
                                                                                                                                                                     addr624:
                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr614:
                                                                                                                                                                        ba.writeBytes(extraBytes);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc20_ && includeAdler32))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr612:
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr614);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr683);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr624);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr614);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr667);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr682);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr680);
                                                                                                                                                            }
                                                                                                                                                            addr659:
                                                                                                                                                            §§goto(addr659);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr683);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr612);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr588);
                                                                                                                                                }
                                                                                                                                                if(!(_loc20_ && centralDir))
                                                                                                                                                {
                                                                                                                                                   addr956:
                                                                                                                                                   if(includeAdler32)
                                                                                                                                                   {
                                                                                                                                                      addr953:
                                                                                                                                                      addr954:
                                                                                                                                                      §§push(!this.§+!0§);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr948:
                                                                                                                                                            addr940:
                                                                                                                                                            addr949:
                                                                                                                                                            §§push(this.§3o§);
                                                                                                                                                            if(!(_loc20_ && stream))
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_ || stream)
                                                                                                                                                               {
                                                                                                                                                                  addr929:
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  if(_loc19_ || includeAdler32)
                                                                                                                                                                  {
                                                                                                                                                                     compressed = §§pop();
                                                                                                                                                                     addr937:
                                                                                                                                                                     if(_loc19_ || stream)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ || centralDir)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr887:
                                                                                                                                                                              if(compressed)
                                                                                                                                                                              {
                                                                                                                                                                                 addr888:
                                                                                                                                                                                 this.uncompress();
                                                                                                                                                                                 addr891:
                                                                                                                                                                              }
                                                                                                                                                                              this.§?!b§ = ChecksumUtil.§[2§(this.§2n§,0,this.§2n§.length);
                                                                                                                                                                              if(!(_loc20_ && includeAdler32))
                                                                                                                                                                              {
                                                                                                                                                                                 addr859:
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§+!0§ = true;
                                                                                                                                                                                    addr849:
                                                                                                                                                                                    if(!(_loc20_ && centralDir))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr835:
                                                                                                                                                                                       if(_loc19_ || includeAdler32)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(compressed);
                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr822:
                                                                                                                                                                                                      this.compress();
                                                                                                                                                                                                      if(!(_loc20_ && centralDir))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr792:
                                                                                                                                                                                                         if(_loc19_ || centralDir)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr784:
                                                                                                                                                                                                            ba.writeShort(56026);
                                                                                                                                                                                                            addr789:
                                                                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               ba.writeShort(4);
                                                                                                                                                                                                               addr764:
                                                                                                                                                                                                               if(_loc19_ || stream)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr747:
                                                                                                                                                                                                                     if(!(_loc20_ && centralDir))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr720:
                                                                                                                                                                                                                              ba.writeUnsignedInt(this.§?!b§);
                                                                                                                                                                                                                              if(_loc19_ || includeAdler32)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc19_ || stream)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc19_ || centralDir)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc20_ && stream))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr720);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr957:
                                                                                                                                                                                                                                                   var extrafieldsSize:uint = ba.position - filenameSize;
                                                                                                                                                                                                                                                   if(_loc20_ && stream)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1079:
                                                                                                                                                                                                                                                   §§push(Boolean(centralDir));
                                                                                                                                                                                                                                                   if(_loc19_ || stream)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1076:
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         §§push(this.§@w§.length > 0);
                                                                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1076);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1077:
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1050:
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1052:
                                                                                                                                                                                                                                                               if(_loc19_ || includeAdler32)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1060:
                                                                                                                                                                                                                                                                  §§push(this.§0@§);
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() == "utf-8")
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1033:
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           ba.writeUTFBytes(this.§@w§);
                                                                                                                                                                                                                                                                           addr1002:
                                                                                                                                                                                                                                                                           if(!(_loc20_ && centralDir))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc20_ && stream))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc20_ && includeAdler32)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1077);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1080:
                                                                                                                                                                                                                                                                                    §§push(ba.position - filenameSize);
                                                                                                                                                                                                                                                                                    if(_loc19_ || stream)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - extrafieldsSize);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    var commentSize:uint = §§pop();
                                                                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       stream.writeShort(filenameSize);
                                                                                                                                                                                                                                                                                       stream.writeShort(extrafieldsSize);
                                                                                                                                                                                                                                                                                       addr1269:
                                                                                                                                                                                                                                                                                       addr1286:
                                                                                                                                                                                                                                                                                       addr1284:
                                                                                                                                                                                                                                                                                       addr1278:
                                                                                                                                                                                                                                                                                       addr1275:
                                                                                                                                                                                                                                                                                       if(centralDir)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          stream.writeShort(commentSize);
                                                                                                                                                                                                                                                                                          addr1241:
                                                                                                                                                                                                                                                                                          addr1261:
                                                                                                                                                                                                                                                                                          addr1265:
                                                                                                                                                                                                                                                                                          if(_loc19_ || stream)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc19_ || includeAdler32)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                stream.writeShort(0);
                                                                                                                                                                                                                                                                                                addr1236:
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1223:
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      stream.writeShort(0);
                                                                                                                                                                                                                                                                                                      addr1216:
                                                                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1203:
                                                                                                                                                                                                                                                                                                            if(!(_loc20_ && includeAdler32))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               stream.writeUnsignedInt(0);
                                                                                                                                                                                                                                                                                                               addr1193:
                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && stream))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1178:
                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        stream.writeUnsignedInt(centralDirOffset);
                                                                                                                                                                                                                                                                                                                        addr1173:
                                                                                                                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1158:
                                                                                                                                                                                                                                                                                                                           if(_loc19_ || centralDir)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1128:
                                                                                                                                                                                                                                                                                                                                 §§push(filenameSize);
                                                                                                                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + extrafieldsSize);
                                                                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + commentSize);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(§§pop() > 0)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1140:
                                                                                                                                                                                                                                                                                                                                       if(!(_loc20_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1106:
                                                                                                                                                                                                                                                                                                                                             stream.writeBytes(ba);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && centralDir))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1104:
                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1106);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1289:
                                                                                                                                                                                                                                                                                                                                                            var fileSize:* = uint(0);
                                                                                                                                                                                                                                                                                                                                                            addr1287:
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1539:
                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(!centralDir));
                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(!centralDir));
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc20_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1553:
                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1550:
                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                               addr1551:
                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(this.§2n§.length > 0));
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1532:
                                                                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1534:
                                                                                                                                                                                                                                                                                                                                                                     addr1535:
                                                                                                                                                                                                                                                                                                                                                                     if(this.§3o§)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1516:
                                                                                                                                                                                                                                                                                                                                                                        addr1517:
                                                                                                                                                                                                                                                                                                                                                                        §§push(HAS_UNCOMPRESS);
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1496:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc19_ || stream)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1510:
                                                                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             §§push(HAS_INFLATE);
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1471:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1475:
                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr1478:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(uint(this.§2n§.length));
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  fileSize = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1453:
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && stream))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1438:
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              stream.writeBytes(this.§2n§,0,fileSize);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1428:
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc19_ || centralDir))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(30 + filenameSize);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(extrafieldsSize);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc19_ || stream)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1570:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(commentSize);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1583:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(fileSize);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          var size:uint = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1636:
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(centralDir)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1622:
                                                                                                                                                                                                                                                                                                                                                                                                                                                size += 16;
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1619:
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1593:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(size);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1619);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1622);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1616:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1622);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1636);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1634:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1634);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1593);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1616);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1583);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1583);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1355:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1517);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1478);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1553);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1583);
                                                                                                                                                                                                                                                                                                                                                                                                               addr1477:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§2n§.length - 6);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc19_ || includeAdler32)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr1411:
                                                                                                                                                                                                                                                                                                                                                                                                               fileSize = uint(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               addr1412:
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1389:
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        stream.writeBytes(this.§2n§,2,fileSize);
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1379:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc19_ || stream))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1534);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1355);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1428);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1412);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1535);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1570);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1539);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1496);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1510);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1471);
                                                                                                                                                                                                                                                                                                                                                                                             addr1511:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1539);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1534);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1496);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(uint(this.§2n§.length));
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           fileSize = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           addr1368:
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1347:
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1313:
                                                                                                                                                                                                                                                                                                                                                                                 stream.writeBytes(this.§2n§,0,fileSize);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && centralDir))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc19_ || includeAdler32)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc19_ || centralDir)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1313);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1428);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1477);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1438);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1313);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1453);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1389);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1368);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1347);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1379);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1511);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1411);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1583);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1428);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1550);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1532);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1140);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1106);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1178);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1155:
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1155);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1269);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1193);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1287);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1289);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1236);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1203);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1286);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1216);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1223);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1241);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1284);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1261);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1278);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1265);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1275);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1266:
                                                                                                                                                                                                                                                                                          §§goto(addr1266);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1128);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1104);
                                                                                                                                                                                                                                                                                    addr977:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1060);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1033);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1052);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     ba.writeMultiByte(this.§@w§,this.§0@§);
                                                                                                                                                                                                                                                                     addr988:
                                                                                                                                                                                                                                                                     if(_loc19_ || includeAdler32)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr988);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr977);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1080);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1002);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1076);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1079);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1080);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1079);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1050);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1076);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr835);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr792);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr720);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr948);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr891);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr764);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr747);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr937);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr822);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr789);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr940);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr849);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr859);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr784);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr929);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr887);
                                                                                                                                                                                             addr844:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr888);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr887);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr937);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr888);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr949);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr956);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr953);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr954);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr953);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr929);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr784);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr956);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr957);
                                                                                                                                                }
                                                                                                                                                §§goto(addr844);
                                                                                                                                                addr541:
                                                                                                                                                addr507:
                                                                                                                                                addr525:
                                                                                                                                             }
                                                                                                                                             §§goto(addr541);
                                                                                                                                          }
                                                                                                                                          ba.writeMultiByte(this.§1@§,this.§0@§);
                                                                                                                                          addr518:
                                                                                                                                          if(!(_loc19_ || includeAdler32))
                                                                                                                                          {
                                                                                                                                             §§goto(addr518);
                                                                                                                                          }
                                                                                                                                          if(_loc19_ || includeAdler32)
                                                                                                                                          {
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr507);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr558);
                                                                                                                                          }
                                                                                                                                          §§goto(addr525);
                                                                                                                                       }
                                                                                                                                       §§goto(addr553);
                                                                                                                                    }
                                                                                                                                    addr557:
                                                                                                                                    §§goto(addr557);
                                                                                                                                 }
                                                                                                                                 §§goto(addr558);
                                                                                                                              }
                                                                                                                              §§goto(addr403);
                                                                                                                           }
                                                                                                                           §§goto(addr392);
                                                                                                                        }
                                                                                                                        §§goto(addr479);
                                                                                                                        addr426:
                                                                                                                     }
                                                                                                                     §§goto(addr471);
                                                                                                                  }
                                                                                                                  §§goto(addr468);
                                                                                                               }
                                                                                                               §§goto(addr479);
                                                                                                            }
                                                                                                            addr433:
                                                                                                            §§goto(addr433);
                                                                                                         }
                                                                                                         §§goto(addr477);
                                                                                                      }
                                                                                                      §§goto(addr462);
                                                                                                   }
                                                                                                   addr459:
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                          continue;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    while(_loc20_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       stream.writeShort(this.§;!T§ << 8 | 20);
                                                                                    }
                                                                                    continue loop14;
                                                                                    addr183:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    stream.writeUnsignedInt(FZip.SIG_CENTRAL_FILE_HEADER);
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                              §§goto(addr308);
                                                                              addr194:
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     addr197:
                                                                     while(!(_loc20_ && stream))
                                                                     {
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§goto(addr232);
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     continue loop15;
                                                                     §§goto(addr183);
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                      }
                                                      addr232:
                                                      return 0;
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    if(_loc20_ && this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr242);
                                 }
                              }
                           }
                        }
                        if(_loc20_ && includeAdler32)
                        {
                           continue;
                        }
                        if(!_loc19_)
                        {
                           continue loop1;
                        }
                        if(!(_loc20_ && this))
                        {
                           if(false)
                           {
                              §§goto(addr47);
                           }
                           if(this.§,!`§ != null)
                           {
                              §§goto(addr308);
                           }
                           else
                           {
                              §§push(new Date());
                           }
                        }
                        §§goto(addr308);
                     }
                  }
               }
            }
         }
         §§goto(addr227);
      }
      
      function parse(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(Boolean(stream.bytesAvailable));
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc2_ || _loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr106:
                     while(!_loc3_)
                     {
                        §§push(Boolean(this.§3Z§(stream)));
                        while(!_loc2_)
                        {
                           continue loop4;
                           §§goto(addr108);
                        }
                        addr108:
                     }
                     continue loop0;
                  }
                  addr105:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     continue loop0;
                  }
                  if(_loc2_ || stream)
                  {
                  }
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§3Z§ === this.§,!Y§);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr106);
               }
               return §§pop();
            }
            §§goto(addr105);
         }
      }
      
      protected function §,!Y§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         while(_loc3_)
         {
         }
         return false;
      }
      
      protected function §#z§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(stream.bytesAvailable < 30)
               {
                  §§push(false);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  break;
               }
               while(true)
               {
                  while(_loc2_)
                  {
                     this.§8?§(stream);
                     while(true)
                     {
                        if(this.§1!^§ + this.§`!_§ > 0)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     §§push(true);
                     break loop1;
                  }
                  continue loop1;
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr152);
               }
            }
            return §§pop();
         }
      }
      
      protected function § "§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!(_loc3_ && this))
         {
            while(true)
            {
               §§goto(addr142);
            }
         }
         loop3:
         while(true)
         {
            while(true)
            {
               this.§ P§(stream);
               loop5:
               while(!(_loc3_ && this))
               {
                  this.§3Z§ = this.§>G§;
                  while(!_loc3_)
                  {
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        continue loop5;
                     }
                     if(_loc2_)
                     {
                        break loop3;
                     }
                     §§goto(addr131);
                  }
                  addr142:
                  §§goto(addr48);
               }
            }
         }
         addr48:
         while(true)
         {
            if(stream.bytesAvailable < this.§1!^§ + this.§`!_§)
            {
               §§push(false);
               if(_loc2_ || _loc2_)
               {
                  return §§pop();
               }
            }
            continue loop0;
         }
         true;
         return §§pop();
      }
      
      protected function §>G§(stream:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               addr29:
               while(true)
               {
                  addr31:
                  while(_loc3_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!_loc4_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr29);
            }
            §§goto(addr31);
         }
         §§push(true);
         if(!(_loc4_ && stream))
         {
            §§push(Boolean(§§pop()));
         }
         var continueParsing:* = §§pop();
         if(_loc3_)
         {
            loop4:
            while(true)
            {
               §§push(this.§%t§);
               loop5:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(this.§4!7§ == 0)
                     {
                        loop19:
                        while(true)
                        {
                           loop20:
                           while(true)
                           {
                              if(_loc3_ || continueParsing)
                              {
                                 this.§3Z§ = this.§,!Y§;
                                 loop21:
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(continueParsing);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       addr102:
                                       while(true)
                                       {
                                          continueParsing = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc3_ || stream)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      continue loop20;
                                                   }
                                                   continue loop21;
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_ && stream)
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(_loc3_ || continueParsing)
                                                         {
                                                            if(!(_loc4_ && continueParsing))
                                                            {
                                                               this.§3Z§ = this.§,!Y§;
                                                               continue loop9;
                                                               addr142:
                                                            }
                                                            else
                                                            {
                                                               addr240:
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            addr227:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr228:
                                                               while(!_loc4_)
                                                               {
                                                                  continueParsing = §§pop();
                                                                  while(true)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  break loop11;
                                                               }
                                                               addr245:
                                                            }
                                                         }
                                                         addr186:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break loop12;
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr145);
                                          }
                                       }
                                    }
                                    if(_loc4_ && this)
                                    {
                                       §§goto(addr228);
                                    }
                                    return §§pop();
                                 }
                              }
                              while(true)
                              {
                                 this.§3Z§ = this.§,!Y§;
                                 §§goto(addr240);
                              }
                           }
                        }
                        addr216:
                     }
                     else if(stream.bytesAvailable < this.§4!7§)
                     {
                        §§push(false);
                        if(_loc3_ || this)
                        {
                           if(_loc3_ || this)
                           {
                              §§goto(addr102);
                              §§push(Boolean(§§pop()));
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr245);
               }
            }
         }
         §§goto(addr216);
      }
      
      protected function §8?§(data:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc12_)
         {
         }
         if(_loc12_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     while(!_loc12_)
                     {
                        continue loop1;
                        while(!(_loc12_ && data))
                        {
                           if(!_loc12_)
                           {
                              loop6:
                              for(; _loc13_; while(!(_loc12_ && this))
                              {
                                 §§goto(addr61);
                              })
                              {
                                 while(true)
                                 {
                                    continue loop6;
                                    loop11:
                                    while(!(_loc12_ && vSrc))
                                    {
                                       if(!(_loc12_ && vSrc))
                                       {
                                          addr33:
                                          if(_loc13_ || data)
                                          {
                                             continue loop0;
                                          }
                                          addr61:
                                          while(_loc13_)
                                          {
                                             while(true)
                                             {
                                                continue loop11;
                                             }
                                             continue loop0;
                                             §§goto(addr33);
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function § P§(data:IDataInput) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
         }
         var headerId:* = uint(0);
         var dataSize:uint = 0;
         var extraBytes:ByteArray = null;
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  do
                  {
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     if(this.§0@§ == "utf-8")
                     {
                        continue;
                     }
                     addr52:
                     addr96:
                     this.§1@§ = data.readMultiByte(this.§1!^§,this.§0@§);
                     while(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              if(_loc7_)
                              {
                                 this.§1@§ = data.readUTFBytes(this.§1!^§);
                                 break;
                              }
                              addr85:
                              if(!(_loc7_ && headerId))
                              {
                                 break loop1;
                              }
                              continue loop2;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                     §§push(this.§`!_§);
                     if(_loc6_ || this)
                     {
                        §§push(uint(§§pop()));
                     }
                     var bytesLeft:* = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(bytesLeft);
                        loop5:
                        while(true)
                        {
                           §§push(4);
                           loop6:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(uint(data.readUnsignedShort()));
                                          if(!(_loc6_ || this))
                                          {
                                             break;
                                          }
                                          headerId = §§pop();
                                          while(true)
                                          {
                                             if(!(_loc7_ && headerId))
                                             {
                                                continue loop8;
                                             }
                                             addr509:
                                             addr509:
                                             if(_loc6_ || bytesLeft)
                                             {
                                                addr474:
                                                if(!(_loc7_ && this))
                                                {
                                                   addr481:
                                                   if(_loc7_)
                                                   {
                                                      while(!_loc7_)
                                                      {
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(bytesLeft);
                                                            if(_loc6_ || data)
                                                            {
                                                               addr519:
                                                               §§push(0);
                                                               if(_loc6_)
                                                               {
                                                                  addr522:
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        addr524:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              data.readBytes(new ByteArray(),0,bytesLeft);
                                                                              addr526:
                                                                              continue loop24;
                                                                              addr526:
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                        §§goto(addr481);
                                                                     }
                                                                     addr523:
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop5;
                                                         }
                                                         return;
                                                      }
                                                      continue loop4;
                                                      addr531:
                                                   }
                                                   §§goto(addr461);
                                                }
                                                §§goto(addr524);
                                             }
                                             §§goto(addr492);
                                             addr330:
                                             if(!(_loc6_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop9;
                                             }
                                             §§goto(addr526);
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr441);
                                    }
                                    while(true)
                                    {
                                       if(!(_loc7_ && headerId))
                                       {
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr534);
                                 }
                              }
                              §§goto(addr531);
                           }
                        }
                     }
                  }
                  while(_loc7_);
                  
               }
               if(false)
               {
                  §§goto(addr52);
               }
               §§goto(addr96);
            }
         }
         §§goto(addr85);
      }
      
      function §&;§(data:IDataInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && _loc3_)
         {
         }
         var flg:* = uint(0);
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§-?§);
                  loop2:
                  while(true)
                  {
                     §§push(COMPRESSION_DEFLATED);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() === §§pop());
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
                                             §§push(this.§+s§);
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                addr530:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr531:
                                                   while(_loc3_ || data)
                                                   {
                                                   }
                                                   continue loop5;
                                                }
                                                addr478:
                                                if(_loc3_ || this)
                                                {
                                                   loop27:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr385:
                                                         §§push(this.§+!0§);
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break;
                                                            }
                                                            loop28:
                                                            while(true)
                                                            {
                                                               addr427:
                                                               while(true)
                                                               {
                                                                  continue loop28;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr464:
                                                            while(_loc3_ || _loc3_)
                                                            {
                                                               if(_loc3_ || flg)
                                                               {
                                                                  §§goto(addr478);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr530);
                                                               }
                                                            }
                                                            §§goto(addr531);
                                                            addr464:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            addr386:
                                                            while(true)
                                                            {
                                                               flg = §§pop();
                                                               continue loop1;
                                                            }
                                                         }
                                                         addr385:
                                                      }
                                                      addr487:
                                                      loop54:
                                                      while(true)
                                                      {
                                                         loop37:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               data.readBytes(this.§2n§,0,this.§4!7§);
                                                               loop38:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§3o§ = true;
                                                                        loop46:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && flg))
                                                                           {
                                                                              addr201:
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§2n§.position = 0;
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       if(_loc3_ || flg)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc4_ && data))
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         loop16:
                                                                                                         while(_loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ && this)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc3_ || this)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(flg);
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(31);
                                                                                                                                 §§push(120);
                                                                                                                                 if(!(_loc4_ && flg))
                                                                                                                                 {
                                                                                                                                    §§push(8);
                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() << §§pop());
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr353:
                                                                                                                                          §§push(§§pop() | flg);
                                                                                                                                          §§push(31);
                                                                                                                                       }
                                                                                                                                       §§goto(addr353);
                                                                                                                                    }
                                                                                                                                    addr358:
                                                                                                                                    flg = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop35:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§2n§.writeByte(flg);
                                                                                                                                          addr314:
                                                                                                                                          addr303:
                                                                                                                                          while(!_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop37;
                                                                                                                                          }
                                                                                                                                          addr316:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                data.readBytes(this.§2n§,2,this.§4!7§);
                                                                                                                                                loop32:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr290:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§2n§.position = this.§2n§.length;
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr407);
                                                                                                                                             }
                                                                                                                                             §§goto(addr316);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr358);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr353);
                                                                                                                              }
                                                                                                                              §§goto(addr386);
                                                                                                                           }
                                                                                                                           §§goto(addr358);
                                                                                                                           addr394:
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§goto(addr314);
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               this.§3o§ = false;
                                                                                                               while(!(_loc4_ && data))
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  data.readBytes(this.§2n§,0,this.§4!7§);
                                                                                                                  continue loop16;
                                                                                                                  §§goto(addr110);
                                                                                                               }
                                                                                                               addr110:
                                                                                                               §§goto(addr404);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr397);
                                                                                                   }
                                                                                                   §§goto(addr122);
                                                                                                }
                                                                                                §§goto(addr110);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   break loop19;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr541:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(HAS_UNCOMPRESS);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc3_ || this)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc4_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr515:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(HAS_INFLATE);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               §§goto(addr464);
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr540:
                                                                                          }
                                                                                          §§goto(addr385);
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    addr241:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop46;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc3_ || this))
                                                                                    {
                                                                                       continue loop46;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop54;
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                              }
                                                                              §§goto(addr278);
                                                                           }
                                                                           else if(!_loc4_)
                                                                           {
                                                                              continue loop38;
                                                                           }
                                                                           §§goto(addr427);
                                                                        }
                                                                        addr233:
                                                                     }
                                                                  }
                                                                  §§goto(addr515);
                                                               }
                                                            }
                                                            §§goto(addr541);
                                                         }
                                                      }
                                                   }
                                                   throw new Error("Adler32 checksum not found.");
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§-?§);
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc4_ && flg))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(COMPRESSION_NONE);
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop() != §§pop())
                                                      {
                                                         throw new Error("Compression method " + this.§-?§ + " is not supported.");
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr385);
                                       }
                                       §§goto(addr540);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr487);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               §§push(this.§3o§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(this.§2n§.length <= 0)
                              {
                                 this.§4!7§ = 0;
                                 loop5:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             if(!(_loc1_ || this))
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                            }
                                                            addr262:
                                                            loop31:
                                                            while(true)
                                                            {
                                                               this.§4!7§ = this.§2n§.length;
                                                               while(true)
                                                               {
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     this.§2n§.position = 0;
                                                                     addr120:
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_ || _loc2_)
                                                                              {
                                                                                 continue loop31;
                                                                              }
                                                                           }
                                                                           addr268:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 if(_loc1_ || this)
                                                                                 {
                                                                                    if(!(_loc2_ && _loc1_))
                                                                                    {
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr333:
                                                                                       while(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§2n§.position = 0;
                                                                                             addr326:
                                                                                             while(true)
                                                                                             {
                                                                                                addr320:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§3![§ = this.§2n§.length;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ && _loc2_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(_loc1_ || _loc1_)
                                                                                 {
                                                                                    §§push(HAS_INFLATE);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       addr283:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2n§.deflate();
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              while(_loc2_)
                                                                              {
                                                                                 §§goto(addr225);
                                                                              }
                                                                              this.§4!7§ = this.§2n§.length;
                                                                              addr209:
                                                                              while(true)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           addr132:
                                                                        }
                                                                        §§goto(addr282);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                            this.§2n§.compress();
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc1_ || this)
                                                         {
                                                            this.§4!7§ = this.§2n§.length - 6;
                                                            break loop5;
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                   }
                                                   §§goto(addr120);
                                                }
                                                this.§3o§ = true;
                                             }
                                             this.§3![§ = 0;
                                             continue;
                                             break;
                                          }
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       §§goto(addr132);
                                    }
                                    §§goto(addr283);
                                 }
                              }
                              §§goto(addr333);
                           }
                        }
                     }
                     §§goto(addr23);
                  }
               }
            }
         }
         §§goto(addr262);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(this.§3o§);
            loop1:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop2:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr234:
                        while(true)
                        {
                           §§push(this.§2n§.length > 0);
                           addr217:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr218:
                              while(!_loc2_)
                              {
                              }
                              continue loop2;
                           }
                        }
                     }
                     addr233:
                  }
                  loop7:
                  while(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           this.§2n§.position = 0;
                           loop10:
                           while(true)
                           {
                              loop11:
                              for(; _loc1_ || _loc2_; while(!(_loc2_ && this))
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop9;
                                 }
                                 §§goto(addr74);
                              })
                              {
                                 §§push(HAS_INFLATE);
                                 loop12:
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr218);
                                    addr136:
                                    §§push(HAS_UNCOMPRESS);
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§2n§.uncompress();
                                             loop13:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr74:
                                                      while(true)
                                                      {
                                                         this.§2n§.position = 0;
                                                         continue loop13;
                                                      }
                                                      continue loop0;
                                                      addr74:
                                                   }
                                                   continue loop11;
                                                   addr57:
                                                   if(!(_loc1_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      if(_loc1_ || this)
                                                      {
                                                         this.§3o§ = false;
                                                         while(_loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               break loop12;
                                                            }
                                                            addr50:
                                                            while(true)
                                                            {
                                                               if(_loc2_ && _loc1_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§goto(addr57);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr74);
                                                            }
                                                            addr160:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§2n§.inflate();
                                                         }
                                                         addr184:
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   while(true)
                                                   {
                                                      addr152:
                                                      while(true)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            this.§2n§.uncompress.apply(this.§2n§,["deflate"]);
                                                            continue loop11;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr151);
                                       }
                                       else
                                       {
                                          §§goto(addr233);
                                       }
                                    }
                                    §§goto(addr217);
                                 }
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop10;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop8;
                                    }
                                    §§goto(addr184);
                                 }
                              }
                              §§goto(addr234);
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         §§push("[FZipFile]");
         if(!(_loc2_ && _loc2_))
         {
            §§push("\n  name:");
            if(!_loc2_)
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     §§push(this.§1@§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push("\n  date:");
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!(_loc2_ && this))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(§§pop() + this.§,!`§);
                                    if(!_loc2_)
                                    {
                                       §§push("\n  sizeCompressed:");
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc1_)
                                             {
                                                §§push(this.§4!7§);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc1_)
                                                   {
                                                      §§push("\n  sizeUncompressed:");
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               §§push(this.§3![§);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc1_ || this)
                                                                  {
                                                                     addr145:
                                                                     §§push("\n  versionHost:");
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           addr151:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(this.§;!T§);
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    addr171:
                                                                                    §§push("\n  versionNumber:");
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(_loc1_ || this)
                                                                                       {
                                                                                          addr192:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(this.§4!,§);
                                                                                             if(_loc1_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   addr207:
                                                                                                   §§push("\n  compressionMethod:");
                                                                                                   if(_loc1_ || this)
                                                                                                   {
                                                                                                      addr215:
                                                                                                      if(!(_loc2_ && this))
                                                                                                      {
                                                                                                         addr223:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                         {
                                                                                                            addr233:
                                                                                                            §§push(§§pop() + this.§-?§);
                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                            {
                                                                                                               addr241:
                                                                                                               §§push("\n  encrypted:");
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(_loc1_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc1_)
                                                                                                                     {
                                                                                                                        addr255:
                                                                                                                        §§push(this.§+s§);
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              §§push("\n  hasDataDescriptor:");
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 addr270:
                                                                                                                                 if(!(_loc2_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§%t§);
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc1_ || this)
                                                                                                                                          {
                                                                                                                                             addr293:
                                                                                                                                             §§push("\n  hasCompressedPatchedData:");
                                                                                                                                             if(!(_loc2_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                addr301:
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr304:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr314:
                                                                                                                                                      §§push(§§pop() + this.§]N§);
                                                                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr322:
                                                                                                                                                         §§push("\n  filenameEncoding:");
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr325:
                                                                                                                                                            if(_loc1_)
                                                                                                                                                            {
                                                                                                                                                               addr328:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc1_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  addr338:
                                                                                                                                                                  §§push(§§pop() + this.§0@§);
                                                                                                                                                                  if(_loc1_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr346:
                                                                                                                                                                     §§push("\n  crc32:");
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           addr352:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr365:
                                                                                                                                                                              §§push(this.§'A§);
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr369:
                                                                                                                                                                                 §§push(16);
                                                                                                                                                                                 if(_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr376:
                                                                                                                                                                                       §§push("\n  adler32:");
                                                                                                                                                                                       if(_loc1_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr385:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr388:
                                                                                                                                                                                             §§push(this.§?!b§);
                                                                                                                                                                                             §§push(16);
                                                                                                                                                                                          }
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                          addr384:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr385);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr388);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr385);
                                                                                                                                                                                 §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr388);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr376);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr385);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr384);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr385);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr376);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr385);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr376);
                                                                                                                                                }
                                                                                                                                                §§goto(addr385);
                                                                                                                                             }
                                                                                                                                             §§goto(addr325);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr314);
                                                                                                                                    }
                                                                                                                                    §§goto(addr365);
                                                                                                                                 }
                                                                                                                                 §§goto(addr301);
                                                                                                                              }
                                                                                                                              §§goto(addr352);
                                                                                                                           }
                                                                                                                           §§goto(addr293);
                                                                                                                        }
                                                                                                                        §§goto(addr314);
                                                                                                                     }
                                                                                                                     §§goto(addr293);
                                                                                                                  }
                                                                                                                  §§goto(addr304);
                                                                                                               }
                                                                                                               §§goto(addr352);
                                                                                                            }
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                         §§goto(addr388);
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   §§goto(addr301);
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr304);
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr325);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr207);
                     }
                  }
                  §§goto(addr338);
               }
               §§goto(addr192);
            }
            §§goto(addr151);
         }
         §§goto(addr346);
      }
   }
}
