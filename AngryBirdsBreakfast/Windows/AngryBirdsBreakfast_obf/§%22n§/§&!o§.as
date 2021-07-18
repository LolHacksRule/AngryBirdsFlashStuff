package §"n§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §&!o§ extends MovieClip
   {
       
      
      private var §[!h§:Object = null;
      
      private var §7!r§:Loader = null;
      
      private var §@"#§:LoaderContext = null;
      
      private var §;R§:Boolean;
      
      public function §&!o§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§@"#§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§@"#§.checkPolicyFile = true;
                  while(true)
                  {
                     this.§@"#§.securityDomain = SecurityDomain.currentDomain;
                     loop3:
                     while(!_loc5_)
                     {
                        this.§@"#§.applicationDomain = ApplicationDomain.currentDomain;
                        loop4:
                        for(; _loc4_; while(true)
                        {
                           if(_loc4_ || param3)
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              addr23:
                           }
                           continue loop4;
                           loop10:
                           while(true)
                           {
                              §§push(param3);
                              if(_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          this.§7!r§.mouseChildren = false;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop10;
                                             }
                                             continue loop3;
                                          }
                                          addr70:
                                          while(!_loc5_)
                                          {
                                             this.§7!r§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                             continue loop4;
                                          }
                                          continue loop7;
                                       }
                                       continue loop9;
                                    }
                                 }
                                 break;
                              }
                              continue loop8;
                           }
                           return;
                        })
                        {
                           this.§7!r§ = new Loader();
                           while(true)
                           {
                              this.§7!r§.contentLoaderInfo.addEventListener(Event.INIT,this.§;"&§);
                              while(!_loc5_)
                              {
                                 Security.allowDomain("www.youtube.com");
                                 while(!_loc5_)
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§7!r§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                          while(true)
                                          {
                                             §§goto(addr23);
                                          }
                                       }
                                       §§goto(addr70);
                                    }
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      private function §;"&§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            addChild(this.§7!r§);
            loop0:
            while(true)
            {
               this.§7!r§.content.addEventListener("onReady",this.§0!X§);
               while(true)
               {
                  this.§7!r§.content.addEventListener("onError",this.§;#§);
                  while(_loc2_)
                  {
                     this.§7!r§.content.addEventListener("onStateChange",this.§^j§);
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.§7!r§.content.addEventListener("onPlaybackQualityChange",this.§>!I§);
                           if(_loc2_ || param1)
                           {
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
         §§goto(addr61);
      }
      
      private function §0!X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[!h§ = this.§7!r§.content;
            while(true)
            {
               this.§[!h§.setSize(480,360);
               loop1:
               while(_loc2_)
               {
                  this.§[!h§.removeEventListener("onReady",this.§0!X§);
                  while(true)
                  {
                     this.§;R§ = true;
                     if(_loc2_ || param1)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §;#§(param1:Event) : void
      {
      }
      
      private function §^j§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_ || _loc3_)
         {
            §§push(1);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr94:
                     §§push(0);
                     if(_loc4_)
                     {
                        addr126:
                     }
                  }
                  else
                  {
                     addr108:
                     §§push(1);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr126);
                     }
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr108);
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
                     if(this.§;R§ == false)
                     {
                        addr49:
                        this.dispose();
                     }
                     addr30:
                     break;
                  case 1:
                     this.§;R§ = false;
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              this.§[!h§.playVideo();
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              break;
                           }
                           §§goto(addr49);
                           §§goto(addr30);
                        }
                        §§goto(addr49);
                     }
               }
               return;
            }
            §§goto(addr126);
         }
         §§goto(addr94);
      }
      
      private function §>!I§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§[!h§ != null)
            {
               if(_loc2_)
               {
                  this.§;R§ = false;
               }
               loop0:
               while(true)
               {
                  removeChild(this.§7!r§);
                  loop1:
                  while(true)
                  {
                     this.§[!h§.removeEventListener("onError",this.§;#§);
                     while(true)
                     {
                        this.§[!h§.removeEventListener("onStateChange",this.§^j§);
                        continue loop0;
                        addr60:
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        this.§7!r§ = null;
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           addr58:
                           while(_loc2_)
                           {
                              §§goto(addr60);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§[!h§.destroy();
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr112);
      }
   }
}
