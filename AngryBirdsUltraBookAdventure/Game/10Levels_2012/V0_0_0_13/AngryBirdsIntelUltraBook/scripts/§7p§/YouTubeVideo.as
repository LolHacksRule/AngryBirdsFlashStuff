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
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"W§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§"W§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§"W§.securityDomain = SecurityDomain.currentDomain;
                     addr97:
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     this.§^v§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc4_ && param2))
                           {
                              addr33:
                              if(!(_loc4_ && this))
                              {
                                 addr41:
                                 if(!§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop9;
                                          }
                                          if(!(_loc5_ || param3))
                                          {
                                             continue loop1;
                                          }
                                          this.§^v§.mouseChildren = false;
                                       }
                                       else
                                       {
                                          addr139:
                                          while(_loc5_)
                                          {
                                             continue loop10;
                                          }
                                          while(_loc5_ || param2)
                                          {
                                             §§push(param2);
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§goto(addr97);
                                                }
                                                else
                                                {
                                                   this.§^v§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                                   §§goto(addr79);
                                                }
                                             }
                                             continue loop2;
                                          }
                                          addr79:
                                          loop6:
                                          for(; !(_loc4_ && param2); §§goto(addr120))
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   Security.allowDomain("www.youtube.com");
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             addr184:
                                             while(true)
                                             {
                                                this.§"W§.applicationDomain = ApplicationDomain.currentDomain;
                                                break loop6;
                                             }
                                          }
                                          addr120:
                                          while(true)
                                          {
                                             this.§^v§ = new Loader();
                                             continue loop1;
                                             §§goto(addr139);
                                          }
                                          addr139:
                                       }
                                    }
                                    break;
                                 }
                                 break;
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr41);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      private function §&g§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            addChild(this.§^v§);
            loop0:
            while(true)
            {
               this.§^v§.content.addEventListener("onReady",this.§'!`§);
               while(true)
               {
                  this.§^v§.content.addEventListener("onError",this.§=9§);
                  while(_loc2_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        this.§^v§.content.addEventListener("onStateChange",this.§2v§);
                        loop3:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              this.§^v§.content.addEventListener("onPlaybackQualityChange",this.§<!+§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §'!`§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§ try§ = this.§^v§.content;
            while(true)
            {
               this.§ try§.setSize(480,360);
            }
            addr81:
         }
         while(true)
         {
            this.§ try§.removeEventListener("onReady",this.§'!`§);
            for(; !_loc3_; this.isReady = true,if(_loc2_)
            {
               return;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr81);
            }
         }
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
            if(!_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        addr89:
                     }
                     else
                     {
                        addr126:
                     }
                  }
                  else
                  {
                     addr123:
                     §§push(2);
                     if(!_loc4_)
                     {
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr128);
               }
               else
               {
                  §§push(0);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() !== _loc2_)
                     {
                        if(false)
                        {
                           §§goto(addr123);
                        }
                        else
                        {
                           §§push(2);
                        }
                        addr128:
                        switch(§§pop())
                        {
                           case 0:
                              if(this.isReady == false)
                              {
                                 if(!_loc4_)
                                 {
                                    this.dispose();
                                    if(_loc4_ && _loc3_)
                                    {
                                    }
                                    break;
                                 }
                              }
                              addr31:
                              break;
                           case 1:
                              this.isReady = false;
                              if(!_loc4_)
                              {
                                 this.§ try§.playVideo();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr31);
                                 }
                                 break;
                              }
                        }
                        return;
                     }
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§goto(addr126);
                        }
                     }
                     else
                     {
                        §§goto(addr123);
                     }
                     §§goto(addr128);
                     §§goto(addr123);
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr89);
         }
         §§goto(addr123);
      }
      
      private function §<!+§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§ try§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§^v§);
                     while(true)
                     {
                        this.§ try§.removeEventListener("onError",this.§=9§);
                        continue loop0;
                        while(!(_loc2_ && _loc1_))
                        {
                           this.§^v§.contentLoaderInfo.removeEventListener(Event.INIT,this.§&g§);
                           loop7:
                           while(!_loc2_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 this.§^v§ = null;
                                 loop8:
                                 for(; !(_loc2_ && this); while(true)
                                 {
                                    this.§"W§ = null;
                                    do
                                    {
                                       this.§ try§ = null;
                                    }
                                    while(_loc2_);
                                    
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop8;
                                 },return)
                                 {
                                    if(_loc1_)
                                    {
                                       addr55:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       addr126:
                                       while(true)
                                       {
                                          this.§ try§.removeEventListener("onPlaybackQualityChange",this.§<!+§);
                                          §§goto(addr55);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§ try§.destroy();
                                       break loop7;
                                    }
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr64);
      }
   }
}
