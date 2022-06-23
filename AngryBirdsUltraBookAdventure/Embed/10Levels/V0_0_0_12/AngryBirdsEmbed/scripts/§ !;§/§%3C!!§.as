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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         if(_loc4_ || param1)
         {
            this.§%!-§ = new LoaderContext();
            if(!(_loc5_ && param2))
            {
               this.§%!-§.checkPolicyFile = true;
               this.§%!-§.securityDomain = SecurityDomain.currentDomain;
               this.§%!-§.applicationDomain = ApplicationDomain.currentDomain;
               if(!_loc5_)
               {
                  this.§^!#§ = new Loader();
               }
               this.§^!#§.contentLoaderInfo.addEventListener(Event.INIT,this.§ 5§);
               if(_loc4_ || param2)
               {
                  Security.allowDomain("www.youtube.com");
               }
               §§push(param2);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        this.§^!#§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                        if(_loc4_ || this)
                        {
                        }
                        §§goto(addr141);
                     }
                     addr128:
                     if(!param3)
                     {
                        if(_loc4_ || param1)
                        {
                           addr137:
                           this.§^!#§.mouseChildren = false;
                        }
                     }
                  }
                  else
                  {
                     this.§^!#§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                     if(!_loc5_)
                     {
                        §§goto(addr128);
                     }
                  }
                  addr141:
                  return;
               }
               §§goto(addr128);
            }
         }
         §§goto(addr137);
      }
      
      private function § 5§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            addChild(this.§^!#§);
            if(!(_loc2_ && this))
            {
               this.§^!#§.content.addEventListener("onReady",this.§53§);
               if(_loc3_)
               {
                  this.§^!#§.content.addEventListener("onError",this.§6H§);
                  if(!(_loc2_ && param1))
                  {
                     addr78:
                     this.§^!#§.content.addEventListener("onStateChange",this.§2b§);
                     if(_loc2_)
                     {
                     }
                     §§goto(addr94);
                  }
                  this.§^!#§.content.addEventListener("onPlaybackQualityChange",this.§70§);
                  addr94:
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      private function §53§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§43§ = this.§^!#§.content;
            if(_loc3_)
            {
               §§goto(addr51);
            }
            §§goto(addr71);
         }
         addr51:
         this.§43§.setSize(480,360);
         if(_loc3_ || _loc2_)
         {
            this.§43§.removeEventListener("onReady",this.§53§);
            if(!_loc2_)
            {
               addr71:
               this.isReady = true;
            }
         }
      }
      
      private function §6H§(param1:Event) : void
      {
      }
      
      private function §2b§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(!_loc3_)
         {
            §§push(1);
            if(!_loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr88);
                  }
                  §§goto(addr102);
               }
               else
               {
                  §§push(0);
                  if(_loc4_ || this)
                  {
                     §§goto(addr100);
                  }
               }
            }
            §§goto(addr105);
         }
         addr88:
         §§push(0);
         if(_loc3_)
         {
            addr100:
            if(§§pop() === _loc2_)
            {
               addr102:
               §§push(1);
               if(!_loc3_)
               {
                  addr105:
               }
            }
            else
            {
               §§push(2);
            }
         }
         switch(§§pop())
         {
            case 0:
               if(this.isReady == false)
               {
                  if(_loc4_ || param1)
                  {
                     this.dispose();
                     if(!_loc3_)
                     {
                        addr34:
                        break;
                     }
                  }
                  addr61:
                  break;
               }
               §§goto(addr34);
            case 1:
               this.isReady = false;
               if(_loc4_ || param1)
               {
                  this.§43§.playVideo();
                  if(!_loc4_)
                  {
                  }
                  break;
               }
               §§goto(addr61);
         }
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
               if(_loc2_)
               {
                  removeChild(this.§^!#§);
                  this.§43§.removeEventListener("onError",this.§6H§);
                  if(_loc2_ || _loc1_)
                  {
                     this.§43§.removeEventListener("onStateChange",this.§2b§);
                     if(_loc2_ || this)
                     {
                     }
                     §§goto(addr99);
                  }
                  this.§43§.removeEventListener("onPlaybackQualityChange",this.§70§);
                  this.§43§.destroy();
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr99);
                  }
                  addr99:
                  this.§^!#§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ 5§);
                  §§goto(addr107);
               }
               addr107:
               this.§^!#§ = null;
               if(!_loc1_)
               {
                  this.§%!-§ = null;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr120);
               }
               this.§43§ = null;
               §§goto(addr120);
            }
            §§goto(addr99);
         }
         addr120:
      }
   }
}
