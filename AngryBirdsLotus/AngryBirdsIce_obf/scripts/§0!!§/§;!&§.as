package §0!!§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §;!&§ extends MovieClip
   {
       
      
      private var §!7§:Object = null;
      
      private var §-?§:Loader = null;
      
      private var §]p§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §;!&§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         this.§]p§ = new LoaderContext();
         loop0:
         while(true)
         {
            this.§]p§.checkPolicyFile = true;
            loop1:
            while(true)
            {
               this.§]p§.securityDomain = SecurityDomain.currentDomain;
               while(!_loc5_)
               {
                  continue loop1;
                  this.§-?§ = new Loader();
                  this.§-?§.contentLoaderInfo.addEventListener(Event.INIT,this.§class§);
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  Security.allowDomain("www.youtube.com");
                  addr73:
                  if(param2)
                  {
                     addr74:
                     this.§-?§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                     addr82:
                     §§push(param3);
                     if(_loc4_ || param1)
                     {
                        if(!§§pop())
                        {
                           if(_loc4_ || param2)
                           {
                              if(_loc4_)
                              {
                                 this.§-?§.mouseChildren = false;
                                 §§goto(addr44);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr44);
                        }
                        addr44:
                        if(_loc5_)
                        {
                           §§goto(addr82);
                        }
                        return;
                     }
                     §§goto(addr73);
                  }
                  this.§-?§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                  §§goto(addr74);
               }
               continue loop0;
            }
         }
      }
      
      private function §class§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            addChild(this.§-?§);
         }
         do
         {
            this.§-?§.content.addEventListener("onReady",this.§]!,§);
            do
            {
               this.§-?§.content.addEventListener("onError",this.§83§);
               do
               {
                  this.§-?§.content.addEventListener("onStateChange",this.§4?§);
                  do
                  {
                     this.§-?§.content.addEventListener("onPlaybackQualityChange",this.§`e§);
                  }
                  while(_loc2_);
                  
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(!(_loc3_ || this));
            
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function §]!,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!7§ = this.§-?§.content;
            while(true)
            {
               this.§!7§.setSize(480,360);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§!7§.removeEventListener("onReady",this.§]!,§);
                     do
                     {
                        this.isReady = true;
                     }
                     while(!_loc2_);
                     
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §83§(param1:Event) : void
      {
      }
      
      private function §4?§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_)
         {
            §§push(1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     addr99:
                     §§push(0);
                     if(_loc3_)
                     {
                        addr102:
                     }
                     else
                     {
                        addr116:
                     }
                  }
                  else
                  {
                     addr113:
                     §§push(1);
                     if(_loc3_)
                     {
                        §§goto(addr116);
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
                        §§goto(addr113);
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
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispose();
                           addr66:
                        }
                        break;
                     }
                     addr25:
                     break;
                  case 1:
                     this.isReady = false;
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           this.§!7§.playVideo();
                           if(!_loc4_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           break;
                        }
                        §§goto(addr66);
                        §§goto(addr25);
                     }
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr99);
      }
      
      private function §`e§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§!7§ != null)
            {
               this.isReady = false;
               while(true)
               {
                  removeChild(this.§-?§);
                  while(true)
                  {
                     this.§!7§.removeEventListener("onError",this.§83§);
                     loop2:
                     while(true)
                     {
                        this.§!7§.removeEventListener("onStateChange",this.§4?§);
                        this.§!7§.removeEventListener("onPlaybackQualityChange",this.§`e§);
                        while(true)
                        {
                           this.§!7§.destroy();
                           addr84:
                           while(true)
                           {
                              this.§-?§.contentLoaderInfo.removeEventListener(Event.INIT,this.§class§);
                              this.§-?§ = null;
                              if(!_loc1_)
                              {
                                 break;
                              }
                              this.§]p§ = null;
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               addr132:
            }
            §§goto(addr19);
         }
         §§goto(addr132);
      }
   }
}
