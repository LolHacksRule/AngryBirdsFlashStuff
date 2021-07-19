package §7"a§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §@4§ extends MovieClip
   {
      
      protected static var §0!R§:Array;
      
      protected static var §2j§:Array;
      
      protected static var §+"I§:Boolean = true;
      
      public static const §9"o§:String = "small";
      
      public static const § R§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §&"N§:String = "large";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!R§ = [];
            while(true)
            {
               §2j§ = [];
               while(true)
               {
                  §+"I§ = true;
                  addr81:
                  while(!_loc1_)
                  {
                     §9"o§ = "small";
                  }
               }
               addr52:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §4!%§("fbcdn-profile-a.akamaihd.net",true);
               addr59:
               if(!_loc1_)
               {
                  addr31:
                  if(!_loc2_)
                  {
                     loop5:
                     while(true)
                     {
                        §&"N§ = "large";
                        addr38:
                        addr76:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              addr40:
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr52);
                           }
                           addr69:
                           while(!_loc1_)
                           {
                              NORMAL = "normal";
                              continue loop5;
                           }
                           §§goto(addr81);
                           §§goto(addr59);
                        }
                        while(true)
                        {
                           § R§ = "square";
                           §§goto(addr69);
                           §§goto(addr40);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr38);
            }
         }
         §§goto(addr76);
      }
      
      protected var §7"p§:Boolean = false;
      
      protected var §9v§:Loader;
      
      protected var §4#'§:String;
      
      protected var §^6§:int = 3;
      
      private var §%"5§:int = 0;
      
      private var §-""§:int = 0;
      
      public function §@4§(param1:String, param2:Boolean = true, param3:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            do
            {
               this.init(param1,param2,param3);
            }
            while(_loc4_ && this);
            
         }
      }
      
      protected static function §4!%§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§0!R§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr95:
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     §§push(§0!R§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(_loc3_ && param1)
                     {
                        continue loop1;
                     }
                     §§pop().push(§§pop());
                     do
                     {
                        Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
                     }
                     while(!(_loc4_ || _loc3_));
                     
                     if(!(_loc3_ && §@4§))
                     {
                        return;
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr95);
      }
      
      public static function §6"s§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§@4§ = null;
         if(!_loc5_)
         {
            if(§+"I§ == param1)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
            §+"I§ = param1;
         }
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §2j§)
         {
            if(_loc6_)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        if(!_loc2_.loader.parent)
                        {
                           break;
                        }
                        addr94:
                        continue loop0;
                     }
                     addr133:
                  }
                  else
                  {
                     §§push(Boolean(_loc2_.loader));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue loop1;
                        }
                        addr78:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.loader.parent == _loc2_);
                                       if(!(_loc5_ && §@4§))
                                       {
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                    addr110:
                                 }
                                 if(_loc6_)
                                 {
                                    addr86:
                                    _loc2_.removeChild(_loc2_.loader);
                                    break;
                                 }
                                 §§goto(addr133);
                              }
                              break;
                           }
                           continue loop0;
                        }
                        if(!_loc6_)
                        {
                           break loop1;
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr94);
               }
               _loc2_.addChild(_loc2_.loader);
               §§goto(addr133);
            }
            §§goto(addr86);
         }
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§7"p§;
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
            while(true)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.§+y§);
               for(; _loc5_; loop2:
               while(!(_loc4_ && this))
               {
                  while(true)
                  {
                     this.load();
                     if(!(_loc4_ && param2))
                     {
                        break;
                     }
                     continue loop2;
                  }
                  return;
               })
               {
                  §§push(this);
                  if(!(_loc4_ && this))
                  {
                     §§push((!!param2 ? "https://" : "http://") + "graph.facebook.com/");
                     if(_loc5_ || param2)
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              §§push(§§pop() + "/picture?type=");
                              if(!_loc4_)
                              {
                                 addr81:
                                 §§push(§§pop() + param3);
                              }
                           }
                           §§pop().§4#'§ = §§pop();
                           continue;
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr46);
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §2f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§2j§);
            if(_loc3_)
            {
               if(§§pop().indexOf(this) == -1)
               {
                  if(!_loc2_)
                  {
                     addr54:
                     §2j§.push(this);
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      private function §+y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§2j§);
            if(_loc2_)
            {
               if(§§pop().indexOf(this) != -1)
               {
               }
               §§goto(addr63);
            }
            §§pop().splice(§2j§.indexOf(this),1);
         }
         addr63:
         if(!(_loc3_ && _loc3_))
         {
            §§push(§2j§);
         }
      }
      
      public function get bitmapWidth() : int
      {
         return this.§%"5§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§-""§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9v§ = new Loader();
            loop0:
            while(true)
            {
               this.§9v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  this.§9v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
                  addr56:
                  while(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§9v§.load(new URLRequest(this.§4#'§),new LoaderContext(true));
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr56);
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
            this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            loop1:
            while(true)
            {
               this.§9v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
               loop2:
               while(true)
               {
                  this.§%"5§ = this.loader.width;
                  if(_loc4_ && _loc2_)
                  {
                     break;
                  }
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  this.§-""§ = this.loader.height;
                  loop3:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§7"p§ = true;
                           if(_loc4_ && param1)
                           {
                              break loop2;
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           if(!§+"I§)
                           {
                              break loop3;
                           }
                           if(!(_loc4_ && _loc2_))
                           {
                              continue loop3;
                           }
                           addr45:
                           if(true)
                           {
                              break loop3;
                           }
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  try
                  {
                     (this.§9v§.content as Bitmap).smoothing = true;
                     break;
                  }
                  catch(e:Error)
                  {
                     §§goto(addr156);
                  }
               }
               addr156:
               dispatchEvent(new Event(Event.COMPLETE));
               return;
            }
         }
      }
      
      protected function §=!'§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc4_ && this))
            {
               this.§9v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
               if(_loc5_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§^6§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || param1)
                  {
                     _loc2_.§^6§ = _loc3_;
                  }
                  if(_loc5_ || _loc2_)
                  {
                     §§goto(addr96);
                  }
               }
            }
            §§goto(addr102);
         }
         addr96:
         if(this.§^6§ > 0)
         {
            if(!_loc4_)
            {
               addr102:
               this.load();
            }
         }
      }
      
      public function get loader() : Loader
      {
         return this.§9v§;
      }
   }
}
