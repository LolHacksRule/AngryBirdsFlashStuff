package §1!>§
{
   import §9F§.ChecksumUtil;
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
         if(!(COMPRESSION_REDUCED_4 && COMPRESSION_NONE))
         {
            loop0:
            while(true)
            {
               COMPRESSION_NONE = 0;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     COMPRESSION_SHRUNK = 1;
                     loop3:
                     while(true)
                     {
                        addr214:
                        while(true)
                        {
                           COMPRESSION_REDUCED_1 = 2;
                           while(true)
                           {
                              addr204:
                              while(COMPRESSION_IMPLODED)
                              {
                                 COMPRESSION_REDUCED_2 = 3;
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       COMPRESSION_REDUCED_3 = 4;
                                       while(true)
                                       {
                                          if(!COMPRESSION_REDUCED_4)
                                          {
                                             continue loop3;
                                          }
                                          continue loop7;
                                          addr150:
                                          while(COMPRESSION_IMPLODED || COMPRESSION_NONE)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              continue loop0;
                              addr108:
                              if(COMPRESSION_IMPLODED || FZipFile)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      protected var §>9§:int = 0;
      
      protected var §!!`§:String = "2.0";
      
      protected var §!n§:int = 8;
      
      protected var §;s§:Boolean = false;
      
      protected var §1+§:int = -1;
      
      protected var §;j§:int = -1;
      
      protected var §-!O§:int = -1;
      
      protected var §!v§:Boolean = false;
      
      protected var §>!a§:Boolean = false;
      
      protected var §2!3§:Date;
      
      protected var §?!d§:uint;
      
      protected var §<&§:Boolean = false;
      
      protected var §3F§:uint = 0;
      
      protected var §"=§:uint = 0;
      
      protected var §>!#§:String = "";
      
      protected var §2!"§:String;
      
      protected var §@!Q§:Dictionary;
      
      protected var §'A§:String = "";
      
      protected var §1!"§:ByteArray;
      
      var §&!H§:uint;
      
      var §!!D§:uint = 0;
      
      var §14§:uint = 0;
      
      protected var §4?§:Boolean = false;
      
      protected var §0!R§:Function;
      
      public function FZipFile(filenameEncoding:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && filenameEncoding)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
            }
            addr180:
         }
         loop1:
         while(true)
         {
            this.§0!R§ = this.§[i§;
            loop2:
            while(true)
            {
               while(true)
               {
                  super();
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        this.§2!"§ = filenameEncoding;
                        while(_loc2_ || filenameEncoding)
                        {
                           continue loop2;
                           loop8:
                           for(; _loc2_ || _loc3_; loop10:
                           while(_loc2_ || _loc3_)
                           {
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop10;
                                 }
                                 §§goto(addr66);
                                 addr94:
                                 this.§1!"§.endian = Endian.BIG_ENDIAN;
                                 while(_loc3_ && filenameEncoding)
                                 {
                                 }
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    return;
                                 }
                              }
                              continue loop4;
                           })
                           {
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    this.§1!"§ = new ByteArray();
                                    continue loop8;
                                 }
                                 continue loop2;
                                 addr66:
                                 if(_loc2_ || _loc3_)
                                 {
                                    continue loop4;
                                 }
                              }
                              §§goto(addr180);
                           }
                        }
                     }
                  }
                  if(_loc3_ && filenameEncoding)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     continue loop1;
                  }
                  §§goto(addr94);
               }
            }
         }
      }
      
      public function get §<`§() : Date
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return this.§2!3§;
      }
      
      public function set §<`§(value:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               addr87:
               while(!_loc2_)
               {
               }
            }
         }
         while(true)
         {
            §§push(this);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().§2!3§ = value != null ? value : new Date();
               while(!_loc2_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr75);
         }
      }
      
      public function get §"!a§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.§>!#§;
      }
      
      public function set §"!a§(value:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               this.§>!#§ = value;
               while(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      function get §-p§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         return this.§!v§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            for(; this.§4?§; while(_loc2_ || _loc2_)
            {
               this.uncompress();
               while(!(_loc1_ && _loc2_))
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr54);
               }
            })
            {
               do
               {
                  continue loop0;
               }
               while(!(_loc2_ || _loc1_));
               
            }
            §§goto(addr44);
         }
         addr44:
         return this.§1!"§;
      }
      
      public function set content(data:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && data)
         {
         }
         if(_loc2_ && _loc3_)
         {
         }
         do
         {
            do
            {
               this.§!!f§(data);
               while(_loc2_ && data)
               {
               }
            }
            while(_loc2_);
            
         }
         while(_loc2_ && this);
         
      }
      
      public function §!!f§(data:ByteArray, doCompress:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || data)
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
                     §§push(data == null);
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc4_ && doCompress))
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr280:
                                    loop20:
                                    while(true)
                                    {
                                       §§push(data.length > 0);
                                       addr233:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                                addr238:
                                             }
                                             §§push(Boolean(§§pop()));
                                             while(!(_loc4_ && data))
                                             {
                                             }
                                             continue loop4;
                                          }
                                          continue loop20;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr279:
                              }
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       loop16:
                                       while(_loc5_)
                                       {
                                          data.position = 0;
                                          loop10:
                                          while(true)
                                          {
                                             loop11:
                                             while(_loc5_)
                                             {
                                                data.readBytes(this.§1!"§,0,data.length);
                                                while(true)
                                                {
                                                   loop13:
                                                   for(; _loc5_; loop14:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         for(this.§<&§ = false; !_loc5_; )
                                                         {
                                                            continue loop18;
                                                         }
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(doCompress);
                                                            if(!(_loc5_ || doCompress))
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc4_ && doCompress))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.§14§ = this.§!!D§ = this.§1!"§.length;
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr304);
                                                                  }
                                                                  break;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc4_ && doCompress)
                                                                  {
                                                                     addr304:
                                                                     break;
                                                                  }
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ && doCompress)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop1;
                                                                  addr167:
                                                               }
                                                               if(!(_loc4_ && doCompress))
                                                               {
                                                                  this.compress();
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        addr116:
                                                                        while(true)
                                                                        {
                                                                           this.§4?§ = false;
                                                                           if(!(_loc5_ || doCompress))
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || doCompress)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr172);
                                                               §§goto(addr304);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                         }
                                                         addr172:
                                                         §§goto(addr305);
                                                      }
                                                      continue loop13;
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&!H§ = ChecksumUtil.§+!Q§(this.§1!"§);
                                                         addr193:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc4_ && data)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop11;
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             §§goto(addr250);
                                          }
                                          addr250:
                                       }
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    this.§1!"§.length = 0;
                                 }
                                 §§goto(addr167);
                                 §§goto(addr238);
                              }
                           }
                           §§goto(addr279);
                        }
                     }
                  }
                  if(!(_loc4_ && doCompress))
                  {
                     this.§1!"§.position = 0;
                     if(_loc5_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr116);
                        }
                        §§goto(addr193);
                     }
                     addr305:
                  }
                  continue;
                  return;
               }
            }
         }
         §§goto(addr207);
      }
      
      public function get §#M§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.§!!`§;
      }
      
      public function get §1!U§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§!!D§;
      }
      
      public function get §<!T§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§14§;
      }
      
      public function §`!W§(recompress:Boolean = true, charset:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var str:* = null;
         if(!(_loc5_ && charset))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§4?§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.uncompress();
                                    loop7:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          addr194:
                                          loop11:
                                          while(_loc4_ || this)
                                          {
                                             while(true)
                                             {
                                                §§push(charset);
                                                while(true)
                                                {
                                                   if(§§pop() != "utf-8")
                                                   {
                                                      §§push(this.§1!"§.readMultiByte(this.§1!"§.bytesAvailable,charset));
                                                      while(!_loc5_)
                                                      {
                                                         str = §§pop();
                                                         continue loop7;
                                                      }
                                                      continue;
                                                      addr152:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(this.§1!"§.readUTFBytes(this.§1!"§.bytesAvailable));
                                                            addr171:
                                                            while(true)
                                                            {
                                                               str = §§pop();
                                                               addr172:
                                                               while(!(_loc4_ || charset))
                                                               {
                                                                  continue loop25;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     this.§1!"§.position = 0;
                                                                     addr134:
                                                                     while(true)
                                                                     {
                                                                        addr119:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           addr137:
                                                                           while(_loc4_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr172);
                                                                     }
                                                                  }
                                                                  addr181:
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr217:
                                                         while(true)
                                                         {
                                                            continue loop11;
                                                         }
                                                         addr217:
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
                           while(true)
                           {
                              this.§1!"§.position = 0;
                              §§goto(addr217);
                           }
                        }
                     }
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr211);
      }
      
      public function §'!2§(value:String, charset:String = "utf-8", doCompress:Boolean = true) : void
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
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§1!"§.length = 0;
                        loop4:
                        while(true)
                        {
                           while(_loc6_)
                           {
                              this.§1!"§.position = 0;
                              while(true)
                              {
                                 addr262:
                                 while(!_loc5_)
                                 {
                                    this.§4?§ = false;
                                    while(_loc6_)
                                    {
                                    }
                                    continue loop4;
                                 }
                              }
                              addr111:
                              if(_loc5_ && doCompress)
                              {
                                 continue;
                              }
                              this.§<&§ = false;
                              loop25:
                              while(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop1;
                                       }
                                       loop29:
                                       while(true)
                                       {
                                          §§push(doCompress);
                                          if(_loc6_ || this)
                                          {
                                             addr46:
                                             if(!(_loc5_ && doCompress))
                                             {
                                                if(_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || charset)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               addr70:
                                                               if(_loc5_)
                                                               {
                                                                  continue loop25;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  this.compress();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr324:
                                                                     return;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     §§goto(addr324);
                                                                  }
                                                                  addr324:
                                                                  continue;
                                                               }
                                                               while(_loc6_)
                                                               {
                                                                  this.§1!"§.writeUTFBytes(value);
                                                                  while(true)
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        this.§&!H§ = ChecksumUtil.§+!Q§(this.§1!"§);
                                                                        addr127:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc5_ && charset))
                                                                              {
                                                                                 addr100:
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr111);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr100);
                                                                                 }
                                                                                 addr143:
                                                                              }
                                                                              §§goto(addr324);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                               loop20:
                                                               while(!(_loc5_ && this))
                                                               {
                                                                  if(!(_loc5_ && value))
                                                                  {
                                                                     addr222:
                                                                     §§push(charset);
                                                                     if(!(_loc5_ && value))
                                                                     {
                                                                        if(§§pop() == "utf-8")
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        this.§1!"§.writeMultiByte(value,charset);
                                                                        §§goto(addr143);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(!_loc5_)
                                                                        {
                                                                           §§push(§§pop().length > 0);
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              break loop29;
                                                                              §§goto(addr46);
                                                                           }
                                                                           §§goto(addr222);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == null);
                                                                           if(!(_loc5_ && charset))
                                                                           {
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              addr235:
                                                                           }
                                                                           addr236:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr241:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 addr305:
                                                                                 this.§14§ = this.§!!D§ = this.§1!"§.length;
                                                                                 §§push(_loc5_);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr322:
                                                                                    if(!doCompress)
                                                                                    {
                                                                                       addr323:
                                                                                    }
                                                                                    §§goto(addr324);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                                 addr205:
                                                                              }
                                                                           }
                                                                        }
                                                                        addr225:
                                                                        addr185:
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr323);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr225);
                                                                  §§goto(addr207);
                                                               }
                                                               addr207:
                                                               addr180:
                                                               addr252:
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                      §§goto(addr70);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr305);
                                                   }
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr190);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc5_ && doCompress))
                                          {
                                             if(_loc6_ || doCompress)
                                             {
                                                §§goto(addr205);
                                             }
                                             break;
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr324);
                              }
                              §§goto(addr257);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr252);
         }
      }
      
      public function §+=§(stream:IDataOutput, includeAdler32:Boolean, centralDir:Boolean = false, centralDirOffset:uint = 0) : uint
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         if(_loc19_)
         {
         }
         var headerId:* = null;
         var extraBytes:ByteArray = null;
         var compressed:Boolean = false;
         if(!_loc20_)
         {
         }
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
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 while(true)
                                 {
                                    addr263:
                                    while(true)
                                    {
                                       addr258:
                                       while(_loc20_)
                                       {
                                          continue loop6;
                                          if(!(_loc19_ && stream))
                                          {
                                             continue loop1;
                                          }
                                       }
                                       continue loop7;
                                    }
                                    addr36:
                                    if(_loc19_ && stream)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       addr45:
                                       §§push(stream);
                                       if(this.§4?§)
                                       {
                                          addr57:
                                          §§pop().writeShort(int(COMPRESSION_DEFLATED));
                                          if(_loc20_)
                                          {
                                             addr61:
                                             if(_loc20_ || this)
                                             {
                                                if(!_loc19_)
                                                {
                                                   §§goto(addr36);
                                                }
                                                addr301:
                                                var d:Date = this.§2!3§;
                                                addr294:
                                                if(_loc20_ || centralDir)
                                                {
                                                }
                                                §§push(uint(d.getSeconds()) | uint(d.getMinutes()) << 5);
                                                if(_loc20_)
                                                {
                                                   §§push(§§pop() | uint(d.getHours()) << 11);
                                                }
                                                var msdosTime:uint = §§pop();
                                                if(_loc20_ || centralDir)
                                                {
                                                }
                                                §§push(uint(d.getDate()) | uint(d.getMonth() + 1) << 5);
                                                if(_loc20_ || includeAdler32)
                                                {
                                                   §§push(§§pop() | uint(d.getFullYear() - 1980) << 9);
                                                }
                                                var msdosDate:uint = §§pop();
                                                if(!_loc19_)
                                                {
                                                   stream.writeShort(msdosTime);
                                                   stream.writeShort(msdosDate);
                                                   addr451:
                                                   addr468:
                                                   addr470:
                                                   addr462:
                                                   if(!_loc19_)
                                                   {
                                                      stream.writeUnsignedInt(this.§&!H§);
                                                      stream.writeUnsignedInt(this.§!!D§);
                                                      addr441:
                                                      addr448:
                                                      if(!(_loc19_ && stream))
                                                      {
                                                         if(_loc20_)
                                                         {
                                                            addr406:
                                                            if(!_loc19_)
                                                            {
                                                               if(_loc20_ || centralDir)
                                                               {
                                                                  if(_loc20_ || includeAdler32)
                                                                  {
                                                                     addr381:
                                                                     stream.writeUnsignedInt(this.§14§);
                                                                     if(!_loc19_)
                                                                     {
                                                                        if(_loc20_ || includeAdler32)
                                                                        {
                                                                           if(_loc20_ || centralDir)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 var ba:ByteArray = new ByteArray();
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    ba.endian = Endian.LITTLE_ENDIAN;
                                                                                    addr553:
                                                                                 }
                                                                                 addr544:
                                                                                 addr551:
                                                                                 if(this.§2!"§ == "utf-8")
                                                                                 {
                                                                                    addr529:
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          addr534:
                                                                                          if(!(_loc20_ || centralDir))
                                                                                          {
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                          ba.writeUTFBytes(this.§>!#§);
                                                                                          addr554:
                                                                                          var filenameSize:uint = ba.position;
                                                                                          if(_loc19_)
                                                                                          {
                                                                                          }
                                                                                          var _loc17_:int = 0;
                                                                                          var _loc18_:* = this.§@!Q§;
                                                                                          addr679:
                                                                                          for(headerId in _loc18_)
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             extraBytes = this.§@!Q§[headerId] as ByteArray;
                                                                                             if(!(_loc19_ && this))
                                                                                             {
                                                                                                addr678:
                                                                                                if(extraBytes != null)
                                                                                                {
                                                                                                   ba.writeShort(uint(headerId));
                                                                                                   addr676:
                                                                                                   addr675:
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      ba.writeShort(uint(extraBytes.length));
                                                                                                      addr660:
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         addr623:
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            if(!(_loc19_ && centralDir))
                                                                                                            {
                                                                                                               if(_loc20_ || centralDir)
                                                                                                               {
                                                                                                                  if(!(_loc19_ && includeAdler32))
                                                                                                                  {
                                                                                                                     addr608:
                                                                                                                     ba.writeBytes(extraBytes);
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        if(_loc20_ || stream)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr608);
                                                                                                                           }
                                                                                                                           §§goto(addr679);
                                                                                                                        }
                                                                                                                        §§goto(addr608);
                                                                                                                     }
                                                                                                                     §§goto(addr623);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr676);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr660);
                                                                                                      }
                                                                                                      §§goto(addr675);
                                                                                                   }
                                                                                                   §§goto(addr678);
                                                                                                }
                                                                                                §§goto(addr679);
                                                                                             }
                                                                                             §§goto(addr676);
                                                                                          }
                                                                                          if(_loc20_ || includeAdler32)
                                                                                          {
                                                                                          }
                                                                                          addr923:
                                                                                          addr927:
                                                                                          if(includeAdler32)
                                                                                          {
                                                                                             addr924:
                                                                                             addr925:
                                                                                             if(!this.§<&§)
                                                                                             {
                                                                                                addr920:
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr900:
                                                                                                      compressed = this.§4?§;
                                                                                                      addr901:
                                                                                                      addr899:
                                                                                                      addr895:
                                                                                                      §§push(compressed);
                                                                                                      if(_loc20_ || centralDir)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr889:
                                                                                                            this.uncompress();
                                                                                                            addr892:
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               addr861:
                                                                                                               this.§?!d§ = ChecksumUtil.§%,§(this.§1!"§,0,this.§1!"§.length);
                                                                                                               addr853:
                                                                                                               addr873:
                                                                                                               if(!(_loc19_ && centralDir))
                                                                                                               {
                                                                                                                  this.§<&§ = true;
                                                                                                                  addr843:
                                                                                                                  if(!(_loc19_ && stream))
                                                                                                                  {
                                                                                                                     addr831:
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        §§push(compressed);
                                                                                                                        if(!(_loc19_ && stream))
                                                                                                                        {
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              if(!(_loc19_ && includeAdler32))
                                                                                                                              {
                                                                                                                                 if(!(_loc19_ && includeAdler32))
                                                                                                                                 {
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr815:
                                                                                                                                          this.compress();
                                                                                                                                          addr771:
                                                                                                                                          ba.writeShort(56026);
                                                                                                                                          addr776:
                                                                                                                                          addr786:
                                                                                                                                          if(!(_loc19_ && stream))
                                                                                                                                          {
                                                                                                                                             addr768:
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                ba.writeShort(4);
                                                                                                                                                addr745:
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_ || includeAdler32)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc19_ && includeAdler32))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr735:
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr715:
                                                                                                                                                                     ba.writeUnsignedInt(this.§?!d§);
                                                                                                                                                                     if(_loc20_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc19_ && centralDir))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc19_ && centralDir))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr715);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr928:
                                                                                                                                                                                             var extrafieldsSize:uint = ba.position - filenameSize;
                                                                                                                                                                                             if(_loc20_ || centralDir)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1039:
                                                                                                                                                                                                §§push(Boolean(centralDir));
                                                                                                                                                                                                §§push(Boolean(centralDir));
                                                                                                                                                                                                if(!(_loc19_ && centralDir))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1060:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1050:
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   addr1051:
                                                                                                                                                                                                   if(!(_loc19_ && centralDir))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1002:
                                                                                                                                                                                                      §§push(this.§'A§.length > 0);
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_ || centralDir)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1015:
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            if(!(_loc19_ && centralDir))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1024:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1036:
                                                                                                                                                                                                                           §§push(this.§2!"§);
                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop() != "utf-8")
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 ba.writeMultiByte(this.§'A§,this.§2!"§);
                                                                                                                                                                                                                                 addr973:
                                                                                                                                                                                                                                 if(_loc20_ || includeAdler32)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc20_ || centralDir))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr973);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr960:
                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1061:
                                                                                                                                                                                                                                             §§push(ba.position - filenameSize);
                                                                                                                                                                                                                                             if(_loc20_ || includeAdler32)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - extrafieldsSize);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             var commentSize:uint = §§pop();
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                stream.writeShort(filenameSize);
                                                                                                                                                                                                                                                stream.writeShort(extrafieldsSize);
                                                                                                                                                                                                                                                addr1275:
                                                                                                                                                                                                                                                addr1269:
                                                                                                                                                                                                                                                addr1266:
                                                                                                                                                                                                                                                addr1260:
                                                                                                                                                                                                                                                addr1277:
                                                                                                                                                                                                                                                if(centralDir)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1250:
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1253:
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            stream.writeShort(commentSize);
                                                                                                                                                                                                                                                            addr1246:
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               stream.writeShort(0);
                                                                                                                                                                                                                                                               addr1235:
                                                                                                                                                                                                                                                               if(_loc20_ || centralDir)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  stream.writeShort(0);
                                                                                                                                                                                                                                                                  addr1205:
                                                                                                                                                                                                                                                                  if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc19_ && centralDir))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        stream.writeUnsignedInt(0);
                                                                                                                                                                                                                                                                        stream.writeUnsignedInt(centralDirOffset);
                                                                                                                                                                                                                                                                        addr1199:
                                                                                                                                                                                                                                                                        addr1196:
                                                                                                                                                                                                                                                                        addr1190:
                                                                                                                                                                                                                                                                        if(_loc20_ || centralDir)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1170:
                                                                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1128:
                                                                                                                                                                                                                                                                                 §§push(filenameSize);
                                                                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + extrafieldsSize);
                                                                                                                                                                                                                                                                                    if(!(_loc19_ && stream))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + commentSize);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(§§pop() > 0)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1145:
                                                                                                                                                                                                                                                                                       if(_loc20_ || stream)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1160:
                                                                                                                                                                                                                                                                                             if(_loc20_ || centralDir)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1090:
                                                                                                                                                                                                                                                                                                stream.writeBytes(ba);
                                                                                                                                                                                                                                                                                                if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc19_ && centralDir))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc19_ && stream))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc19_ && stream))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1090);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1280:
                                                                                                                                                                                                                                                                                                                     var fileSize:* = uint(0);
                                                                                                                                                                                                                                                                                                                     addr1278:
                                                                                                                                                                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1577:
                                                                                                                                                                                                                                                                                                                        addr1584:
                                                                                                                                                                                                                                                                                                                        if(!centralDir && this.§1!"§.length > 0)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1570:
                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1573:
                                                                                                                                                                                                                                                                                                                              §§push(this.§4?§);
                                                                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1559:
                                                                                                                                                                                                                                                                                                                                    addr1560:
                                                                                                                                                                                                                                                                                                                                    §§push(HAS_UNCOMPRESS);
                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || stream)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1516:
                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                          if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             if(!(_loc19_ && stream))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1534:
                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   if(_loc20_ || stream)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1542:
                                                                                                                                                                                                                                                                                                                                                         if(_loc20_ || includeAdler32)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1550:
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(HAS_INFLATE);
                                                                                                                                                                                                                                                                                                                                                               if(_loc20_ || includeAdler32)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1483:
                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc19_ && stream))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1499:
                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1461:
                                                                                                                                                                                                                                                                                                                                                                                    fileSize = uint(this.§1!"§.length);
                                                                                                                                                                                                                                                                                                                                                                                    stream.writeBytes(this.§1!"§,0,fileSize);
                                                                                                                                                                                                                                                                                                                                                                                    addr1445:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc19_ && centralDir)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1559);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§push(30 + filenameSize);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1590:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(extrafieldsSize);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(commentSize);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1604:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(fileSize);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                var size:uint = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1667:
                                                                                                                                                                                                                                                                                                                                                                                                   if(centralDir)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1643:
                                                                                                                                                                                                                                                                                                                                                                                                         size += 16;
                                                                                                                                                                                                                                                                                                                                                                                                         addr1640:
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc20_ || includeAdler32)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1609:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(size);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1640);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1643);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1667);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1665:
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1665);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1643);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1609);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1643);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1604);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1604);
                                                                                                                                                                                                                                                                                                                                                                                    addr1360:
                                                                                                                                                                                                                                                                                                                                                                                    addr1502:
                                                                                                                                                                                                                                                                                                                                                                                    addr1501:
                                                                                                                                                                                                                                                                                                                                                                                    addr1462:
                                                                                                                                                                                                                                                                                                                                                                                    addr1455:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§1!"§.length - 6);
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1421:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(uint(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc19_ && centralDir))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       fileSize = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       addr1429:
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1392:
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc19_ && centralDir))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   stream.writeBytes(this.§1!"§,2,fileSize);
                                                                                                                                                                                                                                                                                                                                                                                                   addr1382:
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc19_ && centralDir)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1582);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1360);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1570);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1550);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1573);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1590);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1581);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1573);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1577);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1542);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1483);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1560);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1577);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1499);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1577);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1534);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1577);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1581);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1542);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(uint(this.§1!"§.length));
                                                                                                                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       fileSize = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1373:
                                                                                                                                                                                                                                                                                                                                       if(_loc20_ || includeAdler32)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1316:
                                                                                                                                                                                                                                                                                                                                          stream.writeBytes(this.§1!"§,0,fileSize);
                                                                                                                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc20_ || centralDir)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc19_ && includeAdler32))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1314:
                                                                                                                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1316);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1501);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1392);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1316);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1445);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1421);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1604);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1577);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1584);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1314);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1090);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1199);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1196);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1199);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1170);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1145);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1160);
                                                                                                                                                                                                                                                                                                addr1167:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1253);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1250);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1205);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1278);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1280);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1190);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1235);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1246);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1275);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1269);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1266);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1260);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1277);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1128);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1167);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             ba.writeUTFBytes(this.§'A§);
                                                                                                                                                                                                                                             addr998:
                                                                                                                                                                                                                                             addr997:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1061);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr998);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1036);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr998);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr997);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1002);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1051);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1036);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1061);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1039);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1050);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1039);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1015);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1060);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1024);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr960);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr924);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr920);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr892);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr831);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr715);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr889);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr776);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr735);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr901);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr745);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr920);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr853);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr815);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr786);
                                                                                                                                                }
                                                                                                                                                §§goto(addr768);
                                                                                                                                             }
                                                                                                                                             §§goto(addr873);
                                                                                                                                          }
                                                                                                                                          addr818:
                                                                                                                                          §§goto(addr818);
                                                                                                                                       }
                                                                                                                                       §§goto(addr771);
                                                                                                                                    }
                                                                                                                                    §§goto(addr923);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr924);
                                                                                                                           }
                                                                                                                           §§goto(addr899);
                                                                                                                        }
                                                                                                                        §§goto(addr901);
                                                                                                                     }
                                                                                                                     §§goto(addr843);
                                                                                                                  }
                                                                                                                  §§goto(addr927);
                                                                                                               }
                                                                                                               §§goto(addr889);
                                                                                                            }
                                                                                                            §§goto(addr895);
                                                                                                         }
                                                                                                         §§goto(addr861);
                                                                                                      }
                                                                                                      §§goto(addr900);
                                                                                                   }
                                                                                                   §§goto(addr925);
                                                                                                }
                                                                                                addr919:
                                                                                                §§goto(addr919);
                                                                                             }
                                                                                             §§goto(addr815);
                                                                                          }
                                                                                          §§goto(addr928);
                                                                                          addr491:
                                                                                          addr523:
                                                                                       }
                                                                                       §§goto(addr553);
                                                                                    }
                                                                                    §§goto(addr551);
                                                                                 }
                                                                                 ba.writeMultiByte(this.§>!#§,this.§2!"§);
                                                                                 addr502:
                                                                                 if(!(_loc19_ && this))
                                                                                 {
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          if(_loc19_ && stream)
                                                                                          {
                                                                                             §§goto(addr534);
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                       §§goto(addr502);
                                                                                    }
                                                                                    §§goto(addr529);
                                                                                 }
                                                                                 §§goto(addr523);
                                                                              }
                                                                              §§goto(addr381);
                                                                           }
                                                                           §§goto(addr451);
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                               §§goto(addr448);
                                                            }
                                                            §§goto(addr441);
                                                            addr438:
                                                         }
                                                         §§goto(addr470);
                                                      }
                                                      §§goto(addr462);
                                                   }
                                                   addr459:
                                                   §§goto(addr459);
                                                }
                                                §§goto(addr438);
                                             }
                                             while(true)
                                             {
                                                addr240:
                                                while(true)
                                                {
                                                   loop14:
                                                   do
                                                   {
                                                      if(stream == null)
                                                      {
                                                         continue;
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!centralDir)
                                                         {
                                                            stream.writeUnsignedInt(FZip.SIG_LOCAL_FILE_HEADER);
                                                            while(true)
                                                            {
                                                               if(_loc19_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(_loc20_)
                                                               {
                                                                  if(!(_loc19_ && includeAdler32))
                                                                  {
                                                                     if(!_loc19_)
                                                                     {
                                                                        if(!(_loc20_ || stream))
                                                                        {
                                                                           while(!(_loc19_ && stream))
                                                                           {
                                                                           }
                                                                           continue loop14;
                                                                           addr215:
                                                                        }
                                                                        §§goto(addr146);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           stream.writeUnsignedInt(FZip.SIG_CENTRAL_FILE_HEADER);
                                                                           while(_loc20_)
                                                                           {
                                                                              while(_loc20_)
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 stream.writeShort(this.§>9§ << 8 | 20);
                                                                                 §§goto(addr210);
                                                                              }
                                                                              addr210:
                                                                              §§goto(addr263);
                                                                           }
                                                                           continue loop15;
                                                                           addr208:
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc19_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr258);
                                                            addr171:
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                   }
                                                   while(_loc19_);
                                                   
                                                   return 0;
                                                }
                                                §§goto(addr61);
                                             }
                                             addr243:
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr57);
                                       §§push(int(COMPRESSION_NONE));
                                    }
                                    if(this.§2!3§ != null)
                                    {
                                       §§goto(addr294);
                                    }
                                    else
                                    {
                                       §§push(new Date());
                                    }
                                    §§goto(addr301);
                                 }
                              }
                           }
                        }
                     }
                     if(_loc19_ && centralDir)
                     {
                        continue;
                     }
                     while(_loc20_)
                     {
                        stream.writeShort(this.§2!"§ == "utf-8" ? int(2048) : int(0));
                        while(true)
                        {
                           if(_loc20_)
                           {
                              continue;
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr109);
                  }
               }
            }
         }
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
            loop1:
            while(true)
            {
               §§push(§§pop());
               if(_loc2_ || stream)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr101:
                     while(!_loc3_)
                     {
                        §§push(Boolean(this.§0!R§(stream)));
                        while(_loc2_ || stream)
                        {
                           §§push(this.§0!R§ === this.§]!@§);
                           if(!(_loc3_ && stream))
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr38);
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
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
                  if(!(_loc3_ && this))
                  {
                     if(_loc2_)
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr85);
               }
               addr38:
               return §§pop();
            }
         }
      }
      
      protected function §]!@§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
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
      
      protected function §[i§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && stream))
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
                     if(_loc2_ || stream)
                     {
                        return §§pop();
                     }
                  }
                  loop2:
                  while(!_loc3_)
                  {
                     loop3:
                     while(true)
                     {
                        this.§3!+§(stream);
                        do
                        {
                           if(_loc2_)
                           {
                              loop5:
                              while(this.§3F§ + this.§"=§ <= 0)
                              {
                                 this.§0!R§ = this.§9!P§;
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                    addr92:
                                    if(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          addr41:
                                          §§push(true);
                                          break loop1;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        while(_loc3_ && _loc2_);
                        
                        this.§0!R§ = this.§;!P§;
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr41);
      }
      
      protected function §;!P§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && stream)
         {
         }
         if(!(_loc3_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(stream.bytesAvailable >= this.§3F§ + this.§"=§)
                  {
                     while(true)
                     {
                        continue loop1;
                        addr124:
                        this.§&+§(stream);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              while(!(_loc3_ && stream))
                              {
                                 this.§0!R§ = this.§9!P§;
                                 while(_loc3_)
                                 {
                                 }
                                 if(!_loc3_)
                                 {
                                    §§push(true);
                                    break loop1;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr43);
            }
         }
         §§push(false);
         if(_loc2_)
         {
            return §§pop();
         }
         addr43:
         return §§pop();
      }
      
      protected function §9!P§(stream:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc4_ && stream)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc4_)
               {
               }
               if(!_loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(true);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
               }
               var continueParsing:* = §§pop();
               if(_loc3_)
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§!v§);
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(this.§!!D§ != 0)
                           {
                              if(stream.bytesAvailable >= this.§!!D§)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_ || continueParsing)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(!(_loc4_ && continueParsing))
                                       {
                                          continue loop3;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          addr261:
                                          while(true)
                                          {
                                             this.§0!R§ = this.§]!@§;
                                             continue loop5;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr216:
                                       if(_loc3_ || _loc3_)
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             this.§0!R§ = this.§]!@§;
                                             addr193:
                                             while(_loc4_ && _loc3_)
                                             {
                                                continue loop20;
                                             }
                                             if(_loc3_ || continueParsing)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(continueParsing);
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               continueParsing = §§pop();
                                                               break loop10;
                                                            }
                                                            addr238:
                                                         }
                                                         return §§pop();
                                                      }
                                                      addr92:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr93:
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continueParsing = §§pop();
                                                               loop11:
                                                               for(; !(_loc4_ && this); if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(_loc3_ || stream)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  continue loop3;
                                                               })
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_ || continueParsing)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr146:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§0!R§ = this.§]!@§;
                                                                     break loop11;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            addr237:
                                                            while(true)
                                                            {
                                                               continue loop19;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr93);
                                                }
                                                while(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr54);
                                                }
                                                addr54:
                                                while(true)
                                                {
                                                }
                                                addr260:
                                             }
                                             §§goto(addr261);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr237);
                                    }
                                 }
                                 §§goto(addr193);
                              }
                              else
                              {
                                 §§push(false);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr216);
                        }
                     }
                  }
               }
               §§goto(addr260);
            }
         }
      }
      
      protected function §3!+§(data:IDataInput) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc12_)
         {
         }
         if(_loc12_ || flag)
         {
            while(true)
            {
               while(true)
               {
                  while(_loc12_ || vSrc)
                  {
                     loop3:
                     while(true)
                     {
                        addr97:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function §&+§(data:IDataInput) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && headerId)
         {
         }
         var headerId:* = uint(0);
         var dataSize:* = uint(0);
         var extraBytes:ByteArray = null;
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(this.§2!"§ != "utf-8")
                  {
                     this.§>!#§ = data.readMultiByte(this.§3F§,this.§2!"§);
                     while(_loc7_ || bytesLeft)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           if(_loc7_ || this)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              this.§>!#§ = data.readUTFBytes(this.§3F§);
                              break loop2;
                           }
                           addr94:
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           continue loop0;
                           addr103:
                        }
                        while(true)
                        {
                           if(_loc6_ && bytesLeft)
                           {
                              break loop2;
                           }
                           §§goto(addr94);
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr103);
                  }
               }
            }
            addr112:
            §§push(this.§"=§);
            if(_loc7_ || data)
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
                        loop10:
                        while(true)
                        {
                           if(!(_loc6_ && data))
                           {
                              if(!(_loc7_ || headerId))
                              {
                                 continue loop7;
                              }
                              §§push(uint(data.readUnsignedShort()));
                              if(!(_loc7_ || headerId))
                              {
                                 continue loop8;
                              }
                              headerId = §§pop();
                              loop11:
                              while(true)
                              {
                                 §§push(uint(data.readUnsignedShort()));
                                 if(!(_loc6_ && this))
                                 {
                                    dataSize = §§pop();
                                    if(_loc7_ || bytesLeft)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§push(dataSize);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(bytesLeft);
                                             if(_loc7_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         throw new Error("Parse error in file " + this.§>!#§ + ": Extra field data size too big.");
                                                      }
                                                      addr477:
                                                   }
                                                   else
                                                   {
                                                      addr535:
                                                      §§push(bytesLeft);
                                                      if(!(_loc7_ || headerId))
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(0);
                                                      if(_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr511:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         loop23:
                                                         do
                                                         {
                                                            if(_loc6_ && bytesLeft)
                                                            {
                                                               break loop11;
                                                            }
                                                            while(!(_loc6_ && headerId))
                                                            {
                                                               data.readBytes(new ByteArray(),0,bytesLeft);
                                                               while(!_loc6_)
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     continue loop23;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr535);
                                                            }
                                                         }
                                                         while(!_loc7_);
                                                         
                                                         §§goto(addr477);
                                                      }
                                                   }
                                                   return;
                                                }
                                                §§push(headerId);
                                                loop14:
                                                for(; !_loc6_; if(_loc6_ && this)
                                                {
                                                   continue;
                                                },§§push(0),if(!(_loc7_ || headerId))
                                                {
                                                   continue loop9;
                                                },if(§§pop() > §§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(false)
                                                   {
                                                      §§goto(addr130);
                                                   }
                                                   else
                                                   {
                                                      extraBytes = new ByteArray();
                                                      if(!(_loc6_ && headerId))
                                                      {
                                                         data.readBytes(extraBytes,0,dataSize);
                                                         addr423:
                                                         this.§@!Q§[headerId] = extraBytes;
                                                         addr442:
                                                         addr440:
                                                         addr432:
                                                      }
                                                      if(_loc7_ || data)
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr423);
                                                                  }
                                                                  §§goto(addr443);
                                                               }
                                                               §§goto(addr442);
                                                            }
                                                            §§goto(addr440);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      addr429:
                                                      §§goto(addr429);
                                                   }
                                                },§§goto(addr443))
                                                {
                                                   §§push(56026);
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(§§pop() === §§pop());
                                                   if(_loc7_ || headerId)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         addr280:
                                                         §§push(§§pop());
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr291:
                                                               while(true)
                                                               {
                                                                  §§push(dataSize);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr511);
                                                            }
                                                            addr290:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && bytesLeft))
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     this.§?!d§ = data.readUnsignedInt();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        addr189:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ || headerId)
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           this.§<&§ = true;
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              addr443:
                                                                              §§push(bytesLeft);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr446:
                                                                                 §§push(dataSize);
                                                                                 break loop13;
                                                                              }
                                                                              continue loop8;
                                                                              addr130:
                                                                           }
                                                                           §§goto(addr527);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr291);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr535);
                                                            }
                                                            else
                                                            {
                                                               §§push(dataSize);
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§goto(addr446);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr280);
                                                }
                                                continue;
                                                §§goto(addr511);
                                             }
                                             break;
                                          }
                                          §§push(uint(§§pop() - (§§pop() + 4)));
                                          if(_loc7_)
                                          {
                                             bytesLeft = §§pop();
                                             if(_loc6_ && bytesLeft)
                                             {
                                             }
                                             continue loop7;
                                          }
                                          continue loop8;
                                          if(!(_loc7_ || data))
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop11;
                                          }
                                          if(_loc7_ || headerId)
                                          {
                                             §§goto(addr174);
                                          }
                                          else
                                          {
                                             §§goto(addr519);
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr446);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr533);
                     }
                  }
               }
            }
            addr60:
         }
         if(false)
         {
            §§goto(addr60);
         }
         §§goto(addr112);
      }
      
      function §<c§(data:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         var flg:* = uint(0);
         if(!(_loc3_ && flg))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§!n§);
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
                                             §§push(this.§;s§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                addr536:
                                                addr467:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr537:
                                                   while(_loc4_)
                                                   {
                                                   }
                                                   continue loop8;
                                                }
                                                if(_loc3_ && data)
                                                {
                                                   continue;
                                                }
                                                §§push(Boolean(§§pop()));
                                                loop29:
                                                while(!_loc3_)
                                                {
                                                   loop30:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(this.§<&§);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop29;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_ || flg)
                                                               {
                                                                  §§goto(addr467);
                                                               }
                                                            }
                                                            continue loop10;
                                                            addr460:
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            addr433:
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     throw new Error("Adler32 checksum not found.");
                                                                  }
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     loop41:
                                                                     while(true)
                                                                     {
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           this.§1!"§.writeByte(120);
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && flg))
                                                                                 {
                                                                                    §§push(this.§-!O§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(~§§pop());
                                                                                       if(!(_loc4_ || _loc3_))
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(6);
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          §§push(§§pop() << §§pop());
                                                                                          if(!(_loc4_ || flg))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(192);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() & §§pop());
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    addr358:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr479:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       loop46:
                                                                                       while(true)
                                                                                       {
                                                                                          data.readBytes(this.§1!"§,0,this.§!!D§);
                                                                                          loop47:
                                                                                          while(true)
                                                                                          {
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§4?§ = true;
                                                                                                loop18:
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§1!"§.position = 0;
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_ || data)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  addr49:
                                                                                                                  if(_loc3_ && data)
                                                                                                                  {
                                                                                                                     break loop17;
                                                                                                                  }
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     continue loop47;
                                                                                                                  }
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        addr262:
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           while(_loc4_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr262);
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                           addr306:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§1!"§.writeUnsignedInt(this.§?!d§);
                                                                                                                           addr237:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              continue loop43;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           data.readBytes(this.§1!"§,2,this.§!!D§);
                                                                                                                           break loop18;
                                                                                                                        }
                                                                                                                        addr542:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(HAS_UNCOMPRESS);
                                                                                                                           break loop23;
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     addr491:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        addr492:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue loop4;
                                                                                                                              addr506:
                                                                                                                           }
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                        §§goto(addr433);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr255:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  data.readBytes(this.§1!"§,0,this.§!!D§);
                                                                                                                  addr152:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ || data))
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop41;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && flg))
                                                                                                                        {
                                                                                                                           this.§4?§ = false;
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(flg);
                                                                                                                              if(!(_loc3_ && data))
                                                                                                                              {
                                                                                                                                 §§push(31);
                                                                                                                                 §§push(120);
                                                                                                                                 if(!(_loc3_ && flg))
                                                                                                                                 {
                                                                                                                                    addr348:
                                                                                                                                    §§push(8);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() << §§pop());
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr341:
                                                                                                                                          §§push(§§pop() | flg);
                                                                                                                                       }
                                                                                                                                       §§push(31);
                                                                                                                                    }
                                                                                                                                    §§push(uint(§§pop() + (§§pop() - §§pop() % §§pop())));
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       flg = §§pop();
                                                                                                                                       break loop19;
                                                                                                                                    }
                                                                                                                                    addr392:
                                                                                                                                    addr392:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       flg = §§pop();
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr341);
                                                                                                                              }
                                                                                                                              §§goto(addr348);
                                                                                                                           }
                                                                                                                           addr354:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr208:
                                                                                                            }
                                                                                                            else if(!_loc3_)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     addr316:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§1!"§.writeByte(flg);
                                                                                                                        §§goto(addr306);
                                                                                                                        break loop19;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§1!"§.position = this.§1!"§.length;
                                                                                                                     §§goto(addr255);
                                                                                                                  }
                                                                                                                  addr277:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr135);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_ && this)
                                                                                                               {
                                                                                                                  break loop19;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr152);
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr316);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ || this))
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr277);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr189:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && data))
                                                                                                {
                                                                                                   if(_loc4_ || data)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop46;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr208);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr541:
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr247);
                                                                                                }
                                                                                                §§goto(addr237);
                                                                                                §§goto(addr49);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr479:
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr536);
                                                               }
                                                            }
                                                            §§goto(addr491);
                                                         }
                                                         §§goto(addr506);
                                                         §§goto(addr492);
                                                      }
                                                      §§goto(addr479);
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr537);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§!n§);
                                          if(_loc3_ && data)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc4_ || this)
                                          {
                                             §§push(COMPRESSION_NONE);
                                             if(_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   throw new Error("Compression method " + this.§!n§ + " is not supported.");
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr358);
                                       }
                                       §§goto(addr541);
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
         §§goto(addr294);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || this)
         {
            loop0:
            while(true)
            {
               §§push(this.§4?§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           if(this.§1!"§.length <= 0)
                           {
                              this.§!!D§ = 0;
                              loop5:
                              while(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          this.§14§ = 0;
                                          loop7:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc1_ || this)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               continue;
                                                            }
                                                            addr345:
                                                            loop20:
                                                            while(true)
                                                            {
                                                               this.§1!"§.position = 0;
                                                               addr338:
                                                               while(true)
                                                               {
                                                                  addr332:
                                                                  while(true)
                                                                  {
                                                                     this.§14§ = this.§1!"§.length;
                                                                     addr312:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §§push(HAS_INFLATE);
                                                                           while(!_loc2_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 this.§1!"§.deflate();
                                                                                 addr301:
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    this.§!!D§ = this.§1!"§.length;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§1!"§.position = 0;
                                                                                             addr146:
                                                                                             if(_loc1_ || _loc1_)
                                                                                             {
                                                                                                break loop7;
                                                                                             }
                                                                                             addr156:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop10;
                                                                                                §§goto(addr146);
                                                                                             }
                                                                                          }
                                                                                          addr137:
                                                                                          break loop2;
                                                                                          addr141:
                                                                                          addr137:
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    addr288:
                                                                                    addr281:
                                                                                 }
                                                                                 continue loop0;
                                                                                 addr294:
                                                                                 addr302:
                                                                              }
                                                                              §§push(HAS_UNCOMPRESS);
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           continue loop2;
                                                                           addr305:
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr141);
                                                         addr219:
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          this.§4?§ = true;
                                          §§goto(addr121);
                                       }
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr302);
                              }
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§goto(addr156);
                                 }
                                 else
                                 {
                                    §§goto(addr187);
                                 }
                                 §§goto(addr196);
                              }
                              continue loop3;
                           }
                           §§goto(addr345);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr137);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(this.§4?§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc1_ && this))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr270:
                           while(true)
                           {
                              §§push(this.§1!"§.length > 0);
                              if(!(_loc1_ && this))
                              {
                                 if(_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              addr249:
                              while(!_loc1_)
                              {
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     loop6:
                     while(§§pop())
                     {
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              this.§1!"§.position = 0;
                              loop9:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(HAS_INFLATE);
                                    for(; _loc2_; §§push(HAS_UNCOMPRESS),if(!(_loc2_ || _loc1_))
                                    {
                                       continue;
                                    },if(!§§pop())
                                    {
                                       this.§1!"§.uncompress();
                                       continue loop9;
                                    },while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr183);
                                       }
                                       §§goto(addr196);
                                    })
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       loop21:
                                       while(true)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             this.§1!"§.inflate();
                                             addr196:
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      this.§1!"§.position = 0;
                                                      addr90:
                                                      addr158:
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ && this))
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr183:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               this.§1!"§.uncompress.apply(this.§1!"§,["deflate"]);
                                                               break loop15;
                                                            }
                                                            continue loop16;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop14;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                   continue loop8;
                                                   addr85:
                                                }
                                                continue loop21;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr249);
                                 }
                                 loop12:
                                 for(; _loc2_ || _loc1_; if(!(_loc2_ || _loc1_))
                                 {
                                    continue;
                                 },if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr65);
                                 },§§goto(addr158))
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       while(true)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§goto(addr85);
                                          }
                                          §§goto(addr175);
                                          addr44:
                                          while(!(_loc1_ && this))
                                          {
                                             continue loop12;
                                             if(_loc1_)
                                             {
                                                continue;
                                             }
                                             if(!_loc1_)
                                             {
                                                break loop6;
                                             }
                                             §§goto(addr68);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr270);
                                    }
                                    §§goto(addr249);
                                 }
                              }
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           this.§4?§ = false;
                           §§goto(addr44);
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         §§push("[FZipFile]");
         if(_loc2_ || _loc1_)
         {
            §§push("\n  name:");
            if(!(_loc1_ && this))
            {
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§>!#§);
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push("\n  date:");
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr79:
                                    §§push(§§pop() + this.§2!3§);
                                    if(!(_loc1_ && this))
                                    {
                                       §§push("\n  sizeCompressed:");
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             addr100:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc1_)
                                             {
                                                §§push(this.§!!D§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc1_)
                                                   {
                                                      §§push("\n  sizeUncompressed:");
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               §§push(this.§14§);
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push("\n  versionHost:");
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        addr149:
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc1_ && this))
                                                                           {
                                                                              addr165:
                                                                              §§push(this.§>9§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    §§push("\n  versionNumber:");
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr185:
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr196:
                                                                                             §§push(this.§!!`§);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                addr200:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   §§push("\n  compressionMethod:");
                                                                                                   if(!(_loc1_ && this))
                                                                                                   {
                                                                                                      addr211:
                                                                                                      if(_loc2_ || this)
                                                                                                      {
                                                                                                         addr219:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc2_ || _loc1_)
                                                                                                         {
                                                                                                            addr227:
                                                                                                            §§push(§§pop() + this.§!n§);
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §§push("\n  encrypted:");
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     addr238:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc2_ || this)
                                                                                                                     {
                                                                                                                        addr246:
                                                                                                                        §§push(this.§;s§);
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc1_ && this))
                                                                                                                           {
                                                                                                                              addr258:
                                                                                                                              §§push("\n  hasDataDescriptor:");
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    addr264:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§!v§);
                                                                                                                                       if(!(_loc1_ && this))
                                                                                                                                       {
                                                                                                                                          addr276:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc2_ || this)
                                                                                                                                          {
                                                                                                                                             addr284:
                                                                                                                                             §§push("\n  hasCompressedPatchedData:");
                                                                                                                                             if(!_loc1_)
                                                                                                                                             {
                                                                                                                                                addr287:
                                                                                                                                                if(!(_loc1_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr300:
                                                                                                                                                      §§push(§§pop() + this.§>!a§);
                                                                                                                                                      if(!_loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr303:
                                                                                                                                                         §§push("\n  filenameEncoding:");
                                                                                                                                                         if(!(_loc1_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr311:
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc1_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr322:
                                                                                                                                                                  §§push(§§pop() + this.§2!"§);
                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push("\n  crc32:");
                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        addr335:
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr338:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr351:
                                                                                                                                                                              §§push(this.§&!H§);
                                                                                                                                                                              if(!_loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(16);
                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr362:
                                                                                                                                                                                       §§push("\n  adler32:");
                                                                                                                                                                                       if(!_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr366:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc1_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr374:
                                                                                                                                                                                             §§push(this.§?!d§);
                                                                                                                                                                                             §§push(16);
                                                                                                                                                                                          }
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                          addr365:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr366);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr374);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr366);
                                                                                                                                                                                 §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr374);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr366);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr365);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr374);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr351);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr338);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr366);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr351);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr366);
                                                                                                                                             }
                                                                                                                                             §§goto(addr335);
                                                                                                                                          }
                                                                                                                                          §§goto(addr322);
                                                                                                                                       }
                                                                                                                                       §§goto(addr300);
                                                                                                                                    }
                                                                                                                                    §§goto(addr351);
                                                                                                                                 }
                                                                                                                                 §§goto(addr366);
                                                                                                                              }
                                                                                                                              §§goto(addr264);
                                                                                                                           }
                                                                                                                           §§goto(addr303);
                                                                                                                        }
                                                                                                                        §§goto(addr276);
                                                                                                                     }
                                                                                                                     §§goto(addr351);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr300);
                                                                                                         }
                                                                                                         §§goto(addr284);
                                                                                                      }
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                   §§goto(addr338);
                                                                                                }
                                                                                                §§goto(addr227);
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          §§goto(addr246);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr211);
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                               §§goto(addr374);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr258);
                                          }
                                       }
                                       §§goto(addr287);
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr335);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr284);
               }
               §§goto(addr149);
            }
            §§goto(addr311);
         }
         §§goto(addr79);
      }
   }
}
