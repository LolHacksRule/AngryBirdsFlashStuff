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
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           SIG_LOCAL_FILE_HEADER = 67324752;
                           addr192:
                           while(true)
                           {
                           }
                           addr136:
                           loop10:
                           while(SIG_SPANNING_MARKER || FZip)
                           {
                              SIG_ZIP64_END_OF_CENTRAL_DIRECTORY = 101075792;
                              while(true)
                              {
                                 if(!SIG_CENTRAL_FILE_HEADER)
                                 {
                                    addr119:
                                    if(SIG_CENTRAL_FILE_HEADER && SIG_CENTRAL_FILE_HEADER)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 addr148:
                                 while(true)
                                 {
                                    if(SIG_SPANNING_MARKER)
                                    {
                                       if(SIG_SPANNING_MARKER)
                                       {
                                          continue loop10;
                                       }
                                       continue loop0;
                                    }
                                    addr187:
                                    while(true)
                                    {
                                       SIG_DIGITAL_SIGNATURE = 84233040;
                                       continue loop3;
                                    }
                                 }
                              }
                              while(!(SIG_CENTRAL_FILE_HEADER && SIG_SPANNING_MARKER))
                              {
                                 SIG_END_OF_CENTRAL_DIRECTORY = 101010256;
                                 §§goto(addr148);
                                 §§goto(addr119);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(!(SIG_SPANNING_MARKER || FZip))
                  {
                     continue;
                  }
                  §§goto(addr51);
               }
            }
         }
         §§goto(addr187);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            while(true)
            {
            }
            addr109:
         }
         loop1:
         while(true)
         {
            super();
            while(true)
            {
               loop3:
               while(true)
               {
                  this.§!!C§ = filenameEncoding;
                  addr93:
                  while(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue loop3;
                     }
                     §§goto(addr109);
                  }
                  continue loop1;
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§0!R§ = this.§5u§;
               while(!_loc3_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     return;
                  }
                  §§goto(addr93);
               }
               §§goto(addr64);
            }
         }
      }
      
      public function get §]!%§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         §§push(this.§0!R§ === this.§5u§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function load(request:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_ || request)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(!this.§=l§);
                  if(_loc3_ || request)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop18:
                           while(true)
                           {
                              §§pop();
                              addr233:
                              while(true)
                              {
                                 §§push(this.§0!R§ == this.§5u§);
                                 if(!(_loc2_ && this))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop18;
                                    }
                                    continue loop2;
                                 }
                                 continue loop18;
                              }
                           }
                           addr232:
                        }
                        loop3:
                        while(true)
                        {
                           if(§§pop())
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
                                       while(true)
                                       {
                                          this.§=l§.endian = Endian.LITTLE_ENDIAN;
                                          loop8:
                                          while(_loc3_)
                                          {
                                             if(!(_loc2_ && request))
                                             {
                                                loop9:
                                                for(; !_loc2_; while(!(_loc2_ && this))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr95);
                                                   §§goto(addr76);
                                                })
                                                {
                                                   this.§=Z§();
                                                   while(true)
                                                   {
                                                      loop11:
                                                      while(!_loc2_)
                                                      {
                                                         this.§;q§ = [];
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                               addr127:
                                                            }
                                                            while(!_loc2_)
                                                            {
                                                               this.§`!;§ = new Dictionary();
                                                               continue loop9;
                                                            }
                                                            continue loop6;
                                                            addr83:
                                                            if(_loc2_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            loop17:
                                                            for(; _loc3_; if(_loc3_ || this)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               continue loop11;
                                                            })
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§=l§.load(request);
                                                                  while(_loc3_)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                                  addr76:
                                                                  while(_loc3_ || _loc3_)
                                                                  {
                                                                     §§goto(addr83);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            while(!_loc2_)
                                                            {
                                                               this.§0!R§ = this.§1S§;
                                                               §§goto(addr76);
                                                            }
                                                            §§goto(addr127);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                           §§goto(addr194);
                        }
                        return;
                     }
                  }
                  §§goto(addr232);
               }
            }
         }
         §§goto(addr70);
      }
      
      public function loadBytes(bytes:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || bytes)
         {
         }
         if(_loc2_ && bytes)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(!this.§=l§);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr294:
                           loop22:
                           while(true)
                           {
                              §§push(this.§0!R§ == this.§5u§);
                              addr257:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr268:
                                 while(!_loc2_)
                                 {
                                 }
                                 continue loop22;
                              }
                           }
                        }
                        addr293:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(!_loc2_)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§;q§ = [];
                                 loop6:
                                 while(!_loc2_)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       this.§`!;§ = new Dictionary();
                                       addr240:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             bytes.position = 0;
                                             while(true)
                                             {
                                                while(_loc3_ || _loc3_)
                                                {
                                                   continue loop7;
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr34);
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr176:
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    this.§0!R§ = this.§5u§;
                                    loop18:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       addr174:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr176);
                                          }
                                          else
                                          {
                                             §§goto(addr199);
                                          }
                                       }
                                       continue loop6;
                                       addr96:
                                       while(true)
                                       {
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue loop18;
                                          }
                                          §§goto(addr103);
                                       }
                                    }
                                    §§goto(addr294);
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr34);
                     }
                  }
                  §§goto(addr293);
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     addr173:
                     §§goto(addr174);
                  }
                  dispatchEvent(new FZipErrorEvent(FZipErrorEvent.PARSE_ERROR,"EOF"));
                  for(; !(_loc2_ && bytes); if(!(_loc2_ && this))
                  {
                     if(_loc2_ && this)
                     {
                        §§goto(addr129);
                     }
                     addr34:
                  },continue,return)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr96);
               }
            }
         }
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
            while(this.§=l§)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§0!R§ = this.§5u§;
                     while(_loc1_)
                     {
                        loop4:
                        while(_loc1_)
                        {
                           this.§,!7§();
                           loop5:
                           while(true)
                           {
                              do
                              {
                                 this.§=l§.close();
                                 loop7:
                                 while(true)
                                 {
                                    addr69:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          this.§=l§ = null;
                                          continue loop7;
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                              }
                              while(_loc2_);
                              
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr52:
                                 break loop0;
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §+=§(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc11_)
         {
         }
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(!(_loc10_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr186:
                  while(true)
                  {
                     §§push(stream == null);
                     if(_loc11_ || includeAdler32)
                     {
                        §§push(!§§pop());
                     }
                     addr164:
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr165:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc10_ && this))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              while(§§pop())
                              {
                                 continue loop1;
                              }
                              addr668:
                              return;
                              addr141:
                           }
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              addr124:
                              if(!(_loc10_ && includeAdler32))
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §@!K§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc1_)
         {
            if(_loc1_)
            {
               addr50:
               §§push(this.§;q§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     addr58:
                     §§push(uint(this.§;q§.length));
                     if(_loc1_ || _loc1_)
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
            §§goto(addr58);
         }
         §§goto(addr50);
      }
      
      public function §?!H§(index:uint) : FZipFile
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            while(true)
            {
               addr67:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr85);
            }
         }
         while(true)
         {
            §§push(this.§;q§);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
            if(§§pop())
            {
               continue;
            }
            addr85:
            return this.§;q§[index] as FZipFile;
            §§push(null);
         }
         §§goto(addr85);
      }
      
      public function §"!K§(name:String) : FZipFile
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            while(true)
            {
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     if(!this.§`!;§[name])
                     {
                        §§push(null);
                        break;
                     }
                     if(_loc3_)
                     {
                        §§push(this.§`!;§[name] as FZipFile);
                        break;
                     }
                     continue loop1;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §&!k§(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && content)
         {
         }
         if(_loc4_)
         {
         }
         do
         {
            do
            {
               while(!(_loc5_ || name))
               {
               }
            }
            while(!_loc5_);
            
         }
         while(!(_loc5_ || this));
         
         §§push(this);
         if(_loc5_ || doCompress)
         {
            §§push(this.§;q§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  addr56:
                  §§push(uint(this.§;q§.length));
                  if(!_loc5_)
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
         §§goto(addr56);
      }
      
      public function §=<§(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && content)
         {
         }
         if(!(_loc6_ && charset))
         {
            loop0:
            while(true)
            {
               loop1:
               do
               {
                  while(!_loc6_)
                  {
                     while(!_loc5_)
                     {
                     }
                     if(!(_loc6_ && this))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc5_ || content));
               
            }
         }
         §§push(this);
         if(_loc5_)
         {
            §§push(this.§;q§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  addr55:
                  §§push(uint(this.§;q§.length));
                  if(!_loc5_)
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
         §§goto(addr55);
      }
      
      public function §`U§(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!(_loc6_ && content))
         {
            loop0:
            while(true)
            {
               while(true)
               {
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
                              if(this.§;q§ == null)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    addr162:
                                    while(!_loc6_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                              while(true)
                              {
                                 if(this.§`!;§ != null)
                                 {
                                    if(this.§`!;§[name])
                                    {
                                       if(_loc6_ && name)
                                       {
                                          addr97:
                                          if(_loc7_ || index)
                                          {
                                             throw new Error("File already exists: " + name + ". Please remove first.");
                                          }
                                          addr110:
                                          break;
                                       }
                                       §§goto(addr75);
                                    }
                                    break;
                                 }
                                 if(!(_loc6_ && content))
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr162);
                                 §§goto(addr146);
                              }
                              var file:FZipFile = new FZipFile();
                              if(_loc7_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    file.§"!a§ = name;
                                    loop11:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          file.§!!f§(content,doCompress);
                                          loop13:
                                          while(true)
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(index < this.§;q§.length)
                                                {
                                                   §§push(this.§;q§);
                                                   if(_loc7_ || name)
                                                   {
                                                      §§pop().splice(index,0,file);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && index))
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  addr285:
                                                                  while(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§;q§);
                                                                        addr263:
                                                                        while(true)
                                                                        {
                                                                           §§pop().push(file);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  return file;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr285);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr278);
                           }
                        }
                     }
                     if(!(_loc6_ && content))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §[d§(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && content)
         {
         }
         if(_loc8_ && index)
         {
         }
         loop0:
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
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           do
                           {
                              if(this.§;q§ != null)
                              {
                                 while(true)
                                 {
                                    if(this.§`!;§ != null)
                                    {
                                       if(this.§`!;§[name])
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc7_ || this)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop6;
                                             }
                                             addr98:
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   addr132:
                                                   if(!(_loc8_ && this))
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr174:
                                                   while(true)
                                                   {
                                                      addr175:
                                                      while(true)
                                                      {
                                                         this.§;q§ = [];
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                }
                                                while(_loc7_ || content)
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr175);
                                             }
                                             continue loop5;
                                          }
                                          addr92:
                                       }
                                       var file:FZipFile = new FZipFile();
                                       if(!_loc7_)
                                       {
                                       }
                                       file.§"!a§ = name;
                                       file.§'!2§(content,charset,doCompress);
                                       addr313:
                                       addr316:
                                       addr323:
                                       addr321:
                                       addr305:
                                       if(index >= this.§;q§.length)
                                       {
                                          addr297:
                                          if(_loc7_)
                                          {
                                             addr300:
                                             if(_loc7_)
                                             {
                                                addr270:
                                                this.§;q§.push(file);
                                                addr273:
                                                if(!(_loc8_ && name))
                                                {
                                                   addr216:
                                                   this.§`!;§[name] = file;
                                                   addr222:
                                                   if(!(_loc8_ && index))
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr273);
                                                               }
                                                               return file;
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      addr257:
                                                      if(_loc7_ || name)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr236:
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr216);
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr321);
                                          }
                                          §§goto(addr305);
                                       }
                                       §§push(this.§;q§);
                                       if(!(_loc8_ && this))
                                       {
                                          §§pop().splice(index,0,file);
                                          §§goto(addr257);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr98);
                                 }
                                 continue loop3;
                                 addr93:
                              }
                              §§goto(addr174);
                           }
                           while(_loc8_);
                           
                           if(!_loc8_)
                           {
                              throw new Error("File already exists: " + name + ". Please remove first.");
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc7_ || content)
               {
                  continue loop0;
               }
            }
         }
      }
      
      public function §,i§(index:uint) : FZipFile
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         var file:FZipFile = null;
         if(!_loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(this.§;q§);
               if(_loc3_ || file)
               {
                  §§push(§§pop() == null);
                  if(!(_loc4_ && this))
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
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr153:
                                    while(true)
                                    {
                                       §§push(this.§`!;§ == null);
                                       if(!_loc4_)
                                       {
                                          if(!(_loc3_ || file))
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       addr104:
                                       while(!_loc4_)
                                       {
                                       }
                                       continue loop6;
                                    }
                                    continue loop3;
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§pop();
                                          addr127:
                                          while(true)
                                          {
                                             addr41:
                                             while(true)
                                             {
                                                §§push(index < this.§;q§.length);
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            continue loop11;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr103);
                                                   }
                                                   break;
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr104);
                                          }
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       loop15:
                                       for(; !(_loc4_ && file); if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       },if(!_loc3_)
                                       {
                                          continue loop1;
                                       },if(true)
                                       {
                                          §§push(this.§;q§);
                                          break loop1;
                                       },§§goto(addr41))
                                       {
                                          while(_loc3_ || this)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop15;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr256);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
               break;
            }
            file = §§pop()[index] as FZipFile;
            if(!(_loc4_ && file))
            {
               addr254:
               if(file != null)
               {
                  addr244:
                  if(!(_loc4_ && file))
                  {
                     this.§;q§.splice(index,1);
                     delete this.§`!;§[file.§"!a§];
                     addr231:
                     if(!_loc4_)
                     {
                        if(_loc3_ || index)
                        {
                           addr188:
                           if(_loc3_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr244);
                                 }
                                 return file;
                              }
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr244);
                     }
                     addr239:
                     §§goto(addr239);
                  }
                  §§goto(addr254);
               }
            }
            else if(false)
            {
               §§goto(addr188);
            }
            addr256:
            return null;
         }
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && stream)
         {
         }
         if(_loc3_)
         {
         }
         while(true)
         {
            §§push(Boolean(this.§0!R§(stream)));
            while(!§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §§push(this.§0!R§ === this.§5u§);
               if(_loc2_ || _loc2_)
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
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(!_loc3_)
            {
            }
         }
         return false;
      }
      
      protected function §1S§(stream:IDataInput) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         var sig:uint = 0;
         if(!_loc5_)
         {
            while(true)
            {
               loop1:
               while(!(_loc5_ && sig))
               {
                  loop2:
                  while(true)
                  {
                     if(stream.bytesAvailable < 4)
                     {
                        §§push(false);
                        break;
                     }
                     if(_loc4_)
                     {
                        if(_loc5_ && stream)
                        {
                           continue loop1;
                        }
                        §§goto(addr148);
                        continue loop1;
                     }
                     addr148:
                     do
                     {
                        do
                        {
                           sig = stream.readUnsignedInt();
                        }
                        while(_loc5_ && stream);
                        
                     }
                     while(!(_loc4_ || stream));
                     
                     var _loc3_:* = sig;
                     if(!(_loc5_ && _loc3_))
                     {
                        if(_loc4_)
                        {
                           §§push(SIG_LOCAL_FILE_HEADER);
                           if(!_loc5_)
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ && this))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_ || this)
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                          addr238:
                                       }
                                    }
                                    else
                                    {
                                       addr275:
                                       §§push(3);
                                       if(_loc5_ && sig)
                                       {
                                          addr338:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(SIG_CENTRAL_FILE_HEADER);
                                    if(_loc4_ || this)
                                    {
                                       addr209:
                                       §§push(_loc3_);
                                       if(_loc4_ || this)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(1);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr238);
                                                }
                                                else
                                                {
                                                   addr422:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         this.§0!R§ = this.§`C§;
                                                         break;
                                                         addr109:
                                                      case 1:
                                                      case 2:
                                                      case 3:
                                                      case 4:
                                                      case 5:
                                                      case 6:
                                                      case 7:
                                                      case 8:
                                                      case 9:
                                                         for(; !_loc5_; if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               addr85:
                                                            }
                                                            §§push(true);
                                                            if(!(_loc5_ && stream))
                                                            {
                                                               return §§pop();
                                                            }
                                                            break loop2;
                                                         })
                                                         {
                                                            this.§0!R§ = this.§5u§;
                                                            if(_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr109);
                                                         }
                                                         loop6:
                                                         while(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§=!Y§ = new FZipFile(this.§!!C§);
                                                               continue loop6;
                                                            }
                                                         }
                                                         §§goto(addr85);
                                                      default:
                                                         if(!(_loc5_ && this))
                                                         {
                                                            throw new Error("Unknown record signature: 0x" + sig.toString(16));
                                                         }
                                                         break;
                                                   }
                                                   §§goto(addr98);
                                                   addr420:
                                                }
                                             }
                                             else
                                             {
                                                addr417:
                                                §§push(10);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr420);
                                                }
                                             }
                                             §§goto(addr422);
                                          }
                                          else
                                          {
                                             §§push(SIG_END_OF_CENTRAL_DIRECTORY);
                                             if(!_loc5_)
                                             {
                                                addr244:
                                                §§push(_loc3_);
                                                if(_loc4_ || stream)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(2);
                                                         if(!_loc4_)
                                                         {
                                                            addr363:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr396:
                                                         §§push(9);
                                                         if(!(_loc5_ && stream))
                                                         {
                                                            addr414:
                                                         }
                                                      }
                                                      §§goto(addr422);
                                                   }
                                                   else
                                                   {
                                                      §§push(SIG_SPANNING_MARKER);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§goto(addr275);
                                                               }
                                                               else
                                                               {
                                                                  addr295:
                                                                  §§push(4);
                                                                  if(!_loc4_)
                                                                  {
                                                                  }
                                                                  §§goto(addr422);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(SIG_DIGITAL_SIGNATURE);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr295);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr396);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY);
                                                                        if(_loc4_ || stream)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(5);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§goto(addr422);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr422);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             §§push(6);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr338);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr388:
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                          §§goto(addr422);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(SIG_DATA_DESCRIPTOR);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr344:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr347:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(7);
                                                                                                      if(!(_loc5_ && stream))
                                                                                                      {
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr414);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr417);
                                                                                                   }
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(SIG_ARCHIVE_EXTRA_DATA);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr369:
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         addr377:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               addr385:
                                                                                                               §§push(8);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr388);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr422);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr417);
                                                                                                            }
                                                                                                            §§goto(addr422);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(SIG_SPANNING);
                                                                                                         }
                                                                                                         §§goto(addr417);
                                                                                                      }
                                                                                                      addr393:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr396);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr417);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr417);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr422);
                                                                                                            §§push(10);
                                                                                                         }
                                                                                                         §§goto(addr422);
                                                                                                      }
                                                                                                      §§goto(addr417);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                          §§goto(addr393);
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr422);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                              }
                                                                              §§goto(addr417);
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                     §§goto(addr422);
                                                                  }
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr422);
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr369);
                                          }
                                       }
                                       §§goto(addr377);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr422);
                              }
                              §§goto(addr369);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr417);
                     }
                     §§goto(addr385);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr158);
      }
      
      protected function §`C§(stream:IDataInput) : Boolean
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
                  §§push(this.§=!Y§);
                  addr253:
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
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    addr31:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    addr248:
                                    addr247:
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
                                             while(_loc3_ || _loc3_)
                                             {
                                                if(this.§0!R§ == this.§5u§)
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc3_ || stream))
                                                {
                                                   continue loop0;
                                                }
                                                if(_loc3_)
                                                {
                                                   for(; !(_loc2_ && stream); if(_loc2_ && _loc2_)
                                                   {
                                                      continue;
                                                   },if(_loc3_ || _loc3_)
                                                   {
                                                      §§goto(addr50);
                                                   },if(!(_loc2_ && _loc3_))
                                                   {
                                                      continue loop7;
                                                   },§§goto(addr186))
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         this.§0!R§ = this.§1S§;
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc2_ && _loc3_)
                                                            {
                                                               addr191:
                                                               if(!_loc2_)
                                                               {
                                                                  this.§'9§ = 0;
                                                                  break;
                                                                  addr186:
                                                               }
                                                            }
                                                            continue;
                                                            break loop6;
                                                         }
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§;g§ = new ByteArray();
                                                            continue loop1;
                                                            addr196:
                                                            while(!(_loc2_ && _loc2_))
                                                            {
                                                               this.§>!V§ = 0;
                                                               §§goto(addr191);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      §§push(true);
                                                      break loop10;
                                                   }
                                                   continue loop1;
                                                }
                                                addr256:
                                                while(true)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             addr249:
                                             while(true)
                                             {
                                                this.§0!R§ = this.§&!6§;
                                                §§goto(addr225);
                                                break loop6;
                                             }
                                          }
                                       }
                                       break;
                                       §§goto(addr31);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr249);
                                    }
                                 }
                                 break;
                              }
                              addr50:
                              return true;
                           }
                           return §§pop();
                        }
                        §§goto(addr256);
                     }
                     this.§=!Y§;
                     addr264:
                     return §§pop();
                     if(_loc2_ && stream)
                     {
                        continue;
                     }
                     §§goto(addr247);
                     §§push(§§pop().§-p§);
                  }
               }
            }
         }
         §§goto(addr248);
      }
      
      protected function §&!6§(stream:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         var c:* = uint(0);
         if(_loc4_ && _loc3_)
         {
         }
         loop0:
         while(true)
         {
            if(stream.bytesAvailable <= 0)
            {
               if(_loc3_ || c)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_ || c)
                     {
                        addr65:
                        if(_loc3_ || stream)
                        {
                           §§push(false);
                           if(!(_loc4_ && c))
                           {
                              return §§pop();
                           }
                           break;
                        }
                        loop12:
                        while(true)
                        {
                           §§push(uint(stream.readUnsignedByte()));
                           addr228:
                           loop8:
                           while(true)
                           {
                              c = §§pop();
                              addr229:
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    break loop8;
                                 }
                                 addr244:
                                 while(true)
                                 {
                                    continue loop12;
                                 }
                                 continue loop8;
                              }
                           }
                           loop11:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§>!V§);
                              if(!(_loc4_ && c))
                              {
                                 addr218:
                                 §§push(8);
                                 if(!(_loc4_ && c))
                                 {
                                    addr215:
                                    §§push(§§pop() >>> §§pop());
                                    §§push(c << 24);
                                 }
                                 §§pop().§>!V§ = §§pop() | §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§>!V§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(§§pop() != SIG_DATA_DESCRIPTOR)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                this.§;g§.length -= 3;
                                                addr150:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(_loc3_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && stream))
                                                            {
                                                               break;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop7;
                                                      }
                                                      this.§0!R§ = this.§!!O§;
                                                      §§push(true);
                                                      break loop0;
                                                      addr131:
                                                      addr128:
                                                      addr122:
                                                   }
                                                }
                                             }
                                          }
                                          addr180:
                                       }
                                       else
                                       {
                                          §§goto(addr228);
                                       }
                                       §§goto(addr229);
                                    }
                                    addr79:
                                    this.§;g§.writeByte(c);
                                    loop2:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   while(!_loc3_)
                                                   {
                                                      continue loop2;
                                                      §§goto(addr98);
                                                   }
                                                   addr98:
                                                   continue loop0;
                                                   addr75:
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr131);
                                          }
                                          break;
                                       }
                                       if(!(_loc3_ || c))
                                       {
                                          §§goto(addr150);
                                       }
                                       §§goto(addr79);
                                       §§goto(addr150);
                                    }
                                    §§goto(addr128);
                                 }
                              }
                              §§goto(addr215);
                           }
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr75);
               }
               §§goto(addr65);
            }
            §§goto(addr244);
         }
         return §§pop();
      }
      
      protected function §!!O§(stream:IDataInput) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && this)
         {
         }
         var ddCRC32:* = uint(0);
         var ddSizeCompressed:* = uint(0);
         var ddSizeUncompressed:* = uint(0);
         if(!(_loc6_ && ddCRC32))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!(_loc5_ || stream))
                  {
                     continue loop0;
                  }
                  if(stream.bytesAvailable < 12)
                  {
                     §§push(false);
                     if(!(_loc6_ && this))
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
                        for(; _loc5_; while(!(_loc6_ && ddCRC32))
                        {
                           this.§;g§.writeUnsignedInt(ddSizeUncompressed);
                           §§goto(addr140);
                        })
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              for(; _loc5_; if(_loc6_ && ddSizeCompressed)
                              {
                                 continue;
                              },§§goto(addr258))
                              {
                                 §§push(uint(stream.readUnsignedInt()));
                                 loop7:
                                 while(true)
                                 {
                                    ddCRC32 = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(uint(stream.readUnsignedInt()));
                                          loop10:
                                          while(_loc5_)
                                          {
                                             ddSizeCompressed = §§pop();
                                             while(!(_loc6_ && ddSizeCompressed))
                                             {
                                                while(true)
                                                {
                                                   §§push(uint(stream.readUnsignedInt()));
                                                   if(!(_loc5_ || ddCRC32))
                                                   {
                                                      break;
                                                   }
                                                   ddSizeUncompressed = §§pop();
                                                   continue loop5;
                                                   loop24:
                                                   while(!(_loc6_ && ddSizeCompressed))
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(this.§=!Y§);
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(ddSizeCompressed);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop().§!!D§ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        addr299:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break loop23;
                                                                              addr286:
                                                                           }
                                                                           §§push(this.§=!Y§);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(ddSizeUncompressed);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           addr295:
                                                                           §§pop().§14§ = §§pop();
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=!Y§);
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 §§pop().§<c§(this.§;g§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    this.§=!,§();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       if(_loc5_ || ddSizeCompressed)
                                                                                       {
                                                                                          break loop18;
                                                                                       }
                                                                                       addr344:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§;g§.position = 0;
                                                                                          addr336:
                                                                                          while(true)
                                                                                          {
                                                                                             addr330:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§=!Y§);
                                                                                                addr318:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(ddCRC32);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr283:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr290);
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                           addr290:
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     addr311:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().§&!H§ = §§pop();
                                                                     continue loop24;
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                          addr212:
                                          while(!(_loc6_ && this))
                                          {
                                             continue loop1;
                                             if(_loc6_ && this)
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                addr114:
                                                if(!(_loc5_ || this))
                                                {
                                                   while(_loc5_ || stream)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            while(true)
                                                            {
                                                               this.§;g§.writeUnsignedInt(ddSizeCompressed);
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  addr343:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr344);
                                                                  }
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            addr192:
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      §§goto(addr242);
                                                      §§goto(addr114);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc5_ || stream)
                                                      {
                                                         §§goto(addr55);
                                                      }
                                                      addr258:
                                                      this.§0!R§ = this.§1S§;
                                                   }
                                                   continue loop6;
                                                   addr176:
                                                }
                                                if(!(_loc6_ && ddSizeCompressed))
                                                {
                                                   addr55:
                                                   §§push(true);
                                                   break loop1;
                                                }
                                                §§goto(addr311);
                                                §§goto(addr286);
                                             }
                                             §§goto(addr330);
                                          }
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
               return §§pop();
            }
         }
         §§goto(addr192);
      }
      
      protected function §=!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               this.§;q§.push(this.§=!Y§);
               loop1:
               for(; !(_loc2_ && _loc1_); while(_loc1_ || _loc1_)
               {
                  §§goto(addr133);
                  §§goto(addr79);
               })
               {
                  while(true)
                  {
                     if(!this.§=!Y§.§"!a§)
                     {
                        while(true)
                        {
                           dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.§=!Y§));
                           addr79:
                           loop8:
                           while(true)
                           {
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr50:
                                    if(!(_loc1_ || this))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop8;
                              }
                              while(true)
                              {
                                 §§goto(addr89);
                                 §§goto(addr50);
                              }
                           }
                        }
                        return;
                     }
                     addr58:
                     continue loop1;
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr58);
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      protected function §;P§(evt:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc4_ && _loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               while(_loc5_ || this)
               {
                  while(true)
                  {
                     dispatchEvent(evt.clone());
                     while(!_loc5_)
                     {
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function §0]§(evt:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            while(true)
            {
               while(true)
               {
                  dispatchEvent(evt.clone());
                  §§goto(addr77);
               }
            }
         }
         addr77:
         while(true)
         {
            if(!(_loc3_ && evt))
            {
               if(_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr70:
      }
      
      protected function §5Z§(evt:Event) : void
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
               while(true)
               {
                  this.close();
                  addr78:
                  while(!(_loc2_ && evt))
                  {
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           dispatchEvent(evt.clone());
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §=Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && this))
         {
            while(true)
            {
               this.§=l§.addEventListener(Event.COMPLETE,this.§0]§);
               while(true)
               {
                  while(_loc2_)
                  {
                     this.§=l§.addEventListener(Event.OPEN,this.§0]§);
                     loop3:
                     while(true)
                     {
                        addr168:
                        while(true)
                        {
                           this.§=l§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0]§);
                           continue loop3;
                        }
                     }
                  }
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               §§goto(addr58);
            }
         }
         §§goto(addr134);
      }
      
      protected function §,!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc1_)
         {
         }
         loop0:
         while(true)
         {
            this.§=l§.removeEventListener(Event.COMPLETE,this.§0]§);
            addr185:
            while(true)
            {
               addr174:
               while(true)
               {
                  this.§=l§.removeEventListener(Event.OPEN,this.§0]§);
                  continue loop0;
               }
            }
         }
      }
   }
}
