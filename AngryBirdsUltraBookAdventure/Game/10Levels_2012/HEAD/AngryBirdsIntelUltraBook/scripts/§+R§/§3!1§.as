package §+R§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §3!1§ extends MovieClip
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
         if(sInstances)
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
                        loop4:
                        while(true)
                        {
                           sIsVisible = true;
                           loop5:
                           while(true)
                           {
                              while(!sLoadedPolicyDomains)
                              {
                                 if(sInstances)
                                 {
                                    if(!sLoadedPolicyDomains)
                                    {
                                       SMALL = "small";
                                       while(!sLoadedPolicyDomains)
                                       {
                                          while(sInstances)
                                          {
                                             SQUARE = "square";
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                                 addr82:
                                 if(!(sInstances || sInstances))
                                 {
                                    continue;
                                 }
                                 loop12:
                                 while(!(sLoadedPolicyDomains && sInstances))
                                 {
                                    continue loop5;
                                    while(true)
                                    {
                                       LARGE = "large";
                                       do
                                       {
                                          §+!G§("fbcdn-profile-a.akamaihd.net",true);
                                       }
                                       while(!sInstances);
                                       
                                       if(sLoadedPolicyDomains)
                                       {
                                          continue loop12;
                                       }
                                       if(!(sInstances || §3!1§))
                                       {
                                          continue loop0;
                                       }
                                       if(sInstances)
                                       {
                                          break;
                                       }
                                       §§goto(addr104);
                                    }
                                    return;
                                 }
                                 while(!sLoadedPolicyDomains)
                                 {
                                    §§goto(addr82);
                                    §§goto(addr51);
                                 }
                                 addr51:
                                 §§goto(addr107);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected var §4$§:Loader;
      
      protected var §"!1§:String;
      
      protected var §`G§:int = 3;
      
      private var §>!T§:int = 0;
      
      private var §3D§:int = 0;
      
      public function §3!1§(userId:String, useHttps:Boolean = false, imageSize:String = "square")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || imageSize)
         {
         }
         if(_loc4_ || this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  loop3:
                  while(_loc4_)
                  {
                     super();
                     loop4:
                     while(true)
                     {
                        while(_loc4_)
                        {
                           this.init(userId,useHttps,imageSize);
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop0;
                           if(!(_loc5_ && imageSize))
                           {
                              continue loop1;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      protected static function §+!G§(domain:String, secure:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && domain))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc4_)
                  {
                     §§push(sLoadedPolicyDomains);
                     while(true)
                     {
                        §§push(domain);
                        addr131:
                        §§goto(addr134);
                     }
                     while(_loc4_ || §3!1§)
                     {
                        continue loop1;
                        for(; _loc4_ || _loc3_; if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 return;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§goto(addr101);
                              }
                              addr135:
                           }
                           addr134:
                           while(§§pop().indexOf(§§pop()) == -1)
                           {
                              continue loop3;
                           }
                        },continue,return)
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr126);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr135);
      }
      
      public static function §<]§(visible:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var facebookProfilePicture:§3!1§ = null;
         if(_loc6_)
         {
            while(true)
            {
               addr86:
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(sIsVisible == visible)
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                        addr72:
                     }
                     else
                     {
                        addr52:
                        while(true)
                        {
                           sIsVisible = visible;
                           continue loop1;
                        }
                        addr52:
                     }
                  }
                  return;
               }
            }
            addr88:
         }
         while(true)
         {
            if(_loc6_)
            {
               if(!_loc5_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc6_ || §3!1§)
                     {
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr52);
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr73);
               }
               §§goto(addr52);
            }
            §§goto(addr56);
         }
         var _loc3_:int = 0;
         loop8:
         for each(facebookProfilePicture in sInstances)
         {
            if(!(_loc5_ && _loc3_))
            {
               loop9:
               while(true)
               {
                  §§push(visible);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(Boolean(facebookProfilePicture.loader));
                        if(!_loc5_)
                        {
                           §§push(§§pop());
                           if(!(_loc5_ && §3!1§))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop16:
                              while(_loc6_)
                              {
                                 addr195:
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(facebookProfilePicture.loader.parent == facebookProfilePicture);
                                    if(_loc6_)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr162:
                                          §§push(Boolean(§§pop()));
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop16;
                                       }
                                       addr221:
                                       if(§§pop())
                                       {
                                          addr222:
                                          loop18:
                                          do
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                facebookProfilePicture.addChild(facebookProfilePicture.loader);
                                                continue;
                                             }
                                             addr235:
                                             while(true)
                                             {
                                                §§goto(addr221);
                                                continue loop18;
                                             }
                                          }
                                          while(_loc5_);
                                          
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr162);
                                    §§goto(addr195);
                                 }
                              }
                              continue;
                              addr193:
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue loop8;
                              }
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          facebookProfilePicture.removeChild(facebookProfilePicture.loader);
                                          while(_loc6_)
                                          {
                                             if(_loc5_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(!_loc6_)
                                             {
                                                break loop13;
                                             }
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr222);
                                             }
                                             else
                                             {
                                                §§goto(addr196);
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                    addr173:
                                 }
                                 else
                                 {
                                    addr234:
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr173);
                           }
                           continue loop9;
                        }
                        §§goto(addr193);
                     }
                  }
               }
            }
            §§goto(addr234);
         }
         if(_loc5_ && §3!1§)
         {
         }
      }
      
      protected function init(userId:String, useHttps:Boolean, imageSize:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr194:
                  while(true)
                  {
                     addr191:
                     while(true)
                     {
                        addEventListener(Event.ADDED_TO_STAGE,this.§2!a§);
                        while(!_loc5_)
                        {
                           if(!(_loc5_ && userId))
                           {
                              return;
                              addr48:
                           }
                        }
                        continue loop0;
                     }
                  }
                  addr139:
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  loop9:
                  while(true)
                  {
                     if(!(_loc5_ && useHttps))
                     {
                        addr72:
                        if(_loc5_ && imageSize)
                        {
                           break;
                        }
                        this.load();
                        continue;
                     }
                     addr137:
                     while(!_loc5_)
                     {
                        §§goto(addr139);
                        continue loop9;
                     }
                     §§goto(addr191);
                  }
                  loop7:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           §§push(this);
                           if(_loc4_ || useHttps)
                           {
                              if(useHttps)
                              {
                                 addr101:
                                 §§push("https://");
                                 if(!_loc5_)
                                 {
                                    addr110:
                                    §§push(§§pop() + "graph.facebook.com/");
                                    if(_loc4_ || this)
                                    {
                                       addr119:
                                       §§push(userId);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc4_ || useHttps)
                                          {
                                             addr130:
                                             §§push(§§pop() + "/picture?type=");
                                             if(_loc4_)
                                             {
                                                addr135:
                                                §§push(§§pop() + imageSize);
                                             }
                                          }
                                          §§pop().§"!1§ = §§pop();
                                          §§goto(addr137);
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr119);
                              }
                              else
                              {
                                 §§push("http://");
                                 if(!_loc5_)
                                 {
                                    §§goto(addr110);
                                    §§push(§§pop());
                                 }
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr101);
                        }
                        break;
                     }
                     addr173:
                     while(true)
                     {
                        continue loop7;
                     }
                  }
                  while(true)
                  {
                     addEventListener(Event.REMOVED_FROM_STAGE,this.§%C§);
                     §§goto(addr173);
                  }
                  §§goto(addr48);
               }
            }
         }
         §§goto(addr176);
      }
      
      private function §2!a§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && e)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(§§push(sInstances); §§pop().indexOf(this) == -1; )
                  {
                     if(_loc2_)
                     {
                        continue loop1;
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
                        addr77:
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §%C§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
            }
            addr107:
         }
         loop1:
         while(true)
         {
            §§push(sInstances);
            while(§§pop().indexOf(this) != -1)
            {
               if(!(_loc3_ || e))
               {
                  continue loop1;
               }
               if(!_loc2_)
               {
                  continue loop1;
               }
               §§goto(addr107);
               §§push(sInstances);
               if(!_loc2_)
               {
                  addr60:
                  §§pop().splice(sInstances.indexOf(this),1);
                  while(_loc2_)
                  {
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     break;
                  }
                  continue loop1;
               }
            }
            return;
         }
      }
      
      public function get §&!i§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.§>!T§;
      }
      
      public function get §0o§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.§3D§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         loop0:
         while(true)
         {
            this.§4$§ = new Loader();
            loop1:
            while(true)
            {
               while(true)
               {
                  this.§4$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
                  loop3:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        this.§4$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
                        while(_loc1_)
                        {
                           if(_loc1_)
                           {
                              while(_loc1_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    this.§4$§.load(new URLRequest(this.§"!1§),new LoaderContext(true));
                                    while(!_loc2_)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          return;
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      protected function onComplete(e:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
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
                  this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                  loop2:
                  while(true)
                  {
                     while(_loc3_)
                     {
                        this.§4$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
                        addr49:
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc3_ || e)
                        {
                           if(false)
                           {
                              loop9:
                              while(true)
                              {
                                 addChild(this.§4$§);
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr49);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop9;
                                          }
                                          addr150:
                                          while(true)
                                          {
                                             while(_loc3_)
                                             {
                                                this.§>!T§ = this.loader.width;
                                                loop6:
                                                while(_loc3_ || _loc2_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.§3D§ = this.loader.height;
                                                      while(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(sIsVisible)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            else
                                                            {
                                                               try
                                                               {
                                                                  addr173:
                                                                  (this.§4$§.content as Bitmap).smoothing = true;
                                                                  if(!(_loc4_ && e))
                                                                  {
                                                                     §§goto(addr188);
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr219);
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                   if(_loc4_ && e)
                                                   {
                                                   }
                                                   return;
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       addr76:
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              continue;
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr188);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      protected function §`!W§(e:IOErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || _loc3_)
         {
            if(!_loc4_)
            {
               if(_loc5_ || _loc2_)
               {
                  this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                  if(!_loc4_)
                  {
                     loop0:
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           this.§4$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
                           if(_loc5_)
                           {
                              loop6:
                              while(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 if(false)
                                 {
                                    continue loop1;
                                 }
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§`G§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!_loc4_)
                                 {
                                    _loc2_.§`G§ = _loc3_;
                                 }
                                 if(!_loc4_)
                                 {
                                    addr158:
                                    while(true)
                                    {
                                       if(this.§`G§ > 0)
                                       {
                                          addr156:
                                          if(!_loc4_)
                                          {
                                             break loop1;
                                          }
                                          while(true)
                                          {
                                             this.load();
                                             addr140:
                                             while(true)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   break loop6;
                                                }
                                                break;
                                             }
                                          }
                                          addr156:
                                       }
                                       §§goto(addr110);
                                    }
                                    addr158:
                                 }
                                 §§goto(addr156);
                              }
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr158);
                                    }
                                    else
                                    {
                                       addr135:
                                    }
                                    addr110:
                                    return;
                                 }
                                 §§goto(addr140);
                              }
                              addr50:
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr156);
                        }
                     }
                  }
               }
               §§goto(addr158);
            }
            §§goto(addr135);
         }
         §§goto(addr50);
      }
      
      public function get loader() : Loader
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         return this.§4$§;
      }
   }
}
