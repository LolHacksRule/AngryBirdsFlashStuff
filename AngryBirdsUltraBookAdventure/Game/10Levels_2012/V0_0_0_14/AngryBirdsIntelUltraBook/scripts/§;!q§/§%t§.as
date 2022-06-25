package §;!q§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §%t§ extends MovieClip
   {
      
      protected static var §1I§:Array;
      
      protected static var §9y§:Array;
      
      protected static var §9;§:Boolean = true;
      
      public static const §'4§:String = "small";
      
      public static const §@!#§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §`D§:String = "large";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1I§ = [];
            while(true)
            {
               §9y§ = [];
               loop1:
               for(; !_loc1_; while(!(_loc1_ && _loc2_))
               {
               })
               {
                  §9;§ = true;
                  while(true)
                  {
                     §'4§ = "small";
                     continue loop1;
                     addr67:
                     if(_loc2_ || _loc2_)
                     {
                        §`D§ = "large";
                        loop7:
                        for(; !(_loc1_ && _loc1_); §^I§("fbcdn-profile-a.akamaihd.net",true),if(_loc2_)
                        {
                           return;
                        })
                        {
                           addr43:
                           if(!(_loc1_ && _loc1_))
                           {
                              continue;
                           }
                           addr89:
                           while(true)
                           {
                              NORMAL = "normal";
                              break loop7;
                              §§goto(addr43);
                           }
                        }
                        while(!_loc1_)
                        {
                           §§goto(addr67);
                           §§goto(addr36);
                        }
                        addr36:
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §@!#§ = "square";
            §§goto(addr89);
         }
      }
      
      protected var §2C§:Loader;
      
      protected var §!x§:String;
      
      protected var §19§:int = 3;
      
      private var §6!,§:int = 0;
      
      private var §3e§:int = 0;
      
      public function §%t§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
            do
            {
               this.init(param1,param2,param3);
            }
            while(_loc4_);
            
         }
      }
      
      protected static function §^I§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §%t§))
         {
            §§push(§1I§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr96:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §!!T§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§%t§ = null;
         if(_loc6_)
         {
            if(§9;§ == param1)
            {
               if(_loc6_ || _loc2_)
               {
                  return;
               }
            }
         }
         §9;§ = param1;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §9y§)
         {
            if(!_loc5_)
            {
               §§push(param1);
               loop1:
               for(; !§§pop(); while(!(_loc5_ && param1))
               {
                  §§pop();
                  §§goto(addr135);
               })
               {
                  §§push(Boolean(_loc2_.loader));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue loop1;
                     }
                     loop5:
                     while(§§pop())
                     {
                        if(!_loc5_)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              if(!(_loc6_ || param1))
                              {
                                 break loop1;
                              }
                              while(true)
                              {
                                 _loc2_.removeChild(_loc2_.loader);
                                 addr105:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(false)
                                       {
                                          addr109:
                                          break loop5;
                                       }
                                       break loop5;
                                    }
                                    addr135:
                                    while(true)
                                    {
                                       §§push(_loc2_.loader.parent == _loc2_);
                                       if(_loc5_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr148:
                           §§goto(addr109);
                        }
                        §§goto(addr105);
                     }
                     continue loop0;
                  }
               }
               if(!_loc2_.loader.parent)
               {
                  if(_loc6_)
                  {
                     _loc2_.addChild(_loc2_.loader);
                  }
                  §§goto(addr148);
               }
               §§goto(addr109);
            }
            §§goto(addr101);
         }
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§-8§);
         }
         do
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.§8!1§);
            while(true)
            {
               §§push(this);
               if(!(_loc5_ && this))
               {
                  if(param2)
                  {
                     addr57:
                     §§push("https://");
                     if(!(_loc5_ && this))
                     {
                        addr86:
                        §§push(§§pop() + "graph.facebook.com/");
                        if(_loc4_ || param1)
                        {
                           §§push(param1);
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || param1)
                              {
                                 addr127:
                                 §§push(§§pop() + "/picture?type=");
                                 if(!_loc5_)
                                 {
                                    addr125:
                                    §§push(param3);
                                 }
                                 §§pop().§!x§ = §§pop();
                                 continue;
                              }
                           }
                           §§goto(addr127);
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     §§push("http://");
                     if(!(_loc5_ && param2))
                     {
                        §§goto(addr86);
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr57);
            }
         }
         while(_loc5_ && param3);
         
      }
      
      private function §-8§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§9y§);
            if(!(_loc2_ && _loc3_))
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
            §§push(§9y§);
         }
      }
      
      private function §8!1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§9y§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop().indexOf(this) != -1)
               {
                  if(!_loc2_)
                  {
                     addr44:
                     §9y§.splice(§9y§.indexOf(this),1);
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function get §!'§() : int
      {
         return this.§6!,§;
      }
      
      public function get §`!W§() : int
      {
         return this.§3e§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2C§ = new Loader();
            loop0:
            do
            {
               this.§2C§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  this.§2C§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
                  while(_loc2_ || this)
                  {
                     this.§2C§.load(new URLRequest(this.§!x§),new LoaderContext(true));
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc2_);
            
         }
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var e:Event = param1;
         loop0:
         while(true)
         {
            this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§2C§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
               addr98:
               while(true)
               {
                  this.§6!,§ = this.loader.width;
                  if(!(_loc5_ || _loc3_))
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                     return;
                  }
                  addr130:
                  continue loop0;
               }
               continue loop0;
               addr27:
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               addChild(this.§2C§);
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§3e§ = this.loader.height;
                           if(_loc5_ || param1)
                           {
                              if(§9;§)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr27);
                                 }
                                 break;
                              }
                           }
                           break;
                        }
                        §§goto(addr130);
                        addr44:
                     }
                     try
                     {
                        (this.§2C§.content as Bitmap).smoothing = true;
                        §§goto(addr130);
                     }
                     catch(e:Error)
                     {
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr98);
               }
               §§goto(addr130);
            }
         }
      }
      
      protected function §<@§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(_loc4_)
            {
               this.§2C§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
               if(_loc4_ || param1)
               {
                  addr58:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§19§);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && this))
                  {
                     _loc2_.§19§ = _loc3_;
                  }
                  if(_loc4_)
                  {
                     addr95:
                     if(this.§19§ > 0)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           this.load();
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr95);
      }
      
      public function get loader() : Loader
      {
         return this.§2C§;
      }
   }
}
