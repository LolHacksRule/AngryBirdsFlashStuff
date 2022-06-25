package §&!h§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §1!j§ extends MovieClip
   {
       
      
      private var §+Z§:Object = null;
      
      private var §2C§:Loader = null;
      
      private var §>!Z§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §1!j§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§>!Z§ = new LoaderContext();
               addr179:
               while(true)
               {
                  this.§>!Z§.checkPolicyFile = true;
               }
               addr48:
               if(_loc5_ && param2)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         loop2:
         while(true)
         {
            this.§>!Z§.securityDomain = SecurityDomain.currentDomain;
            loop3:
            while(!_loc5_)
            {
               this.§>!Z§.applicationDomain = ApplicationDomain.currentDomain;
               while(true)
               {
                  this.§2C§ = new Loader();
                  loop5:
                  while(_loc4_)
                  {
                     this.§2C§.contentLoaderInfo.addEventListener(Event.INIT,this.§,p§);
                     while(!_loc5_)
                     {
                        continue loop2;
                        addr92:
                        if(!(_loc4_ || param3))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           continue loop5;
                        }
                        this.§2C§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(param3);
                              if(_loc4_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop9;
                                       }
                                       this.§2C§.mouseChildren = false;
                                    }
                                    if(!(_loc4_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr48);
                                 }
                                 break;
                              }
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§2C§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                    continue loop10;
                                 }
                                 if(_loc5_ && param3)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc4_)
                                 {
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                    addr114:
                                 }
                              }
                              continue loop5;
                           }
                           addr19:
                           return;
                        }
                     }
                     continue loop3;
                  }
               }
            }
            §§goto(addr179);
         }
      }
      
      private function §,p§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            addChild(this.§2C§);
            loop0:
            while(true)
            {
               this.§2C§.content.addEventListener("onReady",this.§6+§);
               while(true)
               {
                  this.§2C§.content.addEventListener("onError",this.§<h§);
                  continue loop0;
                  addr59:
                  if(_loc2_ || this)
                  {
                     this.§2C§.content.addEventListener("onPlaybackQualityChange",this.§8!l§);
                     addr66:
                     if(!_loc3_)
                     {
                        addr52:
                        return;
                        addr52:
                     }
                     while(_loc2_ || _loc3_)
                     {
                        §§goto(addr59);
                        §§goto(addr66);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§2C§.content.addEventListener("onStateChange",this.§&!K§);
            §§goto(addr52);
         }
      }
      
      private function §6+§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+Z§ = this.§2C§.content;
            while(true)
            {
               this.§+Z§.setSize(480,360);
               while(true)
               {
                  this.§+Z§.removeEventListener("onReady",this.§6+§);
                  §§goto(addr71);
               }
            }
         }
         addr71:
         while(true)
         {
            this.isReady = true;
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      private function §<h§(param1:Event) : void
      {
      }
      
      private function §&!K§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(_loc3_)
         {
            §§push(1);
            if(_loc3_ || param1)
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc4_ && this)
                     {
                     }
                  }
                  else
                  {
                     addr108:
                     §§push(1);
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr116);
               }
               else
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr108);
                     }
                     else
                     {
                        addr116:
                        switch(§§pop())
                        {
                           case 0:
                              if(this.isReady == false)
                              {
                                 addr59:
                                 this.dispose();
                              }
                              addr32:
                              break;
                           case 1:
                              this.isReady = false;
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    this.§+Z§.playVideo();
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr59);
                                       }
                                       §§goto(addr32);
                                    }
                                    break;
                                 }
                                 §§goto(addr59);
                              }
                        }
                        return;
                        §§push(2);
                     }
                     §§goto(addr116);
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr108);
      }
      
      private function §8!l§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§+Z§ != null)
            {
               while(true)
               {
                  this.isReady = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§2C§);
                     loop2:
                     while(true)
                     {
                        this.§+Z§.removeEventListener("onError",this.§<h§);
                        loop3:
                        while(true)
                        {
                           this.§+Z§.removeEventListener("onStateChange",this.§&!K§);
                           loop4:
                           for(; _loc2_; while(!(_loc1_ && _loc2_))
                           {
                              this.§+Z§ = null;
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 addr37:
                                 if(!(_loc1_ && this))
                                 {
                                    §§goto(addr20);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr61);
                           })
                           {
                              this.§+Z§.removeEventListener("onPlaybackQualityChange",this.§8!l§);
                              loop5:
                              while(true)
                              {
                                 this.§+Z§.destroy();
                                 while(true)
                                 {
                                    this.§2C§.contentLoaderInfo.removeEventListener(Event.INIT,this.§,p§);
                                    continue loop3;
                                    addr61:
                                    while(_loc2_ || _loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             this.§>!Z§ = null;
                                             continue loop4;
                                          }
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr119);
      }
   }
}
