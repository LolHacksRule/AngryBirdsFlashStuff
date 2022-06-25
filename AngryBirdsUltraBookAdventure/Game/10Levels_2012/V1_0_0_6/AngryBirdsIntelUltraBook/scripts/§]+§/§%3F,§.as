package §]+§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §?,§ extends MovieClip
   {
       
      
      private var §+!d§:Object = null;
      
      private var §`!a§:Loader = null;
      
      private var §[,§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §?,§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§[,§ = new LoaderContext();
               loop1:
               while(true)
               {
                  this.§[,§.checkPolicyFile = true;
                  loop2:
                  while(true)
                  {
                     this.§[,§.securityDomain = SecurityDomain.currentDomain;
                     loop3:
                     while(true)
                     {
                        this.§[,§.applicationDomain = ApplicationDomain.currentDomain;
                        while(true)
                        {
                           this.§`!a§ = new Loader();
                           continue loop3;
                           addr107:
                           loop7:
                           for(; _loc4_ || param3; if(!(_loc4_ || param1))
                           {
                              continue;
                           },§§goto(addr19))
                           {
                              §§push(param2);
                              loop8:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       this.§`!a§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                       while(!_loc5_)
                                       {
                                          continue loop2;
                                          if(!(_loc4_ || param2))
                                          {
                                             continue;
                                          }
                                          this.§`!a§.mouseChildren = false;
                                          if(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop9;
                                          }
                                          addr71:
                                          addr71:
                                          addr71:
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       addr124:
                                       while(_loc4_ || param2)
                                       {
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 else
                                 {
                                    this.§`!a§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                    §§goto(addr71);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §>!_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            addChild(this.§`!a§);
            while(true)
            {
               this.§`!a§.content.addEventListener("onReady",this.§7"§);
               while(!(_loc3_ && param1))
               {
                  this.§`!a§.content.addEventListener("onError",this.§with§);
                  while(_loc2_ || _loc2_)
                  {
                     this.§`!a§.content.addEventListener("onStateChange",this.§3!j§);
                     while(_loc2_)
                     {
                        this.§`!a§.content.addEventListener("onPlaybackQualityChange",this.§^!@§);
                        if(_loc2_)
                        {
                           return;
                           addr48:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private function §7"§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+!d§ = this.§`!a§.content;
         }
         loop0:
         while(true)
         {
            this.§+!d§.setSize(480,360);
            loop1:
            do
            {
               this.§+!d§.removeEventListener("onReady",this.§7"§);
               while(_loc2_)
               {
                  this.isReady = true;
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc3_);
            
            return;
         }
      }
      
      private function §with§(param1:Event) : void
      {
      }
      
      private function §3!j§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Object(param1).data;
         if(_loc4_)
         {
            §§push(1);
            if(!_loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr90:
                     §§push(0);
                     if(_loc3_ && param1)
                     {
                        addr122:
                     }
                  }
                  else
                  {
                     addr114:
                     §§push(1);
                     if(_loc4_ || this)
                     {
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr127);
               }
               else
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr114);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr127:
                     switch(§§pop())
                     {
                        case 0:
                           if(this.isReady == false)
                           {
                              addr65:
                              this.dispose();
                           }
                           addr26:
                           break;
                        case 1:
                           this.isReady = false;
                           if(_loc4_ || this)
                           {
                              if(_loc4_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§+!d§.playVideo();
                                    if(_loc4_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr65);
                                 §§goto(addr26);
                              }
                              §§goto(addr65);
                           }
                     }
                     return;
                  }
               }
            }
            §§goto(addr122);
         }
         §§goto(addr90);
      }
      
      private function §^!@§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§+!d§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  while(true)
                  {
                     removeChild(this.§`!a§);
                     while(true)
                     {
                        this.§+!d§.removeEventListener("onError",this.§with§);
                        loop3:
                        while(true)
                        {
                           this.§+!d§.removeEventListener("onStateChange",this.§3!j§);
                           loop4:
                           for(; !_loc2_; loop8:
                           while(_loc1_ || this)
                           {
                              this.§[,§ = null;
                              for(; !_loc2_; this.§+!d§ = null,if(!(_loc2_ && _loc1_))
                              {
                                 continue loop8;
                              })
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr105);
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr46);
                           })
                           {
                              this.§+!d§.removeEventListener("onPlaybackQualityChange",this.§^!@§);
                              while(true)
                              {
                                 this.§+!d§.destroy();
                                 do
                                 {
                                    this.§`!a§.contentLoaderInfo.removeEventListener(Event.INIT,this.§>!_§);
                                    while(true)
                                    {
                                       this.§`!a§ = null;
                                       continue loop4;
                                    }
                                 }
                                 while(!_loc1_);
                                 
                                 continue loop3;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               addr157:
            }
            return;
         }
         §§goto(addr157);
      }
   }
}
