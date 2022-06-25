package §3!8§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §%!5§ extends MovieClip
   {
      
      protected static var §<§:Array;
      
      protected static var §[9§:Array;
      
      protected static var §%>§:Boolean = true;
      
      public static const §9!2§:String = "small";
      
      public static const §+a§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §;R§:String = "large";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<§ = [];
            while(true)
            {
               §[9§ = [];
               loop1:
               while(true)
               {
                  §%>§ = true;
                  loop2:
                  while(true)
                  {
                     §9!2§ = "small";
                     while(!_loc2_)
                     {
                        §+a§ = "square";
                        loop4:
                        while(!(_loc2_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           NORMAL = "normal";
                           loop5:
                           while(true)
                           {
                              §;R§ = "large";
                              loop6:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §`!_§("fbcdn-profile-a.akamaihd.net",true);
                                    if(!_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 return;
                              }
                              continue loop4;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr56);
      }
      
      protected var §`!u§:Loader;
      
      protected var §2!o§:String;
      
      protected var §^!p§:int = 3;
      
      private var §&Z§:int = 0;
      
      private var §3!,§:int = 0;
      
      public function §%!5§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
         }
         do
         {
            this.init(param1,param2,param3);
         }
         while(!_loc5_);
         
      }
      
      protected static function §`!_§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(§<§);
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
                     while(true)
                     {
                        addr74:
                        while(!(_loc3_ && param2))
                        {
                           Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
                           if(!_loc3_)
                           {
                              return;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§<§);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     §§pop().push(§§pop());
                     §§goto(addr74);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §]`§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§%!5§ = null;
         if(_loc5_ || _loc3_)
         {
            if(§%>§ == param1)
            {
               if(_loc5_)
               {
                  return;
               }
            }
            else
            {
               addr39:
               §%>§ = param1;
            }
            var _loc3_:int = 0;
            loop0:
            for each(_loc2_ in §[9§)
            {
               if(!(_loc6_ && §%!5§))
               {
                  §§push(param1);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(Boolean(_loc2_.loader));
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr139:
                                 §§push(_loc2_.loader.parent == _loc2_);
                                 if(_loc5_ || _loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc6_)
                                 {
                                    _loc2_.removeChild(_loc2_.loader);
                                 }
                                 if(_loc5_ || _loc3_)
                                 {
                                    break loop2;
                                 }
                              }
                              addr94:
                           }
                           while(!_loc6_)
                           {
                              if(_loc6_ && _loc2_)
                              {
                                 addr142:
                                 if(!_loc2_.loader.parent)
                                 {
                                    if(_loc5_)
                                    {
                                       _loc2_.addChild(_loc2_.loader);
                                       break;
                                    }
                                    break;
                                 }
                                 addr111:
                                 continue loop0;
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr111);
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr111);
                     }
                  }
               }
               §§goto(addr142);
            }
            return;
         }
         §§goto(addr39);
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§'6§);
         }
         loop0:
         while(true)
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.§@!K§);
            do
            {
               §§push(this);
               if(_loc5_ || param2)
               {
                  if(param2)
                  {
                     addr53:
                     §§push("https://");
                     §§push((_loc5_ || param1 ? §§pop() : §§pop()) + "graph.facebook.com/");
                     if(!(_loc4_ && param2))
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              addr107:
                              §§push(§§pop() + "/picture?type=");
                              if(_loc5_)
                              {
                                 addr112:
                                 §§push(§§pop() + param3);
                              }
                           }
                           §§pop().§2!o§ = §§pop();
                           continue loop0;
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     §§push("http://");
                     if(!(_loc4_ && param3))
                     {
                        §§goto(addr81);
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr53);
            }
            while(_loc4_ && param2);
            
            return;
         }
      }
      
      private function §'6§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§[9§);
            if(_loc2_)
            {
               if(§§pop().indexOf(this) == -1)
               {
               }
               §§goto(addr50);
            }
            §§pop().push(this);
         }
         addr50:
         if(!(_loc3_ && _loc2_))
         {
            §§push(§[9§);
         }
      }
      
      private function §@!K§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§[9§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop().indexOf(this) != -1)
               {
               }
               §§goto(addr53);
            }
            §§pop().splice(§[9§.indexOf(this),1);
         }
         addr53:
         if(!(_loc3_ && this))
         {
            §§push(§[9§);
         }
      }
      
      public function get §+1§() : int
      {
         return this.§&Z§;
      }
      
      public function get §#!b§() : int
      {
         return this.§3!,§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`!u§ = new Loader();
            loop0:
            while(true)
            {
               this.§`!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  this.§`!u§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
                  loop2:
                  while(_loc2_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§`!u§.load(new URLRequest(this.§2!o§),new LoaderContext(true));
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
               loop1:
               while(true)
               {
                  this.§&Z§ = this.loader.width;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§3!,§ = this.loader.height;
                        loop4:
                        while(§%>§)
                        {
                           if(_loc4_ || param1)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           addr67:
                           if(_loc3_)
                           {
                              break loop3;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 break loop4;
                              }
                              continue loop3;
                           }
                        }
                        try
                        {
                           (this.§`!u§.content as Bitmap).smoothing = true;
                           addr121:
                        }
                        catch(e:Error)
                        {
                        }
                        dispatchEvent(new Event(Event.COMPLETE));
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §"[§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc4_ && param1))
            {
               this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
               addr39:
               if(_loc5_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§^!p§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || param1)
                  {
                     _loc2_.§^!p§ = _loc3_;
                  }
                  if(!(_loc4_ && this))
                  {
                     addr101:
                     if(this.§^!p§ > 0)
                     {
                        if(_loc5_ || param1)
                        {
                           addr112:
                           this.load();
                        }
                     }
                  }
                  return;
               }
               §§goto(addr101);
            }
            §§goto(addr112);
         }
         §§goto(addr39);
      }
      
      public function get loader() : Loader
      {
         return this.§`!u§;
      }
   }
}
