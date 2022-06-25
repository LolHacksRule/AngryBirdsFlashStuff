package §%!T§
{
   import §6b§.Log;
   import §7p§.§]E§;
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
       
      
      private var §<f§:Vector.<XML>;
      
      private var §;;§:Boolean = false;
      
      private var §&!G§:int;
      
      private var §4j§:int;
      
      private var §'!f§:Function;
      
      private var §7!8§:Function;
      
      private var §^v§:Loader;
      
      private var §#!c§:URLLoader;
      
      private var §5i§:XML;
      
      private var §&!V§:String = "";
      
      private var §!!i§:int = 0;
      
      private var §"!T§:Vector.<String>;
      
      private var §>j§:String = "external_assets/LoadTest.swf";
      
      private var §#[§:Boolean = false;
      
      private var §`o§:Array;
      
      private var §+U§:String;
      
      private var §-!C§:String;
      
      private var §+!S§:Number = 0;
      
      private var §+,§:String = "";
      
      private var §#N§:§4k§;
      
      public function LoadManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`o§ = [];
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public static function get §8!X§() : LoadManager
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(sInstance);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr41:
                     sInstance = new LoadManager();
                  }
               }
               return sInstance;
            }
         }
         §§goto(addr41);
      }
      
      public static function §]7§(param1:Loader, param2:XML) : void
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
                     if(_loc8_ && _loc3_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        addr50:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop0;
                        }
                        addr61:
                        continue loop2;
                        while(true)
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(§§newactivation());
                              if(!(_loc8_ && _loc3_))
                              {
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           continue loop4;
                           addr37:
                           §§pop().§§slot[2] = param2;
                           if(_loc8_ && LoadManager)
                           {
                              continue;
                           }
                           if(_loc8_)
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
                                 if(_loc7_)
                                 {
                                    §§pop().§§slot[3] = §§nextvalue(_loc4_,_loc5_);
                                    if(_loc7_ || param1)
                                    {
                                       try
                                       {
                                          §§push(§§newactivation());
                                          if(_loc7_)
                                          {
                                             addr124:
                                             §§pop().§§slot[4] = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
                                             if(!_loc8_)
                                             {
                                                AssetCache.§2_§(asset.@name.toString(),assetCls);
                                                if(!_loc8_)
                                                {
                                                   addr191:
                                                   if(asset.@registerFont.toString().toUpperCase() == "TRUE")
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                      }
                                                   }
                                                }
                                                §§goto(addr205);
                                             }
                                             Font.registerFont(assetCls);
                                          }
                                       }
                                       catch(e:ReferenceError)
                                       {
                                          throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr124);
                              }
                              return;
                           }
                           §§goto(addr50);
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §`[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`o§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§4k§, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§+U§ = param2;
            while(true)
            {
               this.§-!C§ = param3;
            }
            addr86:
         }
         loop1:
         while(true)
         {
            this.§#[§ = true;
            while(true)
            {
               this.§;;§ = false;
               loop3:
               while(true)
               {
                  this.§#N§ = param4;
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop1;
               }
               if(!(_loc6_ || param3))
               {
                  continue;
               }
               if(!_loc7_)
               {
                  return;
               }
               §§goto(addr86);
            }
         }
      }
      
      private function §5M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§#[§ = true;
         }
         do
         {
            this.§;;§ = false;
         }
         while(_loc1_);
         
      }
      
      public function §#3§() : Boolean
      {
         return this.§#[§;
      }
      
      public function §]I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;;§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || this)
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        loop2:
                        while(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              this.§<f§ = new Vector.<XML>();
                              loop4:
                              while(true)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 if(_loc1_)
                                 {
                                    this.§&!G§ = 0;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(true);
                                       if(!_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc1_ || this))
                                          {
                                             continue loop0;
                                          }
                                          if(_loc1_ || _loc2_)
                                          {
                                             return §§pop();
                                          }
                                          addr129:
                                          addr129:
                                          while(true)
                                          {
                                             §§pop();
                                             addr130:
                                             while(true)
                                             {
                                                §§push(this.§#3§());
                                                if(_loc2_)
                                                {
                                                   break loop4;
                                                }
                                                §§push(!§§pop());
                                                continue loop0;
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr112);
                           }
                        }
                        addr112:
                        return §§pop();
                        addr108:
                     }
                  }
               }
               §§goto(addr129);
            }
         }
         §§goto(addr130);
      }
      
      public function §`w§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§;;§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc5_ || _loc3_)
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
                        while(true)
                        {
                           addr32:
                           do
                           {
                              §§push(this.§#3§());
                              if(!(_loc4_ && _loc2_))
                              {
                                 continue loop2;
                              }
                              addr67:
                           }
                           while(_loc5_);
                           
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr101);
                        }
                        else
                        {
                           while(true)
                           {
                              §§goto(addr20);
                           }
                           addr76:
                        }
                        §§goto(addr32);
                     }
                     addr20:
                     while(true)
                     {
                        this.§<f§.push(param1);
                        if(_loc5_)
                        {
                           if(!_loc5_)
                           {
                              continue loop7;
                           }
                           if(true)
                           {
                              var _loc2_:*;
                              §§push((_loc2_ = this).§&!G§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc3_:* = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 _loc2_.§&!G§ = _loc3_;
                              }
                              break;
                           }
                           §§goto(addr32);
                        }
                        break;
                     }
                     return;
                  }
                  return;
               }
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr67);
               §§push(Boolean(§§pop()));
            }
         }
         §§goto(addr76);
      }
      
      public function § !L§(param1:Function = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§;;§);
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
                     loop4:
                     while(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           this.§7!8§ = param1;
                           loop6:
                           while(true)
                           {
                              this.§&!G§ = this.§<f§.length;
                              while(true)
                              {
                                 this.§;;§ = true;
                                 loop8:
                                 while(_loc2_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§^!#§();
                                       if(!_loc2_)
                                       {
                                          continue loop8;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc2_ || this)
                                          {
                                             return;
                                          }
                                          break loop4;
                                       }
                                       if(_loc2_ || param1)
                                       {
                                          continue loop5;
                                       }
                                       addr146:
                                       while(true)
                                       {
                                          §§push(this.§#3§());
                                          if(!(_loc3_ && param1))
                                          {
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          addr103:
                                          if(_loc3_ && this)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr147);
                                          §§goto(addr103);
                                       }
                                       addr147:
                                    }
                                 }
                              }
                           }
                        }
                     }
                     return;
                     addr127:
                  }
                  §§goto(addr146);
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §>_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§#N§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
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
                        addr152:
                        while(true)
                        {
                           §§push(this.§#N§);
                           addr105:
                           while(true)
                           {
                              §§push(§§pop().§<!h§);
                              addr106:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr107:
                                 while(_loc1_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr33:
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr40);
                        }
                     }
                  }
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              §§push(this.§#N§);
                              continue loop0;
                           }
                           addr140:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 §§push(this.§#N§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue;
                                 }
                                 continue loop0;
                                 addr142:
                              }
                           }
                           §§goto(addr105);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop8;
                              }
                              §§goto(addr33);
                           }
                           addr40:
                           return §§pop();
                           addr24:
                        }
                        §§goto(addr152);
                     }
                     if(_loc1_)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr107);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr24);
      }
      
      private function §5!7§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#N§.removeEventListener(Event.COMPLETE,this.§5!7§);
         }
         do
         {
            this.§^!#§();
         }
         while(_loc3_);
         
      }
      
      private function §^!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§<f§.length <= 0)
            {
               if(this.§'!F§() >= 1)
               {
                  if(!_loc1_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§2!Z§();
                        addr68:
                        if(!(_loc1_ && this))
                        {
                           addr25:
                           return;
                           addr75:
                        }
                        §§goto(addr25);
                     }
                     else
                     {
                        addr81:
                        this.§?3§();
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr68);
               }
               §§goto(addr25);
            }
            §§goto(addr81);
         }
         §§goto(addr75);
      }
      
      private function §?3§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§;;§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc2_))
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
                              §§push(this.§#3§());
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    addr443:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr28);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§>_§());
                                       }
                                    }
                                 }
                                 addr442:
                              }
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr447:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       return;
                                    }
                                    continue loop4;
                                 }
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
                                             §§push(this.§-!C§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                addr394:
                                                while(!_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop0;
                                                addr319:
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(§§pop().length > 0);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr338:
                                                   if(_loc2_ && this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      addr348:
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push("?version=");
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §§push(§§pop() + this.§-!C§);
                                                                        }
                                                                        if(_loc2_ && _loc1_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr386:
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           addr388:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                     addr368:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§+!S§ = 0;
                                                                     loop18:
                                                                     while(!(_loc2_ && this))
                                                                     {
                                                                        this.§5i§ = this.§<f§.shift();
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(this.§5i§.localName() != "pack")
                                                                           {
                                                                              this.§^v§ = new Loader();
                                                                              loop20:
                                                                              for(; !(_loc2_ && this); loop22:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       this.§^v§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§-!7§);
                                                                                       loop23:
                                                                                       while(!(_loc2_ && this))
                                                                                       {
                                                                                          if(!(_loc2_ && _loc3_))
                                                                                          {
                                                                                             this.§+,§ = this.§+U§ + this.§&!V§ + this.§5i§.@swf.toString() + _loc1_;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§goto(addr292);
                                                                                       }
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop20;
                                                                              },§§goto(addr187))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§-!C§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                       }
                                                                                       continue loop10;
                                                                                       addr415:
                                                                                    }
                                                                                    this.§^v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#a§);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                this.§^v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>!b§);
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc1_))
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      this.§#!c§.addEventListener(ProgressEvent.PROGRESS,this.§-!7§);
                                                                                                      this.§+,§ = this.§+U§ + this.§5i§.@url.toString() + _loc1_;
                                                                                                      break loop21;
                                                                                                      addr218:
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                }
                                                                                                addr288:
                                                                                                addr288:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§#!c§ = new URLLoader();
                                                                                                   addr292:
                                                                                                   while(_loc3_)
                                                                                                   {
                                                                                                      this.§#!c§.dataFormat = URLLoaderDataFormat.BINARY;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                             addr239:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.§#!c§.addEventListener(Event.COMPLETE,this.§&!3§);
                                                                                             continue loop19;
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                          §§goto(addr444);
                                                                                       }
                                                                                       break;
                                                                                       addr54:
                                                                                       if(_loc2_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr28);
                                                                                    }
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       this.§#!c§.load(new URLRequest(this.§+,§));
                                                                                       addr28:
                                                                                    }
                                                                                    continue loop9;
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr368);
                                                                                 §§goto(addr386);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr443);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr415);
                                                         §§goto(addr348);
                                                      }
                                                      addr414:
                                                   }
                                                   §§goto(addr397);
                                                }
                                                §§goto(addr348);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr442);
                  }
               }
            }
         }
         §§goto(addr288);
      }
      
      private function §>!b§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§+,§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§=!0§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§+,§,§]E§.§7!&§);
      }
      
      private function §&!3§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§`o§.push(this.§#!c§.data);
            while(this.§'!f§ != null)
            {
               if(_loc5_)
               {
                  this.§'!f§(this.§#!c§.data);
                  if(!(_loc5_ || _loc2_))
                  {
                     §§goto(addr138);
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  continue;
                  addr138:
               }
               this.§^!#§();
               addr138:
               return;
            }
            loop1:
            while(true)
            {
               §§push(this.§#N§);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr44:
                        this.§#N§.§'#§(this.§#!c§.data);
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr44);
            }
            §§goto(addr135);
         }
         §§goto(addr66);
      }
      
      private function §-!7§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§+!S§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §#a§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §]7§(this.§^v§,this.§5i§);
            if(!(_loc5_ && _loc3_))
            {
               this.§=!0§();
               if(!_loc5_)
               {
                  addr62:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§4j§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_)
                  {
                     _loc2_.§4j§ = _loc3_;
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§^!#§();
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      private function §=!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(Boolean(this.§^v§));
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               while(true)
               {
                  this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#a§);
               }
            }
         }
         §§goto(addr191);
      }
      
      private function §2!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§+!S§ = 0;
         }
         while(true)
         {
            §§push(this.§7!8§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  break;
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§push(this.§7!8§);
            }
            §§pop().call();
         }
      }
      
      public function §%!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+!S§ = 0;
         }
         while(true)
         {
            this.§;;§ = false;
            loop1:
            for(; !(_loc2_ && _loc1_); while(!(_loc2_ && _loc2_))
            {
               this.§<f§ = null;
               §§goto(addr79);
            })
            {
               this.§&!G§ = 0;
               loop2:
               while(true)
               {
                  if(this.§<f§)
                  {
                     continue loop1;
                  }
                  loop5:
                  while(true)
                  {
                     this.§7!8§ = null;
                     addr34:
                     addr79:
                     while(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           this.§=!0§();
                           if(!_loc2_)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                     while(!_loc2_)
                     {
                        continue loop5;
                        §§goto(addr34);
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function §'!F§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§#3§());
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
                     §§push(0);
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§;;§);
                        loop3:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(_loc1_ || _loc2_)
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
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             §§push(!this.§<f§);
                                             if(_loc1_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      loop23:
                                                      while(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop9:
                                                            while(!(_loc2_ && _loc1_))
                                                            {
                                                               §§pop();
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(this.§#3§());
                                                                  if(_loc1_)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(!§§pop());
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        addr247:
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc1_ || _loc1_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(-1);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§4j§);
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&!G§);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    §§push(this.§#N§);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(!(_loc1_ || _loc2_))
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§pop();
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§&!G§);
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr126:
                                                                                                            §§push(0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc1_ || _loc1_))
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(_loc1_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     addr147:
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§#N§);
                                                                                                                                    if(_loc2_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                    if(§§pop().§<!h§)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr184:
                                                                                                                                          return 1;
                                                                                                                                          addr183:
                                                                                                                                       }
                                                                                                                                       else if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§push(this.§4j§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    addr77:
                                                                                                                                 }
                                                                                                                                 §§goto(addr183);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc1_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr184);
                                                                                                                                 addr54:
                                                                                                                              }
                                                                                                                              §§goto(addr77);
                                                                                                                           }
                                                                                                                           continue loop24;
                                                                                                                           addr156:
                                                                                                                        }
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  §§goto(addr180);
                                                                                                               }
                                                                                                               §§goto(addr147);
                                                                                                               §§goto(addr126);
                                                                                                            }
                                                                                                            addr219:
                                                                                                            return §§pop();
                                                                                                            addr127:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr336:
                                                                                                         }
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr219);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr213:
                                                                                          }
                                                                                          §§goto(addr156);
                                                                                       }
                                                                                       §§goto(addr213);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§4j§);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§push(this.§&!G§);
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(_loc1_ || _loc2_)
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr101);
                                                                                       }
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr54);
                                                                              }
                                                                              addr89:
                                                                              §§push(§§pop() - 0.5);
                                                                              if(_loc1_ || this)
                                                                              {
                                                                                 §§push(§§pop() / this.§&!G§);
                                                                              }
                                                                              addr101:
                                                                              return §§pop();
                                                                           }
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop4;
                                                            addr298:
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr285:
                                                }
                                             }
                                             §§goto(addr298);
                                          }
                                       }
                                       §§goto(addr285);
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr336);
               }
            }
         }
         §§goto(addr216);
      }
   }
}
