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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.§1U§ = new LoaderContext();
               while(true)
               {
                  this.§1U§.checkPolicyFile = true;
                  while(true)
                  {
                     this.§1U§.securityDomain = SecurityDomain.currentDomain;
                     loop3:
                     while(true)
                     {
                        this.§1U§.applicationDomain = ApplicationDomain.currentDomain;
                        while(true)
                        {
                           this.§`!u§ = new Loader();
                           loop5:
                           while(true)
                           {
                              this.§`!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§ P§);
                              addr148:
                              while(true)
                              {
                                 Security.allowDomain("www.youtube.com");
                                 continue loop5;
                              }
                           }
                           if(!(_loc4_ && param3))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc5_ || param1))
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     §§goto(addr29);
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      private function § P§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            addChild(this.§`!u§);
            loop0:
            while(true)
            {
               this.§`!u§.content.addEventListener("onReady",this.§ q§);
               while(true)
               {
                  this.§`!u§.content.addEventListener("onError",this.§`r§);
                  while(!(_loc3_ && this))
                  {
                     if(_loc2_)
                     {
                        this.§`!u§.content.addEventListener("onStateChange",this.§"!n§);
                        loop3:
                        while(!(_loc3_ && param1))
                        {
                           while(true)
                           {
                              this.§`!u§.content.addEventListener("onPlaybackQualityChange",this.§ !C§);
                              if(!(_loc3_ && _loc2_))
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
         §§goto(addr69);
      }
      
      private function § q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7%§ = this.§`!u§.content;
            while(true)
            {
               this.§7%§.setSize(480,360);
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            this.§7%§.removeEventListener("onReady",this.§ q§);
            do
            {
               this.isReady = true;
            }
            while(_loc2_);
            
            if(_loc3_ || param1)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §`r§(param1:Event) : void
      {
      }
      
      private function §"!n§(param1:Event) : void
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
                  if(!(_loc3_ && this))
                  {
                     addr110:
                     §§push(0);
                     if(!_loc3_)
                     {
                        addr113:
                     }
                  }
                  else
                  {
                     addr119:
                     §§push(1);
                     if(!_loc3_)
                     {
                        addr122:
                     }
                  }
                  §§goto(addr127);
               }
               else
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr119);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr127:
                     loop1:
                     switch(§§pop())
                     {
                        case 0:
                           if(this.isReady == false)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 this.dispose();
                                 addr72:
                              }
                              break;
                           }
                           addr33:
                           break;
                        case 1:
                           this.isReady = false;
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 this.§7%§.playVideo();
                                 if(!_loc4_)
                                 {
                                    break loop1;
                                 }
                                 continue;
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr33);
                     }
                     return;
                  }
               }
               §§goto(addr122);
            }
            §§goto(addr113);
         }
         §§goto(addr110);
      }
      
      private function § !C§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§7%§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  addr165:
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
                           addr141:
                           while(_loc1_)
                           {
                              while(true)
                              {
                                 this.§7%§.removeEventListener("onPlaybackQualityChange",this.§ !C§);
                                 while(!_loc2_)
                                 {
                                    continue loop0;
                                    if(!(_loc2_ && this))
                                    {
                                       §§goto(addr24);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr143);
      }
   }
}
