package § !§
{
   import §5=§.§8O§;
   import §<u§.Log;
   import com.rovio.assets.AssetCache;
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
   
   public class LoadManager
   {
      
      private static var sInstance:LoadManager;
       
      
      private var §@d§:Vector.<XML>;
      
      private var §>!i§:Boolean = false;
      
      private var §@,§:int;
      
      private var §+Z§:int;
      
      private var §?!M§:Function;
      
      private var §"!N§:Function;
      
      private var §2M§:Loader;
      
      private var §%@§:URLLoader;
      
      private var §]?§:XML;
      
      private var §+j§:String = "";
      
      private var §"!V§:int = 0;
      
      private var §=x§:Vector.<String>;
      
      private var §"!E§:String = "external_assets/LoadTest.swf";
      
      private var §%7§:Boolean = false;
      
      private var §4&§:Array;
      
      private var §,!'§:String;
      
      private var §#!B§:String;
      
      private var §-t§:Number = 0;
      
      private var §2! §:String = "";
      
      private var §0r§:§7!C§;
      
      public function LoadManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4&§ = [];
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public static function get §7!E§() : LoadManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(sInstance);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     sInstance = new LoadManager();
                     addr46:
                     §§push(sInstance);
                  }
               }
               §§goto(addr46);
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public static function §"!f§(param1:Loader, param2:XML) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         loop0:
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
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc7_)
                           {
                              §§pop().§§slot[1] = param1;
                              while(_loc7_ || param1)
                              {
                                 §§push(§§newactivation());
                                 if(_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop().§§slot[2] = param2;
                                       if(!_loc8_)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(true)
                                             {
                                                var _loc4_:int = 0;
                                                var _loc5_:* = library.Asset;
                                                addr200:
                                             }
                                             continue loop5;
                                             if(§§hasnext(_loc5_,_loc4_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc7_)
                                                {
                                                   §§pop().§§slot[3] = §§nextvalue(_loc4_,_loc5_);
                                                   if(!(_loc8_ && LoadManager))
                                                   {
                                                      try
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            addr104:
                                                            §§pop().§§slot[4] = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
                                                            if(!(_loc8_ && LoadManager))
                                                            {
                                                               AssetCache.§@§(asset.@name.toString(),assetCls);
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  addr181:
                                                                  if(asset.@registerFont.toString().toUpperCase() == "TRUE")
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               Font.registerFont(assetCls);
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                      }
                                                      catch(e:ReferenceError)
                                                      {
                                                         throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
                                                      }
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr104);
                                             }
                                             return;
                                          }
                                          break loop5;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §%!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4&§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7!C§, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§,!'§ = param2;
            loop0:
            while(true)
            {
               this.§#!B§ = param3;
               while(true)
               {
                  this.§%7§ = true;
                  while(_loc6_)
                  {
                     continue loop0;
                     while(!(_loc7_ && param2))
                     {
                        this.§0r§ = param4;
                        loop4:
                        while(!_loc7_)
                        {
                           while(true)
                           {
                              this.§?!M§ = param5;
                              if(!(_loc7_ && this))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §?2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%7§ = true;
            do
            {
               this.§>!i§ = false;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §]L§() : Boolean
      {
         return this.§%7§;
      }
      
      public function § n§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§>!i§);
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
            }
            while(true)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr126:
                     addr113:
                     while(true)
                     {
                        §§push(this.§]L§());
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr110);
            }
         }
         §§goto(addr112);
      }
      
      public function §1!=§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(this.§>!i§);
            if(!_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc4_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     if(!(_loc4_ || _loc2_))
                     {
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§]L§());
                        if(_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break;
                                 }
                              }
                              this.§@d§.push(param1);
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(true)
                                 {
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§@,§);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc3_:* = §§pop();
                                 }
                                 continue loop2;
                                 if(_loc4_ || this)
                                 {
                                    _loc2_.§@,§ = _loc3_;
                                 }
                                 break loop1;
                              }
                              break loop1;
                           }
                           addr68:
                           return;
                           addr49:
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr68);
      }
      
      public function §,!H§(param1:Function = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§>!i§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              this.§"!N§ = param1;
                              loop6:
                              while(_loc2_)
                              {
                                 this.§@,§ = this.§@d§.length;
                                 while(true)
                                 {
                                    this.§>!i§ = true;
                                    loop8:
                                    while(_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§`]§();
                                          if(_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             break;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          addr126:
                                          while(true)
                                          {
                                             §§push(this.§]L§());
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if(!(_loc3_ && param1))
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr127);
                                          }
                                          addr127:
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                     addr112:
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §+!A§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§0r§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§0r§);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop().§use§);
                              if(_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(_loc2_ || this)
                                 {
                                    addr105:
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       §§goto(addr105);
                                    }
                                    addr106:
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§0r§);
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       §§push(true);
                                    }
                                    else
                                    {
                                       addr136:
                                       addr83:
                                    }
                                    §§push(this.§0r§);
                                    continue loop0;
                                    break;
                                 }
                                 §§push(false);
                                 if(_loc1_ && _loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!_loc1_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop5;
                                 }
                              }
                              return §§pop();
                           }
                           continue loop0;
                        }
                     }
                     addr157:
                  }
                  §§goto(addr106);
               }
               §§goto(addr157);
            }
         }
         §§goto(addr83);
      }
      
      private function §0!P§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0r§.removeEventListener(Event.COMPLETE,this.§0!P§);
            do
            {
               this.§`]§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function §`]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§@d§.length > 0)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§%-§();
               }
               addr84:
            }
            else if(this.§"U§() >= 1)
            {
               if(!(_loc1_ && this))
               {
                  addr63:
                  this.§!!%§();
               }
               if(_loc1_)
               {
                  §§goto(addr84);
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      private function §%-§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§>!i§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc2_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§]L§());
                              if(_loc2_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc2_ || this)
                                 {
                                    while(true)
                                    {
                                       addr449:
                                       while(§§pop())
                                       {
                                          loop30:
                                          while(true)
                                          {
                                             §§push(this.§+!A§());
                                             addr452:
                                             loop5:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop8:
                                                         while(true)
                                                         {
                                                            _loc1_ = §§pop();
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(this.§#!B§);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == null);
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§#!B§);
                                                                              if(_loc3_ && this)
                                                                              {
                                                                                 loop26:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       addr310:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§-t§ = 0;
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§]?§ = this.§@d§.shift();
                                                                                             loop16:
                                                                                             while(this.§]?§.localName() != "pack")
                                                                                             {
                                                                                                this.§2M§ = new Loader();
                                                                                                loop17:
                                                                                                while(_loc2_ || _loc3_)
                                                                                                {
                                                                                                   this.§2M§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3!^§);
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            this.§2M§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc2_ || this))
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  if(_loc2_ || this)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§2M§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§[E§);
                                                                                                                        loop34:
                                                                                                                        for(; _loc2_; while(true)
                                                                                                                        {
                                                                                                                           if(_loc2_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(_loc3_ && _loc1_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           continue loop34;
                                                                                                                        },§§goto(addr193))
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                              {
                                                                                                                                 this.§2! § = this.§,!'§ + this.§+j§ + this.§]?§.@swf.toString() + _loc1_;
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 this.§%@§.load(new URLRequest(this.§2! §));
                                                                                                                                 loop36:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       break loop4;
                                                                                                                                    }
                                                                                                                                    loop24:
                                                                                                                                    for(; _loc2_; continue loop36)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          this.§%@§.addEventListener(ProgressEvent.PROGRESS,this.§[E§);
                                                                                                                                          addr236:
                                                                                                                                          while(_loc2_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ || this))
                                                                                                                                             {
                                                                                                                                                break loop16;
                                                                                                                                             }
                                                                                                                                             this.§2! § = this.§,!'§ + this.§]?§.@url.toString() + _loc1_;
                                                                                                                                             continue loop37;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§%@§.addEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
                                                                                                                                             continue loop24;
                                                                                                                                             §§goto(addr236);
                                                                                                                                          }
                                                                                                                                          addr236:
                                                                                                                                          addr276:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§%@§.dataFormat = URLLoaderDataFormat.BINARY;
                                                                                                                                          break loop24;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§%@§.addEventListener(Event.COMPLETE,this.§4E§);
                                                                                                                                       §§goto(addr276);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr193:
                                                                                                                              }
                                                                                                                              §§goto(addr236);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr157);
                                                                                                                     }
                                                                                                                     addr145:
                                                                                                                  }
                                                                                                                  §§goto(addr453);
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                               addr48:
                                                                                                               if(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  break loop4;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr291:
                                                                                             addr360:
                                                                                             while(_loc2_ || _loc3_)
                                                                                             {
                                                                                                this.§%@§ = new URLLoader();
                                                                                                §§goto(addr302);
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push("?version=");
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!(_loc2_ || _loc3_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() + this.§#!B§);
                                                                                                }
                                                                                                continue loop26;
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop27;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().length > 0);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        addr413:
                                                                     }
                                                                  }
                                                                  while(!_loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr453:
                                                return;
                                             }
                                          }
                                       }
                                       break loop4;
                                    }
                                    addr448:
                                 }
                                 §§goto(addr452);
                              }
                              §§goto(addr449);
                           }
                           return;
                        }
                     }
                     §§goto(addr448);
                  }
               }
            }
         }
         §§goto(addr145);
      }
      
      private function §?!Z§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§2! §);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§`t§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§2! §,§8O§.§@;§);
      }
      
      private function §4E§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§4&§.push(this.§%@§.data);
            if(!_loc4_)
            {
               if(this.§?!M§ != null)
               {
                  loop0:
                  while(true)
                  {
                     this.§?!M§(this.§%@§.data);
                     addr92:
                     while(true)
                     {
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc5_ || this))
                        {
                           continue loop0;
                        }
                        loop4:
                        while(true)
                        {
                           this.§`t§();
                           if(_loc4_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§+Z§);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          _loc2_.§+Z§ = _loc3_;
                                       }
                                       if(!_loc4_)
                                       {
                                          break loop4;
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§0r§);
                                       if(_loc5_ || param1)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop4;
                                          }
                                          if(_loc4_ && _loc3_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(this.§0r§);
                                       }
                                       §§pop().§"Z§(this.§%@§.data);
                                       continue loop3;
                                    }
                                 }
                                 addr138:
                                 return;
                                 addr35:
                              }
                              break loop3;
                           }
                           continue loop3;
                        }
                        this.§`]§();
                        §§goto(addr138);
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr138);
         }
         §§goto(addr35);
      }
      
      private function §[E§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-t§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §3!^§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            §"!f§(this.§2M§,this.§]?§);
            if(_loc4_)
            {
               this.§`t§();
               if(_loc4_ || _loc3_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§+Z§);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§+Z§ = _loc3_;
                  }
                  if(_loc4_ || this)
                  {
                  }
                  §§goto(addr92);
               }
            }
            this.§`]§();
         }
         addr92:
      }
      
      private function §`t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§2M§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!(_loc1_ && _loc2_))
               {
                  this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!^§);
               }
               loop1:
               while(true)
               {
                  this.§2M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
                  while(true)
                  {
                     this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!^§);
                     loop5:
                     while(_loc2_ || this)
                     {
                        this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
                        loop6:
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(!_loc1_)
                              {
                                 this.§%@§.removeEventListener(ProgressEvent.PROGRESS,this.§[E§);
                                 loop7:
                                 while(_loc2_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       this.§%@§ = null;
                                       loop8:
                                       while(!_loc1_)
                                       {
                                          while(true)
                                          {
                                             this.§]?§ = null;
                                             if(_loc1_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop7;
                                             }
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             addr109:
                                             while(true)
                                             {
                                                this.§%@§.removeEventListener(Event.COMPLETE,this.§4E§);
                                                continue loop5;
                                             }
                                          }
                                          return;
                                       }
                                       continue loop6;
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    this.§2M§ = null;
                                    break loop6;
                                 }
                                 addr142:
                              }
                              break;
                           }
                           continue loop5;
                        }
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      private function §!!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-t§ = 0;
            while(true)
            {
               §§push(this.§"!N§);
               if(_loc2_)
               {
                  if(§§pop() == null)
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§push(this.§"!N§);
               }
               §§pop().call();
            }
            §§goto(addr20);
         }
         addr20:
      }
      
      public function §<L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§-t§ = 0;
            while(true)
            {
               this.§>!i§ = false;
               loop3:
               for(; _loc1_ || _loc2_; if(!(_loc2_ && _loc1_))
               {
                  addr54:
                  if(_loc2_)
                  {
                     while(true)
                     {
                        if(this.§@d§)
                        {
                           continue loop3;
                        }
                        §§goto(addr54);
                        §§goto(addr54);
                     }
                     addr93:
                  }
                  return;
               })
               {
                  this.§@d§ = null;
                  loop4:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§"!N§ = null;
                        while(_loc1_)
                        {
                           this.§`t§();
                           if(_loc1_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop4;
                     }
                     §§goto(addr54);
                  }
                  while(true)
                  {
                     this.§@,§ = 0;
                     §§goto(addr93);
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function §"U§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§]L§());
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     Log.log("[LoadManager] Init not complete yet!");
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§>!i§);
                        loop3:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop5:
                              while(_loc2_)
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
                                             §§push(§§pop());
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop10:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§push(this.§]L§());
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            addr284:
                                                            addr334:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop13;
                                                                  }
                                                                  addr333:
                                                               }
                                                            }
                                                            addr334:
                                                            while(true)
                                                            {
                                                               §§push(!this.§@d§);
                                                               addr306:
                                                               while(true)
                                                               {
                                                                  continue loop8;
                                                               }
                                                            }
                                                            addr174:
                                                            if(_loc1_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc2_ || _loc1_))
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this.§@,§);
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           if(!_loc1_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    addr132:
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(1);
                                                                                                while(_loc1_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                return §§pop();
                                                                                                addr58:
                                                                                             }
                                                                                             if(!(_loc1_ && this))
                                                                                             {
                                                                                                §§push(this.§0r§);
                                                                                                if(_loc2_ || this)
                                                                                                {
                                                                                                   addr171:
                                                                                                   §§push(§§pop().§use§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§goto(addr174);
                                                                                                      }
                                                                                                      addr214:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            if(_loc1_ && this)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            if(!(_loc2_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(!(_loc1_ && _loc2_))
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                      §§goto(addr171);
                                                                                                   }
                                                                                                   addr337:
                                                                                                   return §§pop();
                                                                                                   addr172:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr214);
                                                                                                }
                                                                                                addr213:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr348:
                                                                                             }
                                                                                             §§goto(addr337);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr296:
                                                                                                   Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                                                                                   §§push(-1);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.§+Z§);
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§@,§);
                                                                                                   addr203:
                                                                                                   addr83:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         while(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr213);
                                                                                                            §§push(this.§0r§);
                                                                                                         }
                                                                                                         addr204:
                                                                                                         continue loop2;
                                                                                                         addr204:
                                                                                                      }
                                                                                                      §§push(this.§+Z§);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr196:
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§goto(addr58);
                                                                                                   }
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      addr93:
                                                                                                      return (§§pop() + this.§-t§ - 0.5) / this.§@,§;
                                                                                                      addr88:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(!(_loc1_ && _loc1_))
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             §§goto(addr337);
                                                                                          }
                                                                                          addr293:
                                                                                       }
                                                                                       §§goto(addr204);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr247:
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§pop();
                                                                                          §§goto(addr254);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr306);
                                                                                 }
                                                                                 §§goto(addr172);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr284);
                                                                              }
                                                                           }
                                                                           §§goto(addr132);
                                                                        }
                                                                        §§goto(addr203);
                                                                        continue loop23;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  addr254:
                                                               }
                                                               if(!_loc1_)
                                                               {
                                                                  §§push(1);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            §§goto(addr83);
                                                            §§push(this.§+Z§);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr293);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr333);
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr348);
               }
            }
         }
         §§goto(addr296);
      }
   }
}
