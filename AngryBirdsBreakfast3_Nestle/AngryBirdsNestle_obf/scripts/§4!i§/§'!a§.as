package §4!i§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §'!a§ extends MovieClip
   {
       
      
      private var §;o§:Object = null;
      
      private var §8!N§:Loader = null;
      
      private var §%!§:LoaderContext = null;
      
      private var §#J§:Boolean;
      
      public function §'!a§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§%!§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§%!§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§%!§.securityDomain = SecurityDomain.currentDomain;
                     loop3:
                     while(true)
                     {
                        this.§%!§.applicationDomain = ApplicationDomain.currentDomain;
                        loop4:
                        while(true)
                        {
                           this.§8!N§ = new Loader();
                           while(true)
                           {
                              this.§8!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§=!§);
                              continue loop3;
                              addr121:
                              while(!(_loc5_ && this))
                              {
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(param2);
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§8!N§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                       while(true)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                          addr116:
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                          addr46:
                                          if(!(_loc5_ && param3))
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr19:
                                    }
                                    continue loop0;
                                    return;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      private function §=!§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            addChild(this.§8!N§);
            while(true)
            {
               this.§8!N§.content.addEventListener("onReady",this.§#r§);
            }
            addr101:
         }
         loop1:
         do
         {
            this.§8!N§.content.addEventListener("onError",this.§-N§);
            while(_loc2_)
            {
               this.§8!N§.content.addEventListener("onStateChange",this.§;s§);
               while(!(_loc3_ && _loc3_))
               {
                  this.§8!N§.content.addEventListener("onPlaybackQualityChange",this.§?g§);
                  if(!_loc3_)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr101);
         }
         while(!_loc2_);
         
      }
      
      private function §#r§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§;o§ = this.§8!N§.content;
            loop0:
            while(true)
            {
               this.§;o§.setSize(480,360);
               do
               {
                  this.§;o§.removeEventListener("onReady",this.§#r§);
                  continue loop0;
               }
               while(!(_loc2_ || _loc3_));
               
            }
         }
      }
      
      private function §-N§(param1:Event) : void
      {
      }
      
      private function §;s§(param1:Event) : void
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
                  if(!_loc4_)
                  {
                     addr79:
                     §§push(0);
                     if(!_loc3_)
                     {
                        addr111:
                     }
                  }
                  else
                  {
                     addr93:
                     §§push(1);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr111);
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr93);
                     }
                     else
                     {
                        §§push(2);
                     }
                  }
               }
            }
            switch(§§pop())
            {
               case 0:
                  if(this.§#J§ == false)
                  {
                     addr49:
                     this.dispose();
                     addr61:
                  }
                  addr27:
                  break;
               case 1:
                  this.§#J§ = false;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!_loc4_)
                     {
                        this.§;o§.playVideo();
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr61);
                           }
                           §§goto(addr27);
                        }
                        break;
                     }
                     §§goto(addr49);
                     §§goto(addr49);
                  }
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function §?g§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§;o§ != null)
            {
               loop0:
               while(true)
               {
                  this.§#J§ = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§8!N§);
                     loop2:
                     while(true)
                     {
                        this.§;o§.removeEventListener("onError",this.§-N§);
                        loop3:
                        while(_loc1_ || this)
                        {
                           this.§;o§.removeEventListener("onStateChange",this.§;s§);
                           loop4:
                           while(!_loc2_)
                           {
                              this.§;o§.removeEventListener("onPlaybackQualityChange",this.§?g§);
                              while(!_loc2_)
                              {
                                 this.§;o§.destroy();
                                 loop6:
                                 while(true)
                                 {
                                    this.§8!N§.contentLoaderInfo.removeEventListener(Event.INIT,this.§=!§);
                                    addr79:
                                    while(_loc1_)
                                    {
                                       while(true)
                                       {
                                          this.§8!N§ = null;
                                          continue loop6;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 while(_loc1_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§;o§ = null;
                                       if(!_loc1_)
                                       {
                                          continue;
                                       }
                                       if(_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr79);
                                          }
                                          §§goto(addr33);
                                       }
                                       §§goto(addr52);
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr81);
      }
   }
}
