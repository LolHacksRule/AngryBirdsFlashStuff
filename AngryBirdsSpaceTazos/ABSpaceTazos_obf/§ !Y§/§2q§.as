package § !Y§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §2q§ extends MovieClip
   {
       
      
      private var §'!L§:Object = null;
      
      private var §6!u§:Loader = null;
      
      private var §1X§:LoaderContext = null;
      
      private var §+y§:Boolean;
      
      public function §2q§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§1X§ = new LoaderContext();
               addr180:
               while(true)
               {
                  this.§1X§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§1X§.securityDomain = SecurityDomain.currentDomain;
                     while(true)
                     {
                        this.§1X§.applicationDomain = ApplicationDomain.currentDomain;
                        while(!(_loc4_ && param2))
                        {
                           if(!_loc4_)
                           {
                              this.§6!u§ = new Loader();
                              while(_loc5_ || param1)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      private function §<"C§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addChild(this.§6!u§);
            do
            {
               this.§6!u§.content.addEventListener("onReady",this.§#!d§);
               do
               {
                  this.§6!u§.content.addEventListener("onError",this.§>!^§);
                  do
                  {
                     this.§6!u§.content.addEventListener("onStateChange",this.§#!H§);
                     do
                     {
                        this.§6!u§.content.addEventListener("onPlaybackQualityChange",this.§7!,§);
                     }
                     while(_loc2_);
                     
                  }
                  while(!(_loc3_ || _loc2_));
                  
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_ && param1);
            
         }
      }
      
      private function §#!d§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§'!L§ = this.§6!u§.content;
            loop0:
            while(true)
            {
               this.§'!L§.setSize(480,360);
               do
               {
                  this.§'!L§.removeEventListener("onReady",this.§#!d§);
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      private function §>!^§(param1:Event) : void
      {
      }
      
      private function §#!H§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(!_loc3_)
         {
            §§push(1);
            if(_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_)
                  {
                     addr85:
                     §§push(0);
                     if(!_loc4_)
                     {
                        addr117:
                     }
                  }
                  else
                  {
                     addr99:
                     §§push(1);
                     if(_loc4_ || param1)
                     {
                        §§goto(addr117);
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc4_ || param1)
                  {
                     addr97:
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr99);
                     }
                     else
                     {
                        §§push(2);
                     }
                  }
               }
               loop1:
               switch(§§pop())
               {
                  case 0:
                     if(this.§+y§ == false)
                     {
                        if(_loc4_)
                        {
                           this.dispose();
                        }
                        addr67:
                     }
                     addr33:
                     break;
                  case 1:
                     this.§+y§ = false;
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§'!L§.playVideo();
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           continue;
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr33);
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr85);
      }
      
      private function §7!,§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§'!L§ != null)
            {
               loop0:
               while(true)
               {
                  this.§+y§ = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§6!u§);
                     loop2:
                     while(true)
                     {
                        this.§'!L§.removeEventListener("onError",this.§>!^§);
                        while(!_loc2_)
                        {
                           this.§'!L§.removeEventListener("onStateChange",this.§#!H§);
                           while(_loc1_)
                           {
                              this.§'!L§.removeEventListener("onPlaybackQualityChange",this.§7!,§);
                              loop5:
                              while(_loc1_)
                              {
                                 this.§'!L§.destroy();
                                 while(_loc1_ || _loc2_)
                                 {
                                    this.§6!u§.contentLoaderInfo.removeEventListener(Event.INIT,this.§<"C§);
                                    while(_loc1_)
                                    {
                                       continue loop2;
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          this.§1X§ = null;
                                          do
                                          {
                                             if(_loc1_)
                                             {
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          while(this.§'!L§ = null, _loc2_);
                                          
                                          if(_loc1_)
                                          {
                                             §§goto(addr19);
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr79);
      }
   }
}
