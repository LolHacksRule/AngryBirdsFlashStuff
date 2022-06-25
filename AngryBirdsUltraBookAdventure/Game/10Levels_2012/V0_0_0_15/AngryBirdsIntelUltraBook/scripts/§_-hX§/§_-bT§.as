package §_-hX§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §_-bT§ extends MovieClip
   {
      
      protected static var §_-00H§:Array;
      
      protected static var §_-uP§:Array;
      
      protected static var §_-055§:Boolean = true;
      
      public static const §_-0C4§:String = "small";
      
      public static const §_-N2§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §_-xI§:String = "large";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-00H§ = [];
            loop0:
            while(true)
            {
               §_-uP§ = [];
               loop1:
               while(true)
               {
                  §_-055§ = true;
                  loop2:
                  while(true)
                  {
                     §_-0C4§ = "small";
                     loop3:
                     for(; !_loc1_; loop6:
                     while(_loc2_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                        while(true)
                        {
                           §_-0E6§("fbcdn-profile-a.akamaihd.net",true);
                           if(_loc1_)
                           {
                              continue loop6;
                           }
                           §§goto(addr31);
                        }
                        §§goto(addr50);
                     })
                     {
                        §_-N2§ = "square";
                        loop4:
                        while(true)
                        {
                           NORMAL = "normal";
                           while(true)
                           {
                              §_-xI§ = "large";
                              continue loop3;
                              addr31:
                              if(!(_loc1_ && §_-bT§))
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                    addr50:
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr76);
      }
      
      protected var §_-l2§:Loader;
      
      protected var §_-M§:String;
      
      protected var §_-3I§:int = 3;
      
      private var §_-sY§:int = 0;
      
      private var §_-Zx§:int = 0;
      
      public function §_-bT§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
         }
         do
         {
            this.init(param1,param2,param3);
         }
         while(_loc5_);
         
      }
      
      protected static function §_-0E6§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§_-00H§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     return;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§_-00H§);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§pop().push(§§pop());
                        do
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop2;
                           }
                           if(_loc3_ || _loc3_)
                           {
                              continue;
                           }
                        }
                        while(Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml"), _loc4_ && param2);
                        
                        return;
                        addr54:
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      public static function §_-03c§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-bT§ = null;
         if(!_loc6_)
         {
            if(§_-055§ == param1)
            {
               if(!(_loc6_ && §_-bT§))
               {
                  §§goto(addr31);
               }
            }
            else
            {
               §_-055§ = param1;
            }
            loop0:
            for each(_loc2_ in §_-uP§)
            {
               if(_loc5_)
               {
                  §§push(param1);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(Boolean(_loc2_.loader));
                        loop2:
                        for(; _loc5_; if(!(_loc5_ || param1))
                        {
                           continue;
                        },§§goto(addr82))
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr113:
                                       break;
                                    }
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          _loc2_.removeChild(_loc2_.loader);
                                          break;
                                       }
                                       addr152:
                                       addr148:
                                       _loc2_.addChild(_loc2_.loader);
                                    }
                                    else
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          if(_loc6_ && _loc2_)
                                          {
                                             addr144:
                                             if(!_loc2_.loader.parent)
                                             {
                                                §§goto(addr148);
                                             }
                                             break;
                                          }
                                          addr141:
                                          §§push(_loc2_.loader.parent == _loc2_);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             continue loop2;
                                          }
                                          addr133:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop4;
                                             §§goto(addr141);
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              if(_loc5_ || param1)
                              {
                                 addr111:
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 §§goto(addr152);
                              }
                              §§goto(addr113);
                              addr82:
                           }
                           §§goto(addr133);
                        }
                        continue;
                     }
                     §§goto(addr144);
                  }
               }
               §§goto(addr111);
            }
            return;
         }
         addr31:
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
            while(true)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.§_-l5§);
               while(true)
               {
                  §§push(this);
                  if(_loc5_)
                  {
                     if(param2)
                     {
                        addr41:
                        §§push("https://");
                        if(!_loc4_)
                        {
                           addr60:
                           §§push(§§pop() + "graph.facebook.com/");
                           if(_loc5_)
                           {
                              §§push(param1);
                              if(!(_loc4_ && param3))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    addr86:
                                    §§push(§§pop() + "/picture?type=");
                                    if(_loc5_)
                                    {
                                       addr84:
                                       §§push(param3);
                                    }
                                    §§pop().§_-M§ = §§pop();
                                    continue;
                                 }
                              }
                              §§goto(addr86);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§push("http://");
                        if(_loc5_)
                        {
                           §§goto(addr60);
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr41);
               }
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               §§goto(addr111);
            }
         }
         §§goto(addr111);
      }
      
      private function §_-b-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§_-uP§);
            if(!_loc2_)
            {
               if(§§pop().indexOf(this) == -1)
               {
               }
               §§goto(addr46);
            }
            §§pop().push(this);
         }
         addr46:
         if(!_loc2_)
         {
            §§push(§_-uP§);
         }
      }
      
      private function §_-l5§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(§_-uP§);
            if(_loc3_)
            {
               if(§§pop().indexOf(this) != -1)
               {
               }
               §§goto(addr54);
            }
            §§pop().splice(§_-uP§.indexOf(this),1);
         }
         addr54:
         if(_loc3_ || _loc2_)
         {
            §§push(§_-uP§);
         }
      }
      
      public function get §_-09q§() : int
      {
         return this.§_-sY§;
      }
      
      public function get §_-cD§() : int
      {
         return this.§_-Zx§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-l2§ = new Loader();
            loop0:
            while(true)
            {
               this.§_-l2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  this.§_-l2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§_-l2§.load(new URLRequest(this.§_-M§),new LoaderContext(true));
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var e:Event = param1;
         if(!(_loc5_ && this))
         {
            this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§_-l2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
               while(true)
               {
                  if(!_loc5_)
                  {
                     this.§_-sY§ = this.loader.width;
                     if(_loc5_ && _loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr143);
      }
      
      protected function §_-ba§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc5_ && this))
            {
               this.§_-l2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
               if(_loc4_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§_-3I§);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_ || param1)
                  {
                     _loc2_.§_-3I§ = _loc3_;
                  }
                  if(_loc4_ || _loc2_)
                  {
                  }
                  §§goto(addr96);
               }
            }
            if(this.§_-3I§ > 0)
            {
               if(_loc4_)
               {
                  §§goto(addr96);
               }
            }
            §§goto(addr96);
         }
         addr96:
         this.load();
      }
      
      public function get loader() : Loader
      {
         return this.§_-l2§;
      }
   }
}
