package § !;§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §<!!§ extends MovieClip
   {
       
      
      private var §43§:Object = null;
      
      private var §^!#§:Loader = null;
      
      private var §%!-§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §<!!§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            this.§%!-§ = new LoaderContext();
            this.§%!-§.checkPolicyFile = true;
            this.§%!-§.securityDomain = SecurityDomain.currentDomain;
            if(!(_loc4_ && this))
            {
               this.§%!-§.applicationDomain = ApplicationDomain.currentDomain;
               if(_loc5_)
               {
                  this.§^!#§ = new Loader();
                  if(!(_loc4_ && param1))
                  {
                     this.§^!#§.contentLoaderInfo.addEventListener(Event.INIT,this.§ 5§);
                     Security.allowDomain("www.youtube.com");
                     if(_loc5_ || param2)
                     {
                     }
                     addr125:
                     if(!param3)
                     {
                        this.§^!#§.mouseChildren = false;
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
                        this.§^!#§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                        §§goto(addr114);
                     }
                     else
                     {
                        this.§^!#§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                     }
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr131);
         }
         §§goto(addr125);
      }
      
      private function § 5§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addChild(this.§^!#§);
            if(!(_loc2_ && _loc2_))
            {
               addr40:
               this.§^!#§.content.addEventListener("onReady",this.§53§);
               if(_loc3_ || this)
               {
                  this.§^!#§.content.addEventListener("onError",this.§6H§);
                  if(!_loc2_)
                  {
                     addr73:
                     this.§^!#§.content.addEventListener("onStateChange",this.§2b§);
                     if(_loc3_)
                     {
                        this.§^!#§.content.addEventListener("onPlaybackQualityChange",this.§70§);
                     }
                  }
                  return;
               }
            }
            §§goto(addr73);
         }
         §§goto(addr40);
      }
      
      private function §53§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§43§ = this.§^!#§.content;
            if(_loc3_)
            {
               this.§43§.setSize(480,360);
               if(!_loc2_)
               {
                  this.§43§.removeEventListener("onReady",this.§53§);
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
      
      private function §6H§(param1:Event) : void
      {
      }
      
      private function §2b§(param1:Event) : void
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
                                    this.§43§.playVideo();
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
      
      private function §70§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§43§ != null)
         {
            if(_loc2_ || _loc1_)
            {
               this.isReady = false;
               removeChild(this.§^!#§);
               if(_loc2_)
               {
                  this.§43§.removeEventListener("onError",this.§6H§);
                  if(!_loc1_)
                  {
                     this.§43§.removeEventListener("onStateChange",this.§2b§);
                     if(_loc2_ || _loc2_)
                     {
                        this.§43§.removeEventListener("onPlaybackQualityChange",this.§70§);
                        addr84:
                        this.§43§.destroy();
                        if(!_loc1_)
                        {
                           this.§^!#§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ 5§);
                           if(_loc2_)
                           {
                              this.§^!#§ = null;
                              addr102:
                              this.§%!-§ = null;
                           }
                           this.§43§ = null;
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
