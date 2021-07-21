package §<!1§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §>3§ extends MovieClip
   {
       
      
      private var §#9§:Object = null;
      
      private var §5$§:Loader = null;
      
      private var §[U§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §>3§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§[U§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§[U§.checkPolicyFile = true;
                  while(true)
                  {
                     this.§[U§.securityDomain = SecurityDomain.currentDomain;
                     while(!_loc5_)
                     {
                        this.§[U§.applicationDomain = ApplicationDomain.currentDomain;
                        continue loop1;
                        addr135:
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§5$§.contentLoaderInfo.addEventListener(Event.INIT,this.§ !s§);
                           loop7:
                           while(true)
                           {
                              Security.allowDomain("www.youtube.com");
                              loop8:
                              while(true)
                              {
                                 §§push(param2);
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§5$§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                       loop10:
                                       for(; !_loc5_; if(_loc5_ && param2)
                                       {
                                          continue;
                                       },if(_loc5_ && param3)
                                       {
                                          while(true)
                                          {
                                             this.§5$§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                             §§goto(addr105);
                                          }
                                          addr97:
                                       },addr60:,if(_loc5_ && param3)
                                       {
                                          while(_loc4_ || param2)
                                          {
                                             §§goto(addr135);
                                             §§goto(addr60);
                                          }
                                          continue loop1;
                                          addr128:
                                       },§§goto(addr24))
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(param3);
                                             if(!_loc4_)
                                             {
                                                continue loop9;
                                             }
                                             if(§§pop())
                                             {
                                                break;
                                             }
                                             if(!(_loc4_ || param2))
                                             {
                                                continue loop10;
                                             }
                                             if(!_loc5_)
                                             {
                                                this.§5$§.mouseChildren = false;
                                                continue loop10;
                                             }
                                             addr105:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop11;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          return;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr97);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      private function § !s§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            addChild(this.§5$§);
            loop0:
            while(true)
            {
               this.§5$§.content.addEventListener("onReady",this.§%!E§);
               loop1:
               while(true)
               {
                  this.§5$§.content.addEventListener("onError",this.§1";§);
                  while(true)
                  {
                     this.§5$§.content.addEventListener("onStateChange",this.§3"0§);
                     loop3:
                     while(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           this.§5$§.content.addEventListener("onPlaybackQualityChange",this.§#>§);
                           if(_loc3_ || this)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §%!E§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#9§ = this.§5$§.content;
         }
         loop0:
         do
         {
            this.§#9§.setSize(480,360);
            while(true)
            {
               this.§#9§.removeEventListener("onReady",this.§%!E§);
               while(_loc2_)
               {
                  this.isReady = true;
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      private function §1";§(param1:Event) : void
      {
      }
      
      private function §3"0§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(_loc4_ || _loc3_)
         {
            §§push(1);
            if(!(_loc3_ && this))
            {
               if(§§pop() === _loc2_)
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(0);
                     if(!(_loc4_ || param1))
                     {
                        addr127:
                     }
                  }
                  else
                  {
                     addr109:
                     §§push(1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr127);
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr109);
                     }
                     else
                     {
                        §§push(2);
                     }
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     if(this.isReady == false)
                     {
                        addr50:
                        this.dispose();
                     }
                     addr33:
                     break;
                  case 1:
                     this.isReady = false;
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           this.§#9§.playVideo();
                           if(!(_loc3_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr50);
                              }
                              §§goto(addr33);
                           }
                           break;
                        }
                        §§goto(addr50);
                     }
               }
               return;
            }
            §§goto(addr127);
         }
         §§goto(addr109);
      }
      
      private function §#>§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§#9§ != null)
            {
               while(true)
               {
                  this.isReady = false;
                  while(true)
                  {
                     removeChild(this.§5$§);
                     loop2:
                     while(true)
                     {
                        this.§#9§.removeEventListener("onError",this.§1";§);
                        while(true)
                        {
                           this.§#9§.removeEventListener("onStateChange",this.§3"0§);
                           continue loop2;
                           loop8:
                           while(_loc1_ || _loc1_)
                           {
                              this.§5$§ = null;
                              loop9:
                              while(!_loc2_)
                              {
                                 this.§[U§ = null;
                                 for(; _loc1_ || _loc2_; this.§#9§ = null,if(_loc1_ || _loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr19);
                                    }
                                    continue loop8;
                                 })
                                 {
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    addr104:
                                    while(true)
                                    {
                                       this.§#9§.destroy();
                                       break loop9;
                                    }
                                 }
                              }
                              while(_loc1_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    this.§5$§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ !s§);
                                    continue loop8;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr96);
      }
   }
}
