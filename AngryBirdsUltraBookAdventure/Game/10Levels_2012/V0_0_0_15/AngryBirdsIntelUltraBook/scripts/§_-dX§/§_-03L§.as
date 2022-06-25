package §_-dX§
{
   import §_-0BH§.§_-FK§;
   import §_-eS§.§_-4E§;
   import com.rovio.assets.§_-Fc§;
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
   
   public class §_-03L§
   {
      
      private static var §_-es§:§_-03L§;
       
      
      private var §_-ZZ§:Vector.<XML>;
      
      private var §_-hH§:Boolean = false;
      
      private var §_-Vz§:int;
      
      private var §_-00h§:int;
      
      private var §_-tY§:Function;
      
      private var §_-29§:Function;
      
      private var §_-l2§:Loader;
      
      private var §_-sT§:URLLoader;
      
      private var §_-0BB§:XML;
      
      private var §_-rI§:String = "";
      
      private var §_-zp§:int = 0;
      
      private var §_-t§:Vector.<String>;
      
      private var §_-GU§:String = "external_assets/LoadTest.swf";
      
      private var §_-0-s§:Boolean = false;
      
      private var §_-lK§:Array;
      
      private var §_-Bl§:String;
      
      private var §_-Df§:String;
      
      private var §_-NY§:Number = 0;
      
      private var §_-Gr§:String = "";
      
      private var §_-B8§:§_-J4§;
      
      public function §_-03L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-lK§ = [];
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public static function get §_-3S§() : §_-03L§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §_-03L§)
         {
            §§push(§_-es§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §_-es§ = new §_-03L§();
                     addr48:
                     §§push(§_-es§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public static function §_-1L§(param1:Loader, param2:XML) : void
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
                  while(_loc7_)
                  {
                     §§push(null);
                     if(_loc8_)
                     {
                        continue loop1;
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
                              while(_loc7_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc7_ || §_-03L§)
                                 {
                                    §§pop().§§slot[2] = param2;
                                    if(!_loc8_)
                                    {
                                       if(_loc7_)
                                       {
                                          if(true)
                                          {
                                             var _loc4_:int = 0;
                                             var _loc5_:* = library.Asset;
                                             addr190:
                                          }
                                          continue loop5;
                                          if(§§hasnext(_loc5_,_loc4_))
                                          {
                                             §§push(§§newactivation());
                                             if(_loc7_ || param2)
                                             {
                                                §§pop().§§slot[3] = §§nextvalue(_loc4_,_loc5_);
                                                if(_loc7_ || param2)
                                                {
                                                   try
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc7_)
                                                      {
                                                         §§pop().§§slot[4] = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            §_-Fc§.§_-AG§(asset.@name.toString(),assetCls);
                                                            if(_loc7_)
                                                            {
                                                               addr173:
                                                               if(asset.@registerFont.toString().toUpperCase() == "TRUE")
                                                               {
                                                                  if(_loc8_ && param1)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         Font.registerFont(assetCls);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   catch(e:ReferenceError)
                                                   {
                                                      throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
                                                   }
                                                   §§goto(addr173);
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr173);
                                          }
                                          return;
                                       }
                                       break loop5;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §_-qu§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§_-lK§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§_-J4§, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§_-Bl§ = param2;
            loop0:
            while(true)
            {
               this.§_-Df§ = param3;
               loop1:
               while(true)
               {
                  this.§_-0-s§ = true;
                  loop2:
                  while(true)
                  {
                     this.§_-hH§ = false;
                     while(true)
                     {
                        this.§_-B8§ = param4;
                        addr68:
                        while(!_loc7_)
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                        addr29:
                        if(!(_loc7_ && param1))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§_-tY§ = param5;
            if(!_loc7_)
            {
               §§goto(addr29);
            }
            §§goto(addr68);
         }
         §§goto(addr63);
      }
      
      private function §_-X8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-0-s§ = true;
         }
         do
         {
            this.§_-hH§ = false;
         }
         while(_loc1_);
         
      }
      
      public function §_-gB§() : Boolean
      {
         return this.§_-0-s§;
      }
      
      public function §_-02K§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-hH§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        addr113:
                        while(true)
                        {
                           §§push(this.§_-gB§());
                           addr88:
                           addr91:
                           while(_loc1_)
                           {
                              continue loop7;
                           }
                           §§push(!§§pop());
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr112:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           addr102:
                           §§push(false);
                           break;
                        }
                        while(true)
                        {
                           addr67:
                           while(_loc2_ || this)
                           {
                              this.§_-Vz§ = 0;
                              if(_loc1_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 §§push(true);
                                 if(!(_loc2_ || this))
                                 {
                                    break loop1;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr113);
                           }
                        }
                     }
                     while(true)
                     {
                        this.§_-ZZ§ = new Vector.<XML>();
                        §§goto(addr67);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr112);
            }
         }
         §§goto(addr102);
      }
      
      public function §_-0Ab§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§_-hH§);
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
                        addr101:
                        while(true)
                        {
                           addr38:
                           while(true)
                           {
                              §§push(this.§_-gB§());
                              if(_loc4_ || param1)
                              {
                                 if(!(_loc4_ || param1))
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr79);
                        }
                        if(!_loc5_)
                        {
                           addr24:
                           this.§_-ZZ§.push(param1);
                           if(!(_loc5_ && param1))
                           {
                              if(true)
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§_-Vz§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc4_ || _loc3_)
                                 {
                                    _loc2_.§_-Vz§ = _loc3_;
                                 }
                                 break;
                              }
                              §§goto(addr38);
                           }
                           break;
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr24);
                  }
                  return;
               }
            }
         }
         addr79:
      }
      
      public function §_-Zb§(param1:Function = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-hH§);
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
                        §§pop();
                        addr123:
                        do
                        {
                           §§push(this.§_-gB§());
                           if(_loc2_ || _loc2_)
                           {
                              if(!(_loc2_ || param1))
                              {
                                 continue loop1;
                              }
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        while(!_loc3_);
                        
                     }
                  }
                  loop4:
                  while(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        this.§_-29§ = param1;
                        while(_loc2_)
                        {
                           while(true)
                           {
                              this.§_-Vz§ = this.§_-ZZ§.length;
                              loop8:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop4;
                                 }
                                 this.§_-hH§ = true;
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       continue loop5;
                                    }
                                    continue loop8;
                                 }
                                 continue loop5;
                              }
                           }
                           return;
                        }
                        §§goto(addr123);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      private function §_-2r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-B8§);
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
                        loop3:
                        while(true)
                        {
                           §§push(this.§_-B8§);
                           if(!(_loc1_ && this))
                           {
                              §§push(§§pop().§_-wB§);
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                              }
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§_-B8§);
                                    }
                                    addr117:
                                 }
                                 else
                                 {
                                    §§push(false);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    addr36:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 return §§pop();
                              }
                              continue loop2;
                           }
                           loop6:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.COMPLETE,this.§_-3Q§);
                              addr124:
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§_-B8§);
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr126);
      }
      
      private function §_-3Q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-B8§.removeEventListener(Event.COMPLETE,this.§_-3Q§);
         }
         do
         {
            this.§_-0-T§();
         }
         while(_loc2_);
         
      }
      
      private function §_-0-T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§_-ZZ§.length <= 0)
            {
               if(this.§_-B2§() >= 1)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§_-Qa§();
                  }
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§goto(addr24);
                     }
                     else
                     {
                        addr84:
                        this.§_-vV§();
                     }
                     §§goto(addr24);
                  }
               }
               addr24:
               return;
            }
         }
         §§goto(addr84);
      }
      
      private function §_-vV§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-hH§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
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
                              §§push(this.§_-gB§());
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop32:
                                          while(true)
                                          {
                                             §§push(this.§_-2r§());
                                             addr405:
                                             loop6:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                      loop8:
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.§_-Df§);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == null);
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr352:
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ && this)
                                                                           {
                                                                              break;
                                                                              addr383:
                                                                           }
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-Df§);
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              addr328:
                                                                              while(true)
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 addr329:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§push(§§pop().length > 0);
                                                                           addr302:
                                                                           continue loop10;
                                                                           if(_loc2_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push("?version=");
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + this.§_-Df§);
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                    §§push(§§pop());
                                                                                    addr69:
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    this.§_-l2§.load(new URLRequest(this.§_-Gr§),new LoaderContext(false,ApplicationDomain.currentDomain));
                                                                                    addr76:
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr101:
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               this.§_-Gr§ = this.§_-Bl§ + this.§_-rI§ + this.§_-0BB§.@swf.toString() + _loc1_;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        while(!(_loc3_ || this))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§_-sT§ = new URLLoader();
                                                                                                                              §§goto(addr265);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           this.§_-Gr§ = this.§_-Bl§ + this.§_-0BB§.@url.toString() + _loc1_;
                                                                                                                           this.§_-sT§.load(new URLRequest(this.§_-Gr§));
                                                                                                                           break loop20;
                                                                                                                           addr185:
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     §§goto(addr69);
                                                                                                                  }
                                                                                                                  addr118:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!(_loc2_ && _loc1_))
                                                                                                                        {
                                                                                                                           this.§_-l2§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§_-07U§);
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     addr265:
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                                  §§goto(addr329);
                                                                                                                  §§goto(addr76);
                                                                                                               }
                                                                                                               addr28:
                                                                                                               return;
                                                                                                               addr65:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  if(this.§_-0BB§.localName() != "pack")
                                                                                                                  {
                                                                                                                     this.§_-l2§ = new Loader();
                                                                                                                     while(_loc3_)
                                                                                                                     {
                                                                                                                        this.§_-l2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-Mt§);
                                                                                                                        while(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           this.§_-l2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
                                                                                                                           §§goto(addr118);
                                                                                                                        }
                                                                                                                        §§goto(addr185);
                                                                                                                     }
                                                                                                                     §§goto(addr233);
                                                                                                                     addr154:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                               §§goto(addr101);
                                                                                                            }
                                                                                                            §§goto(addr261);
                                                                                                            addr272:
                                                                                                         }
                                                                                                         §§goto(addr254);
                                                                                                      }
                                                                                                      §§goto(addr222);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr154);
                                                                                             }
                                                                                             §§goto(addr139);
                                                                                          }
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§_-0BB§ = this.§_-ZZ§.shift();
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                             addr284:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr28);
                                                                                    }
                                                                                    §§goto(addr65);
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              addr280:
                                                                              while(true)
                                                                              {
                                                                                 this.§_-NY§ = 0;
                                                                                 §§goto(addr284);
                                                                                 §§goto(addr329);
                                                                              }
                                                                           }
                                                                           addr312:
                                                                        }
                                                                        continue loop1;
                                                                        addr365:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr406:
                                                loop22:
                                                while(true)
                                                {
                                                   this.§_-sT§.dataFormat = URLLoaderDataFormat.BINARY;
                                                   addr254:
                                                   while(true)
                                                   {
                                                      this.§_-sT§.addEventListener(Event.COMPLETE,this.§_-96§);
                                                      addr233:
                                                      while(true)
                                                      {
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            break loop22;
                                                         }
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue loop32;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§_-sT§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
                                                            addr222:
                                                            while(!_loc2_)
                                                            {
                                                               this.§_-sT§.addEventListener(ProgressEvent.PROGRESS,this.§_-07U§);
                                                               continue loop24;
                                                            }
                                                            §§goto(addr383);
                                                         }
                                                      }
                                                   }
                                                   continue loop27;
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr28);
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr405);
                           }
                        }
                     }
                     §§goto(addr401);
                  }
               }
            }
         }
         §§goto(addr247);
      }
      
      private function §_-03G§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-Gr§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.§_-Ix§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§_-Gr§,§_-4E§.§_-fq§);
      }
      
      private function §_-96§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            this.§_-lK§.push(this.§_-sT§.data);
         }
         while(true)
         {
            if(this.§_-tY§ != null)
            {
               while(true)
               {
                  this.§_-tY§(this.§_-sT§.data);
                  addr99:
                  while(true)
                  {
                  }
               }
               addr84:
            }
            while(true)
            {
               §§push(this.§_-B8§);
               if(_loc4_ || this)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           §§push(this.§_-B8§);
                           while(true)
                           {
                              §§pop().§_-Vt§(this.§_-sT§.data);
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 while(true)
                                 {
                                    this.§_-Ix§();
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr126:
                              return;
                           }
                           addr65:
                        }
                        else
                        {
                           §§goto(addr84);
                        }
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr24);
               }
               §§goto(addr65);
            }
         }
      }
      
      private function §_-07U§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-NY§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §_-Mt§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §_-1L§(this.§_-l2§,this.§_-0BB§);
            if(!(_loc4_ && _loc2_))
            {
               this.§_-Ix§();
               if(_loc5_ || param1)
               {
                  addr51:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§_-00h§);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§_-00h§ = _loc3_;
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     addr88:
                     this.§_-0-T§();
                  }
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr51);
      }
      
      private function §_-Ix§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§_-l2§)
            {
               if(!(_loc1_ && this))
               {
                  this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-Mt§);
               }
               while(true)
               {
                  this.§_-l2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
                  addr156:
                  addr107:
                  while(true)
                  {
                     this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-Mt§);
                     addr146:
                     while(true)
                     {
                        this.§_-l2§ = null;
                        addr126:
                        while(true)
                        {
                        }
                     }
                  }
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  this.§_-sT§.removeEventListener(Event.COMPLETE,this.§_-96§);
                  loop6:
                  while(true)
                  {
                     this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
                     while(!_loc1_)
                     {
                        this.§_-sT§.removeEventListener(ProgressEvent.PROGRESS,this.§_-07U§);
                        while(_loc2_ || this)
                        {
                           continue loop6;
                           loop9:
                           for(; _loc2_ || _loc2_; while(true)
                           {
                              this.§_-0BB§ = null;
                              if(!(_loc2_ || this))
                              {
                                 continue loop9;
                              }
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    §§goto(addr156);
                                 }
                                 return;
                                 addr44:
                              }
                              §§goto(addr126);
                           })
                           {
                              while(true)
                              {
                                 continue loop9;
                              }
                           }
                        }
                     }
                     addr105:
                     while(!_loc1_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr146);
                  }
               }
            }
            while(true)
            {
               if(this.§_-sT§)
               {
                  §§goto(addr105);
               }
               §§goto(addr29);
               §§goto(addr126);
            }
            §§goto(addr44);
         }
         §§goto(addr56);
      }
      
      private function §_-Qa§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-NY§ = 0;
            loop0:
            do
            {
               §§push(this.§_-29§);
               if(_loc1_)
               {
                  if(§§pop() == null)
                  {
                     break;
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§_-29§);
                  }
               }
               while(true)
               {
                  §§pop().call();
                  continue loop0;
               }
            }
            while(do
            {
               this.§_-29§ = null;
            }
            while(_loc2_ && this);
            , _loc2_);
            
            return;
         }
         §§goto(addr66);
      }
      
      public function §_-0Eu§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-NY§ = 0;
            do
            {
               this.§_-hH§ = false;
               loop1:
               do
               {
                  this.§_-Vz§ = 0;
                  loop2:
                  for(; this.§_-ZZ§; if(!(_loc1_ || this))
                  {
                     continue;
                  },this.§_-ZZ§ = null)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        continue;
                     }
                     addr91:
                     addr91:
                     while(true)
                     {
                        break loop2;
                     }
                  }
                  while(true)
                  {
                     this.§_-29§ = null;
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§_-Ix§();
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                     §§goto(addr91);
                  }
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || this));
            
            return;
         }
         §§goto(addr91);
      }
      
      public function §_-B2§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-gB§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§push(this.§_-hH§);
                  while(true)
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 for(; !(_loc2_ && _loc2_); §§push(§§pop()),if(!(_loc1_ || this))
                                 {
                                    continue;
                                 },if(§§pop())
                                 {
                                    §§goto(addr243);
                                 },§§goto(addr142))
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§_-gB§());
                                             loop10:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(!(_loc1_ || this))
                                                      {
                                                         break;
                                                      }
                                                      while(!§§pop())
                                                      {
                                                         §§push(this.§_-00h§);
                                                         loop13:
                                                         while(!(_loc2_ && _loc1_))
                                                         {
                                                            §§push(this.§_-Vz§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!(_loc1_ || this))
                                                                     {
                                                                        break loop13;
                                                                        addr212:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr295:
                                                                     }
                                                                     §§push(this.§_-B8§);
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  addr258:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-Vz§);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-00h§);
                                                                     if(_loc1_)
                                                                     {
                                                                        if(!(_loc1_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(this.§_-Vz§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 addr117:
                                                                                 §§push(§§pop() - 0.5);
                                                                              }
                                                                              return §§pop() / this.§_-Vz§;
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     addr58:
                                                                     while(!_loc1_)
                                                                     {
                                                                     }
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  addr107:
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     addr179:
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr117);
                                                                  §§push(§§pop() + this.§_-NY§);
                                                                  addr24:
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop14;
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                         if(!(_loc2_ && this))
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      §_-FK§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                                      §§goto(addr295);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(!(_loc1_ || this))
                                                         {
                                                            §_-FK§.log("[LoadManager] Init not complete yet!");
                                                            §§push(0);
                                                         }
                                                         else
                                                         {
                                                            addr351:
                                                         }
                                                         §§push(!this.§_-ZZ§);
                                                         continue loop0;
                                                      }
                                                      addr335:
                                                   }
                                                   addr346:
                                                   return §§pop();
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr290);
                                 }
                                 continue loop3;
                              }
                              addr307:
                           }
                           §§goto(addr335);
                        }
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§pop();
                     §§goto(addr258);
                  }
               }
               §§goto(addr351);
            }
         }
         §§goto(addr24);
      }
   }
}
