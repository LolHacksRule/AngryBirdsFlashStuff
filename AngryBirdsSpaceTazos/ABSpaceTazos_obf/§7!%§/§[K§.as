package §7!%§
{
   import § !Y§.§4!1§;
   import §0N§.§2!@§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §[K§
   {
      
      private static var §1'§:§[K§;
       
      
      private var §4!f§:Vector.<XML>;
      
      private var §1!§:Boolean = false;
      
      private var §?!O§:int;
      
      private var §9!]§:int;
      
      private var §[!r§:Function;
      
      private var §;!x§:Function;
      
      private var §6!u§:Loader;
      
      private var §6!Y§:URLLoader;
      
      private var § !2§:XML;
      
      private var §3F§:String = "";
      
      private var §&!3§:int = 0;
      
      private var §4D§:Vector.<String>;
      
      private var §5!a§:String = "external_assets/LoadTest.swf";
      
      private var §0s§:Boolean = false;
      
      private var §8@§:Array;
      
      private var §+" §:String;
      
      private var §6"7§:String;
      
      private var §4!Y§:Number = 0;
      
      private var §^!Y§:String = "";
      
      private var §;J§:§%e§;
      
      public function §[K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§8@§ = [];
         }
         do
         {
            super();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public static function get §[!1§() : §[K§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§1'§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §1'§ = new §[K§();
                     addr58:
                     §§push(§1'§);
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr58);
      }
      
      public static function §<!u§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §-"D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§8@§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§%e§, param5:Function = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§+" § = param2;
         }
         loop0:
         while(true)
         {
            this.§6"7§ = param3;
            loop1:
            while(true)
            {
               this.§0s§ = true;
               while(true)
               {
                  this.§1!§ = false;
                  addr59:
                  while(_loc7_ || this)
                  {
                     if(!_loc6_)
                     {
                        this.§;J§ = param4;
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §>i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0s§ = true;
            do
            {
               this.§1!§ = false;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §;c§() : Boolean
      {
         return this.§0s§;
      }
      
      public function §>!#§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§1!§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              this.§4!f§ = new Vector.<XML>();
                              loop7:
                              while(true)
                              {
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop6;
                                 }
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    this.§?!O§ = 0;
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §§push(true);
                                    if(_loc1_)
                                    {
                                       §§goto(addr120);
                                    }
                                    if(!_loc1_)
                                    {
                                       return §§pop();
                                    }
                                    addr127:
                                    addr86:
                                    while(_loc2_ || _loc1_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       break loop7;
                                    }
                                 }
                              }
                              addr128:
                              while(true)
                              {
                                 §§push(this.§;c§());
                                 if(!_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr86);
                              }
                              continue loop1;
                           }
                        }
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        §§goto(addr128);
                     }
                     addr120:
                     return §§pop();
                     §§push(false);
                     addr100:
                  }
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §4!=§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§1!§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        if(_loc4_ && _loc3_)
                        {
                           break;
                           addr41:
                        }
                        while(true)
                        {
                           §§push(this.§;c§());
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 continue loop2;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc5_ || _loc3_))
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                     §§goto(addr133);
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           this.§4!f§.push(param1);
                           if(_loc5_ || _loc2_)
                           {
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 §§goto(addr41);
                              }
                              else
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§?!O§);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    _loc2_.§?!O§ = _loc3_;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         addr133:
      }
      
      public function §#y§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§1!§);
            if(!(_loc2_ && param1))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr131:
                        loop7:
                        while(true)
                        {
                           §§push(this.§;c§());
                           if(_loc3_ || this)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 continue loop8;
                              }
                              addr99:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 break loop7;
                                 §§goto(addr99);
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 this.§;!x§ = param1;
                                 while(_loc3_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       this.§?!O§ = this.§4!f§.length;
                                       loop4:
                                       while(!_loc2_)
                                       {
                                          this.§9!]§ = 0;
                                          do
                                          {
                                             this.§1!§ = true;
                                             while(!(_loc2_ && param1))
                                             {
                                                this.§&"1§();
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr29);
                                             }
                                             continue loop4;
                                          }
                                          while(_loc2_);
                                          
                                          return;
                                       }
                                       continue;
                                    }
                                 }
                              }
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr104);
                     }
                     addr130:
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr130);
         }
         addr104:
      }
      
      private function §1!5§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§;J§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr138:
                        while(true)
                        {
                           §§push(this.§;J§);
                           addr99:
                           while(_loc2_)
                           {
                              §§push(§§pop().§<!9§);
                              while(!_loc1_)
                              {
                                 §§push(!§§pop());
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop7;
                              }
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                           }
                           return §§pop();
                           addr25:
                        }
                        §§push(this.§;J§);
                        loop8:
                        while(true)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§;V§);
                           addr114:
                           while(!(_loc1_ && _loc2_))
                           {
                              continue loop8;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr102);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr25);
      }
      
      private function §;V§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;J§.removeEventListener(Event.COMPLETE,this.§;V§);
            do
            {
               this.§&"1§();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §&"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§4!f§)
            {
               while(true)
               {
                  if(this.§4!f§.length <= 0)
                  {
                     if(this.§'"A§() >= 1)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           this.§@d§();
                        }
                     }
                     else
                     {
                        this.§1!5§();
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              break;
                           }
                           break;
                           addr105:
                        }
                     }
                     if(!_loc1_)
                     {
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        addr109:
                        return;
                     }
                     continue;
                  }
                  if(!_loc1_)
                  {
                     this.§@"=§();
                  }
                  §§goto(addr105);
               }
               return;
            }
            §§goto(addr109);
         }
         §§goto(addr110);
      }
      
      private function §@"=§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§1!§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr416:
                           while(true)
                           {
                              §§push(this.§;c§());
                              addr390:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr415:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§1!5§());
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr396);
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push("");
                                       loop7:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§6"7§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                addr348:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(!§§pop());
                                                      while(!(_loc3_ && _loc1_))
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop5;
                                                      addr356:
                                                   }
                                                }
                                                addr304:
                                                if(_loc3_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().length > 0);
                                                if(!_loc2_)
                                                {
                                                   while(_loc2_)
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(this.§6"7§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§goto(addr304);
                                                            }
                                                            else
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     addr289:
                                                                     while(true)
                                                                     {
                                                                        this.§4!Y§ = 0;
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           this.§ !2§ = this.§4!f§.shift();
                                                                           loop17:
                                                                           while(this.§ !2§.localName() != "pack")
                                                                           {
                                                                              this.§6!u§ = new Loader();
                                                                              loop18:
                                                                              while(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    this.§6!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§8"%§);
                                                                                    loop19:
                                                                                    for(; _loc2_; if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    })
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr396:
                                                                                          return;
                                                                                       }
                                                                                       this.§6!u§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
                                                                                       loop20:
                                                                                       while(_loc2_ || _loc1_)
                                                                                       {
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             this.§6!u§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§5H§);
                                                                                             loop21:
                                                                                             while(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                this.§^!Y§ = this.§+" § + this.§3F§ + this.§ !2§.@swf.toString() + _loc1_;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                   addr89:
                                                                                                   this.§6!u§.load(new URLRequest(this.§^!Y§),new LoaderContext(false,ApplicationDomain.currentDomain));
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr27);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§6!Y§.addEventListener(Event.COMPLETE,this.§-!9§);
                                                                                                   addr245:
                                                                                                   while(_loc3_)
                                                                                                   {
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      this.§6!Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               this.§6!Y§.addEventListener(ProgressEvent.PROGRESS,this.§5H§);
                                                                                                               break loop20;
                                                                                                               addr236:
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         §§goto(addr245);
                                                                                                         §§goto(addr254);
                                                                                                      }
                                                                                                      addr254:
                                                                                                      addr232:
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                             addr261:
                                                                                          }
                                                                                       }
                                                                                       while(_loc3_ && _loc1_)
                                                                                       {
                                                                                          §§goto(addr232);
                                                                                          §§goto(addr236);
                                                                                       }
                                                                                       this.§^!Y§ = this.§+" § + this.§ !2§.@url.toString() + _loc1_;
                                                                                       addr195:
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("?version=" + this.§6"7§);
                                                                                             if(_loc3_ && _loc1_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop7;
                                                                                          addr329:
                                                                                       }
                                                                                       this.§6!Y§.load(new URLRequest(this.§^!Y§));
                                                                                       §§goto(addr182);
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§goto(addr416);
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§6!Y§ = new URLLoader();
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   continue loop3;
                                                   addr372:
                                                }
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr356);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr27);
                           }
                        }
                     }
                  }
               }
               §§goto(addr415);
            }
         }
         §§goto(addr263);
      }
      
      private function §"H§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§^!Y§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§2z§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§^!Y§,§4!1§.§?V§);
      }
      
      private function §-!9§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§8@§.push(this.§6!Y§.data);
            while(true)
            {
               if(this.§[!r§ != null)
               {
                  if(!_loc4_)
                  {
                     this.§[!r§(this.§6!Y§.data);
                     while(true)
                     {
                        §§goto(addr37);
                     }
                  }
                  §§goto(addr140);
               }
               addr37:
               addr142:
               while(true)
               {
                  §§push(this.§;J§);
                  if(!(_loc5_ || param1))
                  {
                     addr76:
                     §§pop().§?C§(this.§6!Y§.data,this.§-w§(this.§ !2§.@url));
                     if(_loc5_ || this)
                     {
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        continue loop1;
                     }
                     addr92:
                  }
                  this.§2z§();
                  if(!(_loc4_ && _loc3_))
                  {
                     if(true)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§9!]§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                     }
                     continue;
                     if(_loc5_)
                     {
                        _loc2_.§9!]§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        addr140:
                        this.§&"1§();
                        break;
                     }
                     break;
                  }
                  §§goto(addr140);
                  §§goto(addr92);
               }
               return;
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr76);
               §§push(this.§;J§);
            }
         }
         §§goto(addr142);
      }
      
      private function §-w§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(_loc2_.indexOf(".pak"));
         if(!(_loc4_ && param1))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     addr140:
                     while(true)
                     {
                        §§push(_loc2_);
                        addr141:
                        while(true)
                        {
                           §§push(0);
                           addr142:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr143:
                              while(true)
                              {
                                 §§push(§§pop().substr(§§pop(),§§pop()));
                                 addr145:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr146:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr140:
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop().lastIndexOf("/")));
                        loop4:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           while(_loc5_ || param1)
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ || this))
                              {
                                 continue loop4;
                              }
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              §§push(0);
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(_loc2_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(1);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop().substr(§§pop() + §§pop()));
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr112:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc4_ && param1)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr112);
                                                         }
                                                         §§goto(addr145);
                                                         addr40:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   addr110:
                                                }
                                                §§goto(addr145);
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr40);
                           }
                           §§goto(addr146);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      private function §5H§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4!Y§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §8"%§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§2z§();
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§9!]§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§9!]§ = _loc3_;
               }
               if(_loc5_ || _loc3_)
               {
                  addr70:
                  this.§&"1§();
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function §2z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§6!u§)
            {
               addr166:
               while(true)
               {
                  this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8"%§);
                  addr174:
                  while(true)
                  {
                     this.§6!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
                     addr152:
                     while(true)
                     {
                        this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8"%§);
                        addr142:
                        while(true)
                        {
                           this.§6!u§ = null;
                           addr132:
                           while(true)
                           {
                           }
                        }
                     }
                  }
               }
               addr166:
            }
            loop0:
            while(true)
            {
               if(this.§6!Y§)
               {
                  while(true)
                  {
                     this.§6!Y§.removeEventListener(Event.COMPLETE,this.§-!9§);
                     loop2:
                     while(true)
                     {
                        this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
                        loop3:
                        while(true)
                        {
                           this.§6!Y§.removeEventListener(ProgressEvent.PROGRESS,this.§5H§);
                           loop4:
                           while(_loc1_)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 this.§6!Y§ = null;
                                 loop5:
                                 while(_loc1_)
                                 {
                                    while(true)
                                    {
                                       this.§ !2§ = null;
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr142);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr23);
            }
            return;
         }
         §§goto(addr166);
      }
      
      private function §@d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4!Y§ = 0;
            loop0:
            while(true)
            {
               §§push(this.§;!x§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop() != null)
                  {
                     continue;
                  }
               }
               else
               {
                  while(true)
                  {
                     §§pop().call();
                     do
                     {
                        this.§;!x§ = null;
                     }
                     while(_loc1_);
                     
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr74:
               }
               return;
            }
         }
         while(true)
         {
            §§goto(addr74);
         }
      }
      
      public function §`t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4!Y§ = 0;
            loop0:
            while(true)
            {
               this.§1!§ = false;
               loop1:
               while(true)
               {
                  this.§?!O§ = 0;
                  loop2:
                  do
                  {
                     if(_loc1_ && this)
                     {
                        continue loop1;
                     }
                     if(this.§4!f§)
                     {
                        if(!(_loc1_ && this))
                        {
                           this.§4!f§ = null;
                        }
                        while(_loc2_)
                        {
                        }
                        continue loop0;
                        addr92:
                     }
                     while(true)
                     {
                        this.§;!x§ = null;
                        loop5:
                        while(!_loc1_)
                        {
                           this.§2z§();
                           while(true)
                           {
                              §§push(this.§;J§);
                              if(_loc1_ && this)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 return;
                              }
                              addr20:
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(this.§;J§);
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           §§pop().§`t§();
                           continue loop2;
                        }
                        §§goto(addr92);
                     }
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  addr66:
                  §§goto(addr20);
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §'"A§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§;c§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§1!§);
                     if(!_loc1_)
                     {
                        §§push(!§§pop());
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr304:
                                 while(true)
                                 {
                                    §§push(!this.§4!f§);
                                 }
                              }
                              addr303:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr292:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          §§push(this.§;c§());
                                          if(!_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          addr264:
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc2_ || this))
                                             {
                                                §§goto(addr303);
                                             }
                                             addr220:
                                             loop21:
                                             while(true)
                                             {
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                addr234:
                                                loop18:
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   §§push(this.§?!O§);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr137:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(!(_loc1_ && this))
                                                         {
                                                            break loop19;
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                   }
                                                   addr145:
                                                   if(_loc2_ || this)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc1_ && _loc2_)
                                                            {
                                                               §§goto(addr234);
                                                               continue loop18;
                                                            }
                                                            addr171:
                                                            if(!(_loc1_ && this))
                                                            {
                                                               §§push(this.§;J§);
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               addr183:
                                                               addr185:
                                                               while(!§§pop())
                                                               {
                                                                  §§push(this.§9!]§);
                                                                  while(_loc1_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  §§push(§§pop() - 0.1);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(§§pop() / this.§?!O§);
                                                                  }
                                                                  return §§pop();
                                                                  continue loop23;
                                                               }
                                                               return 1;
                                                               §§push(§§pop().§<!9§);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§;J§);
                                                                  break loop16;
                                                                  §§goto(addr171);
                                                               }
                                                               addr195:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(1);
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  addr245:
                                                                  if(!_loc1_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                            }
                                                            addr69:
                                                         }
                                                         §§goto(addr122);
                                                         §§goto(addr145);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop21;
                                                      }
                                                      continue loop7;
                                                      addr162:
                                                   }
                                                   continue loop21;
                                                }
                                                §§pop();
                                                §2!@§.log("[LoadManager] Init not complete yet!");
                                                addr317:
                                                return §§pop();
                                                §§push(0);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr304);
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             §2!@§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                             §§goto(addr245);
                                             §§push(-1);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§9!]§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(this.§?!O§);
                                             addr194:
                                             while(§§pop() != §§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§9!]§);
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         continue loop12;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr69);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr122);
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                       §§goto(addr304);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr322);
            }
         }
         §§goto(addr25);
      }
   }
}
