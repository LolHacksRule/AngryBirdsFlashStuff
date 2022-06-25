package §7p§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class YouTubeVideo extends MovieClip
   {
       
      
      private var § try§:Object = null;
      
      private var §^v§:Loader = null;
      
      private var §"W§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function YouTubeVideo(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"W§ = new LoaderContext();
               addr176:
               while(true)
               {
                  this.§"W§.checkPolicyFile = true;
               }
               loop5:
               while(true)
               {
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
                  this.§^v§.contentLoaderInfo.addEventListener(Event.INIT,this.§&g§);
                  loop6:
                  while(true)
                  {
                     Security.allowDomain("www.youtube.com");
                     loop7:
                     while(_loc5_)
                     {
                        §§push(param2);
                        loop8:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§^v§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                              loop9:
                              while(true)
                              {
                                 if(!(_loc5_ || this))
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(param3);
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop8;
                                             }
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop9;
                                                }
                                                this.§^v§.mouseChildren = false;
                                             }
                                             addr40:
                                             if(!(_loc4_ && this))
                                             {
                                                break loop9;
                                             }
                                             addr156:
                                             while(true)
                                             {
                                                this.§^v§ = new Loader();
                                                continue loop5;
                                                §§goto(addr40);
                                             }
                                          }
                                          break loop9;
                                       }
                                       addr24:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§"W§.securityDomain = SecurityDomain.currentDomain;
                                          addr164:
                                          while(true)
                                          {
                                             this.§"W§.applicationDomain = ApplicationDomain.currentDomain;
                                          }
                                       }
                                       addr170:
                                    }
                                    §§goto(addr156);
                                 }
                              }
                              return;
                           }
                           while(!_loc4_)
                           {
                              this.§^v§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                              continue loop6;
                           }
                           continue loop7;
                        }
                     }
                     §§goto(addr176);
                  }
               }
            }
         }
         §§goto(addr170);
      }
      
      private function §&g§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            addChild(this.§^v§);
            while(true)
            {
               this.§^v§.content.addEventListener("onReady",this.§'!`§);
               while(_loc2_)
               {
                  addr61:
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§^v§.content.addEventListener("onPlaybackQualityChange",this.§<!+§);
                     addr78:
                     if(_loc3_)
                     {
                        while(_loc2_ || _loc3_)
                        {
                           §§goto(addr61);
                           §§goto(addr78);
                        }
                        while(true)
                        {
                           this.§^v§.content.addEventListener("onStateChange",this.§2v§);
                           §§goto(addr54);
                        }
                        addr54:
                        addr88:
                     }
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.§^v§.content.addEventListener("onError",this.§=9§);
            §§goto(addr88);
         }
      }
      
      private function §'!`§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ try§ = this.§^v§.content;
         }
         do
         {
            this.§ try§.setSize(480,360);
            do
            {
               this.§ try§.removeEventListener("onReady",this.§'!`§);
               do
               {
                  this.isReady = true;
               }
               while(_loc2_);
               
            }
            while(!(_loc3_ || this));
            
         }
         while(!(_loc3_ || this));
         
      }
      
      private function §=9§(param1:Event) : void
      {
      }
      
      private function §2v§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_)
         {
            §§push(1);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() === _loc2_)
               {
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc4_ && _loc3_)
                     {
                        addr125:
                     }
                  }
                  else
                  {
                     addr128:
                     §§push(2);
                     if(!_loc4_)
                     {
                        addr131:
                     }
                  }
                  §§goto(addr133);
               }
               else
               {
                  §§push(0);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() !== _loc2_)
                     {
                        if(false)
                        {
                           §§goto(addr128);
                        }
                        else
                        {
                           §§push(2);
                        }
                        addr133:
                        loop1:
                        switch(§§pop())
                        {
                           case 0:
                              if(this.isReady == false)
                              {
                                 if(_loc3_)
                                 {
                                    this.dispose();
                                 }
                                 addr53:
                              }
                              addr35:
                              break;
                           case 1:
                              this.isReady = false;
                              while(true)
                              {
                                 this.§ try§.playVideo();
                                 if(!_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(true)
                                       {
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr53);
                                    }
                                    §§goto(addr35);
                                 }
                                 break loop1;
                              }
                        }
                        return;
                     }
                     if(!(_loc4_ && param1))
                     {
                        addr122:
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§goto(addr125);
                        }
                        else
                        {
                           §§goto(addr131);
                        }
                     }
                     else
                     {
                        §§goto(addr128);
                     }
                     §§goto(addr133);
                     §§goto(addr128);
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr125);
         }
         §§goto(addr122);
      }
      
      private function §<!+§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§ try§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  while(true)
                  {
                     removeChild(this.§^v§);
                     while(!_loc2_)
                     {
                        this.§ try§.removeEventListener("onError",this.§=9§);
                        loop3:
                        while(true)
                        {
                           this.§ try§.removeEventListener("onStateChange",this.§2v§);
                           while(true)
                           {
                              this.§ try§.removeEventListener("onPlaybackQualityChange",this.§<!+§);
                              continue loop3;
                              addr34:
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    §§goto(addr19);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               addr164:
            }
            addr19:
            return;
         }
         §§goto(addr164);
      }
   }
}
