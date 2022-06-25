package §0X§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §?6§ extends MovieClip
   {
       
      
      private var §7%§:Object = null;
      
      private var §`!u§:Loader = null;
      
      private var §1U§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §?6§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§1U§ = new LoaderContext();
               addr179:
               while(true)
               {
                  this.§1U§.checkPolicyFile = true;
               }
               addr48:
               if(_loc5_ && param2)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         loop2:
         while(true)
         {
            this.§1U§.securityDomain = SecurityDomain.currentDomain;
            loop3:
            while(!_loc5_)
            {
               this.§1U§.applicationDomain = ApplicationDomain.currentDomain;
               while(true)
               {
                  this.§`!u§ = new Loader();
                  loop5:
                  while(_loc4_)
                  {
                     this.§`!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§ P§);
                     while(!_loc5_)
                     {
                        continue loop2;
                        addr92:
                        if(!(_loc4_ || param3))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           continue loop5;
                        }
                        this.§`!u§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(param3);
                              if(_loc4_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop9;
                                       }
                                       this.§`!u§.mouseChildren = false;
                                    }
                                    if(!(_loc4_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr48);
                                 }
                                 break;
                              }
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§`!u§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                    continue loop10;
                                 }
                                 if(_loc5_ && param3)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc4_)
                                 {
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                    addr114:
                                 }
                              }
                              continue loop5;
                           }
                           addr19:
                           return;
                        }
                     }
                     continue loop3;
                  }
               }
            }
            §§goto(addr179);
         }
      }
      
      private function § P§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            addChild(this.§`!u§);
            loop0:
            while(true)
            {
               this.§`!u§.content.addEventListener("onReady",this.§ q§);
               while(true)
               {
                  this.§`!u§.content.addEventListener("onError",this.§`r§);
                  continue loop0;
                  addr59:
                  if(_loc2_ || this)
                  {
                     this.§`!u§.content.addEventListener("onPlaybackQualityChange",this.§ !C§);
                     addr66:
                     if(!_loc3_)
                     {
                        addr52:
                        return;
                        addr52:
                     }
                     while(_loc2_ || _loc3_)
                     {
                        §§goto(addr59);
                        §§goto(addr66);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§`!u§.content.addEventListener("onStateChange",this.§"!n§);
            §§goto(addr52);
         }
      }
      
      private function § q§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7%§ = this.§`!u§.content;
            while(true)
            {
               this.§7%§.setSize(480,360);
               while(true)
               {
                  this.§7%§.removeEventListener("onReady",this.§ q§);
                  §§goto(addr71);
               }
            }
         }
         addr71:
         while(true)
         {
            this.isReady = true;
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      private function §`r§(param1:Event) : void
      {
      }
      
      private function §"!n§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_)
         {
            §§push(1);
            if(_loc3_ || param1)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc4_ && this)
                     {
                     }
                  }
                  else
                  {
                     addr108:
                     §§push(1);
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr116);
               }
               else
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr108);
                     }
                     else
                     {
                        addr116:
                        switch(§§pop())
                        {
                           case 0:
                              if(this.isReady == false)
                              {
                                 addr59:
                                 this.dispose();
                              }
                              addr32:
                              break;
                           case 1:
                              this.isReady = false;
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    this.§7%§.playVideo();
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr59);
                                       }
                                       §§goto(addr32);
                                    }
                                    break;
                                 }
                                 §§goto(addr59);
                              }
                        }
                        return;
                        §§push(2);
                     }
                     §§goto(addr116);
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr108);
      }
      
      private function § !C§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§7%§ != null)
            {
               while(true)
               {
                  this.isReady = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§`!u§);
                     loop2:
                     while(true)
                     {
                        this.§7%§.removeEventListener("onError",this.§`r§);
                        loop3:
                        while(true)
                        {
                           this.§7%§.removeEventListener("onStateChange",this.§"!n§);
                           loop4:
                           for(; _loc2_; while(!(_loc1_ && _loc2_))
                           {
                              this.§7%§ = null;
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 addr37:
                                 if(!(_loc1_ && this))
                                 {
                                    §§goto(addr20);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr61);
                           })
                           {
                              this.§7%§.removeEventListener("onPlaybackQualityChange",this.§ !C§);
                              loop5:
                              while(true)
                              {
                                 this.§7%§.destroy();
                                 while(true)
                                 {
                                    this.§`!u§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ P§);
                                    continue loop3;
                                    addr61:
                                    while(_loc2_ || _loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             this.§1U§ = null;
                                             continue loop4;
                                          }
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr119);
      }
   }
}
