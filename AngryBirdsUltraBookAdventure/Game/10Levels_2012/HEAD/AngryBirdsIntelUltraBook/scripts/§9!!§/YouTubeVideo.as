package §9!!§
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
       
      
      private var §<5§:Object = null;
      
      private var §4$§:Loader = null;
      
      private var §&F§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function YouTubeVideo(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§&F§ = new LoaderContext();
               addr195:
               while(true)
               {
                  this.§&F§.checkPolicyFile = true;
                  addr189:
                  while(true)
                  {
                     this.§&F§.securityDomain = SecurityDomain.currentDomain;
                  }
               }
               loop9:
               while(true)
               {
                  if(_loc4_ || param1)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(param3);
                        if(!_loc5_)
                        {
                           addr27:
                           if(_loc4_ || param3)
                           {
                              addr35:
                              if(!§§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop9;
                                    }
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(_loc5_)
                                          {
                                             break loop9;
                                          }
                                          this.§4$§.mouseChildren = false;
                                          addr60:
                                          if(!(_loc5_ && param3))
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§goto(addr189);
                                          }
                                          while(!(_loc5_ && param3))
                                          {
                                             this.§4$§ = new Loader();
                                             loop5:
                                             while(true)
                                             {
                                                this.§4$§.contentLoaderInfo.addEventListener(Event.INIT,this.§`!M§);
                                                while(true)
                                                {
                                                   Security.allowDomain("www.youtube.com");
                                                   addr123:
                                                   while(_loc4_)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             §§goto(addr60);
                                          }
                                          while(true)
                                          {
                                             this.§&F§.applicationDomain = ApplicationDomain.currentDomain;
                                             §§goto(addr168);
                                          }
                                          addr168:
                                       }
                                       while(true)
                                       {
                                          this.§4$§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop10;
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                                 §§goto(addr60);
                              }
                              break;
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr35);
                     }
                     return;
                  }
                  continue loop0;
               }
               §§goto(addr195);
            }
         }
         §§goto(addr183);
      }
      
      private function §`!M§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            addChild(this.§4$§);
            loop0:
            while(true)
            {
               this.§4$§.content.addEventListener("onReady",this.§+o§);
               while(true)
               {
                  this.§4$§.content.addEventListener("onError",this.§?!O§);
                  addr93:
                  while(!(_loc3_ && _loc2_))
                  {
                     this.§4$§.content.addEventListener("onStateChange",this.§<!R§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §+o§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§<5§ = this.§4$§.content;
            loop0:
            while(true)
            {
               this.§<5§.setSize(480,360);
               while(true)
               {
                  this.§<5§.removeEventListener("onReady",this.§+o§);
                  while(!(_loc3_ && _loc2_))
                  {
                     continue loop0;
                     this.isReady = true;
                     if(_loc2_)
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §?!O§(param1:Event) : void
      {
      }
      
      private function §<!R§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(!(_loc3_ && _loc3_))
         {
            §§push(1);
            if(_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        addr137:
                     }
                     §§goto(addr139);
                  }
                  else
                  {
                     §§goto(addr123);
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() !== _loc2_)
                     {
                        if(false)
                        {
                           §§goto(addr134);
                        }
                        else
                        {
                           §§push(2);
                        }
                        addr139:
                        switch(§§pop())
                        {
                           case 0:
                              if(this.isReady == false)
                              {
                                 if(_loc4_ || this)
                                 {
                                    this.dispose();
                                    addr74:
                                 }
                                 break;
                              }
                              addr27:
                              break;
                           case 1:
                              this.isReady = false;
                              if(_loc4_ || this)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    this.§<5§.playVideo();
                                    if(_loc4_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr74);
                                 §§goto(addr27);
                              }
                        }
                        return;
                     }
                     if(!_loc3_)
                     {
                        addr123:
                        §§push(1);
                        if(_loc3_ && param1)
                        {
                           §§goto(addr137);
                        }
                        §§goto(addr139);
                     }
                     else
                     {
                        addr134:
                        §§push(2);
                        if(_loc4_)
                        {
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr139);
                     §§goto(addr134);
                  }
               }
            }
            §§goto(addr137);
         }
         §§goto(addr123);
      }
      
      private function §@w§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§<5§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§4$§);
                     loop2:
                     while(true)
                     {
                        this.§<5§.removeEventListener("onError",this.§?!O§);
                        while(true)
                        {
                           this.§<5§.removeEventListener("onStateChange",this.§<!R§);
                           loop4:
                           while(true)
                           {
                              this.§<5§.removeEventListener("onPlaybackQualityChange",this.§@w§);
                              continue loop2;
                              addr86:
                              if(_loc1_ || this)
                              {
                                 this.§&F§ = null;
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc2_ && _loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          §§goto(addr86);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§4$§.contentLoaderInfo.removeEventListener(Event.INIT,this.§`!M§);
                                             addr105:
                                             while(_loc1_)
                                             {
                                                this.§4$§ = null;
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                          addr113:
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                           }
                           if(_loc1_ || _loc1_)
                           {
                              addr24:
                              return;
                              addr50:
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr50);
      }
   }
}
