package §_-eS§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §_-6U§ extends MovieClip
   {
       
      
      private var §_-eC§:Object = null;
      
      private var §_-l2§:Loader = null;
      
      private var §_-pr§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §_-6U§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-pr§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§_-pr§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§_-pr§.securityDomain = SecurityDomain.currentDomain;
                     loop3:
                     while(true)
                     {
                        this.§_-pr§.applicationDomain = ApplicationDomain.currentDomain;
                        addr171:
                        while(true)
                        {
                           this.§_-l2§ = new Loader();
                           continue loop2;
                        }
                        loop13:
                        while(true)
                        {
                           if(!(_loc5_ || this))
                           {
                              continue loop3;
                           }
                           this.§_-l2§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                           loop12:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          addr31:
                                          if(_loc5_ || this)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             this.§_-l2§.mouseChildren = false;
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   addr91:
                                                   if(_loc4_ && this)
                                                   {
                                                      break;
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop12;
                                                §§goto(addr31);
                                             }
                                             while(true)
                                             {
                                                §§push(param2);
                                                addr101:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop13;
                                                   }
                                                   this.§_-l2§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                                   §§goto(addr74);
                                                }
                                                §§goto(addr91);
                                             }
                                             addr74:
                                             addr122:
                                          }
                                       }
                                       if(!(_loc5_ || this))
                                       {
                                          continue loop13;
                                       }
                                       addr51:
                                       if(!(_loc5_ || this))
                                       {
                                          while(!_loc4_)
                                          {
                                             continue loop0;
                                             §§goto(addr51);
                                          }
                                          continue loop2;
                                          addr132:
                                       }
                                       if(_loc4_)
                                       {
                                          §§goto(addr171);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr101);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            Security.allowDomain("www.youtube.com");
            §§goto(addr122);
         }
      }
      
      private function §_-ft§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            addChild(this.§_-l2§);
            while(true)
            {
               this.§_-l2§.content.addEventListener("onReady",this.§_-y5§);
               loop1:
               for(; !(_loc3_ && param1); while(!(_loc3_ && param1))
               {
                  this.§_-l2§.content.addEventListener("onPlaybackQualityChange",this.§_-cZ§);
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr33);
               })
               {
                  while(true)
                  {
                     this.§_-l2§.content.addEventListener("onError",this.§_-02r§);
                     do
                     {
                        this.§_-l2§.content.addEventListener("onStateChange",this.§_-04z§);
                        continue loop1;
                     }
                     while(!_loc2_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §_-y5§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-eC§ = this.§_-l2§.content;
         }
         loop0:
         while(true)
         {
            this.§_-eC§.setSize(480,360);
            loop1:
            do
            {
               this.§_-eC§.removeEventListener("onReady",this.§_-y5§);
               while(!_loc3_)
               {
                  this.isReady = true;
                  if(!_loc3_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc3_ && _loc3_);
            
            return;
         }
      }
      
      private function §_-02r§(param1:Event) : void
      {
      }
      
      private function §_-04z§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_ || _loc2_)
         {
            §§push(1);
            if(!_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr113:
                     §§push(1);
                     if(_loc3_ || _loc2_)
                     {
                        addr121:
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr113);
                     }
                     else
                     {
                        §§push(2);
                     }
                  }
               }
               loop1:
               switch(§§pop())
               {
                  case 0:
                     if(this.isReady == false)
                     {
                        if(!_loc4_)
                        {
                           this.dispose();
                        }
                        addr66:
                     }
                     addr39:
                     break;
                  case 1:
                     this.isReady = false;
                     while(true)
                     {
                        this.§_-eC§.playVideo();
                        if(_loc4_ && _loc2_)
                        {
                           break loop1;
                        }
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           if(true)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           §§goto(addr66);
                        }
                        §§goto(addr39);
                     }
               }
               return;
            }
            §§goto(addr121);
         }
         §§goto(addr113);
      }
      
      private function §_-cZ§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§_-eC§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  while(true)
                  {
                     removeChild(this.§_-l2§);
                     while(_loc1_)
                     {
                        this.§_-eC§.removeEventListener("onError",this.§_-02r§);
                        while(!(_loc2_ && _loc1_))
                        {
                           while(true)
                           {
                              this.§_-eC§.removeEventListener("onStateChange",this.§_-04z§);
                              loop5:
                              while(true)
                              {
                                 this.§_-eC§.removeEventListener("onPlaybackQualityChange",this.§_-cZ§);
                                 while(true)
                                 {
                                    this.§_-eC§.destroy();
                                    loop7:
                                    while(true)
                                    {
                                       this.§_-l2§.contentLoaderInfo.removeEventListener(Event.INIT,this.§_-ft§);
                                       while(true)
                                       {
                                          this.§_-l2§ = null;
                                          addr62:
                                          while(!(_loc2_ && _loc2_))
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    this.§_-pr§ = null;
                                    while(!_loc2_)
                                    {
                                       this.§_-eC§ = null;
                                       if(!_loc2_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr62);
                                 }
                              }
                           }
                           if(_loc1_ || this)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr24);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr149);
      }
   }
}
