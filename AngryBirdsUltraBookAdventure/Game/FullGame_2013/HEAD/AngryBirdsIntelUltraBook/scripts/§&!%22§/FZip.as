package §&!"§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="open",type="flash.events.Event")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="httpStatus",type="flash.events.HTTPStatusEvent")]
   [Event(name="complete",type="flash.events.Event")]
   [Event(name="parseError",type="deng.fzip.FZipErrorEvent")]
   [Event(name="fileLoaded",type="deng.fzip.FZipEvent")]
   public class FZip extends EventDispatcher
   {
      
      static const SIG_CENTRAL_FILE_HEADER:uint = 33639248;
      
      static const SIG_SPANNING_MARKER:uint = 808471376;
      
      static const SIG_LOCAL_FILE_HEADER:uint = 67324752;
      
      static const SIG_DIGITAL_SIGNATURE:uint = 84233040;
      
      static const SIG_END_OF_CENTRAL_DIRECTORY:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const SIG_DATA_DESCRIPTOR:uint = 134695760;
      
      static const SIG_ARCHIVE_EXTRA_DATA:uint = 134630224;
      
      static const SIG_SPANNING:uint = 134695760;
      
      {
         var SIG_CENTRAL_FILE_HEADER:Boolean = false;
         var SIG_SPANNING_MARKER:Boolean = true;
         if(!(SIG_CENTRAL_FILE_HEADER && FZip))
         {
            while(true)
            {
               SIG_CENTRAL_FILE_HEADER = 33639248;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     SIG_SPANNING_MARKER = 808471376;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           SIG_LOCAL_FILE_HEADER = 67324752;
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 SIG_DIGITAL_SIGNATURE = 84233040;
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       SIG_END_OF_CENTRAL_DIRECTORY = 101010256;
                                       addr167:
                                       while(SIG_SPANNING_MARKER)
                                       {
                                          continue loop6;
                                          if(!(SIG_CENTRAL_FILE_HEADER && SIG_SPANNING_MARKER))
                                          {
                                             continue loop5;
                                          }
                                       }
                                       addr136:
                                       continue loop7;
                                       loop11:
                                       while(SIG_SPANNING_MARKER || SIG_SPANNING_MARKER)
                                       {
                                          if(!SIG_CENTRAL_FILE_HEADER)
                                          {
                                             loop12:
                                             while(!SIG_CENTRAL_FILE_HEADER)
                                             {
                                                SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                                                while(true)
                                                {
                                                   if(SIG_SPANNING_MARKER)
                                                   {
                                                      if(!SIG_SPANNING_MARKER)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(SIG_SPANNING_MARKER || SIG_CENTRAL_FILE_HEADER)
                                                         {
                                                            if(SIG_CENTRAL_FILE_HEADER && FZip)
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§goto(addr103);
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                         addr54:
                                                         if(!(SIG_SPANNING_MARKER || FZip))
                                                         {
                                                            continue;
                                                         }
                                                         if(SIG_SPANNING_MARKER)
                                                         {
                                                            SIG_SPANNING = 134695760;
                                                            addr63:
                                                            if(SIG_SPANNING_MARKER || SIG_CENTRAL_FILE_HEADER)
                                                            {
                                                               addr40:
                                                               if(SIG_CENTRAL_FILE_HEADER)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     SIG_ARCHIVE_EXTRA_DATA = 134630224;
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        addr45:
                                                                        while(true)
                                                                        {
                                                                           if(SIG_CENTRAL_FILE_HEADER)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr47:
                                                                           if(!(SIG_CENTRAL_FILE_HEADER && FZip))
                                                                           {
                                                                              §§goto(addr54);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop16;
                                                                                 §§goto(addr47);
                                                                              }
                                                                              addr76:
                                                                           }
                                                                           §§goto(addr63);
                                                                        }
                                                                        §§goto(addr122);
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                               addr42:
                                                            }
                                                            §§goto(addr45);
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      §§goto(addr167);
                                                      continue loop12;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             continue loop4;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(SIG_CENTRAL_FILE_HEADER && FZip)
               {
                  continue;
               }
               SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
               §§goto(addr136);
            }
         }
         §§goto(addr42);
      }
      
      protected var §+g§:Array;
      
      protected var §#&§:Dictionary;
      
      protected var §@#§:URLStream;
      
      protected var §?b§:String;
      
      protected var §3Z§:Function;
      
      protected var §8s§:FZipFile;
      
      protected var §!!§:ByteArray;
      
      protected var §^r§:uint;
      
      protected var §5X§:uint;
      
      public function FZip(filenameEncoding:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     loop3:
                     do
                     {
                        this.§?b§ = filenameEncoding;
                        while(true)
                        {
                           while(_loc3_ || _loc3_)
                           {
                              continue loop1;
                              while(!(_loc2_ && _loc3_))
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(!_loc3_);
                     
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get §&!^§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc1_)
         {
         }
         §§push(this.§3Z§ === this.§'!O§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function load(request:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(!this.§@#§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr227:
                              while(true)
                              {
                                 §§push(this.§3Z§ == this.§'!O§);
                                 if(_loc2_ || request)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        loop6:
                        while(§§pop())
                        {
                           while(true)
                           {
                              loop17:
                              for(; _loc2_ || request; while(true)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop17;
                                 }
                                 if(_loc2_)
                                 {
                                    §§goto(addr76);
                                 }
                                 else
                                 {
                                    §§goto(addr125);
                                 }
                              },§§goto(addr181))
                              {
                                 if(!_loc3_)
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          this.§3Z§ = this.§,W§;
                                          continue loop17;
                                       }
                                       addr172:
                                       addr118:
                                       while(_loc2_)
                                       {
                                          this.§#&§ = new Dictionary();
                                          continue loop17;
                                       }
                                       while(true)
                                       {
                                          break loop18;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§<S§();
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             continue;
                                          }
                                          addr215:
                                          while(true)
                                          {
                                             this.§@#§ = new URLStream();
                                             addr181:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   this.§@#§.endian = Endian.LITTLE_ENDIAN;
                                                   §§goto(addr172);
                                                   addr38:
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                addr76:
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop17;
                                                }
                                                §§goto(addr86);
                                             }
                                          }
                                       }
                                    }
                                    addr86:
                                 }
                                 else
                                 {
                                    §§goto(addr227);
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               this.§+g§ = [];
               §§goto(addr125);
            }
         }
         §§goto(addr215);
      }
      
      public function loadBytes(bytes:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
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
                  §§push(!this.§@#§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§3Z§ == this.§'!O§);
                                 while(!_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr143:
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       addr160:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr167:
                                          if(_loc2_ || bytes)
                                          {
                                             loop24:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr182:
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      this.§3Z§ = this.§'!O§;
                                                      loop25:
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            addr198:
                                                            while(!_loc3_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            continue loop5;
                                                            addr198:
                                                         }
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     if(_loc3_ && _loc2_)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     addr87:
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr89:
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           §§goto(addr28);
                                                                        }
                                                                        addr236:
                                                                        while(true)
                                                                        {
                                                                           addr224:
                                                                           while(!(_loc3_ && _loc3_))
                                                                           {
                                                                              bytes.endian = Endian.LITTLE_ENDIAN;
                                                                              while(_loc2_)
                                                                              {
                                                                                 continue loop0;
                                                                                 §§goto(addr182);
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr89);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.parse(bytes));
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§goto(addr143);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              addr28:
                                                                              return;
                                                                              addr274:
                                                                           }
                                                                        }
                                                                        §§goto(addr89);
                                                                        addr192:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§+g§ = [];
                                                                        addr263:
                                                                        while(true)
                                                                        {
                                                                           break loop22;
                                                                           §§goto(addr167);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr78:
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            break;
                                                            §§goto(addr121);
                                                         }
                                                         addr121:
                                                         while(true)
                                                         {
                                                            this.§#&§ = new Dictionary();
                                                            addr245:
                                                            while(true)
                                                            {
                                                               addr239:
                                                               addr38:
                                                               while(true)
                                                               {
                                                                  bytes.position = 0;
                                                                  §§goto(addr236);
                                                                  §§goto(addr160);
                                                               }
                                                               if(_loc3_ && bytes)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr28);
                                                            }
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                   }
                                                   §§goto(addr212);
                                                }
                                                else
                                                {
                                                   while(_loc2_)
                                                   {
                                                      this.§3Z§ = this.§,W§;
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr224);
                                                   addr203:
                                                }
                                                §§goto(addr198);
                                             }
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr239);
                                    }
                                    dispatchEvent(new FZipErrorEvent(FZipErrorEvent.PARSE_ERROR,"EOF"));
                                    for(; !_loc3_; if(!_loc2_)
                                    {
                                       continue;
                                    },if(_loc2_)
                                    {
                                       §§goto(addr38);
                                    }
                                    else
                                    {
                                       §§goto(addr160);
                                    })
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr78);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr274);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr245);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            for(; this.§@#§; if(_loc2_)
            {
               continue;
            },this.§@#§.close(),§§goto(addr83))
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§3Z§ = this.§'!O§;
                     while(true)
                     {
                        loop4:
                        while(!(_loc2_ && this))
                        {
                           this.§7n§();
                           loop5:
                           while(true)
                           {
                              while(_loc1_)
                              {
                                 continue loop0;
                                 addr48:
                                 if(_loc2_ && this)
                                 {
                                    continue;
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       break loop0;
                                    }
                                    addr83:
                                    while(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr48);
                                       continue loop10;
                                    }
                                    while(!(_loc2_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§@#§ = null;
                                          §§goto(addr41);
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    addr41:
                                    while(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr68);
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    addr68:
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
            return;
         }
         §§goto(addr65);
      }
      
      public function §!E§(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc11_ && includeAdler32)
         {
         }
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(!_loc11_)
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
                     §§push(stream == null);
                     if(!(_loc11_ && endian))
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc10_ || this)
                           {
                              §§push(§§pop());
                              if(!(_loc11_ && endian))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr165:
                                    while(true)
                                    {
                                       if(_loc10_)
                                       {
                                          §§push(this.§+g§.length > 0);
                                          if(_loc10_ || includeAdler32)
                                          {
                                             if(!_loc10_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr164:
                              }
                              while(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       while(!_loc11_)
                                       {
                                          while(true)
                                          {
                                             while(!_loc11_)
                                             {
                                                while(_loc10_)
                                                {
                                                   loop13:
                                                   while(_loc10_)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc11_ && stream)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(!(_loc10_ || endian))
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            endian = stream.endian;
                                                            continue loop14;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr164);
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function §`!T§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            if(!_loc1_)
            {
               addr56:
               §§push(this.§+g§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     addr64:
                     §§push(uint(this.§+g§.length));
                     if(_loc2_ || _loc1_)
                     {
                     }
                  }
                  else
                  {
                     return uint(0);
                  }
                  return §§pop();
               }
            }
            §§goto(addr64);
         }
         §§goto(addr56);
      }
      
      public function §'![§(index:uint) : FZipFile
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(_loc3_ && this)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(this.§+g§);
               if(_loc3_ && index)
               {
                  break;
               }
               if(!§§pop())
               {
                  return null;
               }
               addr85:
               if(_loc2_)
               {
                  continue loop0;
               }
            }
            addr76:
            §§goto(addr85);
         }
      }
      
      public function §&g§(name:String) : FZipFile
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || name)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!this.§#&§[name])
                     {
                        §§push(null);
                        break;
                     }
                     if(!_loc2_)
                     {
                        addr63:
                        §§push(this.§#&§[name] as FZipFile);
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      public function §"J§(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && name))
         {
            while(true)
            {
               while(_loc5_ || doCompress)
               {
                  loop2:
                  while(!_loc4_)
                  {
                     while(_loc4_)
                     {
                        continue loop2;
                     }
                     §§push(this);
                     if(_loc5_ || content)
                     {
                        §§push(this.§+g§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              addr56:
                              §§push(uint(this.§+g§.length));
                              if(_loc4_)
                              {
                              }
                           }
                           else
                           {
                              §§push(uint(0));
                           }
                           return §§pop().§'O§(§§pop(),name,content,doCompress);
                        }
                     }
                     §§goto(addr56);
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §?H§(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && content)
         {
         }
         if(_loc5_ || content)
         {
            while(true)
            {
            }
            addr116:
         }
         loop1:
         while(true)
         {
            addr111:
            while(true)
            {
               continue loop1;
            }
         }
         §§push(this);
         if(!(_loc6_ && this))
         {
            §§push(this.§+g§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  addr60:
                  §§push(uint(this.§+g§.length));
                  if(_loc5_ || charset)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§%b§(§§pop(),name,content,charset,doCompress);
            }
         }
         §§goto(addr60);
      }
      
      public function §'O§(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
         }
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc6_ || name)
                  {
                     loop3:
                     while(true)
                     {
                        addr157:
                        while(true)
                        {
                           loop5:
                           for(; _loc6_ || content; if(!(_loc7_ && index))
                           {
                              continue loop2;
                           })
                           {
                              if(this.§+g§ != null)
                              {
                                 while(true)
                                 {
                                    if(this.§#&§ != null)
                                    {
                                       if(this.§#&§[name])
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop5;
                                             }
                                             addr133:
                                             while(true)
                                             {
                                                this.§+g§ = [];
                                                continue loop3;
                                             }
                                          }
                                          else
                                          {
                                             addr91:
                                             if(_loc6_)
                                             {
                                                throw new Error("File already exists: " + name + ". Please remove first.");
                                             }
                                             break;
                                             addr99:
                                          }
                                       }
                                       break;
                                    }
                                    if(!(_loc7_ && name))
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    this.§#&§ = new Dictionary();
                                    §§goto(addr99);
                                 }
                                 var file:FZipFile = new FZipFile();
                                 if(_loc7_)
                                 {
                                 }
                                 file.§4F§ = name;
                                 file.§=!'§(content,doCompress);
                                 addr300:
                                 addr307:
                                 addr305:
                                 if(_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(index >= this.§+g§.length)
                                       {
                                          addr280:
                                          if(!_loc7_)
                                          {
                                             addr251:
                                             this.§+g§.push(file);
                                             addr254:
                                             if(!(_loc7_ && name))
                                             {
                                                if(_loc6_)
                                                {
                                                   addr210:
                                                   this.§#&§[name] = file;
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!(_loc6_ || content))
                                                            {
                                                               §§goto(addr254);
                                                            }
                                                            return file;
                                                         }
                                                         addr245:
                                                         if(_loc6_)
                                                         {
                                                            addr219:
                                                            if(_loc6_ || this)
                                                            {
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   addr216:
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr300);
                                             }
                                             addr283:
                                             §§goto(addr283);
                                          }
                                          §§goto(addr307);
                                       }
                                       §§push(this.§+g§);
                                       if(_loc6_ || this)
                                       {
                                          §§pop().splice(index,0,file);
                                          §§goto(addr245);
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr305);
                                 }
                                 addr297:
                                 §§goto(addr297);
                                 addr100:
                              }
                              §§goto(addr133);
                           }
                        }
                     }
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     §§goto(addr91);
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      public function §%b§(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || name)
         {
         }
         if(!_loc8_)
         {
            while(true)
            {
               addr183:
               while(true)
               {
                  loop2:
                  for(; _loc7_; while(_loc7_ || content)
                  {
                  })
                  {
                     while(true)
                     {
                        continue loop2;
                        addr84:
                        if(_loc7_ || name)
                        {
                           throw new Error("File already exists: " + name + ". Please remove first.");
                        }
                     }
                  }
               }
            }
            addr185:
         }
         while(true)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(this.§+g§ != null)
                     {
                        while(true)
                        {
                           if(this.§#&§ != null)
                           {
                              if(this.§#&§[name])
                              {
                                 if(_loc7_ || content)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc7_)
                                       {
                                          §§goto(addr84);
                                       }
                                       else
                                       {
                                          loop12:
                                          for(; _loc8_; while(true)
                                          {
                                             this.§#&§ = new Dictionary();
                                             continue loop12;
                                          })
                                          {
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop12;
                                                }
                                             }
                                          }
                                          if(!(_loc8_ && name))
                                          {
                                             break;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             this.§+g§ = [];
                                             addr130:
                                             while(true)
                                             {
                                                if(!(_loc8_ && name))
                                                {
                                                   continue loop7;
                                                }
                                                addr153:
                                                while(true)
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr115);
                              }
                              break;
                           }
                           §§goto(addr112);
                        }
                        var file:FZipFile = new FZipFile();
                        if(_loc7_ || this)
                        {
                           file.§4F§ = name;
                           file.§2T§(content,charset,doCompress);
                           addr316:
                           addr308:
                           addr311:
                           if(!(_loc8_ && content))
                           {
                              if(index >= this.§+g§.length)
                              {
                                 addr269:
                                 this.§+g§.push(file);
                                 addr218:
                                 this.§#&§[name] = file;
                                 addr289:
                                 addr290:
                                 addr272:
                                 if(_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_ || index)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc8_ && name)
                                                {
                                                   §§goto(addr316);
                                                }
                                                return file;
                                             }
                                             addr261:
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   addr238:
                                                   if(!_loc8_)
                                                   {
                                                      if(!(_loc8_ && content))
                                                      {
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr311);
                                    }
                                    §§goto(addr272);
                                 }
                                 §§goto(addr238);
                              }
                              §§push(this.§+g§);
                              if(_loc7_)
                              {
                                 §§pop().splice(index,0,file);
                                 §§goto(addr261);
                              }
                              §§goto(addr269);
                           }
                           addr318:
                           §§goto(addr318);
                        }
                        §§goto(addr269);
                        addr107:
                     }
                     §§goto(addr153);
                  }
                  else
                  {
                     §§goto(addr185);
                  }
               }
            }
         }
      }
      
      public function §+4§(index:uint) : FZipFile
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         var file:FZipFile = null;
         if(!(_loc3_ && file))
         {
            while(true)
            {
               while(true)
               {
                  §§push(this.§+g§);
                  if(_loc4_ || file)
                  {
                     §§push(§§pop() == null);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc3_ && _loc3_)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc3_ && file)
                                          {
                                             continue loop5;
                                          }
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                addr148:
                                                while(true)
                                                {
                                                   addr54:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(index < this.§+g§.length);
                                                      if(!_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            continue loop7;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr168:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop9;
                                                      }
                                                   }
                                                   addr169:
                                                   while(true)
                                                   {
                                                      §§push(this.§#&§ == null);
                                                      if(_loc4_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      addr104:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr88);
                                       }
                                       continue loop4;
                                       addr112:
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr168);
                     }
                  }
                  break;
               }
               file = §§pop()[index] as FZipFile;
               if(!(_loc3_ && this))
               {
                  while(true)
                  {
                     if(file != null)
                     {
                        if(!_loc4_)
                        {
                        }
                        while(!_loc3_)
                        {
                           this.§+g§.splice(index,1);
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           loop20:
                           while(true)
                           {
                              delete this.§#&§[file.§4F§];
                              do
                              {
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 continue loop20;
                              }
                              while(_loc3_);
                              
                              §§goto(addr210);
                           }
                        }
                        continue;
                     }
                     §§goto(addr262);
                  }
               }
               addr210:
               return file;
            }
         }
         §§goto(addr95);
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || stream)
         {
         }
         while(true)
         {
            §§push(Boolean(this.§3Z§(stream)));
            while(!§§pop())
            {
               if(_loc3_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §§push(this.§3Z§ === this.§'!O§);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
         }
      }
      
      protected function §'!O§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_)
         {
            while(_loc2_)
            {
            }
         }
         return false;
      }
      
      protected function §,W§(stream:IDataInput) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && _loc3_)
         {
         }
         var sig:uint = 0;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  if(!_loc5_)
                  {
                     if(stream.bytesAvailable < 4)
                     {
                        §§push(false);
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return §§pop();
            }
         }
         while(true)
         {
            while(true)
            {
               while(_loc4_ || this)
               {
                  sig = stream.readUnsignedInt();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr127);
               }
            }
         }
      }
      
      protected function §6!S§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && stream)
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
                  §§push(this.§8s§);
                  while(true)
                  {
                     §§push(§§pop().parse(stream));
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§push(false);
                              if(_loc3_ && stream)
                              {
                                 loop11:
                                 while(!(_loc2_ || _loc2_))
                                 {
                                    loop6:
                                    while(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          this.§?!J§();
                                          loop8:
                                          while(true)
                                          {
                                             loop9:
                                             for(; !(_loc3_ && _loc3_); while(true)
                                             {
                                                this.§3Z§ = this.§,W§;
                                                if(!_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break loop6;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      §§push(true);
                                                      continue loop11;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr179);
                                             })
                                             {
                                                if(this.§3Z§ == this.§'!O§)
                                                {
                                                   continue loop10;
                                                }
                                                if(_loc3_ && this)
                                                {
                                                   continue loop8;
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      addr241:
                                                      while(true)
                                                      {
                                                         this.§3Z§ = this.§7!?§;
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§!!§ = new ByteArray();
                                                               loop18:
                                                               while(_loc2_ || stream)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     addr205:
                                                                     while(true)
                                                                     {
                                                                        this.§^r§ = 0;
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr176);
                                             }
                                             break loop10;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr241);
                                    }
                                 }
                                 return §§pop();
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_ || this)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                           return §§pop();
                        }
                        continue loop0;
                     }
                     this.§8s§;
                     addr263:
                     return §§pop();
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr239);
                     §§push(§§pop().§!!N§);
                  }
                  addr256:
                  while(!(_loc3_ && this))
                  {
                     §§goto(addr263);
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      protected function §7!?§(stream:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var c:* = uint(0);
         if(_loc3_ && c)
         {
         }
         loop0:
         while(true)
         {
            if(stream.bytesAvailable <= 0)
            {
               if(_loc4_)
               {
                  if(!(_loc3_ && this))
                  {
                     addr54:
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && this))
                           {
                              if(_loc4_ || c)
                              {
                                 §§push(false);
                                 if(_loc4_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 loop8:
                                 while(true)
                                 {
                                    addr173:
                                    while(true)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.§^r§);
                                          if(!_loc3_)
                                          {
                                             if(§§pop() != SIG_DATA_DESCRIPTOR)
                                             {
                                                loop3:
                                                do
                                                {
                                                   this.§!!§.writeByte(c);
                                                   loop4:
                                                   while(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(_loc4_ || this)
                                                         {
                                                            continue loop0;
                                                         }
                                                         loop14:
                                                         while(true)
                                                         {
                                                            addr134:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && stream))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.§3Z§ = this.§7!8§;
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        addr214:
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§^r§);
                                                                              if(!(_loc3_ && c))
                                                                              {
                                                                                 §§push(8);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr206:
                                                                                    §§push(§§pop() >>> §§pop());
                                                                                    §§push(c << 24);
                                                                                 }
                                                                                 §§pop().§^r§ = §§pop() | §§pop();
                                                                                 continue loop8;
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(uint(stream.readUnsignedByte()));
                                                                                 addr226:
                                                                                 while(true)
                                                                                 {
                                                                                    c = §§pop();
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              addr230:
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     addr124:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr163:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && stream))
                                                                           {
                                                                              this.§!!§.length -= 3;
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr162:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr214);
                                                                  }
                                                               }
                                                               §§goto(addr163);
                                                               continue loop14;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(!(_loc3_ && stream));
                                                
                                                §§goto(addr97);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr226);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr235:
                                       }
                                       §§goto(addr230);
                                    }
                                 }
                              }
                              addr97:
                              return true;
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr134);
               }
               §§goto(addr54);
            }
            §§goto(addr235);
         }
      }
      
      protected function §7!8§(stream:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var ddCRC32:* = uint(0);
         var ddSizeCompressed:* = uint(0);
         var ddSizeUncompressed:* = uint(0);
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(stream.bytesAvailable < 12)
                  {
                     §§push(false);
                     if(_loc6_ || ddSizeCompressed)
                     {
                        return §§pop();
                     }
                     break;
                  }
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
                                 §§push(uint(stream.readUnsignedInt()));
                                 while(true)
                                 {
                                    ddCRC32 = §§pop();
                                    addr373:
                                    while(true)
                                    {
                                       addr367:
                                       while(true)
                                       {
                                          §§push(uint(stream.readUnsignedInt()));
                                          loop10:
                                          while(true)
                                          {
                                             ddSizeCompressed = §§pop();
                                             addr364:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    if(_loc5_ && ddCRC32)
                                    {
                                       continue;
                                    }
                                    ddSizeUncompressed = §§pop();
                                    while(true)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          if(!(_loc5_ && ddCRC32))
                                          {
                                             if(this.§!!§.length == ddSizeCompressed)
                                             {
                                                break;
                                             }
                                             this.§!!§.writeUnsignedInt(ddCRC32);
                                             loop15:
                                             for(; !_loc5_; this.§!!§.writeUnsignedInt(ddSizeCompressed),if(!_loc5_)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop14;
                                             })
                                             {
                                                if(!(_loc5_ && ddSizeCompressed))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      while(!_loc5_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§goto(addr358);
                                                      addr158:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§!!§.position = 0;
                                                      }
                                                      addr315:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   loop30:
                                                   while(true)
                                                   {
                                                      §§push(this.§8s§);
                                                      loop31:
                                                      while(true)
                                                      {
                                                         §§push(ddCRC32);
                                                         loop32:
                                                         while(true)
                                                         {
                                                            §§pop().§'A§ = §§pop();
                                                            addr296:
                                                            while(true)
                                                            {
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(this.§8s§);
                                                                  addr276:
                                                                  addr287:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ && stream))
                                                                     {
                                                                        addr284:
                                                                        §§pop().§4!7§ = ddSizeCompressed;
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                     continue loop31;
                                                                  }
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop26;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(this.§8s§);
                                                                     loop22:
                                                                     while(!(_loc5_ && stream))
                                                                     {
                                                                        §§push(ddSizeUncompressed);
                                                                        if(!(_loc5_ && stream))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop().§3![§ = §§pop();
                                                                              break loop15;
                                                                           }
                                                                           continue loop32;
                                                                        }
                                                                        §§goto(addr284);
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8s§);
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           §§pop().§&;§(this.§!!§);
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc5_ && ddSizeCompressed))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§?!J§();
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    addr200:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          this.§3Z§ = this.§,W§;
                                                                                          addr46:
                                                                                          §§push(true);
                                                                                          break loop1;
                                                                                       }
                                                                                       continue loop34;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr214:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr373);
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§goto(addr276);
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
                                                if(!_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr241);
                                             }
                                          }
                                          §§goto(addr364);
                                       }
                                       addr314:
                                       while(true)
                                       {
                                          §§goto(addr315);
                                       }
                                    }
                                 }
                                 if(_loc6_ || ddSizeCompressed)
                                 {
                                    if(_loc6_)
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!(_loc5_ && stream))
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   this.§!!§.writeUnsignedInt(ddSizeUncompressed);
                                                   while(true)
                                                   {
                                                      while(!_loc5_)
                                                      {
                                                         continue loop17;
                                                         if(!(_loc6_ || stream))
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc5_ && stream))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr46);
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                }
                                                §§goto(addr345);
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr158);
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr119);
      }
      
      protected function §?!J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         while(true)
         {
            this.§+g§.push(this.§8s§);
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(!this.§8s§.§4F§)
                  {
                     loop7:
                     while(true)
                     {
                        dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.§8s§));
                        loop8:
                        while(_loc2_)
                        {
                           if(_loc1_ && _loc2_)
                           {
                              continue loop1;
                           }
                           while(!(_loc1_ && _loc2_))
                           {
                              this.§8s§ = null;
                              while(_loc2_ || this)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(_loc2_)
                                    {
                                       addr39:
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          break loop7;
                                       }
                                       continue loop2;
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                           while(true)
                           {
                              break loop8;
                              §§goto(addr61);
                           }
                           addr61:
                        }
                        while(true)
                        {
                           continue loop7;
                        }
                     }
                     return;
                  }
               }
            }
            if(!(_loc2_ || this))
            {
               continue;
            }
            this.§#&§[this.§8s§.§4F§] = this.§8s§;
            §§goto(addr112);
         }
      }
      
      protected function §`O§(evt:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && _loc3_)
         {
         }
         if(_loc5_ || evt)
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
                  addr44:
                  while(true)
                  {
                     dispatchEvent(evt.clone());
                     addr51:
                     while(_loc5_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  try
                  {
                     addr81:
                     if(this.parse(this.§@#§))
                     {
                        if(!(_loc4_ && this))
                        {
                           if(!_loc4_)
                           {
                              this.close();
                           }
                           addr132:
                           if(!(_loc4_ && _loc3_))
                           {
                              addr120:
                              dispatchEvent(new Event(Event.COMPLETE));
                              if(_loc5_ || evt)
                              {
                                 if(!_loc4_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr120);
                                    }
                                    addr240:
                                    return;
                                    addr144:
                                 }
                                 §§goto(addr132);
                              }
                              addr129:
                              §§goto(addr129);
                              addr139:
                           }
                           addr143:
                           §§goto(addr143);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr144);
                  }
                  catch(e:Error)
                  {
                     if(_loc4_ && evt)
                     {
                     }
                     close();
                     addr232:
                     addr234:
                     addr227:
                     if(hasEventListener(FZipErrorEvent.PARSE_ERROR))
                     {
                        if(!_loc4_)
                        {
                           if(!_loc5_)
                           {
                           }
                           §§goto(addr232);
                        }
                        if(_loc5_ || progressHandler$0)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr234);
                           }
                           dispatchEvent(new FZipErrorEvent(FZipErrorEvent.PARSE_ERROR,e.message));
                           if(!_loc5_)
                           {
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr227);
                     }
                     throw e;
                  }
                  §§goto(addr240);
               }
            }
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            if(!_loc4_)
            {
               if(false)
               {
                  §§goto(addr44);
               }
               §§goto(addr81);
            }
            §§goto(addr51);
         }
      }
      
      protected function §=!h§(evt:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  dispatchEvent(evt.clone());
                  loop2:
                  while(_loc3_ || this)
                  {
                     while(true)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      protected function §]x§(evt:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         while(true)
         {
            loop1:
            for(; _loc2_ || this; while(!(_loc3_ && _loc2_))
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr31);
            })
            {
               this.close();
               while(true)
               {
                  while(_loc2_ || evt)
                  {
                     dispatchEvent(evt.clone());
                     continue loop1;
                     if(!_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function §<S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               this.§@#§.addEventListener(Event.COMPLETE,this.§=!h§);
               while(true)
               {
                  addr179:
                  addr129:
                  while(true)
                  {
                     this.§@#§.addEventListener(Event.OPEN,this.§=!h§);
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  loop8:
                  while(true)
                  {
                     this.§@#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]x§);
                     while(true)
                     {
                        continue loop8;
                        addr75:
                        while(_loc2_ || _loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc2_ || this))
                           {
                              continue loop8;
                           }
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 addr48:
                                 if(!(_loc1_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr176:
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§@#§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!h§);
                                    addr162:
                                    while(true)
                                    {
                                    }
                                    §§goto(addr48);
                                 }
                              }
                              while(_loc2_)
                              {
                                 this.§@#§.addEventListener(IOErrorEvent.IO_ERROR,this.§]x§);
                              }
                              §§goto(addr179);
                           }
                           while(_loc2_)
                           {
                              §§goto(addr129);
                           }
                           §§goto(addr162);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      protected function §7n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               this.§@#§.removeEventListener(Event.COMPLETE,this.§=!h§);
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§@#§.removeEventListener(Event.OPEN,this.§=!h§);
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           this.§@#§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!h§);
                           continue loop3;
                           addr79:
                           if(!_loc1_)
                           {
                              continue;
                           }
                           while(_loc1_)
                           {
                              this.§@#§.removeEventListener(ProgressEvent.PROGRESS,this.§`O§);
                              while(_loc2_ && _loc2_)
                              {
                              }
                              if(_loc2_)
                              {
                                 continue;
                              }
                              addr43:
                              if(_loc1_ || _loc1_)
                              {
                                 return;
                              }
                              addr77:
                              addr114:
                              while(_loc1_)
                              {
                                 §§goto(addr79);
                                 §§goto(addr43);
                              }
                              while(!(_loc2_ && this))
                              {
                                 continue loop2;
                              }
                              continue loop3;
                              addr114:
                           }
                           while(_loc1_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              this.§@#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]x§);
                              §§goto(addr114);
                           }
                        }
                     }
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr131);
               }
            }
         }
         while(true)
         {
            this.§@#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]x§);
            §§goto(addr77);
         }
      }
   }
}
