package §9@§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §+"Z§ extends MovieClip
   {
       
      
      private var §=!h§:Object = null;
      
      private var §2!H§:Loader = null;
      
      private var §-!A§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §+"Z§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§-!A§ = new LoaderContext();
               addr189:
               while(true)
               {
                  this.§-!A§.checkPolicyFile = true;
                  addr183:
                  while(true)
                  {
                     this.§-!A§.securityDomain = SecurityDomain.currentDomain;
                  }
               }
            }
            addr192:
         }
         loop3:
         while(true)
         {
            this.§-!A§.applicationDomain = ApplicationDomain.currentDomain;
            while(true)
            {
               this.§2!H§ = new Loader();
               while(true)
               {
                  this.§2!H§.contentLoaderInfo.addEventListener(Event.INIT,this.§?"O§);
                  loop6:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        Security.allowDomain("www.youtube.com");
                        loop7:
                        while(true)
                        {
                           §§push(param2);
                           addr107:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    this.§2!H§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                 }
                                 continue loop7;
                              }
                              this.§2!H§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                              continue loop6;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr192);
                     }
                     §§goto(addr183);
                  }
                  if(_loc4_ || param1)
                  {
                     continue loop3;
                  }
               }
               if(!(_loc4_ || param3))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  this.§2!H§.mouseChildren = false;
                  §§goto(addr50);
               }
               §§goto(addr189);
            }
         }
      }
      
      private function §?"O§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            addChild(this.§2!H§);
            loop0:
            while(true)
            {
               this.§2!H§.content.addEventListener("onReady",this.§ h§);
               while(true)
               {
                  this.§2!H§.content.addEventListener("onError",this.§@"8§);
                  while(_loc2_)
                  {
                     while(_loc2_ || this)
                     {
                        if(!_loc3_)
                        {
                           this.§2!H§.content.addEventListener("onPlaybackQualityChange",this.§;!5§);
                           if(!_loc3_)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§2!H§.content.addEventListener("onStateChange",this.§6<§);
            §§goto(addr52);
         }
      }
      
      private function § h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!h§ = this.§2!H§.content;
            loop0:
            do
            {
               this.§=!h§.setSize(480,360);
               while(true)
               {
                  this.§=!h§.removeEventListener("onReady",this.§ h§);
                  while(!_loc2_)
                  {
                     this.isReady = true;
                     if(_loc3_ || param1)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      private function §@"8§(param1:Event) : void
      {
      }
      
      private function §6<§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_ || this)
         {
            §§push(1);
            if(_loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr99:
                     §§push(0);
                     if(!_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr123:
                     §§push(1);
                     if(_loc3_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr136);
               }
               else
               {
                  §§push(0);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr123);
                     }
                     else
                     {
                        addr136:
                        switch(§§pop())
                        {
                           case 0:
                              if(this.isReady == false)
                              {
                                 addr69:
                                 this.dispose();
                                 addr71:
                              }
                              addr37:
                              break;
                           case 1:
                              this.isReady = false;
                              if(_loc3_)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    this.§=!h§.playVideo();
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr71);
                                       }
                                       §§goto(addr37);
                                    }
                                    break;
                                 }
                                 §§goto(addr69);
                                 §§goto(addr69);
                              }
                        }
                        return;
                        §§push(2);
                     }
                     §§goto(addr136);
                  }
               }
            }
            §§goto(addr136);
         }
         §§goto(addr99);
      }
      
      private function §;!5§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§=!h§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  while(true)
                  {
                     removeChild(this.§2!H§);
                     while(_loc1_ || _loc2_)
                     {
                        this.§=!h§.removeEventListener("onError",this.§@"8§);
                        loop3:
                        for(; !(_loc2_ && _loc2_); while(_loc1_ || _loc2_)
                        {
                           this.§=!h§.destroy();
                           §§goto(addr91);
                        })
                        {
                           this.§=!h§.removeEventListener("onStateChange",this.§6<§);
                           while(true)
                           {
                              this.§=!h§.removeEventListener("onPlaybackQualityChange",this.§;!5§);
                              continue loop3;
                              loop7:
                              while(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    this.§2!H§ = null;
                                    loop8:
                                    while(true)
                                    {
                                       this.§-!A§ = null;
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                    addr19:
                                    return;
                                    addr43:
                                    addr57:
                                 }
                                 continue loop0;
                                 if(!(_loc1_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§goto(addr43);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§2!H§.contentLoaderInfo.removeEventListener(Event.INIT,this.§?"O§);
                                       continue loop7;
                                    }
                                    addr91:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr57);
      }
   }
}
