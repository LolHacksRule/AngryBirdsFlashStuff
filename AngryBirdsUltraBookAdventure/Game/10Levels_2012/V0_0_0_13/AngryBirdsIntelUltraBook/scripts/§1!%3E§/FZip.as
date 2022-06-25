package §1!>§
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
            loop0:
            while(true)
            {
               SIG_CENTRAL_FILE_HEADER = 33639248;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     SIG_SPANNING_MARKER = 808471376;
                     addr195:
                     while(true)
                     {
                        while(true)
                        {
                           SIG_LOCAL_FILE_HEADER = 67324752;
                           addr187:
                           addr44:
                           while(true)
                           {
                              while(true)
                              {
                                 SIG_DIGITAL_SIGNATURE = 84233040;
                                 while(!SIG_CENTRAL_FILE_HEADER)
                                 {
                                    continue loop0;
                                    if(!(SIG_CENTRAL_FILE_HEADER && SIG_CENTRAL_FILE_HEADER))
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           if(!(SIG_CENTRAL_FILE_HEADER && FZip))
                           {
                              return;
                              addr51:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      protected var §;q§:Array;
      
      protected var §`!;§:Dictionary;
      
      protected var §=l§:URLStream;
      
      protected var §!!C§:String;
      
      protected var §0!R§:Function;
      
      protected var §=!Y§:FZipFile;
      
      protected var §;g§:ByteArray;
      
      protected var §>!V§:uint;
      
      protected var §'9§:uint;
      
      public function FZip(filenameEncoding:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  super();
                  while(_loc3_ || this)
                  {
                     continue loop0;
                     loop5:
                     while(_loc3_ || _loc2_)
                     {
                        this.§0!R§ = this.§5u§;
                        loop6:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop6;
                           }
                           return;
                        }
                        while(_loc3_)
                        {
                           continue loop5;
                        }
                        while(true)
                        {
                           this.§!!C§ = filenameEncoding;
                           §§goto(addr77);
                        }
                        addr77:
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function get §]!%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         §§push(this.§0!R§ === this.§5u§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function load(request:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
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
                  §§push(!this.§=l§);
                  if(!(_loc3_ && request))
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr242:
                              while(true)
                              {
                                 §§push(this.§0!R§ == this.§5u§);
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 break;
                              }
                           }
                           addr241:
                        }
                        loop3:
                        while(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§=l§ = new URLStream();
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    for(; _loc2_ || this; if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    },while(true)
                                    {
                                       this.§0!R§ = this.§1S§;
                                       loop16:
                                       while(_loc2_ || request)
                                       {
                                          while(true)
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                this.§=l§.load(request);
                                                while(true)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr63);
                                                      }
                                                      break;
                                                   }
                                                   continue loop20;
                                                   addr79:
                                                   if(!_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr131);
                                                }
                                                §§goto(addr104);
                                             }
                                          }
                                       }
                                    })
                                    {
                                       this.§=l§.endian = Endian.LITTLE_ENDIAN;
                                       while(true)
                                       {
                                          loop9:
                                          for(; _loc2_ || this; while(_loc2_ || _loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             this.§`!;§ = new Dictionary();
                                             §§goto(addr104);
                                          })
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop6;
                                             }
                                             this.§=Z§();
                                             loop10:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   this.§;q§ = [];
                                                   while(!_loc3_)
                                                   {
                                                      continue loop9;
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop10;
                                                   addr104:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr242);
                                 }
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 break loop3;
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr241);
               }
            }
         }
         §§goto(addr95);
      }
      
      public function loadBytes(bytes:ByteArray) : void
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
                  §§push(!this.§=l§);
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && this))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr274:
                           while(true)
                           {
                              §§push(this.§0!R§ == this.§5u§);
                              continue loop3;
                           }
                        }
                     }
                     loop4:
                     while(§§pop())
                     {
                        while(true)
                        {
                           while(true)
                           {
                              this.§;q§ = [];
                              loop7:
                              while(!_loc2_)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    this.§`!;§ = new Dictionary();
                                    addr220:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          bytes.position = 0;
                                          while(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                bytes.endian = Endian.LITTLE_ENDIAN;
                                                loop13:
                                                while(true)
                                                {
                                                   addr190:
                                                   while(_loc3_)
                                                   {
                                                      this.§0!R§ = this.§1S§;
                                                      while(true)
                                                      {
                                                         continue loop0;
                                                         addr120:
                                                         if(!_loc2_)
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop4;
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       addr154:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr24:
                     return;
                  }
               }
            }
         }
         §§goto(addr274);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            loop0:
            while(this.§=l§)
            {
               loop1:
               for(; !(_loc2_ && this); loop3:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     this.§,!7§();
                     while(_loc1_)
                     {
                        loop6:
                        while(true)
                        {
                           this.§=l§.close();
                           addr82:
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                     }
                     continue loop3;
                     if(!(_loc2_ && this))
                     {
                        break loop0;
                     }
                  }
               })
               {
                  while(true)
                  {
                     this.§0!R§ = this.§5u§;
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §+=§(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc10_)
         {
         }
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(_loc11_ || endian)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(stream == null);
                     while(true)
                     {
                        §§push(!§§pop());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc11_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       addr151:
                                       while(_loc11_)
                                       {
                                          if(!_loc11_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 return;
                                 addr148:
                              }
                              §§goto(addr172);
                           }
                        }
                        if(_loc10_ && includeAdler32)
                        {
                           continue;
                        }
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §@!K§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            if(!(_loc2_ && this))
            {
               addr55:
               §§push(this.§;q§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     addr63:
                     §§push(uint(this.§;q§.length));
                     if(_loc1_ || _loc2_)
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
            §§goto(addr63);
         }
         §§goto(addr55);
      }
      
      public function §?!H§(index:uint) : FZipFile
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_ && index)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(this.§;q§);
               if(_loc3_)
               {
                  break;
               }
               if(!§§pop())
               {
                  return null;
               }
               addr75:
               if(_loc2_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     §§push(this.§;q§);
                     break;
                  }
                  continue loop0;
               }
            }
            §§goto(addr75);
         }
      }
      
      public function §"!K§(name:String) : FZipFile
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               if(!this.§`!;§[name])
               {
                  §§push(null);
                  break;
               }
               if(_loc3_ || name)
               {
                  if(_loc3_)
                  {
                     §§push(this.§`!;§[name] as FZipFile);
                     break;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
      }
      
      public function §&!k§(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || content)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
            }
            addr111:
         }
         loop1:
         while(true)
         {
            while(_loc5_ || content)
            {
               if(_loc4_ && doCompress)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break loop1;
               }
               §§goto(addr111);
            }
         }
         §§push(this);
         if(!(_loc4_ && name))
         {
            §§push(this.§;q§);
            if(!(_loc4_ && content))
            {
               if(§§pop())
               {
                  addr61:
                  §§push(uint(this.§;q§.length));
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§`U§(§§pop(),name,content,doCompress);
            }
         }
         §§goto(addr61);
      }
      
      public function §=<§(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && charset)
         {
         }
         if(_loc5_)
         {
         }
         do
         {
            do
            {
               do
               {
                  while(!_loc6_)
                  {
                  }
               }
               while(!(_loc6_ || content));
               
            }
            while(!(_loc6_ || charset));
            
         }
         while(_loc5_);
         
         §§push(this);
         if(!_loc5_)
         {
            §§push(this.§;q§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  addr51:
                  §§push(uint(this.§;q§.length));
                  if(_loc6_ || name)
                  {
                  }
               }
               else
               {
                  §§push(uint(0));
               }
               return §§pop().§[d§(§§pop(),name,content,charset,doCompress);
            }
         }
         §§goto(addr51);
      }
      
      public function §`U§(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || content)
         {
         }
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr155:
                  while(!(_loc7_ && content))
                  {
                     loop5:
                     while(true)
                     {
                        if(this.§;q§ == null)
                        {
                           loop6:
                           while(true)
                           {
                              addr139:
                              while(true)
                              {
                                 this.§;q§ = [];
                                 while(_loc6_)
                                 {
                                    while(true)
                                    {
                                       addr114:
                                       if(_loc6_ || content)
                                       {
                                          this.§`!;§ = new Dictionary();
                                          continue loop5;
                                       }
                                    }
                                    if(!(_loc6_ || content))
                                    {
                                       continue;
                                    }
                                    if(!(_loc6_ || name))
                                    {
                                       continue loop0;
                                    }
                                    addr86:
                                    if(!(_loc7_ && name))
                                    {
                                       throw new Error("File already exists: " + name + ". Please remove first.");
                                    }
                                    addr175:
                                    while(true)
                                    {
                                       continue loop0;
                                       §§goto(addr86);
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        while(true)
                        {
                           if(this.§`!;§ == null)
                           {
                              §§goto(addr114);
                           }
                           else
                           {
                              if(!this.§`!;§[name])
                              {
                                 break;
                              }
                              if(!(_loc6_ || content))
                              {
                                 continue loop5;
                              }
                              if(!_loc7_)
                              {
                                 §§goto(addr71);
                              }
                              §§goto(addr139);
                           }
                        }
                        addr182:
                        var file:FZipFile = new FZipFile();
                        if(_loc6_)
                        {
                           file.§"!a§ = name;
                           addr317:
                        }
                        addr310:
                        file.§!!f§(content,doCompress);
                        addr307:
                        if(index >= this.§;q§.length)
                        {
                           addr265:
                           if(!(_loc7_ && content))
                           {
                              addr273:
                              if(_loc6_ || index)
                              {
                                 if(_loc6_ || content)
                                 {
                                    addr248:
                                    this.§;q§.push(file);
                                    addr251:
                                    if(_loc6_ || name)
                                    {
                                       addr201:
                                       this.§`!;§[name] = file;
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && index))
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr221:
                                                      if(_loc6_ || index)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   return file;
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr307);
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr221);
                                       addr244:
                                    }
                                    §§goto(addr273);
                                 }
                                 §§goto(addr317);
                              }
                           }
                           §§goto(addr310);
                        }
                        §§push(this.§;q§);
                        if(!_loc7_)
                        {
                           §§pop().splice(index,0,file);
                           §§goto(addr244);
                        }
                        §§goto(addr248);
                     }
                  }
               }
            }
         }
         §§goto(addr175);
      }
      
      public function §[d§(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         if(_loc8_ || name)
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     addr178:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      public function §,i§(index:uint) : FZipFile
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var file:FZipFile = null;
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(this.§;q§);
               if(_loc4_ || this)
               {
                  §§push(§§pop() == null);
                  while(true)
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_ || this)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 addr156:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                                 addr98:
                              }
                           }
                        }
                     }
                  }
               }
               break;
               while(!(_loc3_ && file))
               {
                  §§goto(addr35);
               }
            }
            file = §§pop()[index] as FZipFile;
            if(!_loc3_)
            {
               addr255:
               if(file != null)
               {
                  this.§;q§.splice(index,1);
                  addr252:
                  if(!(_loc3_ && file))
                  {
                     addr230:
                     if(_loc4_)
                     {
                        delete this.§`!;§[file.§"!a§];
                        addr215:
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc4_ || file))
                              {
                                 §§goto(addr252);
                              }
                              return file;
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr255);
                  }
                  addr253:
                  §§goto(addr253);
               }
               §§goto(addr257);
            }
            §§goto(addr252);
         }
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_ && this)
         {
         }
         while(true)
         {
            §§push(Boolean(this.§0!R§(stream)));
            while(!§§pop())
            {
               if(_loc2_ && stream)
               {
               }
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               §§push(this.§0!R§ === this.§5u§);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
         }
      }
      
      protected function §5u§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
         }
         while(!(_loc3_ || stream))
         {
         }
         return false;
      }
      
      protected function §1S§(stream:IDataInput) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || stream)
         {
         }
         var sig:uint = 0;
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  if(stream.bytesAvailable < 4)
                  {
                     §§push(false);
                     break;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     continue;
                  }
                  addr152:
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           sig = stream.readUnsignedInt();
                           if(!(_loc4_ && stream))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr131);
      }
      
      protected function §`C§(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§=!Y§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().parse(stream));
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop18:
                           while(true)
                           {
                              §§push(false);
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 loop20:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop3;
                                    }
                                    addr243:
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             this.§=!,§();
                                             loop8:
                                             while(!_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(this.§0!R§ != this.§5u§)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(_loc3_ && stream)
                                                         {
                                                            addr170:
                                                            if(_loc3_ && stream)
                                                            {
                                                               break loop6;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop20;
                                                            }
                                                            addr182:
                                                         }
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!(_loc2_ || _loc3_))
                                                         {
                                                            break;
                                                            addr199:
                                                         }
                                                         this.§0!R§ = this.§1S§;
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§;g§ = new ByteArray();
                                                               addr225:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            addr230:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && stream))
                                                            {
                                                               break loop8;
                                                            }
                                                            addr244:
                                                            while(true)
                                                            {
                                                               addr245:
                                                               while(true)
                                                               {
                                                                  this.§0!R§ = this.§&!6§;
                                                                  addr236:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr230);
                                                                  }
                                                               }
                                                            }
                                                            break loop9;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop18;
                                                }
                                                while(true)
                                                {
                                                   this.§>!V§ = 0;
                                                   §§goto(addr199);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr245);
                                             }
                                          }
                                       }
                                       §§goto(addr244);
                                       continue loop20;
                                    }
                                 }
                              }
                           }
                           return §§pop();
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr177);
      }
      
      protected function §&!6§(stream:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && stream)
         {
         }
         var c:* = uint(0);
         if(_loc4_)
         {
         }
         loop0:
         while(true)
         {
            if(stream.bytesAvailable <= 0)
            {
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && stream))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(!(_loc4_ && c))
                           {
                              break;
                           }
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(this.§>!V§);
                                    if(!(_loc4_ && stream))
                                    {
                                       if(§§pop() == SIG_DATA_DESCRIPTOR)
                                       {
                                          break;
                                       }
                                       addr97:
                                       while(true)
                                       {
                                          this.§;g§.writeByte(c);
                                          addr113:
                                          while(true)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                while(_loc3_ || this)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      this.§0!R§ = this.§!!O§;
                                                      break;
                                                      addr143:
                                                      addr140:
                                                   }
                                                   if(!(_loc4_ && stream))
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr239:
                                                   while(true)
                                                   {
                                                      addr234:
                                                      while(true)
                                                      {
                                                         §§push(uint(stream.readUnsignedByte()));
                                                         break loop3;
                                                      }
                                                   }
                                                }
                                                addr123:
                                                return true;
                                                addr79:
                                             }
                                             while(true)
                                             {
                                                if(_loc4_ && stream)
                                                {
                                                   continue loop3;
                                                }
                                                addr189:
                                                this.§;g§.length -= 3;
                                             }
                                             continue loop3;
                                             §§goto(addr143);
                                          }
                                       }
                                    }
                                    break loop3;
                                 }
                              }
                              while(true)
                              {
                                 c = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    addr221:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          break loop6;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr234);
                              }
                              §§push(this);
                              §§push(this.§>!V§);
                              if(!_loc4_)
                              {
                                 §§push(8);
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() >>> §§pop());
                              }
                           }
                        }
                        else if(_loc3_ || stream)
                        {
                           §§goto(addr97);
                        }
                        while(true)
                        {
                           if(_loc3_ || this)
                           {
                              §§goto(addr182);
                           }
                           §§goto(addr221);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr79);
               }
               break;
            }
            §§goto(addr239);
         }
         if(_loc3_ || stream)
         {
            §§push(false);
            if(!_loc4_)
            {
               return §§pop();
            }
         }
         else
         {
            §§goto(addr140);
         }
         §§goto(addr123);
      }
      
      protected function §!!O§(stream:IDataInput) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && ddSizeCompressed)
         {
         }
         var ddCRC32:* = uint(0);
         var ddSizeCompressed:* = uint(0);
         var ddSizeUncompressed:uint = 0;
         if(!(_loc5_ && ddCRC32))
         {
            while(true)
            {
            }
            addr429:
         }
         while(true)
         {
            if(stream.bytesAvailable < 12)
            {
               §§push(false);
               if(_loc6_)
               {
                  return §§pop();
               }
               break;
            }
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
                        while(true)
                        {
                           §§push(uint(stream.readUnsignedInt()));
                           while(true)
                           {
                              ddCRC32 = §§pop();
                              loop8:
                              while(true)
                              {
                                 while(_loc6_)
                                 {
                                    §§push(uint(stream.readUnsignedInt()));
                                    loop10:
                                    while(true)
                                    {
                                       ddSizeCompressed = §§pop();
                                       addr395:
                                       while(!_loc5_)
                                       {
                                          continue loop10;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           addr191:
                           if(_loc5_)
                           {
                              continue;
                           }
                           this.§;g§.writeUnsignedInt(ddSizeCompressed);
                           if(_loc6_)
                           {
                              this.§;g§.writeUnsignedInt(ddSizeUncompressed);
                              §§goto(addr158);
                           }
                           §§goto(addr306);
                        }
                     }
                     while(true)
                     {
                        if(_loc6_ || this)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr191);
                           }
                           break;
                        }
                        continue loop4;
                     }
                     §§goto(addr226);
                  }
               }
            }
         }
         return §§pop();
      }
      
      protected function §=!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               this.§;q§.push(this.§=!Y§);
               addr127:
               while(true)
               {
               }
            }
            addr129:
         }
         loop2:
         while(true)
         {
            if(this.§=!Y§.§"!a§)
            {
               loop3:
               for(; _loc2_; if(!(_loc1_ && _loc1_))
               {
                  this.§=!Y§ = null;
                  while(_loc2_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                     §§goto(addr44);
                  }
                  continue loop2;
               })
               {
                  loop4:
                  while(_loc2_)
                  {
                     this.§`!;§[this.§=!Y§.§"!a§] = this.§=!Y§;
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.§=!Y§));
                              loop8:
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop8;
                                 }
                                 continue loop6;
                              }
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr127);
            }
            §§goto(addr66);
         }
      }
      
      protected function §;P§(evt:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc5_)
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
                  addr35:
                  while(true)
                  {
                     dispatchEvent(evt.clone());
                     addr42:
                     while(_loc4_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function §0]§(evt:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               dispatchEvent(evt.clone());
               while(!_loc2_)
               {
                  continue loop0;
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §5Z§(evt:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && evt))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.close();
                  addr83:
                  while(!(_loc2_ && evt))
                  {
                     while(true)
                     {
                        dispatchEvent(evt.clone());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §=Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               this.§=l§.addEventListener(Event.COMPLETE,this.§0]§);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§=l§.addEventListener(Event.OPEN,this.§0]§);
                     loop10:
                     while(_loc1_ || this)
                     {
                        this.§=l§.addEventListener(ProgressEvent.PROGRESS,this.§;P§);
                        while(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop10;
                           }
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    addr125:
                                    loop6:
                                    while(true)
                                    {
                                       this.§=l§.addEventListener(IOErrorEvent.IO_ERROR,this.§5Z§);
                                       while(true)
                                       {
                                          continue loop6;
                                          addr85:
                                          while(_loc1_ || this)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop10;
                                             }
                                             addr149:
                                             while(true)
                                             {
                                                this.§=l§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0]§);
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr104:
                                    if(_loc2_ && _loc2_)
                                    {
                                       break;
                                    }
                                    this.§=l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5Z§);
                                    §§goto(addr85);
                                 }
                                 §§goto(addr125);
                              }
                              while(true)
                              {
                                 §§goto(addr149);
                                 §§goto(addr104);
                              }
                              addr160:
                           }
                           §§goto(addr85);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      protected function §,!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || this)
         {
            while(true)
            {
               this.§=l§.removeEventListener(Event.COMPLETE,this.§0]§);
               addr199:
               while(true)
               {
               }
            }
            addr201:
         }
         loop2:
         while(true)
         {
            this.§=l§.removeEventListener(Event.OPEN,this.§0]§);
            addr185:
            while(true)
            {
               continue loop2;
            }
         }
      }
   }
}
