package §+!B§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §6P§ extends MovieClip
   {
       
      
      private var §3j§:Object = null;
      
      private var §;$§:Loader = null;
      
      private var §3!K§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §6P§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(!_loc5_)
            {
               this.§3!K§ = new LoaderContext();
               if(_loc4_ || param2)
               {
                  this.§3!K§.checkPolicyFile = true;
                  if(!_loc5_)
                  {
                     this.§3!K§.securityDomain = SecurityDomain.currentDomain;
                  }
                  this.§3!K§.applicationDomain = ApplicationDomain.currentDomain;
                  this.§;$§ = new Loader();
                  if(!_loc5_)
                  {
                     this.§;$§.contentLoaderInfo.addEventListener(Event.INIT,this.§5'§);
                     Security.allowDomain("www.youtube.com");
                     if(!_loc5_)
                     {
                        §§push(param2);
                        if(_loc4_)
                        {
                           if(!§§pop())
                           {
                              this.§;$§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                              if(_loc4_)
                              {
                                 §§goto(addr115);
                              }
                           }
                           §§goto(addr121);
                        }
                        if(§§pop())
                        {
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr121);
         }
         addr121:
         if(_loc4_)
         {
            addr94:
            this.§;$§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
            addr115:
            §§push(param3);
         }
         this.§;$§.mouseChildren = false;
      }
      
      private function §5'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            addChild(this.§;$§);
            if(!_loc2_)
            {
               this.§;$§.content.addEventListener("onReady",this.§9!?§);
               if(!_loc2_)
               {
                  this.§;$§.content.addEventListener("onError",this.§%"§);
                  addr49:
                  if(!(_loc2_ && param1))
                  {
                     this.§;$§.content.addEventListener("onStateChange",this.§6!H§);
                     if(_loc3_ || param1)
                     {
                        addr87:
                        this.§;$§.content.addEventListener("onPlaybackQualityChange",this.§,n§);
                     }
                     return;
                  }
               }
            }
            §§goto(addr87);
         }
         §§goto(addr49);
      }
      
      private function §9!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§3j§ = this.§;$§.content;
            if(!_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr48);
         }
         addr41:
         this.§3j§.setSize(480,360);
         if(_loc3_)
         {
            addr48:
            this.§3j§.removeEventListener("onReady",this.§9!?§);
            if(_loc3_)
            {
               this.isReady = true;
            }
         }
      }
      
      private function §%"§(param1:Event) : void
      {
      }
      
      private function §6!H§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(_loc4_ || _loc3_)
         {
            §§push(1);
            if(_loc4_ || param1)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr107:
                     §§push(1);
                     if(!(_loc3_ && param1))
                     {
                        addr115:
                     }
                  }
                  §§goto(addr120);
               }
               else
               {
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr107);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr120:
                     switch(§§pop())
                     {
                        case 0:
                           if(this.isReady == false)
                           {
                              if(_loc4_)
                              {
                                 this.dispose();
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr34:
                                    break;
                                 }
                                 addr41:
                                 this.§3j§.playVideo();
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              }
                              break;
                           }
                           §§goto(addr34);
                        case 1:
                           this.isReady = false;
                           if(_loc4_)
                           {
                              §§goto(addr41);
                           }
                     }
                     return;
                  }
               }
            }
            §§goto(addr115);
         }
         §§goto(addr107);
      }
      
      private function §,n§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§3j§ != null)
            {
               this.isReady = false;
               removeChild(this.§;$§);
               this.§3j§.removeEventListener("onError",this.§%"§);
               if(_loc1_ || _loc2_)
               {
                  this.§3j§.removeEventListener("onStateChange",this.§6!H§);
                  this.§3j§.removeEventListener("onPlaybackQualityChange",this.§,n§);
                  if(_loc1_ || _loc1_)
                  {
                     this.§3j§.destroy();
                     addr84:
                     this.§;$§.contentLoaderInfo.removeEventListener(Event.INIT,this.§5'§);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr99:
                        this.§;$§ = null;
                        this.§3!K§ = null;
                     }
                  }
                  this.§3j§ = null;
                  §§goto(addr108);
               }
               §§goto(addr99);
            }
            addr108:
            return;
         }
         §§goto(addr84);
      }
   }
}
