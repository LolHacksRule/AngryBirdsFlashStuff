package §1!i§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §5!L§ extends MovieClip
   {
       
      
      private var §!"%§:Object = null;
      
      private var §9v§:Loader = null;
      
      private var §>!Y§:LoaderContext = null;
      
      private var §4"8§:Boolean;
      
      public function §5!L§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§>!Y§ = new LoaderContext();
               while(true)
               {
                  this.§>!Y§.checkPolicyFile = true;
                  loop2:
                  while(!(_loc4_ && param1))
                  {
                     this.§>!Y§.securityDomain = SecurityDomain.currentDomain;
                     while(!_loc4_)
                     {
                        this.§>!Y§.applicationDomain = ApplicationDomain.currentDomain;
                        while(true)
                        {
                           this.§9v§ = new Loader();
                           while(_loc5_)
                           {
                              continue loop2;
                              if(!(_loc5_ || param2))
                              {
                                 continue loop2;
                              }
                              this.§9v§.contentLoaderInfo.addEventListener(Event.INIT,this.§'C§);
                              while(_loc5_)
                              {
                                 Security.allowDomain("www.youtube.com");
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param2);
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§9v§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                          while(_loc5_)
                                          {
                                             while(true)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          continue loop7;
                                          addr94:
                                       }
                                       while(true)
                                       {
                                          this.§9v§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                          addr108:
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr154);
                              if(!(_loc4_ && param2))
                              {
                                 addr20:
                                 return;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §'C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            addChild(this.§9v§);
            while(true)
            {
               this.§9v§.content.addEventListener("onReady",this.§?#I§);
               while(!_loc3_)
               {
                  this.§9v§.content.addEventListener("onError",this.§`"k§);
                  while(!_loc3_)
                  {
                     while(!(_loc3_ && this))
                     {
                        this.§9v§.content.addEventListener("onPlaybackQualityChange",this.§-#Q§);
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§9v§.content.addEventListener("onStateChange",this.§-"7§);
            §§goto(addr52);
         }
      }
      
      private function §?#I§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!"%§ = this.§9v§.content;
         }
         loop0:
         do
         {
            this.§!"%§.setSize(480,360);
            while(true)
            {
               this.§!"%§.removeEventListener("onReady",this.§?#I§);
               while(!(_loc3_ && this))
               {
                  this.§4"8§ = true;
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc2_ || param1));
         
      }
      
      private function §`"k§(param1:Event) : void
      {
      }
      
      private function §-"7§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(!(_loc3_ && param1))
         {
            §§push(1);
            if(_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_ || this)
                  {
                     addr95:
                     §§push(0);
                     if(!(_loc4_ || param1))
                     {
                        addr132:
                     }
                  }
                  else
                  {
                     addr114:
                     §§push(1);
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr132);
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr114);
                     }
                     else
                     {
                        §§push(2);
                     }
                  }
               }
            }
            loop1:
            switch(§§pop())
            {
               case 0:
                  if(this.§4"8§ == false)
                  {
                     addr55:
                     this.dispose();
                  }
                  addr35:
                  break;
               case 1:
                  this.§4"8§ = false;
                  while(!(_loc3_ && this))
                  {
                     this.§!"%§.playVideo();
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           if(true)
                           {
                              break loop1;
                           }
                           §§goto(addr35);
                        }
                        else
                        {
                           §§goto(addr55);
                        }
                     }
                     break loop1;
                  }
                  §§goto(addr55);
            }
            return;
         }
         §§goto(addr95);
      }
      
      private function §-#Q§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§!"%§ != null)
            {
               loop0:
               while(true)
               {
                  this.§4"8§ = false;
                  while(true)
                  {
                     removeChild(this.§9v§);
                     loop2:
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§!"%§.removeEventListener("onError",this.§`"k§);
                        loop3:
                        while(true)
                        {
                           this.§!"%§.removeEventListener("onStateChange",this.§-"7§);
                           loop4:
                           for(; _loc1_; if(_loc2_ && _loc2_)
                           {
                              continue;
                           },if(_loc2_)
                           {
                              continue loop0;
                           })
                           {
                              this.§!"%§.removeEventListener("onPlaybackQualityChange",this.§-#Q§);
                              loop5:
                              while(true)
                              {
                                 this.§!"%§.destroy();
                                 addr108:
                                 while(true)
                                 {
                                    this.§9v§.contentLoaderInfo.removeEventListener(Event.INIT,this.§'C§);
                                    continue loop3;
                                 }
                                 addr64:
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 this.§!"%§ = null;
                                 addr71:
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr34:
                                    if(_loc2_ && _loc1_)
                                    {
                                       while(true)
                                       {
                                          this.§>!Y§ = null;
                                          addr57:
                                          while(true)
                                          {
                                             if(_loc2_ && _loc2_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr64);
                                             §§goto(addr71);
                                          }
                                          continue loop5;
                                          §§goto(addr34);
                                       }
                                       addr86:
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr57);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr116);
      }
   }
}
