package §<-§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §"!=§ extends MovieClip
   {
       
      
      private var §5W§:Object = null;
      
      private var §,!a§:Loader = null;
      
      private var §implements§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §"!=§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§implements§ = new LoaderContext();
               while(true)
               {
                  this.§implements§.checkPolicyFile = true;
                  continue loop0;
                  addr111:
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  loop13:
                  while(true)
                  {
                     §§push(param3);
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           addr33:
                           if(_loc4_ || param3)
                           {
                              this.§,!a§.mouseChildren = false;
                           }
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 addr48:
                                 if(_loc4_ || param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr24);
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.§,!a§.contentLoaderInfo.addEventListener(Event.INIT,this.§[!>§);
                                    §§goto(addr48);
                                 }
                                 addr146:
                              }
                              while(_loc4_ || param3)
                              {
                                 while(true)
                                 {
                                    Security.allowDomain("www.youtube.com");
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param2);
                                       addr100:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§,!a§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr101:
                                                   while(true)
                                                   {
                                                      this.§,!a§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr33);
                                             }
                                             while(true)
                                             {
                                                this.§,!a§ = new Loader();
                                                §§goto(addr146);
                                             }
                                             addr163:
                                             addr71:
                                          }
                                          §§goto(addr101);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§implements§.applicationDomain = ApplicationDomain.currentDomain;
                                 §§goto(addr163);
                                 §§goto(addr133);
                              }
                              addr133:
                              addr170:
                           }
                           §§goto(addr71);
                        }
                        addr24:
                        return;
                     }
                     §§goto(addr100);
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      private function §[!>§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            addChild(this.§,!a§);
         }
         loop0:
         while(true)
         {
            this.§,!a§.content.addEventListener("onReady",this.§8!]§);
            loop1:
            do
            {
               this.§,!a§.content.addEventListener("onError",this.§=y§);
               while(true)
               {
                  this.§,!a§.content.addEventListener("onStateChange",this.§0"§);
                  while(_loc2_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        this.§,!a§.content.addEventListener("onPlaybackQualityChange",this.§]'§);
                        if(_loc2_ || param1)
                        {
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            while(_loc3_ && param1);
            
            return;
         }
      }
      
      private function §8!]§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§5W§ = this.§,!a§.content;
         }
         while(true)
         {
            this.§5W§.setSize(480,360);
            while(_loc3_)
            {
               this.§5W§.removeEventListener("onReady",this.§8!]§);
               do
               {
                  this.isReady = true;
               }
               while(!_loc3_);
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §=y§(param1:Event) : void
      {
      }
      
      private function §0"§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Object(param1).data;
         if(!(_loc4_ && param1))
         {
            §§push(1);
            if(!_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  if(!_loc4_)
                  {
                     addr94:
                     §§push(0);
                     if(_loc4_ && _loc3_)
                     {
                        addr126:
                     }
                  }
                  else
                  {
                     addr123:
                     §§push(1);
                     if(_loc3_)
                     {
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr131);
               }
               else
               {
                  §§push(0);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr123);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr131:
                     loop1:
                     switch(§§pop())
                     {
                        case 0:
                           if(this.isReady == false)
                           {
                              if(_loc3_ || this)
                              {
                                 this.dispose();
                                 addr71:
                              }
                              break;
                           }
                           addr39:
                           break;
                        case 1:
                           this.isReady = false;
                           while(true)
                           {
                              this.§5W§.playVideo();
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              if(_loc3_ || param1)
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                              }
                              else
                              {
                                 §§goto(addr71);
                              }
                              §§goto(addr39);
                           }
                     }
                     return;
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr94);
      }
      
      private function §]'§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§5W§ != null)
            {
               loop0:
               while(true)
               {
                  this.isReady = false;
                  loop1:
                  while(true)
                  {
                     removeChild(this.§,!a§);
                     while(true)
                     {
                        this.§5W§.removeEventListener("onError",this.§=y§);
                        loop3:
                        for(; !(_loc2_ && _loc2_); if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr24);
                        })
                        {
                           this.§5W§.removeEventListener("onStateChange",this.§0"§);
                           loop4:
                           while(true)
                           {
                              this.§5W§.removeEventListener("onPlaybackQualityChange",this.§]'§);
                              addr111:
                              while(true)
                              {
                                 if(!(_loc1_ || this))
                                 {
                                    continue loop4;
                                 }
                                 this.§5W§.destroy();
                                 while(true)
                                 {
                                    this.§,!a§.contentLoaderInfo.removeEventListener(Event.INIT,this.§[!>§);
                                    addr89:
                                    while(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    addr41:
                                    continue loop1;
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr136);
      }
   }
}
