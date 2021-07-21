package §'@§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §25§ extends MovieClip
   {
       
      
      private var §6j§:Object = null;
      
      private var §-<§:Loader = null;
      
      private var §6![§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §25§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§6![§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§6![§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§6![§.securityDomain = SecurityDomain.currentDomain;
                     loop3:
                     while(true)
                     {
                        this.§6![§.applicationDomain = ApplicationDomain.currentDomain;
                        loop4:
                        while(_loc5_)
                        {
                           this.§-<§ = new Loader();
                           loop5:
                           while(!_loc4_)
                           {
                              this.§-<§.contentLoaderInfo.addEventListener(Event.INIT,this.§3"1§);
                              loop6:
                              while(true)
                              {
                                 Security.allowDomain("www.youtube.com");
                                 loop7:
                                 for(; _loc5_; while(_loc5_ || this)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr24:
                                       continue loop7;
                                    }
                                    continue loop6;
                                    return;
                                 })
                                 {
                                    §§push(param2);
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§-<§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                             addr91:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param3);
                                             if(!(_loc4_ && param2))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         this.§-<§.mouseChildren = false;
                                                         addr42:
                                                         if(!_loc5_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            addr46:
                                                            break;
                                                         }
                                                         §§goto(addr73);
                                                      }
                                                      §§goto(addr91);
                                                   }
                                                   §§goto(addr42);
                                                }
                                                break;
                                             }
                                             continue loop8;
                                             addr107:
                                          }
                                       }
                                       this.§-<§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                       §§goto(addr24);
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
               if(_loc4_ && param3)
               {
                  continue;
               }
               §§goto(addr107);
            }
         }
         §§goto(addr46);
      }
      
      private function §3"1§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            addChild(this.§-<§);
            loop0:
            while(true)
            {
               this.§-<§.content.addEventListener("onReady",this.§'w§);
               while(true)
               {
                  this.§-<§.content.addEventListener("onError",this.§<Q§);
                  while(!(_loc3_ && param1))
                  {
                     this.§-<§.content.addEventListener("onStateChange",this.§?!4§);
                     loop3:
                     while(_loc2_ || param1)
                     {
                        while(true)
                        {
                           this.§-<§.content.addEventListener("onPlaybackQualityChange",this.§!o§);
                           if(_loc2_ || param1)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §'w§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§6j§ = this.§-<§.content;
            loop0:
            while(true)
            {
               this.§6j§.setSize(480,360);
               while(true)
               {
                  this.§6j§.removeEventListener("onReady",this.§'w§);
                  loop2:
                  while(_loc2_ || this)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.isReady = true;
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §<Q§(param1:Event) : void
      {
      }
      
      private function §?!4§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(!_loc4_)
         {
            §§push(1);
            if(_loc3_ || this)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!(_loc3_ || _loc3_))
                     {
                        addr121:
                     }
                  }
                  else
                  {
                     addr103:
                     §§push(1);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr121);
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(!(_loc4_ && param1))
                  {
                     addr101:
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr103);
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
                        if(!_loc4_)
                        {
                           this.dispose();
                           addr51:
                        }
                        break;
                     }
                     addr27:
                     break;
                  case 1:
                     this.isReady = false;
                     if(_loc3_ || this)
                     {
                        this.§6j§.playVideo();
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
                              §§goto(addr51);
                           }
                           §§goto(addr27);
                        }
                        break;
                     }
               }
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr103);
      }
      
      private function §!o§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§6j§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§-<§);
                     loop2:
                     while(true)
                     {
                        this.§6j§.removeEventListener("onError",this.§<Q§);
                        loop3:
                        do
                        {
                           this.§6j§.removeEventListener("onStateChange",this.§?!4§);
                           while(true)
                           {
                              this.§6j§.removeEventListener("onPlaybackQualityChange",this.§!o§);
                              loop5:
                              while(_loc2_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    this.§6j§.destroy();
                                    while(_loc2_)
                                    {
                                       this.§-<§.contentLoaderInfo.removeEventListener(Event.INIT,this.§3"1§);
                                       do
                                       {
                                          this.§-<§ = null;
                                          do
                                          {
                                             this.§6![§ = null;
                                             while(!(_loc1_ && _loc2_))
                                             {
                                                this.§6j§ = null;
                                                if(_loc1_ && this)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr35);
                                             }
                                             continue loop5;
                                          }
                                          while(_loc1_ && _loc1_);
                                          
                                       }
                                       while(_loc1_ && _loc2_);
                                       
                                       if(!_loc1_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        continue loop0;
                     }
                  }
               }
               addr163:
            }
            return;
         }
         §§goto(addr163);
      }
   }
}
