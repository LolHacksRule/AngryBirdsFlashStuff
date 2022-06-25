package §5!'§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §>Y§ extends MovieClip
   {
      
      protected static var sLoadedPolicyDomains:Array;
      
      protected static var sInstances:Array;
      
      protected static var sIsVisible:Boolean = true;
      
      public static const SMALL:String = "small";
      
      public static const SQUARE:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const LARGE:String = "large";
      
      {
         var sLoadedPolicyDomains:Boolean = false;
         var sInstances:Boolean = true;
         if(!(sLoadedPolicyDomains && sInstances))
         {
            loop0:
            while(true)
            {
               sLoadedPolicyDomains = [];
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     sInstances = [];
                     loop3:
                     while(true)
                     {
                        while(sInstances)
                        {
                           sIsVisible = true;
                           loop5:
                           for(; !(sLoadedPolicyDomains && sInstances); loop7:
                           for(; !(sLoadedPolicyDomains && §>Y§); while(!(sLoadedPolicyDomains && §>Y§))
                           {
                              continue loop3;
                              §§goto(addr60);
                           })
                           {
                              if(sLoadedPolicyDomains)
                              {
                                 continue loop1;
                              }
                              loop8:
                              while(true)
                              {
                                 SQUARE = "square";
                                 while(true)
                                 {
                                    continue loop7;
                                    addr70:
                                    while(sInstances)
                                    {
                                       LARGE = "large";
                                       while(true)
                                       {
                                          if(sInstances)
                                          {
                                             addr60:
                                             if(!(sInstances || §>Y§))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop7;
                                       if(sInstances || §>Y§)
                                       {
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           })
                           {
                              while(true)
                              {
                                 SMALL = "small";
                                 continue loop5;
                              }
                           }
                        }
                        continue loop2;
                        if(!(sLoadedPolicyDomains && sInstances))
                        {
                           NORMAL = "normal";
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      protected var §^v§:Loader;
      
      protected var §?$§:String;
      
      protected var §"!M§:int = 3;
      
      private var §'!J§:int = 0;
      
      private var §#B§:int = 0;
      
      public function §>Y§(userId:String, useHttps:Boolean = false, imageSize:String = "square")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(_loc4_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr104:
                  while(true)
                  {
                     continue loop0;
                  }
                  loop7:
                  while(!(_loc5_ && imageSize))
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                        loop5:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 this.init(userId,useHttps,imageSize);
                                 continue loop7;
                              }
                           }
                           else
                           {
                              while(_loc4_)
                              {
                                 continue loop5;
                              }
                              §§goto(addr104);
                              addr89:
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      protected static function §=!$§(domain:String, secure:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(sLoadedPolicyDomains);
                     loop3:
                     while(true)
                     {
                        §§push(domain);
                        addr128:
                        while(true)
                        {
                           if(§§pop().indexOf(§§pop()) == -1)
                           {
                              continue loop3;
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr141:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     loop7:
                     for(; !(_loc4_ && domain); while(!(_loc4_ && domain))
                     {
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        §§goto(addr141);
                        if(_loc4_ && domain)
                        {
                           continue;
                        }
                        §§goto(addr36);
                     })
                     {
                        while(true)
                        {
                           do
                           {
                              Security.loadPolicyFile((!!secure ? "https://" : "http://") + domain + "/crossdomain.xml");
                              continue loop7;
                           }
                           while(_loc4_ && secure);
                           
                           return;
                        }
                     }
                  }
               }
               if(_loc4_ && §>Y§)
               {
                  continue;
               }
               §§goto(addr86);
            }
         }
         §§goto(addr123);
      }
      
      public static function §1e§(visible:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var facebookProfilePicture:§>Y§ = null;
         if(_loc5_ || facebookProfilePicture)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               do
               {
                  if(sIsVisible == visible)
                  {
                     continue;
                  }
                  addr50:
                  loop3:
                  while(true)
                  {
                     sIsVisible = visible;
                     addr54:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc5_ || visible))
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     §§goto(addr84);
                  }
                  continue loop1;
               }
               while(_loc6_);
               
               addr84:
               return;
            }
         }
      }
      
      protected function init(userId:String, useHttps:Boolean, imageSize:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && imageSize))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
                        while(true)
                        {
                           continue loop0;
                           addr56:
                           if(_loc5_ || imageSize)
                           {
                              loop11:
                              while(true)
                              {
                                 if(_loc5_ || userId)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    loop8:
                                    while(_loc5_)
                                    {
                                       while(_loc5_)
                                       {
                                          if(_loc5_ || imageSize)
                                          {
                                             this.load();
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       while(_loc5_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(this);
                                          if(_loc5_)
                                          {
                                             if(useHttps)
                                             {
                                                addr92:
                                                §§push("https://");
                                                §§push((!_loc4_ ? §§pop() : §§pop()) + "graph.facebook.com/");
                                                if(!_loc4_)
                                                {
                                                   §§push(userId);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() + "/picture?type=");
                                                         if(_loc5_ || this)
                                                         {
                                                         }
                                                         addr127:
                                                         §§pop().§?$§ = §§pop();
                                                         continue loop8;
                                                      }
                                                      §§push(imageSize);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             else
                                             {
                                                §§push("http://");
                                                if(_loc5_ || imageSize)
                                                {
                                                   §§goto(addr105);
                                                }
                                             }
                                             §§goto(addr127);
                                          }
                                          §§goto(addr92);
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 while(!(_loc4_ && imageSize))
                                 {
                                    §§goto(addr56);
                                    continue loop11;
                                 }
                                 §§goto(addr66);
                              }
                              return;
                              addr63:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private function §?!0§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && this))
         {
            while(true)
            {
               loop1:
               while(_loc2_)
               {
                  loop2:
                  for(§§push(sInstances); §§pop().indexOf(this) == -1; )
                  {
                     if(_loc3_ && e)
                     {
                     }
                     loop3:
                     while(true)
                     {
                        §§push(sInstances);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().push(this);
                        loop4:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §3#§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(§§push(sInstances); §§pop().indexOf(this) != -1; )
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                     §§push(sInstances);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop().splice(sInstances.indexOf(this),1);
                        loop5:
                        for(; _loc3_ || e; while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                           continue loop5;
                        })
                        {
                           if(!(_loc2_ && this))
                           {
                              continue;
                           }
                           §§goto(addr94);
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get §0!D§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§'!J§;
      }
      
      public function get §>!]§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.§#B§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               this.§^v§ = new Loader();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§^v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           this.§^v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
                           while(!(_loc1_ && this))
                           {
                              continue loop3;
                              if(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                    addr53:
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     while(!(_loc1_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           §§goto(addr44);
                        }
                        §§goto(addr86);
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function onComplete(e:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_ || _loc3_)
         {
         }
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               loop1:
               while(true)
               {
                  this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                  loop2:
                  while(true)
                  {
                     if(!(_loc5_ && onComplete$0))
                     {
                        this.§^v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
                        loop3:
                        for(; _loc4_; if(_loc5_ && _loc3_)
                        {
                           continue;
                        },if(false)
                        {
                           §§goto(addr66);
                        }
                        else
                        {
                           §§goto(addr192);
                        })
                        {
                           loop4:
                           while(true)
                           {
                              this.§'!J§ = this.loader.width;
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§#B§ = this.loader.height;
                                    loop7:
                                    for(; !_loc5_; while(true)
                                    {
                                       if(!(_loc5_ && e))
                                       {
                                          continue loop5;
                                       }
                                       continue loop7;
                                    },continue loop2)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!sIsVisible)
                                          {
                                             try
                                             {
                                                addr192:
                                                (this.§^v§.content as Bitmap).smoothing = true;
                                                if(_loc4_ || this)
                                                {
                                                   addr207:
                                                }
                                                addr208:
                                             }
                                             catch(e:Error)
                                             {
                                                addr209:
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_ && onComplete$0)
                                                   {
                                                   }
                                                   addr244:
                                                   if(_loc4_ || onComplete$0)
                                                   {
                                                   }
                                                }
                                                trace("Cannot set smoothing");
                                                §§goto(addr244);
                                             }
                                             dispatchEvent(new Event(Event.COMPLETE));
                                             if(_loc5_ && onComplete$0)
                                             {
                                             }
                                             return;
                                          }
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop4;
                                    addr50:
                                    if(_loc4_ || e)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 if(_loc5_ && e)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    addChild(this.§^v§);
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr208);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr207);
         }
      }
      
      protected function §6W§(e:IOErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && e))
         {
            if(_loc5_ || this)
            {
               if(!_loc4_)
               {
                  this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§^v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(true)
                                 {
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§"!M§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc5_ || e)
                                    {
                                       _loc2_.§"!M§ = _loc3_;
                                    }
                                 }
                                 continue;
                                 if(_loc4_ && this)
                                 {
                                 }
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 this.load();
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc5_ || e)
                                    {
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       addr173:
                                       while(true)
                                       {
                                          if(this.§"!M§ <= 0)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr130);
                              }
                              addr171:
                           }
                           break;
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr173);
                  }
                  addr150:
                  addr130:
                  return;
               }
               §§goto(addr170);
            }
            §§goto(addr171);
         }
         §§goto(addr173);
      }
      
      public function get loader() : Loader
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§^v§;
      }
   }
}
