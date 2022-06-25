package §^`§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §14§ extends MovieClip
   {
      
      protected static var §%c§:Array;
      
      protected static var §"x§:Array;
      
      protected static var §;>§:Boolean = true;
      
      public static const §4,§:String = "small";
      
      public static const §93§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §!!z§:String = "large";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%c§ = [];
            loop0:
            while(true)
            {
               §"x§ = [];
               loop1:
               while(true)
               {
                  §;>§ = true;
                  addr98:
                  while(true)
                  {
                     §4,§ = "small";
                     addr91:
                     while(!_loc1_)
                     {
                        §93§ = "square";
                        while(true)
                        {
                           NORMAL = "normal";
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §!!z§ = "large";
            §§goto(addr48);
         }
         §§goto(addr33);
      }
      
      protected var §,!a§:Loader;
      
      protected var §64§:String;
      
      protected var §9D§:int = 3;
      
      private var §=L§:int = 0;
      
      private var §=!a§:int = 0;
      
      public function §14§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            do
            {
               this.init(param1,param2,param3);
            }
            while(!_loc5_);
            
         }
      }
      
      protected static function §2W§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §14§))
         {
            §§push(§%c§);
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
                     §§push(§%c§);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(_loc4_ || param2)
                     {
                        §§pop().push(§§pop());
                        do
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           if(!(_loc3_ && §14§))
                           {
                              continue;
                           }
                        }
                        while(Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml"), !_loc4_);
                        
                        return;
                        addr55:
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr55);
      }
      
      public static function §["#§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§14§ = null;
         if(_loc5_)
         {
            if(§;>§ == param1)
            {
               if(_loc5_ || §14§)
               {
                  return;
               }
            }
            §;>§ = param1;
         }
         loop0:
         for each(_loc2_ in §"x§)
         {
            if(!_loc6_)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || §14§)
                     {
                        if(!_loc2_.loader.parent)
                        {
                           addr128:
                           _loc2_.addChild(_loc2_.loader);
                           addr132:
                           break;
                        }
                        break;
                     }
                  }
                  else
                  {
                     §§push(Boolean(_loc2_.loader));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(_loc5_)
                           {
                              §§pop();
                              while(true)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§push(_loc2_.loader.parent == _loc2_);
                                    if(_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       _loc2_.removeChild(_loc2_.loader);
                                       break;
                                    }
                                    §§goto(addr128);
                                 }
                                 else
                                 {
                                    §§goto(addr97);
                                 }
                              }
                              break;
                           }
                           continue loop0;
                        }
                        addr84:
                        if(false)
                        {
                           break loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr128);
               }
               continue;
            }
            §§goto(addr84);
         }
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
            while(true)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.§=!?§);
               while(!(_loc4_ && param1))
               {
                  §§push(this);
                  if(_loc5_ || param3)
                  {
                     if(param2)
                     {
                        addr46:
                        §§push("https://");
                        if(_loc5_)
                        {
                           addr70:
                           §§push(§§pop() + "graph.facebook.com/");
                           if(_loc5_ || param3)
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && param1))
                                 {
                                    addr106:
                                    §§push(§§pop() + "/picture?type=");
                                    if(_loc5_)
                                    {
                                       §§push(param3);
                                    }
                                    §§pop().§64§ = §§pop();
                                    while(!_loc4_)
                                    {
                                       this.load();
                                       if(!_loc4_)
                                       {
                                          return;
                                          addr34:
                                       }
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr106);
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr106);
                     }
                     else
                     {
                        §§push("http://");
                        if(_loc5_ || param1)
                        {
                           §§goto(addr70);
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr46);
               }
            }
         }
         §§goto(addr34);
      }
      
      private function §#Z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§"x§);
            if(_loc2_ || param1)
            {
               if(§§pop().indexOf(this) == -1)
               {
                  if(_loc2_)
                  {
                     addr43:
                     §"x§.push(this);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §=!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§"x§);
            if(_loc3_ || this)
            {
               if(§§pop().indexOf(this) != -1)
               {
               }
               §§goto(addr54);
            }
            §§pop().splice(§"x§.indexOf(this),1);
         }
         addr54:
         if(_loc3_ || _loc3_)
         {
            §§push(§"x§);
         }
      }
      
      public function get §9! §() : int
      {
         return this.§=L§;
      }
      
      public function get §1"$§() : int
      {
         return this.§=!a§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,!a§ = new Loader();
            while(true)
            {
               this.§,!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(!_loc2_)
               {
                  this.§,!a§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
                  while(!(_loc2_ && this))
                  {
                     this.§,!a§.load(new URLRequest(this.§64§),new LoaderContext(true));
                     if(_loc1_)
                     {
                        return;
                        addr51:
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§,!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§,!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
               addr75:
               if(_loc3_ && this)
               {
                  continue;
               }
               if(§;>§)
               {
                  if(_loc4_)
                  {
                     addChild(this.§,!a§);
                     if(!_loc3_)
                     {
                        addr36:
                        if(_loc4_ || _loc3_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 this.§=!a§ = this.loader.height;
                              }
                              addr45:
                           }
                           try
                           {
                              addr119:
                              (this.§,!a§.content as Bitmap).smoothing = true;
                              addr126:
                           }
                           catch(e:Error)
                           {
                           }
                           dispatchEvent(new Event(Event.COMPLETE));
                           return;
                        }
                        loop4:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr75);
                              addr58:
                           }
                           addr89:
                           while(true)
                           {
                              §§goto(addr45);
                              continue loop4;
                           }
                        }
                        while(true)
                        {
                           this.§=L§ = this.loader.width;
                           §§goto(addr89);
                           §§goto(addr58);
                        }
                        addr99:
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr36);
               }
               §§goto(addr119);
            }
         }
         §§goto(addr99);
      }
      
      protected function §%""§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§,!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc4_ && _loc3_))
            {
               this.§,!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
               if(_loc5_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§9D§);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_.§9D§ = _loc3_;
                  }
                  if(_loc4_ && param1)
                  {
                  }
                  §§goto(addr109);
               }
               if(this.§9D§ > 0)
               {
                  if(_loc4_ && _loc2_)
                  {
                  }
               }
               §§goto(addr109);
            }
            this.load();
         }
         addr109:
      }
      
      public function get loader() : Loader
      {
         return this.§,!a§;
      }
   }
}
