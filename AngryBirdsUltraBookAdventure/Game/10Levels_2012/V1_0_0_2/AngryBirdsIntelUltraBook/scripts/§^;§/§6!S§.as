package §^;§
{
   import §0X§.§%'§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.Font;
   
   public class §6!S§
   {
      
      private static var §[!W§:§6!S§;
       
      
      private var §;W§:Vector.<XML>;
      
      private var §7!e§:Boolean = false;
      
      private var §2!p§:int;
      
      private var §&g§:int;
      
      private var §3!Q§:Function;
      
      private var §"!§:Function;
      
      private var §`!u§:Loader;
      
      private var §'D§:URLLoader;
      
      private var §`v§:XML;
      
      private var §7-§:String = "";
      
      private var §7!w§:int = 0;
      
      private var §[!u§:Vector.<String>;
      
      private var §9!_§:String = "external_assets/LoadTest.swf";
      
      private var §6!7§:Boolean = false;
      
      private var §?!n§:Array;
      
      private var §,!o§:String;
      
      private var §6!4§:String;
      
      private var §<!'§:Number = 0;
      
      private var §4?§:String = "";
      
      private var §8§:§`E§;
      
      public function §6!S§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§?!n§ = [];
         }
         do
         {
            super();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public static function get §<d§() : §6!S§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§[!W§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr25:
                     §[!W§ = new §6!S§();
                  }
               }
               return §[!W§;
            }
         }
         §§goto(addr25);
      }
      
      public static function §>!'§(param1:Loader, param2:XML) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc7_ || param1))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        addr43:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop3;
                        }
                        addr56:
                        continue loop2;
                        while(!(_loc8_ && §6!S§))
                        {
                           §§push(§§newactivation());
                           if(!(_loc7_ || §6!S§))
                           {
                              continue loop3;
                           }
                           §§pop().§§slot[2] = param2;
                           if(!_loc7_)
                           {
                              continue;
                           }
                           if(_loc8_ && param1)
                           {
                              continue loop2;
                           }
                           if(true)
                           {
                              var _loc4_:int = 0;
                              var _loc5_:* = library.Asset;
                              addr205:
                              if(§§hasnext(_loc5_,_loc4_))
                              {
                                 §§push(§§newactivation());
                                 if(!_loc8_)
                                 {
                                    §§pop().§§slot[3] = §§nextvalue(_loc4_,_loc5_);
                                    if(!(_loc8_ && param2))
                                    {
                                       try
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc8_)
                                          {
                                             addr119:
                                             §§pop().§§slot[4] = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
                                             if(_loc7_)
                                             {
                                                §%!G§.§7q§(asset.@name.toString(),assetCls);
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr188:
                                                   if(asset.@registerFont.toString().toUpperCase() == "TRUE")
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         addr201:
                                                         Font.registerFont(assetCls);
                                                      }
                                                   }
                                                   §§goto(addr205);
                                                }
                                             }
                                             §§goto(addr201);
                                          }
                                       }
                                       catch(e:ReferenceError)
                                       {
                                          throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr119);
                              }
                              return;
                           }
                           §§goto(addr43);
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §1[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§?!n§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`E§, param5:Function = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§,!o§ = param2;
            loop0:
            while(true)
            {
               this.§6!4§ = param3;
               loop1:
               while(true)
               {
                  this.§6!7§ = true;
                  loop2:
                  while(true)
                  {
                     this.§7!e§ = false;
                     while(!_loc6_)
                     {
                        this.§8§ = param4;
                        loop4:
                        while(!(_loc6_ && param3))
                        {
                           continue loop2;
                           while(true)
                           {
                              this.§3!Q§ = param5;
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §9!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§6!7§ = true;
         }
         do
         {
            this.§7!e§ = false;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §?!H§() : Boolean
      {
         return this.§6!7§;
      }
      
      public function §%G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§7!e§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr123:
                        while(true)
                        {
                           §§push(this.§?!H§());
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           while(_loc2_)
                           {
                              if(_loc2_ || _loc2_)
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
                     }
                  }
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(false);
                           break;
                        }
                        while(true)
                        {
                           addr62:
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(true);
                           if(!(_loc2_ || _loc1_))
                           {
                              break loop5;
                           }
                           §§goto(addr29);
                        }
                        addr116:
                     }
                     while(true)
                     {
                        this.§;W§ = new Vector.<XML>();
                        loop8:
                        while(_loc2_ || _loc2_)
                        {
                           while(true)
                           {
                              this.§2!p§ = 0;
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop8;
                              }
                              §§goto(addr62);
                           }
                           addr38:
                           return §§pop();
                        }
                        §§goto(addr123);
                        §§goto(addr116);
                     }
                  }
                  while(!_loc2_)
                  {
                     continue loop0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §]!$§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§7!e§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              return;
                           }
                        }
                        this.§;W§.push(param1);
                        if(_loc5_)
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§2!p§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(this.§?!H§());
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 addr39:
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop1;
                                 }
                                 addr89:
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc4_ && _loc2_)
                                    {
                                       break loop1;
                                    }
                                    continue loop3;
                                    §§goto(addr39);
                                 }
                              }
                              continue loop0;
                              if(_loc5_)
                              {
                                 _loc2_.§2!p§ = _loc3_;
                              }
                              break loop1;
                           }
                           addr27:
                        }
                        break;
                     }
                     return;
                     addr64:
                  }
               }
               §§goto(addr89);
            }
         }
         §§goto(addr27);
      }
      
      public function §7![§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§7!e§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr139:
                        loop7:
                        while(true)
                        {
                           §§push(this.§?!H§());
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    break loop7;
                                 }
                                 addr127:
                              }
                              continue loop0;
                           }
                           continue loop8;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 this.§"!§ = param1;
                                 while(_loc3_ || param1)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       this.§2!p§ = this.§;W§.length;
                                       while(!(_loc2_ && this))
                                       {
                                          this.§7!e§ = true;
                                          do
                                          {
                                             this.§'5§();
                                          }
                                          while(_loc2_ && _loc3_);
                                          
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr129);
                              }
                              return;
                           }
                           §§goto(addr129);
                        }
                     }
                     addr138:
                  }
                  §§goto(addr127);
               }
            }
            §§goto(addr138);
         }
         addr129:
      }
      
      private function §3q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§8§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr127:
                        while(true)
                        {
                           §§push(this.§8§);
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(§§pop().§"!E§);
                        if(_loc1_)
                        {
                           addr99:
                           §§push(!§§pop());
                           while(true)
                           {
                              §§goto(addr99);
                           }
                           addr100:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(false);
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              while(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                                 continue loop8;
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§8§);
                                    continue loop0;
                                 }
                                 addr104:
                              }
                              else
                              {
                                 §§goto(addr127);
                              }
                           }
                        }
                        §§goto(addr99);
                     }
                     addr126:
                  }
                  §§goto(addr100);
               }
               §§goto(addr126);
            }
         }
         §§goto(addr104);
      }
      
      private function §0!L§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8§.removeEventListener(Event.COMPLETE,this.§0!L§);
         }
         do
         {
            this.§'5§();
         }
         while(_loc2_ && this);
         
      }
      
      private function §'5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§;W§.length <= 0)
            {
               if(this.§4!C§() >= 1)
               {
                  if(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        this.§&!_§();
                     }
                     else
                     {
                        addr59:
                        this.§5M§();
                        addr19:
                        return;
                        addr61:
                     }
                     §§goto(addr61);
                  }
                  if(_loc2_ && _loc1_)
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr19);
            }
         }
         §§goto(addr59);
      }
      
      private function §5M§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§7!e§);
            if(_loc3_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§?!H§());
                           loop4:
                           for(; _loc3_; while(_loc3_ || this)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              if(!§§pop())
                              {
                                 §§goto(addr291);
                              }
                              §§goto(addr349);
                              §§goto(addr282);
                           })
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc2_ && _loc3_))
                              {
                                 loop21:
                                 while(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§3q§());
                                       loop5:
                                       while(!§§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push("");
                                             loop7:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                loop8:
                                                while(_loc3_ || _loc2_)
                                                {
                                                   §§push(this.§6!4§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == null);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(!§§pop());
                                                         continue loop4;
                                                      }
                                                      addr349:
                                                      loop20:
                                                      while(_loc3_)
                                                      {
                                                         addr351:
                                                         §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(this.§6!4§);
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().length > 0);
                                                            if(!_loc2_)
                                                            {
                                                               addr282:
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  addr289:
                                                                  if(_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              this.§<!'§ = 0;
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    this.§`v§ = this.§;W§.shift();
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(this.§`v§.localName() != "pack")
                                                                                       {
                                                                                          this.§`!u§ = new Loader();
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§`!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#"§);
                                                                                             loop24:
                                                                                             while(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(!(_loc3_ || _loc1_))
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                this.§`!u§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
                                                                                                loop25:
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   this.§`!u§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§9!]§);
                                                                                                   loop26:
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      if(!(_loc3_ || this))
                                                                                                      {
                                                                                                         addr203:
                                                                                                         if(!(_loc2_ && this))
                                                                                                         {
                                                                                                            this.§4?§ = this.§,!o§ + this.§`v§.@url.toString() + _loc1_;
                                                                                                            break loop25;
                                                                                                         }
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         this.§4?§ = this.§,!o§ + this.§7-§ + this.§`v§.@swf.toString() + _loc1_;
                                                                                                         addr322:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(_loc2_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr97);
                                                                                                               }
                                                                                                               §§goto(addr322);
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                            addr97:
                                                                                                            this.§`!u§.load(new URLRequest(this.§4?§),new LoaderContext(false,ApplicationDomain.currentDomain));
                                                                                                            if(_loc2_ && this)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            if(!(_loc2_ && this))
                                                                                                            {
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  break loop23;
                                                                                                               }
                                                                                                               addr395:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     this.§'D§.addEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
                                                                                                                     break loop24;
                                                                                                                  }
                                                                                                                  addr237:
                                                                                                                  while(_loc3_)
                                                                                                                  {
                                                                                                                     this.§'D§.addEventListener(Event.COMPLETE,this.§ p§);
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                         addr322:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr246:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§'D§ = new URLLoader();
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                   }
                                                                                                   break loop21;
                                                                                                }
                                                                                                this.§'D§.load(new URLRequest(this.§4?§));
                                                                                                §§goto(addr171);
                                                                                             }
                                                                                             this.§'D§.addEventListener(ProgressEvent.PROGRESS,this.§9!]§);
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          break loop21;
                                                                                          addr162:
                                                                                       }
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    this.§'D§.dataFormat = URLLoaderDataFormat.BINARY;
                                                                                    §§goto(addr237);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §§push("?version=");
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(§§pop() + this.§6!4§);
                                                                           }
                                                                           §§push(§§pop());
                                                                           break loop15;
                                                                        }
                                                                        continue loop8;
                                                                        §§goto(addr289);
                                                                     }
                                                                     addr291:
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop20;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       return;
                                       addr393:
                                    }
                                    §§goto(addr395);
                                 }
                                 return;
                                 addr387:
                              }
                              §§goto(addr393);
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr387);
               }
            }
         }
         §§goto(addr162);
      }
      
      private function §@!;§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§4?§);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§ !8§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§4?§,§%'§.§+!o§);
      }
      
      private function § p§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§?!n§.push(this.§'D§.data);
            while(true)
            {
               if(this.§3!Q§ != null)
               {
                  while(_loc5_)
                  {
                     this.§3!Q§(this.§'D§.data);
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr68:
               }
               loop3:
               while(true)
               {
                  §§push(this.§8§);
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §§push(this.§8§);
                              addr44:
                              while(true)
                              {
                                 §§pop().§get §(this.§'D§.data);
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          this.§ !8§();
                                          if(_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(true)
                                                {
                                                   var _loc2_:*;
                                                   §§push((_loc2_ = this).§&g§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      _loc2_.§&g§ = _loc3_;
                                                   }
                                                }
                                                else
                                                {
                                                   addr122:
                                                }
                                                continue loop3;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   break loop3;
                                                }
                                                addr122:
                                                return;
                                             }
                                          }
                                          §§goto(addr122);
                                       }
                                       addr20:
                                    }
                                    else
                                    {
                                       §§goto(addr68);
                                    }
                                    §§goto(addr75);
                                 }
                                 break loop3;
                              }
                           }
                           addr42:
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr44);
               }
               this.§'5§();
               §§goto(addr122);
            }
         }
         §§goto(addr42);
      }
      
      private function §9!]§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!'§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §#"§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §>!'§(this.§`!u§,this.§`v§);
            if(_loc5_ || this)
            {
               this.§ !8§();
               if(_loc5_ || this)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§&g§);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§&g§ = _loc3_;
                  }
                  if(_loc5_ || _loc2_)
                  {
                  }
               }
               §§goto(addr90);
            }
            this.§'5§();
         }
         addr90:
      }
      
      private function § !8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§`!u§)
            {
               loop0:
               while(true)
               {
                  this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#"§);
                  loop1:
                  while(true)
                  {
                     this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
                     loop2:
                     while(true)
                     {
                        this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#"§);
                        loop3:
                        while(true)
                        {
                           this.§`!u§ = null;
                           addr128:
                           while(true)
                           {
                              loop10:
                              while(_loc2_ || _loc2_)
                              {
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop1;
                                    while(true)
                                    {
                                       this.§`v§ = null;
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue loop10;
                                       }
                                       addr35:
                                       if(!(_loc1_ && this))
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
                                             }
                                             addr123:
                                          }
                                          while(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       addr116:
                                       addr91:
                                       while(_loc2_)
                                       {
                                          this.§'D§ = null;
                                          continue loop10;
                                          §§goto(addr35);
                                       }
                                       while(true)
                                       {
                                          this.§'D§.removeEventListener(Event.COMPLETE,this.§ p§);
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                                 continue loop0;
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§'D§)
               {
                  §§goto(addr116);
               }
               §§goto(addr24);
               §§goto(addr128);
            }
         }
         §§goto(addr46);
      }
      
      private function §&!_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§<!'§ = 0;
            loop0:
            do
            {
               §§push(this.§"!§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop() == null)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§"!§);
                     addr89:
                     while(true)
                     {
                        this.§"!§ = null;
                        if(_loc1_ || this)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  addr86:
               }
               while(true)
               {
                  §§pop().call();
                  §§goto(addr86);
               }
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
         §§goto(addr89);
      }
      
      public function §4!B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<!'§ = 0;
            loop0:
            while(true)
            {
               this.§7!e§ = false;
               while(true)
               {
                  this.§2!p§ = 0;
                  while(!_loc2_)
                  {
                     if(this.§;W§)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           this.§;W§ = null;
                        }
                        while(!_loc2_)
                        {
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           return;
                           addr45:
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§"!§ = null;
                        loop5:
                        while(_loc1_)
                        {
                           while(true)
                           {
                              this.§ !8§();
                              if(_loc2_)
                              {
                                 continue loop5;
                              }
                              §§goto(addr28);
                           }
                           §§goto(addr45);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §4!C§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§?!H§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §!>§.log("[LoadManager] Init not complete yet!");
                  break;
               }
               while(true)
               {
                  §§push(this.§7!e§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr288:
                                 while(true)
                                 {
                                    §§push(!this.§;W§);
                                 }
                              }
                              addr287:
                           }
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop10:
                                       while(!§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§&g§);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§2!p§);
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§push(this.§&g§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            if(!(_loc1_ || this))
                                                            {
                                                               addr237:
                                                               if(!_loc2_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               break loop0;
                                                            }
                                                            §§push(this.§2!p§);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr98);
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc2_ && this)
                                                               {
                                                                  addr178:
                                                                  return §§pop();
                                                               }
                                                               if(_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr114);
                                                            }
                                                            §§push(§§pop() + this.§<!'§);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop() - 0.5);
                                                               if(_loc1_)
                                                               {
                                                                  addr95:
                                                                  §§push(§§pop() / this.§2!p§);
                                                               }
                                                               addr98:
                                                               return §§pop();
                                                            }
                                                            §§goto(addr95);
                                                            addr77:
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      break;
                                                   }
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(this.§8§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc1_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr224:
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!(_loc1_ || _loc1_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§2!p§);
                                                                              addr114:
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ && this)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(!(_loc1_ || _loc2_))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   break loop13;
                                                                                                }
                                                                                                §§push(this.§8§);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(§§pop().§"!E§);
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop18;
                                                                                             addr153:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr279:
                                                                                          }
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr280:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§?!H§());
                                                                                                addr244:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr245);
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          addr245:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr224);
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    addr122:
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     §§goto(addr153);
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr234);
                                                   §§goto(addr114);
                                                }
                                                return §§pop();
                                             }
                                          }
                                       }
                                       addr268:
                                       §!>§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                       §§goto(addr237);
                                       §§push(-1);
                                    }
                                    §§goto(addr279);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr234);
      }
   }
}
