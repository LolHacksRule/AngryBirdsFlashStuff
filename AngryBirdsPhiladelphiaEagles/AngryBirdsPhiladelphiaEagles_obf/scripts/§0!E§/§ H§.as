package §0!E§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class § H§ extends MovieClip
   {
       
      
      private var §=P§:Object = null;
      
      private var §3P§:Loader = null;
      
      private var §9o§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function § H§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§9o§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§9o§.checkPolicyFile = true;
                  this.§9o§.securityDomain = SecurityDomain.currentDomain;
                  this.§9o§.applicationDomain = ApplicationDomain.currentDomain;
                  addr139:
                  loop2:
                  while(true)
                  {
                     this.§3P§ = new Loader();
                     this.§3P§.contentLoaderInfo.addEventListener(Event.INIT,this.§,J§);
                     Security.allowDomain("www.youtube.com");
                     addr87:
                     while(true)
                     {
                        if(_loc4_ || param2)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  addr47:
                  this.§3P§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                  if(!(_loc4_ || param3))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!(_loc5_ && param3))
                     {
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              this.§3P§.mouseChildren = false;
                           }
                           else
                           {
                              §§goto(addr87);
                           }
                        }
                        return;
                     }
                     addr78:
                     while(true)
                     {
                        if(§§pop())
                        {
                           this.§3P§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                           §§goto(addr87);
                        }
                        else
                        {
                           §§goto(addr47);
                        }
                     }
                     continue loop1;
                  }
                  §§goto(addr139);
               }
            }
         }
         while(true)
         {
            §§goto(addr78);
         }
      }
      
      private function §,J§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            addChild(this.§3P§);
            loop0:
            while(true)
            {
               this.§3P§.content.addEventListener("onReady",this.§7!%§);
               loop1:
               do
               {
                  this.§3P§.content.addEventListener("onError",this.§&_§);
                  while(_loc2_)
                  {
                     this.§3P§.content.addEventListener("onStateChange",this.§>!0§);
                     while(!(_loc3_ && param1))
                     {
                        this.§3P§.content.addEventListener("onPlaybackQualityChange",this.§[!,§);
                        if(!(_loc3_ && param1))
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      private function §7!%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=P§ = this.§3P§.content;
            loop0:
            while(true)
            {
               this.§=P§.setSize(480,360);
               while(true)
               {
                  this.§=P§.removeEventListener("onReady",this.§7!%§);
                  addr63:
                  while(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.isReady = true;
            if(_loc3_ || _loc3_)
            {
               break;
            }
            §§goto(addr63);
         }
      }
      
      private function §&_§(param1:Event) : void
      {
      }
      
      private function §>!0§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(!_loc4_)
         {
            §§push(1);
            if(_loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_ || this)
                  {
                     addr89:
                     §§push(0);
                     if(_loc4_ && param1)
                     {
                     }
                  }
                  else
                  {
                     addr118:
                     §§push(1);
                     if(_loc3_ || param1)
                     {
                        addr126:
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr118);
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
                        addr64:
                        this.dispose();
                     }
                     addr25:
                     break;
                  case 1:
                     this.isReady = false;
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              this.§=P§.playVideo();
                              if(!_loc4_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              break;
                           }
                           §§goto(addr64);
                           §§goto(addr25);
                        }
                        §§goto(addr64);
                     }
               }
               return;
            }
            §§goto(addr126);
         }
         §§goto(addr89);
      }
      
      private function §[!,§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§=P§ != null)
         {
            this.isReady = false;
            removeChild(this.§3P§);
            while(true)
            {
               this.§=P§.removeEventListener("onError",this.§&_§);
               this.§=P§.removeEventListener("onStateChange",this.§>!0§);
               while(true)
               {
                  this.§=P§.removeEventListener("onPlaybackQualityChange",this.§[!,§);
                  do
                  {
                     this.§=P§.destroy();
                  }
                  while(_loc1_);
                  
                  this.§3P§.contentLoaderInfo.removeEventListener(Event.INIT,this.§,J§);
                  if(!(_loc2_ || this))
                  {
                     break;
                  }
                  this.§3P§ = null;
                  while(_loc2_ || _loc2_)
                  {
                     this.§9o§ = null;
                     do
                     {
                        this.§=P§ = null;
                     }
                     while(_loc1_);
                     
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr18);
                  }
               }
            }
         }
         addr18:
      }
   }
}
