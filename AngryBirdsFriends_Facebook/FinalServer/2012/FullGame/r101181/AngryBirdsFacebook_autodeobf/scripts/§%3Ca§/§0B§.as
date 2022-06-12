package §<a§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §0B§ extends MovieClip
   {
       
      
      private var §`"§:Object = null;
      
      private var §]D§:Loader = null;
      
      private var §="!§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §0B§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§="!§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§="!§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§="!§.securityDomain = SecurityDomain.currentDomain;
                     while(true)
                     {
                        this.§="!§.applicationDomain = ApplicationDomain.currentDomain;
                        addr176:
                        while(true)
                        {
                           this.§]D§ = new Loader();
                           while(true)
                           {
                              this.§]D§.contentLoaderInfo.addEventListener(Event.INIT,this.§,!5§);
                              addr153:
                              while(true)
                              {
                                 Security.allowDomain("www.youtube.com");
                              }
                              addr63:
                              if(!(_loc4_ && param1))
                              {
                                 continue loop2;
                              }
                           }
                           addr116:
                           if(_loc5_ || param1)
                           {
                              continue loop0;
                           }
                        }
                        addr43:
                        if(!(_loc4_ && param2))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      private function §,!5§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            addChild(this.§]D§);
            while(true)
            {
               this.§]D§.content.addEventListener("onReady",this.§[7§);
               loop1:
               while(_loc2_ || param1)
               {
                  this.§]D§.content.addEventListener("onError",this.§ "=§);
                  while(true)
                  {
                     this.§]D§.content.addEventListener("onStateChange",this.§;!w§);
                     while(_loc2_ || this)
                     {
                        this.§]D§.content.addEventListener("onPlaybackQualityChange",this.§5!;§);
                        if(!_loc3_)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr50);
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §[7§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`"§ = this.§]D§.content;
            while(true)
            {
               this.§`"§.setSize(480,360);
            }
            addr79:
         }
         loop1:
         do
         {
            this.§`"§.removeEventListener("onReady",this.§[7§);
            while(!_loc3_)
            {
               this.isReady = true;
               if(!_loc3_)
               {
                  continue loop1;
               }
            }
            §§goto(addr79);
         }
         while(!(_loc2_ || param1));
         
      }
      
      private function § "=§(param1:Event) : void
      {
      }
      
      private function §;!w§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(!(_loc4_ && _loc3_))
         {
            §§push(1);
            if(_loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr108);
               }
               else
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     §§goto(addr106);
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr102);
         }
         addr99:
         §§push(0);
         if(!_loc3_)
         {
            addr106:
            if(§§pop() === _loc2_)
            {
               addr108:
               §§push(1);
               if(!(_loc4_ && this))
               {
                  addr116:
               }
            }
            else
            {
               §§push(2);
            }
         }
         else
         {
            addr102:
         }
         loop1:
         switch(§§pop())
         {
            case 0:
               if(this.isReady == false)
               {
                  if(_loc3_)
                  {
                     this.dispose();
                  }
                  addr66:
               }
               addr39:
               break;
            case 1:
               this.isReady = false;
               while(true)
               {
                  this.§`"§.playVideo();
                  if(!(_loc3_ || this))
                  {
                     break loop1;
                  }
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                  }
                  else
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr39);
               }
         }
      }
      
      private function §5!;§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§`"§ != null)
            {
               while(true)
               {
                  this.isReady = false;
                  addr150:
                  while(true)
                  {
                     removeChild(this.§]D§);
                     loop2:
                     while(true)
                     {
                        this.§`"§.removeEventListener("onError",this.§ "=§);
                        addr136:
                        while(true)
                        {
                           this.§`"§.removeEventListener("onStateChange",this.§;!w§);
                           addr128:
                           while(true)
                           {
                              this.§`"§.removeEventListener("onPlaybackQualityChange",this.§5!;§);
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr150);
      }
   }
}
