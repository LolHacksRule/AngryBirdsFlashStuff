package §%!6§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §'b§ extends MovieClip
   {
       
      
      private var §]!9§:Object = null;
      
      private var § l§:Loader = null;
      
      private var §4%§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §'b§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(_loc5_ || this)
         {
            this.§4%§ = new LoaderContext();
         }
         this.§4%§.checkPolicyFile = true;
         if(_loc5_)
         {
            this.§4%§.securityDomain = SecurityDomain.currentDomain;
            if(!_loc4_)
            {
               this.§4%§.applicationDomain = ApplicationDomain.currentDomain;
               if(_loc5_ || param1)
               {
                  this.§ l§ = new Loader();
                  this.§ l§.contentLoaderInfo.addEventListener(Event.INIT,this.§6n§);
                  if(!_loc4_)
                  {
                     Security.allowDomain("www.youtube.com");
                     if(_loc5_)
                     {
                        addr84:
                        §§push(param2);
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              this.§ l§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                              addr119:
                              addr120:
                              if(param3)
                              {
                              }
                              return;
                              addr106:
                           }
                           else
                           {
                              this.§ l§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                              if(_loc5_)
                              {
                                 §§goto(addr119);
                              }
                           }
                           this.§ l§.mouseChildren = false;
                           §§goto(addr119);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr119);
            }
            §§goto(addr84);
         }
         §§goto(addr119);
      }
      
      private function §6n§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            addChild(this.§ l§);
            if(!(_loc3_ && _loc2_))
            {
               this.§ l§.content.addEventListener("onReady",this.§6!§);
               if(!_loc3_)
               {
                  this.§ l§.content.addEventListener("onError",this.§`x§);
                  if(_loc2_)
                  {
                     this.§ l§.content.addEventListener("onStateChange",this.§7b§);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr88);
            }
            this.§ l§.content.addEventListener("onPlaybackQualityChange",this.§5!@§);
         }
         addr88:
      }
      
      private function §6!§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!9§ = this.§ l§.content;
            if(!_loc3_)
            {
               this.§]!9§.setSize(480,360);
               if(!_loc3_)
               {
                  this.§]!9§.removeEventListener("onReady",this.§6!§);
                  if(!_loc3_)
                  {
                     addr50:
                     this.isReady = true;
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private function §`x§(param1:Event) : void
      {
      }
      
      private function §7b§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(_loc4_)
         {
            §§push(1);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_ || this)
                  {
                     addr103:
                     §§push(0);
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr117:
                     §§push(1);
                     if(_loc4_ || _loc2_)
                     {
                        addr125:
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr117);
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
                        if(_loc4_ || _loc3_)
                        {
                           this.dispose();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr39:
                              break;
                           }
                        }
                        addr66:
                        break;
                     }
                     §§goto(addr39);
                  case 1:
                     this.isReady = false;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§]!9§.playVideo();
                        if(!_loc3_)
                        {
                           §§goto(addr66);
                        }
                        break;
                     }
               }
               return;
            }
            §§goto(addr125);
         }
         §§goto(addr103);
      }
      
      private function §5!@§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§]!9§ != null)
            {
               if(!(_loc1_ && this))
               {
                  addr30:
                  this.isReady = false;
                  if(!_loc1_)
                  {
                     removeChild(this.§ l§);
                     this.§]!9§.removeEventListener("onError",this.§`x§);
                     if(!(_loc1_ && this))
                     {
                        this.§]!9§.removeEventListener("onStateChange",this.§7b§);
                        this.§]!9§.removeEventListener("onPlaybackQualityChange",this.§5!@§);
                        if(!_loc1_)
                        {
                           this.§]!9§.destroy();
                           this.§ l§.contentLoaderInfo.removeEventListener(Event.INIT,this.§6n§);
                        }
                        this.§ l§ = null;
                        if(!(_loc1_ && _loc1_))
                        {
                           this.§4%§ = null;
                        }
                     }
                     §§goto(addr113);
                  }
               }
               this.§]!9§ = null;
            }
            addr113:
            return;
         }
         §§goto(addr30);
      }
   }
}
