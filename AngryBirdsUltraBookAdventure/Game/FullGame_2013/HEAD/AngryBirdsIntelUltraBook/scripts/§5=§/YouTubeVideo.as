package §5=§
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
       
      
      private var §#!5§:Object = null;
      
      private var §2M§:Loader = null;
      
      private var §6!,§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function YouTubeVideo(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§6!,§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§6!,§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§6!,§.securityDomain = SecurityDomain.currentDomain;
                     while(true)
                     {
                        this.§6!,§.applicationDomain = ApplicationDomain.currentDomain;
                        loop4:
                        for(; _loc5_; while(!(_loc4_ && this))
                        {
                           continue loop0;
                        })
                        {
                           this.§2M§ = new Loader();
                           loop5:
                           while(!_loc4_)
                           {
                              this.§2M§.contentLoaderInfo.addEventListener(Event.INIT,this.§null§);
                              continue loop4;
                              addr115:
                              if(!(_loc5_ || param2))
                              {
                                 continue;
                              }
                              §§push(param2);
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§2M§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(param3);
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
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
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      addr48:
                                                      if(_loc4_ && param1)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§goto(addr115);
                                                            §§goto(addr48);
                                                         }
                                                         continue loop5;
                                                         addr113:
                                                      }
                                                      this.§2M§.mouseChildren = false;
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§2M§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                                         continue loop2;
                                                      }
                                                      addr80:
                                                   }
                                                }
                                                break;
                                             }
                                             break;
                                             addr106:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          return;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr80);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
               Security.allowDomain("www.youtube.com");
               §§goto(addr113);
            }
         }
         §§goto(addr106);
      }
      
      private function §null§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            addChild(this.§2M§);
         }
         loop0:
         while(true)
         {
            this.§2M§.content.addEventListener("onReady",this.§"?§);
            while(true)
            {
               this.§2M§.content.addEventListener("onError",this.§-!B§);
               while(_loc3_ || _loc3_)
               {
                  this.§2M§.content.addEventListener("onStateChange",this.§9B§);
                  while(_loc3_ || param1)
                  {
                     continue loop0;
                     this.§2M§.content.addEventListener("onPlaybackQualityChange",this.§7!k§);
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private function §"?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#!5§ = this.§2M§.content;
            while(true)
            {
               this.§#!5§.setSize(480,360);
               while(true)
               {
                  this.§#!5§.removeEventListener("onReady",this.§"?§);
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            this.isReady = true;
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §-!B§(param1:Event) : void
      {
      }
      
      private function §9B§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(_loc4_)
         {
            §§push(1);
            if(!(_loc3_ && param1))
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_)
                  {
                     addr87:
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                     §§goto(addr129);
                  }
                  else
                  {
                     §§goto(addr113);
                  }
               }
               else
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr113:
                           §§push(1);
                           if(!(_loc4_ || param1))
                           {
                              addr127:
                           }
                        }
                     }
                     else if(true)
                     {
                        addr129:
                        switch(§§pop())
                        {
                           case 0:
                              if(this.isReady == false)
                              {
                                 addr49:
                                 this.dispose();
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              }
                              addr34:
                              break;
                           case 1:
                              this.isReady = false;
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr49);
                              }
                        }
                        return;
                        §§push(2);
                     }
                     §§goto(addr129);
                     if(_loc4_)
                     {
                        §§goto(addr127);
                     }
                  }
               }
               §§goto(addr129);
            }
            §§goto(addr127);
         }
         §§goto(addr87);
      }
      
      private function §7!k§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§#!5§ != null)
            {
               if(_loc2_)
               {
                  this.isReady = false;
               }
               loop0:
               while(true)
               {
                  removeChild(this.§2M§);
                  loop1:
                  while(true)
                  {
                     this.§#!5§.removeEventListener("onError",this.§-!B§);
                     while(true)
                     {
                        this.§#!5§.removeEventListener("onStateChange",this.§9B§);
                        addr137:
                        addr95:
                        while(true)
                        {
                           this.§#!5§.removeEventListener("onPlaybackQualityChange",this.§7!k§);
                           continue loop1;
                        }
                        loop5:
                        while(!(_loc1_ && this))
                        {
                           this.§2M§.contentLoaderInfo.removeEventListener(Event.INIT,this.§null§);
                           while(true)
                           {
                              this.§2M§ = null;
                              addr56:
                              while(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr137);
                              }
                              continue loop1;
                              addr42:
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       this.§#!5§ = null;
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       addr40:
                                       while(!_loc1_)
                                       {
                                          §§goto(addr42);
                                          continue loop9;
                                       }
                                       §§goto(addr56);
                                    }
                                    addr25:
                                    return;
                                    addr51:
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr51);
      }
   }
}
