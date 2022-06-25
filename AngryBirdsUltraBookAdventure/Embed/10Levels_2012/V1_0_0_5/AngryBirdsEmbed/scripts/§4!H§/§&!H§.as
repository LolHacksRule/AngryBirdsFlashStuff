package §4!H§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §&!H§ extends MovieClip
   {
       
      
      private var §^#§:Object = null;
      
      private var §1@§:Loader = null;
      
      private var §">§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §&!H§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            this.§">§ = new LoaderContext();
            this.§">§.checkPolicyFile = true;
            this.§">§.securityDomain = SecurityDomain.currentDomain;
            if(!(_loc4_ && this))
            {
               this.§">§.applicationDomain = ApplicationDomain.currentDomain;
               if(_loc5_)
               {
                  this.§1@§ = new Loader();
                  if(!(_loc4_ && param1))
                  {
                     this.§1@§.contentLoaderInfo.addEventListener(Event.INIT,this.§^5§);
                     Security.allowDomain("www.youtube.com");
                     if(_loc5_ || param2)
                     {
                     }
                     addr125:
                     if(!param3)
                     {
                        this.§1@§.mouseChildren = false;
                        §§goto(addr131);
                     }
                     addr131:
                     return;
                     addr114:
                  }
                  §§push(param2);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        this.§1@§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                        §§goto(addr114);
                     }
                     else
                     {
                        this.§1@§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                     }
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr131);
         }
         §§goto(addr125);
      }
      
      private function §^5§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addChild(this.§1@§);
            if(!(_loc2_ && _loc2_))
            {
               addr40:
               this.§1@§.content.addEventListener("onReady",this.§9!?§);
               if(_loc3_ || this)
               {
                  this.§1@§.content.addEventListener("onError",this.§ q§);
                  if(!_loc2_)
                  {
                     addr73:
                     this.§1@§.content.addEventListener("onStateChange",this.§<V§);
                     if(_loc3_)
                     {
                        this.§1@§.content.addEventListener("onPlaybackQualityChange",this.§7s§);
                     }
                  }
                  return;
               }
            }
            §§goto(addr73);
         }
         §§goto(addr40);
      }
      
      private function §9!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^#§ = this.§1@§.content;
            if(_loc3_)
            {
               this.§^#§.setSize(480,360);
               if(!_loc2_)
               {
                  this.§^#§.removeEventListener("onReady",this.§9!?§);
                  if(!_loc2_)
                  {
                     addr56:
                     this.isReady = true;
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function § q§(param1:Event) : void
      {
      }
      
      private function §<V§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_)
         {
            §§push(1);
            if(!(_loc4_ && this))
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        addr85:
                     }
                     else
                     {
                        addr99:
                     }
                  }
                  else
                  {
                     addr91:
                     §§push(1);
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr104);
               }
               else
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr91);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr104:
                     switch(§§pop())
                     {
                        case 0:
                           if(this.isReady == false)
                           {
                              if(!_loc4_)
                              {
                                 this.dispose();
                                 if(_loc4_)
                                 {
                                    addr35:
                                    this.§^#§.playVideo();
                                    if(_loc3_)
                                    {
                                       addr50:
                                       break;
                                    }
                                    break;
                                 }
                              }
                              break;
                           }
                           break;
                        case 1:
                           this.isReady = false;
                           if(_loc3_)
                           {
                              §§goto(addr35);
                           }
                           §§goto(addr50);
                     }
                     return;
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr85);
         }
         §§goto(addr91);
      }
      
      private function §7s§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§^#§ != null)
         {
            if(_loc2_ || _loc1_)
            {
               this.isReady = false;
               removeChild(this.§1@§);
               if(_loc2_)
               {
                  this.§^#§.removeEventListener("onError",this.§ q§);
                  if(!_loc1_)
                  {
                     this.§^#§.removeEventListener("onStateChange",this.§<V§);
                     if(_loc2_ || _loc2_)
                     {
                        this.§^#§.removeEventListener("onPlaybackQualityChange",this.§7s§);
                        addr84:
                        this.§^#§.destroy();
                        if(!_loc1_)
                        {
                           this.§1@§.contentLoaderInfo.removeEventListener(Event.INIT,this.§^5§);
                           if(_loc2_)
                           {
                              this.§1@§ = null;
                              addr102:
                              this.§">§ = null;
                           }
                           this.§^#§ = null;
                           §§goto(addr108);
                        }
                        addr68:
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr84);
               }
               §§goto(addr68);
            }
            §§goto(addr84);
         }
         addr108:
      }
   }
}
