package §8!Q§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §`!n§ extends MovieClip
   {
       
      
      private var §'!A§:Object = null;
      
      private var §&3§:Loader = null;
      
      private var §3;§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §`!n§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         if(_loc4_ || param2)
         {
            this.§3;§ = new LoaderContext();
            this.§3;§.checkPolicyFile = true;
            this.§3;§.securityDomain = SecurityDomain.currentDomain;
            this.§3;§.applicationDomain = ApplicationDomain.currentDomain;
            if(!(_loc5_ && param1))
            {
               this.§&3§ = new Loader();
               if(!_loc5_)
               {
                  this.§&3§.contentLoaderInfo.addEventListener(Event.INIT,this.§+!o§);
                  if(!_loc5_)
                  {
                     Security.allowDomain("www.youtube.com");
                     if(_loc4_ || param2)
                     {
                        §§goto(addr86);
                     }
                     §§goto(addr113);
                  }
                  addr86:
                  §§push(param2);
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        this.§&3§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                        addr124:
                        §§push(param3);
                        addr113:
                     }
                     else
                     {
                        this.§&3§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                        §§goto(addr124);
                     }
                     §§goto(addr124);
                  }
                  if(!§§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        this.§&3§.mouseChildren = false;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr124);
      }
      
      private function §+!o§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            addChild(this.§&3§);
            if(_loc2_ || _loc3_)
            {
               this.§&3§.content.addEventListener("onReady",this.§=!v§);
               if(!_loc3_)
               {
                  this.§&3§.content.addEventListener("onError",this.§#,§);
                  if(_loc2_ || _loc3_)
                  {
                     this.§&3§.content.addEventListener("onStateChange",this.§"!R§);
                     if(_loc2_)
                     {
                        addr81:
                        this.§&3§.content.addEventListener("onPlaybackQualityChange",this.§^!T§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function §=!v§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§'!A§ = this.§&3§.content;
            if(!(_loc3_ && param1))
            {
               this.§'!A§.setSize(480,360);
               if(!_loc3_)
               {
                  this.§'!A§.removeEventListener("onReady",this.§=!v§);
                  if(!_loc3_)
                  {
                     addr70:
                     this.isReady = true;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §#,§(param1:Event) : void
      {
      }
      
      private function §"!R§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_)
         {
            §§push(1);
            if(_loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr96:
                     §§push(1);
                     if(_loc3_)
                     {
                        addr99:
                     }
                  }
                  §§goto(addr104);
               }
               else
               {
                  §§push(0);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr96);
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
                              if(_loc3_)
                              {
                                 this.dispose();
                                 if(_loc4_)
                                 {
                                 }
                                 break;
                              }
                           }
                           break;
                        case 1:
                           this.isReady = false;
                           if(_loc3_ || this)
                           {
                              this.§'!A§.playVideo();
                              if(_loc3_)
                              {
                                 break;
                              }
                              break;
                           }
                     }
                     return;
                  }
               }
            }
            §§goto(addr99);
         }
         §§goto(addr96);
      }
      
      private function §^!T§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§'!A§ != null)
            {
               this.isReady = false;
               removeChild(this.§&3§);
               if(_loc1_)
               {
                  this.§'!A§.removeEventListener("onError",this.§#,§);
                  this.§'!A§.removeEventListener("onStateChange",this.§"!R§);
                  if(!_loc2_)
                  {
                     addr60:
                     this.§'!A§.removeEventListener("onPlaybackQualityChange",this.§^!T§);
                     if(_loc1_ || this)
                     {
                        this.§'!A§.destroy();
                        if(!_loc2_)
                        {
                           this.§&3§.contentLoaderInfo.removeEventListener(Event.INIT,this.§+!o§);
                           this.§&3§ = null;
                           this.§3;§ = null;
                           if(_loc2_)
                           {
                           }
                        }
                     }
                     §§goto(addr107);
                  }
                  this.§'!A§ = null;
               }
            }
            addr107:
            return;
         }
         §§goto(addr60);
      }
   }
}
