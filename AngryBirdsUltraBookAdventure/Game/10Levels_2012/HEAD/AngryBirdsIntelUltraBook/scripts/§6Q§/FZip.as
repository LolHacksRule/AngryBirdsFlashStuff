package §6Q§
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
         if(!SIG_CENTRAL_FILE_HEADER)
         {
            addr205:
            while(true)
            {
               SIG_CENTRAL_FILE_HEADER = 33639248;
               addr203:
               while(true)
               {
               }
            }
            addr205:
         }
         loop2:
         while(true)
         {
            SIG_SPANNING_MARKER = 808471376;
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
                           loop8:
                           while(!SIG_CENTRAL_FILE_HEADER)
                           {
                              SIG_END_OF_CENTRAL_DIRECTORY = 101010256;
                              while(true)
                              {
                                 loop10:
                                 while(!SIG_CENTRAL_FILE_HEADER)
                                 {
                                    if(SIG_SPANNING_MARKER)
                                    {
                                       SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                                       continue loop5;
                                    }
                                    §§goto(addr203);
                                    loop13:
                                    while(true)
                                    {
                                       if(!(SIG_CENTRAL_FILE_HEADER && SIG_SPANNING_MARKER))
                                       {
                                          if(SIG_CENTRAL_FILE_HEADER)
                                          {
                                             break;
                                             addr111:
                                          }
                                          loop14:
                                          for(; !(SIG_CENTRAL_FILE_HEADER && FZip); if(!(SIG_SPANNING_MARKER || SIG_SPANNING_MARKER))
                                          {
                                             continue;
                                          },if(!SIG_CENTRAL_FILE_HEADER)
                                          {
                                             SIG_ARCHIVE_EXTRA_DATA = 134630224;
                                             loop17:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(!(SIG_CENTRAL_FILE_HEADER && SIG_SPANNING_MARKER))
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop17;
                                                   addr72:
                                                   SIG_SPANNING = 134695760;
                                                   if(SIG_CENTRAL_FILE_HEADER)
                                                   {
                                                      continue;
                                                   }
                                                   if(SIG_SPANNING_MARKER)
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr80);
                                                }
                                                continue loop6;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr205);
                                          })
                                          {
                                             SIG_DATA_DESCRIPTOR = 134695760;
                                             loop15:
                                             while(SIG_SPANNING_MARKER)
                                             {
                                                while(true)
                                                {
                                                   if(SIG_SPANNING_MARKER)
                                                   {
                                                      continue loop14;
                                                   }
                                                   continue loop15;
                                                }
                                                §§goto(addr205);
                                             }
                                             while(true)
                                             {
                                                SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR = 117853008;
                                                continue loop13;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       continue loop10;
                                    }
                                    continue loop7;
                                 }
                                 continue loop8;
                                 if(!(SIG_CENTRAL_FILE_HEADER && FZip))
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
               }
               if(SIG_CENTRAL_FILE_HEADER && FZip)
               {
                  continue;
               }
               if(!SIG_SPANNING_MARKER)
               {
                  continue loop2;
               }
               §§goto(addr72);
            }
         }
      }
      
      protected var §<Y§:Array;
      
      protected var §+x§:Dictionary;
      
      protected var §?3§:URLStream;
      
      protected var §!o§:String;
      
      protected var §,!6§:Function;
      
      protected var §"!X§:FZipFile;
      
      protected var §7!k§:ByteArray;
      
      protected var §5! §:uint;
      
      protected var §<J§:uint;
      
      public function FZip(filenameEncoding:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  super();
                  loop3:
                  for(; _loc2_ || _loc3_; if(_loc3_ && _loc3_)
                  {
                     continue;
                  },if(_loc3_)
                  {
                     continue loop0;
                  },§§goto(addr80))
                  {
                     this.§!o§ = filenameEncoding;
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(_loc2_)
                        {
                           this.§,!6§ = this.§&O§;
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                              addr80:
                              if(!(_loc3_ && this))
                              {
                                 return;
                              }
                           }
                           continue loop3;
                        }
                        addr104:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function get §83§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         §§push(this.§,!6§ === this.§&O§);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function load(request:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(!this.§?3§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        if(!(_loc2_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop3:
                           for(; §§pop(); continue loop2)
                           {
                              if(_loc3_ || _loc2_)
                              {
                              }
                              while(true)
                              {
                                 this.§?3§ = new URLStream();
                                 addr180:
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue loop7;
                                       }
                                       this.§?3§.endian = Endian.LITTLE_ENDIAN;
                                       while(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             this.§5!1§();
                                             continue loop0;
                                             loop15:
                                             for(; !(_loc2_ && request); if(!(_loc3_ || this))
                                             {
                                                continue;
                                             },§§goto(addr58))
                                             {
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr94:
                                                      if(_loc2_ && this)
                                                      {
                                                         break;
                                                      }
                                                      this.§,!6§ = this.§`!g§;
                                                      continue;
                                                   }
                                                   addr127:
                                                   while(!_loc2_)
                                                   {
                                                      this.§+x§ = new Dictionary();
                                                      continue loop15;
                                                   }
                                                   continue loop8;
                                                }
                                                while(!_loc2_)
                                                {
                                                   §§goto(addr127);
                                                   §§goto(addr94);
                                                }
                                                while(true)
                                                {
                                                   this.§<Y§ = [];
                                                   §§goto(addr134);
                                                }
                                                addr134:
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§,!6§ == this.§&O§);
                                          if(_loc3_ || request)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr243);
                                       }
                                       addr243:
                                    }
                                 }
                              }
                           }
                           addr24:
                           return;
                           addr204:
                        }
                     }
                     §§goto(addr242);
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr204);
                  }
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr180);
      }
      
      public function loadBytes(bytes:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && bytes)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(!this.§?3§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr289:
                              while(true)
                              {
                                 §§push(this.§,!6§ == this.§&O§);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop4;
                                    addr148:
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              addr34:
                              return;
                           }
                           loop9:
                           while(true)
                           {
                              addr272:
                              while(true)
                              {
                                 this.§<Y§ = [];
                                 while(true)
                                 {
                                    addr225:
                                    while(!(_loc2_ && this))
                                    {
                                       this.§+x§ = new Dictionary();
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             bytes.position = 0;
                                             loop15:
                                             while(true)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   bytes.endian = Endian.LITTLE_ENDIAN;
                                                   loop17:
                                                   while(!_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§,!6§ = this.§`!g§;
                                                         loop19:
                                                         while(true)
                                                         {
                                                            addr183:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.parse(bytes));
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr148);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop17;
                                                            }
                                                            addr171:
                                                            §§goto(addr245);
                                                            addr171:
                                                            while(true)
                                                            {
                                                               if(_loc2_ && this)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§,!6§ = this.§&O§;
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             addr163:
                                             while(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr171);
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
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr180);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(this.§?3§)
            {
               if(_loc1_)
               {
               }
               while(true)
               {
                  this.§,!6§ = this.§&O§;
                  addr129:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        this.§5!5§();
                        while(true)
                        {
                           addr111:
                           while(_loc2_)
                           {
                              this.§?3§.close();
                              continue loop3;
                           }
                        }
                     }
                     if(!(_loc1_ && _loc2_))
                     {
                        break loop0;
                     }
                  }
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr82);
               }
            }
            return;
         }
         §§goto(addr129);
      }
      
      public function §%f§(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc11_)
         {
         }
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(_loc10_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(stream == null);
                     if(_loc10_)
                     {
                        §§push(!§§pop());
                        if(!(_loc11_ && endian))
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc11_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§pop();
                                    addr150:
                                    while(_loc10_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§<Y§.length > 0);
                                          if(_loc10_ || this)
                                          {
                                             if(!_loc10_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc11_ && stream)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr149:
                              }
                              while(§§pop())
                              {
                                 loop7:
                                 while(!(_loc11_ && endian))
                                 {
                                    while(true)
                                    {
                                       addr94:
                                       while(true)
                                       {
                                          addr91:
                                          while(true)
                                          {
                                             addr79:
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop7;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr150);
                              }
                              addr662:
                              return;
                           }
                           addr144:
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr144);
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      public function §[;§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            if(_loc1_)
            {
               §§push(this.§<Y§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     addr43:
                     §§push(uint(this.§<Y§.length));
                     if(!_loc1_)
                     {
                     }
                  }
                  else
                  {
                     return uint(0);
                  }
                  return §§pop();
               }
               §§goto(addr43);
            }
         }
         §§goto(addr43);
      }
      
      public function §`V§(index:uint) : FZipFile
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(this.§<Y§);
               if(_loc2_)
               {
                  break;
               }
               if(!§§pop())
               {
                  return null;
               }
               addr76:
               if(!_loc2_)
               {
                  continue loop0;
               }
            }
            addr67:
            §§goto(addr76);
         }
      }
      
      public function §"w§(name:String) : FZipFile
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc2_ && _loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(!this.§+x§[name])
                  {
                     §§push(null);
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            return §§pop();
         }
      }
      
      public function § !=§(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && name))
         {
            loop0:
            while(true)
            {
               addr118:
               while(true)
               {
                  while(!(_loc4_ || name))
                  {
                  }
                  if(!(_loc5_ && content))
                  {
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               §§push(this);
               if(_loc4_ || name)
               {
                  §§push(this.§<Y§);
                  if(!(_loc5_ && name))
                  {
                     if(§§pop())
                     {
                        addr60:
                        §§push(uint(this.§<Y§.length));
                        if(_loc4_ || content)
                        {
                        }
                     }
                     else
                     {
                        §§push(uint(0));
                     }
                     return §§pop().§0!W§(§§pop(),name,content,doCompress);
                  }
               }
               §§goto(addr60);
            }
         }
         §§goto(addr118);
      }
      
      public function §7!X§(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  continue loop0;
                  addr86:
                  if(!(_loc5_ || name))
                  {
                     continue;
                  }
                  §§push(this);
                  if(!_loc6_)
                  {
                     §§push(this.§<Y§);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           addr35:
                           §§push(uint(this.§<Y§.length));
                           if(_loc6_)
                           {
                           }
                        }
                        else
                        {
                           §§push(uint(0));
                        }
                        return §§pop().§@!b§(§§pop(),name,content,charset,doCompress);
                     }
                  }
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §0!W§(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(!_loc6_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               continue loop0;
               addr97:
               if(!(_loc6_ || this))
               {
                  continue;
               }
               addr105:
               if(!_loc6_)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(this.§<Y§ == null)
                     {
                        if(!(_loc6_ || index))
                        {
                           continue;
                        }
                        this.§<Y§ = [];
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              if(!(_loc7_ && name))
                              {
                                 break loop5;
                              }
                              continue loop6;
                              addr71:
                              if(_loc6_ || content)
                              {
                                 throw new Error("File already exists: " + name + ". Please remove first.");
                              }
                           }
                           addr172:
                           var file:FZipFile = new FZipFile();
                           if(!(_loc7_ && this))
                           {
                              file.§2!e§ = name;
                              addr312:
                              addr310:
                           }
                           addr305:
                           addr286:
                           file.§]!]§(content,doCompress);
                           if(!_loc7_)
                           {
                              if(_loc6_ || this)
                              {
                                 if(index >= this.§<Y§.length)
                                 {
                                    addr248:
                                    this.§<Y§.push(file);
                                    addr251:
                                    addr283:
                                    if(_loc6_ || this)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          addr194:
                                          this.§+x§[name] = file;
                                          addr200:
                                          if(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr200);
                                                }
                                                return file;
                                             }
                                             §§goto(addr251);
                                          }
                                          if(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc6_ || content)
                                                {
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr312);
                                             }
                                             §§goto(addr305);
                                          }
                                          addr237:
                                          if(!(_loc7_ && content))
                                          {
                                             §§goto(addr194);
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr286);
                                    }
                                    addr282:
                                    §§goto(addr282);
                                 }
                                 §§push(this.§<Y§);
                                 if(!(_loc7_ && index))
                                 {
                                    §§pop().splice(index,0,file);
                                    §§goto(addr237);
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr310);
                           }
                           §§goto(addr286);
                        }
                     }
                     while(true)
                     {
                        if(this.§+x§ == null)
                        {
                           if(_loc7_)
                           {
                              continue loop4;
                           }
                           if(_loc6_)
                           {
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr97);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop4;
                              }
                              addr155:
                           }
                        }
                        else
                        {
                           if(this.§+x§[name])
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr71);
                              }
                              else
                              {
                                 addr85:
                              }
                           }
                           §§goto(addr172);
                        }
                     }
                  }
               }
               this.§+x§ = new Dictionary();
               §§goto(addr85);
            }
         }
      }
      
      public function §@!b§(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         if(_loc7_)
         {
         }
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  addr163:
                  while(true)
                  {
                     while(true)
                     {
                        addr150:
                        while(_loc8_ || index)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               addr125:
               while(!(_loc7_ && name))
               {
                  this.§<Y§ = [];
                  §§goto(addr109);
               }
            }
            if(!(_loc8_ || name))
            {
               continue;
            }
            §§goto(addr125);
         }
      }
      
      public function §5y§(index:uint) : FZipFile
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && index)
         {
         }
         var file:FZipFile = null;
         if(!(_loc3_ && index))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§<Y§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(§§pop() == null);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§+x§ == null);
                                    for(; !_loc3_; if(!(_loc4_ || _loc3_))
                                    {
                                       continue;
                                    },§§goto(addr73),§§push(Boolean(§§pop())))
                                    {
                                       §§push(!§§pop());
                                       if(_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          while(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!(_loc4_ || file))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr136:
                                                      while(true)
                                                      {
                                                         §§goto(addr55);
                                                      }
                                                   }
                                                   addr135:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      do
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop6;
                                                      }
                                                      while(!(_loc4_ || index));
                                                      
                                                      while(true)
                                                      {
                                                         if(true)
                                                         {
                                                            §§push(this.§<Y§);
                                                            break loop1;
                                                         }
                                                         addr55:
                                                         §§goto(addr247);
                                                      }
                                                      addr53:
                                                   }
                                                   §§goto(addr247);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr135);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                     }
                  }
               }
               file = §§pop()[index] as FZipFile;
               if(!_loc3_)
               {
                  while(true)
                  {
                     if(file == null)
                     {
                        addr247:
                        while(true)
                        {
                           §§push(index < this.§<Y§.length);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop7;
                              }
                              continue loop8;
                           }
                           addr73:
                           if(_loc3_)
                           {
                              continue loop9;
                           }
                           if(_loc3_)
                           {
                              continue loop5;
                           }
                        }
                        return null;
                     }
                     while(true)
                     {
                        this.§<Y§.splice(index,1);
                     }
                     addr243:
                     addr199:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     return file;
                     addr206:
                  }
               }
               while(true)
               {
                  while(true)
                  {
                     delete this.§+x§[file.§2!e§];
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(!(_loc4_ || index))
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        §§goto(addr199);
                     }
                     §§goto(addr243);
                  }
               }
               §§goto(addr206);
            }
         }
         §§goto(addr53);
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         while(true)
         {
            §§push(Boolean(this.§,!6§(stream)));
            while(!§§pop())
            {
               if(_loc3_ && _loc2_)
               {
               }
               if(_loc3_)
               {
                  break;
               }
               §§push(this.§,!6§ === this.§&O§);
               if(_loc2_ || _loc3_)
               {
                  return §§pop();
               }
            }
         }
      }
      
      protected function §&O§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         while(!(_loc2_ || this))
         {
         }
         return false;
      }
      
      protected function §`!g§(stream:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && stream)
         {
         }
         var sig:uint = 0;
         if(!(_loc4_ && stream))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(stream.bytesAvailable < 4)
                  {
                     §§push(false);
                     break;
                  }
                  if(_loc4_)
                  {
                  }
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        sig = stream.readUnsignedInt();
                        if(!(_loc4_ && sig))
                        {
                           if(!(_loc4_ && sig))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
               return §§pop();
            }
         }
         §§goto(addr136);
      }
      
      protected function §]!M§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
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
                  §§push(this.§"!X§);
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
                              if(!(_loc2_ && this))
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    addr240:
                                    loop5:
                                    while(!§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          this.§>B§();
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop7;
                                                addr72:
                                                if(_loc2_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         addr48:
                                                         §§push(true);
                                                         if(!(_loc2_ && this))
                                                         {
                                                            break loop3;
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr205:
                                                      addr208:
                                                      addr205:
                                                      this.§5! § = 0;
                                                      while(true)
                                                      {
                                                         addr193:
                                                         if(_loc3_ || stream)
                                                         {
                                                            this.§<J§ = 0;
                                                            break loop8;
                                                         }
                                                         break loop5;
                                                         §§goto(addr208);
                                                      }
                                                      addr208:
                                                      §§push(true);
                                                      break loop10;
                                                      addr214:
                                                      addr185:
                                                   }
                                                   addr183:
                                                   if(!_loc3_)
                                                   {
                                                      this.§7!k§ = new ByteArray();
                                                      §§goto(addr214);
                                                      addr223:
                                                      addr217:
                                                   }
                                                   §§goto(addr185);
                                                }
                                                else
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr242:
                                                   this.§,!6§ = this.§?!5§;
                                                }
                                                §§goto(addr223);
                                             }
                                             addr190:
                                             §§goto(addr183);
                                          }
                                       }
                                    }
                                    §§goto(addr242);
                                 }
                                 break;
                              }
                              §§goto(addr48);
                           }
                           return §§pop();
                        }
                        addr25:
                        if(_loc2_ && _loc2_)
                        {
                        }
                        continue loop0;
                     }
                     this.§"!X§;
                     addr264:
                     return §§pop();
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr240);
                     §§push(§§pop().§,%§);
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      protected function §?!5§(stream:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         var c:* = uint(0);
         if(_loc4_ || this)
         {
         }
         loop0:
         while(true)
         {
            if(stream.bytesAvailable <= 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc4_ || this)
                  {
                     addr59:
                     if(_loc4_)
                     {
                        if(!(_loc3_ && c))
                        {
                           if(!_loc3_)
                           {
                              §§push(false);
                              if(_loc4_)
                              {
                                 return §§pop();
                              }
                              break;
                           }
                           loop9:
                           while(true)
                           {
                              loop2:
                              for(; _loc3_; if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              },while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr142);
                              })
                              {
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc4_ || c)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§5! §);
                                          if(_loc3_ && _loc3_)
                                          {
                                             break;
                                          }
                                          if(§§pop() == SIG_DATA_DESCRIPTOR)
                                          {
                                             if(_loc4_ || this)
                                             {
                                             }
                                             continue;
                                          }
                                          addr142:
                                          addr142:
                                          loop5:
                                          while(true)
                                          {
                                             this.§7!k§.writeByte(c);
                                             addr88:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc4_ || _loc3_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && c))
                                                {
                                                   break loop3;
                                                }
                                                addr235:
                                                loop6:
                                                for(; _loc3_ && stream; break loop4)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(uint(stream.readUnsignedByte()));
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§5! §);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(8);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr204:
                                                      §§push(§§pop() >>> §§pop());
                                                      §§push(c << 24);
                                                   }
                                                   §§pop().§5! § = §§pop() | §§pop();
                                                   continue loop3;
                                                }
                                                §§goto(addr204);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          c = §§pop();
                                          §§goto(addr235);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr250:
                                    }
                                    §§goto(addr245);
                                 }
                                 while(true)
                                 {
                                    this.§,!6§ = this.§`!i§;
                                    continue loop9;
                                    §§goto(addr151);
                                 }
                                 addr151:
                              }
                              break loop0;
                           }
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr132);
               }
               §§goto(addr59);
            }
            §§goto(addr250);
         }
         return §§pop();
      }
      
      protected function §`!i§(stream:IDataInput) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var ddCRC32:* = uint(0);
         var ddSizeCompressed:* = uint(0);
         var ddSizeUncompressed:* = uint(0);
         if(_loc5_)
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
                     if(!(_loc6_ && ddSizeCompressed))
                     {
                        return §§pop();
                     }
                     break;
                  }
                  if(_loc5_ || stream)
                  {
                  }
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(_loc5_)
                           {
                              §§push(uint(stream.readUnsignedInt()));
                              while(true)
                              {
                                 ddCRC32 = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    addr372:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(uint(stream.readUnsignedInt()));
                                       loop9:
                                       while(true)
                                       {
                                          ddSizeCompressed = §§pop();
                                          addr369:
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       addr327:
                                       loop36:
                                       while(true)
                                       {
                                          if(_loc6_ && this)
                                          {
                                             continue loop8;
                                          }
                                          loop33:
                                          while(true)
                                          {
                                             §§push(this.§"!X§);
                                             loop31:
                                             while(true)
                                             {
                                                §§push(ddCRC32);
                                                loop32:
                                                while(true)
                                                {
                                                   §§pop().§ e§ = §§pop();
                                                   addr316:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§"!X§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(ddSizeCompressed);
                                                            while(true)
                                                            {
                                                               §§pop().§"i§ = §§pop();
                                                               addr298:
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     continue loop33;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(this.§"!X§);
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§push(ddSizeUncompressed);
                                                                           if(!(_loc6_ && ddCRC32))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§pop().§,!T§ = §§pop();
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop32;
                                                                           }
                                                                           continue loop26;
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§"!X§);
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop31;
                                                                              }
                                                                              §§pop().§4W§(this.§7!k§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§>B§();
                                                                                 addr222:
                                                                                 while(!(_loc6_ && ddSizeCompressed))
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc5_ || stream))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr369);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          addr342:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§7!k§.position = 0;
                                                                                             continue loop36;
                                                                                          }
                                                                                       }
                                                                                       addr341:
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop32;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(!(_loc5_ || this))
                                 {
                                    continue;
                                 }
                                 ddSizeUncompressed = §§pop();
                                 loop12:
                                 while(true)
                                 {
                                    loop13:
                                    while(this.§7!k§.length != ddSizeCompressed)
                                    {
                                       this.§7!k§.writeUnsignedInt(ddCRC32);
                                       loop14:
                                       while(true)
                                       {
                                          loop15:
                                          while(_loc5_ || ddSizeCompressed)
                                          {
                                             this.§7!k§.writeUnsignedInt(ddSizeCompressed);
                                             while(!(_loc6_ && ddSizeCompressed))
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop14;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop13;
                                                }
                                                this.§7!k§.writeUnsignedInt(ddSizeUncompressed);
                                                if(_loc5_ || this)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr258);
                                                   }
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr186);
                                             while(true)
                                             {
                                                if(!(_loc5_ || ddCRC32))
                                                {
                                                   continue loop15;
                                                }
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr263);
                                          }
                                          addr167:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      §§goto(addr45);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr316);
                                                   }
                                                }
                                                §§goto(addr310);
                                             }
                                             §§goto(addr298);
                                          }
                                       }
                                    }
                                    §§goto(addr341);
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     this.§,!6§ = this.§`!g§;
                     §§goto(addr167);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr241);
      }
      
      protected function §>B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               this.§<Y§.push(this.§"!X§);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(this.§"!X§.§2!e§)
                     {
                        addr140:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              this.§+x§[this.§"!X§.§2!e§] = this.§"!X§;
                              addr133:
                              while(true)
                              {
                                 addr111:
                                 while(_loc1_)
                                 {
                                    continue loop10;
                                 }
                                 addr123:
                                 continue loop10;
                              }
                           }
                        }
                        addr140:
                     }
                     while(true)
                     {
                        dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.§"!X§));
                        addr106:
                        while(_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                        §§goto(addr123);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      protected function §;2§(evt:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc4_ && progressHandler$0)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               while(!(_loc4_ && evt))
               {
                  continue loop0;
                  loop4:
                  while(!(_loc4_ && evt))
                  {
                     if(!_loc4_)
                     {
                        addr37:
                        if(false)
                        {
                           while(true)
                           {
                              dispatchEvent(evt.clone());
                              continue loop4;
                              §§goto(addr37);
                           }
                           try
                           {
                              addr81:
                              if(this.parse(this.§?3§))
                              {
                                 if(_loc5_)
                                 {
                                    if(!(_loc4_ && evt))
                                    {
                                       this.close();
                                       addr127:
                                       dispatchEvent(new Event(Event.COMPLETE));
                                       addr143:
                                       addr139:
                                    }
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr127);
                                             }
                                             addr240:
                                             return;
                                             addr144:
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr139);
                                    }
                                    addr136:
                                    §§goto(addr136);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr144);
                           }
                           catch(e:Error)
                           {
                           }
                           §§goto(addr240);
                           addr39:
                        }
                        else
                        {
                           §§goto(addr81);
                        }
                        e = §§pop();
                        if(!_loc5_)
                        {
                        }
                        close();
                        addr234:
                        addr232:
                        addr227:
                        if(hasEventListener(FZipErrorEvent.PARSE_ERROR))
                        {
                           if(_loc4_)
                           {
                           }
                           if(_loc5_)
                           {
                              if(!(_loc4_ && progressHandler$0))
                              {
                                 if(_loc4_ && evt)
                                 {
                                    §§goto(addr234);
                                 }
                                 dispatchEvent(new FZipErrorEvent(FZipErrorEvent.PARSE_ERROR,this.§§slot[1].message));
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr227);
                        }
                        throw this.§§slot[1];
                     }
                  }
               }
            }
         }
      }
      
      protected function §[P§(evt:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(_loc3_)
               {
                  while(_loc3_ || evt)
                  {
                     if(_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            dispatchEvent(evt.clone());
            §§goto(addr64);
         }
      }
      
      protected function §,G§(evt:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.close();
                  while(true)
                  {
                     loop3:
                     while(!(_loc2_ && this))
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           dispatchEvent(evt.clone());
                           while(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      protected function §5!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               this.§?3§.addEventListener(Event.COMPLETE,this.§[P§);
               addr175:
               while(true)
               {
               }
               while(true)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§?3§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[P§);
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr164);
      }
      
      protected function §5!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               this.§?3§.removeEventListener(Event.COMPLETE,this.§[P§);
               while(true)
               {
                  addr184:
                  addr113:
                  while(true)
                  {
                     this.§?3§.removeEventListener(Event.OPEN,this.§[P§);
                     addr181:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  if(_loc2_ || _loc1_)
                  {
                     loop11:
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           this.§?3§.removeEventListener(ProgressEvent.PROGRESS,this.§;2§);
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop11;
                           }
                           loop10:
                           while(_loc2_ || _loc1_)
                           {
                              addr106:
                              if(_loc2_ || this)
                              {
                                 §§goto(addr113);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    break loop10;
                                    §§goto(addr106);
                                 }
                                 addr150:
                              }
                           }
                           while(true)
                           {
                              this.§?3§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,G§);
                              §§goto(addr134);
                              §§goto(addr99);
                           }
                           addr99:
                        }
                        §§goto(addr123);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr136);
      }
   }
}
