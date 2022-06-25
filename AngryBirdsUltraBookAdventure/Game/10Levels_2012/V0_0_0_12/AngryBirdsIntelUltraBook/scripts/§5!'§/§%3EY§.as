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
         if(!(sLoadedPolicyDomains && sLoadedPolicyDomains))
         {
            loop0:
            while(true)
            {
               sLoadedPolicyDomains = [];
               addr92:
               if(!(sInstances || §>Y§))
               {
                  continue;
               }
               LARGE = "large";
               while(true)
               {
                  if(sInstances || sLoadedPolicyDomains)
                  {
                     if(sInstances)
                     {
                        addr63:
                        if(sInstances || §>Y§)
                        {
                           if(!sInstances)
                           {
                              break;
                           }
                           continue;
                           addr70:
                        }
                        loop6:
                        while(true)
                        {
                           SMALL = "small";
                           loop7:
                           for(; sInstances; while(sInstances || sLoadedPolicyDomains)
                           {
                           })
                           {
                              loop8:
                              while(true)
                              {
                                 SQUARE = "square";
                                 continue loop7;
                                 addr104:
                                 while(true)
                                 {
                                    if(sInstances || sLoadedPolicyDomains)
                                    {
                                       if(!sInstances)
                                       {
                                          break;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          if(sInstances || §>Y§)
                                          {
                                             §§goto(addr92);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                sInstances = [];
                                                addr168:
                                                while(true)
                                                {
                                                   break loop7;
                                                }
                                                continue loop12;
                                             }
                                             addr171:
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop8;
                                 }
                                 addr158:
                                 while(!sLoadedPolicyDomains)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr168);
                              }
                           }
                           while(true)
                           {
                              sIsVisible = true;
                              §§goto(addr158);
                           }
                        }
                     }
                     while(sInstances)
                     {
                        NORMAL = "normal";
                        §§goto(addr104);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr104);
               }
               while(true)
               {
                  §§goto(addr171);
                  §§goto(addr70);
               }
               addr176:
            }
         }
         §§goto(addr176);
      }
      
      protected var §^v§:Loader;
      
      protected var §?$§:String;
      
      protected var §"!M§:int = 3;
      
      private var §'!J§:int = 0;
      
      private var §#B§:int = 0;
      
      public function §>Y§(userId:String, useHttps:Boolean = false, imageSize:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop1;
                     addr56:
                     if(!(_loc4_ && this))
                     {
                        return;
                        addr63:
                     }
                  }
               }
               addr84:
               while(true)
               {
                  if(!(_loc4_ && imageSize))
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr84);
         }
         §§goto(addr63);
      }
      
      protected static function §=!$§(domain:String, secure:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_)
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
                     while(true)
                     {
                        §§push(domain);
                        addr120:
                        §§goto(addr123);
                     }
                     addr81:
                     if(_loc3_ || §>Y§)
                     {
                        Security.loadPolicyFile((!!secure ? "https://" : "http://") + domain + "/crossdomain.xml");
                        do
                        {
                           if(!_loc3_)
                           {
                              addr123:
                              while(§§pop().indexOf(§§pop()) == -1)
                              {
                                 continue loop3;
                              }
                              while(_loc4_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop1;
                           return;
                        }
                        while(_loc4_);
                        
                        addr31:
                        if(!(_loc3_ || domain))
                        {
                           loop7:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr81);
                              }
                              addr115:
                              while(true)
                              {
                                 continue loop7;
                              }
                           }
                           §§goto(addr90);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public static function §1e§(visible:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var facebookProfilePicture:§>Y§ = null;
         if(_loc5_ || _loc3_)
         {
            while(true)
            {
               addr75:
               while(true)
               {
               }
               addr37:
               if(_loc5_ || facebookProfilePicture)
               {
                  if(false)
                  {
                     loop3:
                     while(true)
                     {
                        sIsVisible = visible;
                        while(true)
                        {
                           if(_loc5_)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 §§goto(addr37);
                              }
                              else
                              {
                                 if(_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 addr72:
                                 while(true)
                                 {
                                    if(sIsVisible != visible)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr75);
                     }
                  }
                  var _loc3_:int = 0;
                  loop5:
                  for each(facebookProfilePicture in sInstances)
                  {
                     if(!_loc6_)
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           for(§§push(visible); !§§pop(); )
                           {
                              §§push(Boolean(facebookProfilePicture.loader));
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(facebookProfilePicture.loader.parent == facebookProfilePicture);
                                          if(!_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         addr207:
                                                         if(!_loc5_)
                                                         {
                                                            break loop7;
                                                         }
                                                         facebookProfilePicture.addChild(facebookProfilePicture.loader);
                                                      }
                                                      addr167:
                                                      continue loop5;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop5;
                                             }
                                             addr166:
                                             loop14:
                                             while(true)
                                             {
                                                facebookProfilePicture.removeChild(facebookProfilePicture.loader);
                                                addr116:
                                                addr127:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      addr120:
                                                      if(!(_loc6_ && facebookProfilePicture))
                                                      {
                                                         break;
                                                      }
                                                      addr214:
                                                      while(true)
                                                      {
                                                         §§push(!facebookProfilePicture.loader.parent);
                                                         addr203:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                               addr204:
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         break loop7;
                                                      }
                                                   }
                                                   §§goto(addr204);
                                                   continue loop14;
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop14;
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr116);
                                                   §§goto(addr120);
                                                }
                                             }
                                             addr145:
                                          }
                                          §§goto(addr203);
                                       }
                                       continue loop7;
                                    }
                                 }
                                 §§goto(addr145);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr214);
                           }
                           §§goto(addr167);
                        }
                     }
                     §§goto(addr127);
                  }
                  if(!_loc5_)
                  {
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function init(userId:String, useHttps:Boolean, imageSize:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc5_)
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
                     while(true)
                     {
                        addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
                        while(_loc5_ || this)
                        {
                           continue loop2;
                           addr140:
                           if(!(_loc5_ || imageSize))
                           {
                              continue;
                           }
                           loop9:
                           while(_loc5_)
                           {
                              continue loop1;
                              loop10:
                              while(_loc5_ || this)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr32:
                                       if(_loc5_ || this)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       addr160:
                                       while(_loc5_ || this)
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             if(!(_loc4_ && this))
                                             {
                                                if(useHttps)
                                                {
                                                   addr77:
                                                   §§push("https://");
                                                   if(!(_loc4_ && imageSize))
                                                   {
                                                      addr106:
                                                      §§push(§§pop() + "graph.facebook.com/");
                                                      if(_loc5_)
                                                      {
                                                         §§push(userId);
                                                         if(_loc5_ || useHttps)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc4_ && this))
                                                            {
                                                               addr137:
                                                               §§push(§§pop() + "/picture?type=");
                                                               if(_loc5_ || useHttps)
                                                               {
                                                                  addr135:
                                                                  §§push(imageSize);
                                                               }
                                                               §§pop().§?$§ = §§pop();
                                                               break loop9;
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr137);
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   §§goto(addr135);
                                                }
                                                else
                                                {
                                                   §§push("http://");
                                                   if(_loc5_ || imageSize)
                                                   {
                                                      §§goto(addr106);
                                                      §§push(§§pop());
                                                   }
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr77);
                                          }
                                          §§goto(addr32);
                                       }
                                       continue loop2;
                                    }
                                    continue loop10;
                                 }
                                 return;
                              }
                           }
                           while(!_loc4_)
                           {
                              §§goto(addr140);
                           }
                           §§goto(addr150);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §?!0§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || e)
         {
         }
         if(_loc2_ || this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(sInstances);
               while(true)
               {
                  if(§§pop().indexOf(this) == -1)
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                     addr65:
                     break;
                     addr99:
                  }
                  §§push(sInstances);
                  addr107:
                  break;
                  if(!_loc3_)
                  {
                     §§pop().push(this);
                     continue loop0;
                  }
               }
               return;
            }
         }
      }
      
      private function §3#§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_ && e)
         {
         }
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
                  if(!(_loc2_ && _loc3_))
                  {
                     §§pop().splice(sInstances.indexOf(this),1);
                     for(; _loc3_ || e; if(!(_loc2_ && this))
                     {
                        break loop2;
                     })
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr97);
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
      }
      
      public function get §0!D§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.§'!J§;
      }
      
      public function get §>!]§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§#B§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
            loop0:
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
                     while(_loc1_)
                     {
                        loop4:
                        while(true)
                        {
                           this.§^v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
                           loop5:
                           while(true)
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop4;
                              }
                              if(!_loc1_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 addr83:
                                 while(!_loc2_)
                                 {
                                    this.§^v§.load(new URLRequest(this.§?$§),new LoaderContext(true));
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     §§goto(addr80);
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      protected function onComplete(e:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || e)
         {
         }
         if(_loc5_ && onComplete$0)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        this.§^v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
                        while(true)
                        {
                           addr156:
                           addr132:
                           while(true)
                           {
                              this.§'!J§ = this.loader.width;
                              continue loop4;
                           }
                           loop8:
                           while(_loc4_ || this)
                           {
                              this.§#B§ = this.loader.height;
                              loop9:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop8;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 while(sIsVisible)
                                 {
                                    if(_loc5_)
                                    {
                                       dispatchEvent(new Event(Event.COMPLETE));
                                       if(_loc5_ && e)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr213:
                                       addr259:
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop9;
                                       return;
                                    }
                                    continue loop0;
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       continue loop2;
                                    }
                                 }
                                 try
                                 {
                                    addr197:
                                    (this.§^v§.content as Bitmap).smoothing = true;
                                    if(_loc5_ && onComplete$0)
                                    {
                                    }
                                    §§goto(addr213);
                                 }
                                 catch(e:Error)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc5_ && onComplete$0)
                                       {
                                       }
                                       addr249:
                                       if(_loc4_ || this)
                                       {
                                       }
                                    }
                                    trace("Cannot set smoothing");
                                    §§goto(addr249);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr156);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §6W§(e:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && e)
         {
         }
         if(!_loc5_)
         {
            if(_loc4_)
            {
               while(true)
               {
                  this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr88:
                  loop5:
                  while(true)
                  {
                     if(_loc5_)
                     {
                        loop1:
                        while(this.§"!M§ > 0)
                        {
                           loop2:
                           while(!_loc5_)
                           {
                              while(true)
                              {
                                 loop3:
                                 do
                                 {
                                    this.load();
                                    while(!_loc5_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 while(_loc5_);
                                 
                                 addr154:
                                 break loop1;
                              }
                           }
                        }
                        return;
                        addr39:
                     }
                     while(true)
                     {
                        this.§^v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
                        if(_loc4_)
                        {
                           continue loop5;
                        }
                        addr128:
                        addr128:
                     }
                  }
               }
            }
            §§goto(addr128);
         }
         §§goto(addr88);
      }
      
      public function get loader() : Loader
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§^v§;
      }
   }
}
