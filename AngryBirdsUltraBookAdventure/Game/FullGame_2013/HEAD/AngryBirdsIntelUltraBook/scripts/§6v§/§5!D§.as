package §6v§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §5!D§ extends MovieClip
   {
      
      protected static var sLoadedPolicyDomains:Array;
      
      protected static var sInstances:Array;
      
      protected static var sIsVisible:Boolean = true;
      
      public static const SMALL:String = "small";
      
      public static const SQUARE:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const LARGE:String = "large";
      
      {
         var sLoadedPolicyDomains:Boolean = true;
         var sInstances:Boolean = false;
         if(sLoadedPolicyDomains || sLoadedPolicyDomains)
         {
            loop0:
            while(true)
            {
               sLoadedPolicyDomains = [];
               while(true)
               {
                  addr155:
                  while(true)
                  {
                     sInstances = [];
                     continue loop0;
                  }
                  addr100:
                  if(!(sLoadedPolicyDomains || §5!D§))
                  {
                     continue;
                  }
                  while(true)
                  {
                     NORMAL = "normal";
                     loop11:
                     for(; !sInstances; while(sLoadedPolicyDomains || sInstances)
                     {
                        while(true)
                        {
                           LARGE = "large";
                           §§goto(addr41);
                        }
                     })
                     {
                        if(sLoadedPolicyDomains)
                        {
                           addr83:
                           if(sLoadedPolicyDomains || sInstances)
                           {
                              continue;
                           }
                           while(sLoadedPolicyDomains)
                           {
                              SQUARE = "square";
                              §§goto(addr83);
                           }
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 SMALL = "small";
                                 addr117:
                                 addr140:
                                 while(!sInstances)
                                 {
                                    §§goto(addr110);
                                 }
                                 while(true)
                                 {
                                    sIsVisible = true;
                                    continue loop5;
                                    §§goto(addr117);
                                 }
                                 addr45:
                                 if(!(sInstances && §5!D§))
                                 {
                                    if(!sInstances)
                                    {
                                       §+§("fbcdn-profile-a.akamaihd.net",true);
                                       addr54:
                                       if(sLoadedPolicyDomains)
                                       {
                                          return;
                                          addr41:
                                       }
                                       while(sLoadedPolicyDomains)
                                       {
                                          if(sLoadedPolicyDomains)
                                          {
                                             §§goto(addr45);
                                          }
                                          else
                                          {
                                             §§goto(addr117);
                                          }
                                       }
                                       continue loop11;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr110:
                        }
                        while(!sInstances)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr155);
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected var §2M§:Loader;
      
      protected var §'!<§:String;
      
      protected var §7!=§:int = 3;
      
      private var §;R§:int = 0;
      
      private var §>D§:int = 0;
      
      public function §5!D§(userId:String, useHttps:Boolean = false, imageSize:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || userId)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  continue loop0;
                  addr98:
                  if(_loc5_ || userId)
                  {
                     super();
                     loop4:
                     do
                     {
                        while(true)
                        {
                           this.init(userId,useHttps,imageSize);
                           while(_loc5_ || userId)
                           {
                              addr64:
                              if(_loc5_ || imageSize)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 continue;
                                 continue;
                              }
                              addr91:
                              while(_loc5_ || userId)
                              {
                                 §§goto(addr98);
                                 §§goto(addr64);
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(!_loc5_);
                     
                     return;
                     addr78:
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected static function §+§(domain:String, secure:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  while(_loc4_)
                  {
                     §§push(sLoadedPolicyDomains);
                     loop3:
                     while(true)
                     {
                        §§push(domain);
                        addr117:
                        addr120:
                        while(§§pop().indexOf(§§pop()) == -1)
                        {
                           continue loop3;
                        }
                        addr120:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public static function §6h§(visible:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var facebookProfilePicture:§5!D§ = null;
         if(!_loc5_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(sIsVisible == visible)
                     {
                        break loop1;
                     }
                     addr36:
                     §§goto(addr75);
                  }
               }
               if(_loc6_ || §5!D§)
               {
               }
               addr75:
               while(true)
               {
                  sIsVisible = visible;
                  while(!_loc5_)
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop2;
                     }
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop1;
               }
               return;
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr36);
            }
         }
         while(false)
         {
            §§goto(addr36);
         }
         var _loc3_:int = 0;
         loop6:
         for each(facebookProfilePicture in sInstances)
         {
            if(_loc6_ || _loc3_)
            {
               loop7:
               while(true)
               {
                  §§push(visible);
                  loop8:
                  while(!§§pop())
                  {
                     §§push(Boolean(facebookProfilePicture.loader));
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && facebookProfilePicture))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§pop();
                              loop11:
                              while(!_loc5_)
                              {
                                 §§push(facebookProfilePicture.loader.parent == facebookProfilePicture);
                                 if(_loc6_)
                                 {
                                    continue loop10;
                                 }
                                 addr166:
                                 if(!(_loc5_ && visible))
                                 {
                                    loop12:
                                    while(§§pop())
                                    {
                                       if(_loc6_ || visible)
                                       {
                                       }
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             facebookProfilePicture.removeChild(facebookProfilePicture.loader);
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || §5!D§)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         break loop14;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop12;
                                                            }
                                                            continue loop14;
                                                         }
                                                         addr113:
                                                      }
                                                      else
                                                      {
                                                         addr242:
                                                      }
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      facebookProfilePicture.addChild(facebookProfilePicture.loader);
                                                      break loop11;
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   addr184:
                                                   break loop12;
                                                   addr250:
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                    continue loop6;
                                    addr173:
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr242);
                                 }
                                 §§goto(addr184);
                              }
                              addr211:
                              if(!(_loc6_ || §5!D§))
                              {
                                 break loop8;
                              }
                              continue loop7;
                           }
                        }
                        §§goto(addr173);
                        if(_loc5_ && visible)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop8;
                        }
                        §§goto(addr166);
                        §§push(Boolean(§§pop()));
                     }
                  }
                  while(true)
                  {
                     §§goto(addr250);
                     §§goto(addr211);
                  }
               }
            }
            §§goto(addr113);
         }
         if(_loc5_)
         {
         }
      }
      
      protected function init(userId:String, useHttps:Boolean, imageSize:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_ || useHttps)
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
                     addr45:
                     if(!(_loc5_ && userId))
                     {
                        return;
                     }
                  }
               }
               while(true)
               {
                  if(_loc4_ || imageSize)
                  {
                     addEventListener(Event.REMOVED_FROM_STAGE,this.§[q§);
                     loop6:
                     for(; _loc4_; while(true)
                     {
                        if(_loc4_ || imageSize)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     },§§goto(addr194))
                     {
                        while(true)
                        {
                           §§push(this);
                           if(_loc4_ || userId)
                           {
                              if(useHttps)
                              {
                                 addr86:
                                 §§push("https://");
                                 if(!(_loc5_ && userId))
                                 {
                                    addr110:
                                    §§push(§§pop() + "graph.facebook.com/");
                                    if(_loc4_)
                                    {
                                       §§push(userId);
                                       if(!(_loc5_ && useHttps))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc4_)
                                          {
                                             addr136:
                                             §§push(§§pop() + "/picture?type=");
                                             if(_loc4_ || userId)
                                             {
                                                addr134:
                                                §§push(imageSize);
                                             }
                                             §§pop().§'!<§ = §§pop();
                                             continue loop6;
                                          }
                                          §§goto(addr134);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr136);
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
                              §§goto(addr134);
                           }
                           §§goto(addr86);
                           addr67:
                           if(_loc5_ && userId)
                           {
                              continue;
                           }
                           this.load();
                           while(!_loc4_)
                           {
                           }
                           addr74:
                           if(_loc5_ && userId)
                           {
                              while(true)
                              {
                                 if(_loc5_ && this)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr67);
                                 §§goto(addr74);
                              }
                              continue;
                              addr60:
                           }
                           if(!_loc5_)
                           {
                              §§goto(addr45);
                           }
                           while(true)
                           {
                              break loop6;
                           }
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr191);
      }
      
      private function §1Z§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(sInstances);
                  addr95:
                  loop2:
                  while(§§pop().indexOf(this) == -1)
                  {
                     while(true)
                     {
                        addr100:
                        while(!_loc3_)
                        {
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr28);
               }
               addr84:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               if(!_loc3_)
               {
                  if(!(_loc2_ || this))
                  {
                     §§goto(addr99);
                  }
                  addr28:
                  return;
               }
               while(_loc2_ || this)
               {
                  §§goto(addr84);
                  §§goto(addr91);
               }
               addr91:
               §§goto(addr100);
               addr77:
            }
         }
         while(true)
         {
            §§push(sInstances);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().push(this);
               §§goto(addr77);
            }
            §§goto(addr95);
         }
      }
      
      private function §[q§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && e))
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
                     if(_loc2_ && _loc2_)
                     {
                     }
                     loop3:
                     while(_loc3_)
                     {
                        continue loop0;
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 break loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                     §§push(sInstances);
                     continue loop1;
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §§pop().splice(sInstances.indexOf(this),1);
                     §§goto(addr82);
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
      
      public function get §3f§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.§;R§;
      }
      
      public function get §6$§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.§>D§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               this.§2M§ = new Loader();
               while(true)
               {
                  loop2:
                  for(; _loc1_; if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr84))
                  {
                     this.§2M§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
                     loop3:
                     while(_loc1_)
                     {
                        do
                        {
                           this.§2M§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
                           do
                           {
                              loop6:
                              do
                              {
                                 this.§2M§.load(new URLRequest(this.§'!<§),new LoaderContext(true));
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                    addr84:
                                    if(!_loc2_)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue loop2;
                              }
                              while(!(_loc1_ || _loc1_));
                              
                           }
                           while(_loc2_ && this);
                           
                        }
                        while(!_loc1_);
                        
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function onComplete(e:Event) : void
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
                  this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§2M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
                        if(_loc3_ || _loc3_)
                        {
                           loop4:
                           while(_loc3_)
                           {
                              continue loop1;
                              loop5:
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                                 addr88:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        addr203:
                     }
                  }
               }
            }
         }
         §§goto(addr204);
      }
      
      protected function §8!3§(e:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || e)
         {
         }
         if(!(_loc5_ && _loc3_))
         {
            loop0:
            while(_loc4_)
            {
               this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
               if(!(_loc4_ || _loc2_))
               {
                  break;
               }
               if(_loc5_ && this)
               {
                  continue;
               }
               if(!(_loc5_ && this))
               {
                  loop1:
                  while(true)
                  {
                     this.§2M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
                     if(!_loc5_)
                     {
                        while(!(_loc5_ && e))
                        {
                           if(true)
                           {
                              var _loc2_:*;
                              §§push((_loc2_ = this).§7!=§);
                              if(!(_loc5_ && e))
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc2_.§7!=§ = _loc3_;
                              }
                           }
                           continue loop1;
                           if(!(_loc5_ && _loc3_))
                           {
                              loop7:
                              while(true)
                              {
                                 if(this.§7!=§ > 0)
                                 {
                                    addr187:
                                    while(true)
                                    {
                                       if(!(_loc5_ && e))
                                       {
                                          break loop0;
                                       }
                                       continue loop7;
                                    }
                                    addr187:
                                 }
                                 §§goto(addr144);
                              }
                           }
                           break loop0;
                        }
                        while(!_loc4_)
                        {
                        }
                        if(_loc4_ || this)
                        {
                           §§goto(addr169);
                        }
                        while(true)
                        {
                           this.load();
                           §§goto(addr181);
                        }
                        addr181:
                        addr169:
                        if(!(_loc4_ || _loc3_))
                        {
                           §§goto(addr187);
                        }
                        addr144:
                        return;
                        addr195:
                        addr57:
                     }
                     break loop0;
                  }
               }
               §§goto(addr169);
            }
            while(true)
            {
               §§goto(addr195);
               §§goto(addr187);
            }
         }
         §§goto(addr57);
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
         return this.§2M§;
      }
   }
}
