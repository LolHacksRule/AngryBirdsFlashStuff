package §%t§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §?!a§ extends MovieClip
   {
      
      protected static var §+Q§:Array;
      
      protected static var §'$§:Array;
      
      protected static var §-G§:Boolean = true;
      
      public static const §?!H§:String = "small";
      
      public static const §+6§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §@7§:String = "large";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §?!a§)
         {
            §+Q§ = [];
            loop0:
            while(true)
            {
               §'$§ = [];
               loop1:
               while(true)
               {
                  §-G§ = true;
                  while(!_loc1_)
                  {
                     §?!H§ = "small";
                     loop3:
                     for(; _loc2_; if(_loc2_ || _loc2_)
                     {
                        continue loop1;
                     })
                     {
                        §+6§ = "square";
                        loop4:
                        while(true)
                        {
                           NORMAL = "normal";
                           loop5:
                           do
                           {
                              §@7§ = "large";
                              while(!_loc1_)
                              {
                                 §-!I§("fbcdn-profile-a.akamaihd.net",true);
                                 if(!_loc1_)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                           while(_loc1_);
                           
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
                  if(_loc2_ || _loc1_)
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      protected var §`!a§:Loader;
      
      protected var §>!n§:String;
      
      protected var §2!K§:int = 3;
      
      private var §7S§:int = 0;
      
      private var §%e§:int = 0;
      
      public function §?!a§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         do
         {
            this.init(param1,param2,param3);
         }
         while(_loc4_);
         
      }
      
      protected static function §-!I§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(§+Q§);
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
                     §§push(§+Q§);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     §§pop().push(§§pop());
                     while(_loc3_ || _loc3_)
                     {
                        Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           return;
                        }
                        addr89:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr89);
      }
      
      public static function §2q§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?!a§ = null;
         if(_loc5_ || param1)
         {
            if(§-G§ == param1)
            {
               if(_loc5_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               §-G§ = param1;
            }
         }
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §'$§)
         {
            if(_loc5_)
            {
               §§push(param1);
               for(; !§§pop(); if(!(_loc5_ || §?!a§))
               {
                  continue;
               },if(§§pop())
               {
                  §§goto(addr128);
               },§§goto(addr80))
               {
                  §§push(Boolean(_loc2_.loader));
                  if(_loc5_)
                  {
                     continue;
                  }
                  addr128:
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr129:
                     while(true)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           continue loop2;
                        }
                        addr101:
                        addr147:
                        continue loop0;
                     }
                  }
               }
               if(!_loc2_.loader.parent)
               {
                  §§goto(addr143);
               }
               §§goto(addr101);
            }
            §§goto(addr95);
         }
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§+T§);
            while(true)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.§<I§);
               addr118:
               while(true)
               {
                  §§push(this);
                  if(_loc4_)
                  {
                     if(param2)
                     {
                        addr59:
                        §§push("https://");
                        if(_loc4_ || param2)
                        {
                           addr73:
                           §§push(§§pop() + "graph.facebook.com/");
                           if(_loc4_ || param2)
                           {
                           }
                           addr103:
                           §§push(§§pop() + "/picture?type=");
                           if(!_loc5_)
                           {
                              addr107:
                              §§push(§§pop() + param3);
                           }
                           §§pop().§>!n§ = §§pop();
                           continue;
                        }
                        §§push(param1);
                        if(_loc4_ || param2)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr107);
                     }
                     else
                     {
                        §§push("http://");
                        if(_loc4_)
                        {
                           §§goto(addr73);
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr59);
               }
            }
            addr125:
         }
         while(true)
         {
            this.load();
            if(_loc5_ && this)
            {
               continue;
            }
            if(!_loc5_)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr125);
            }
            §§goto(addr118);
         }
      }
      
      private function §+T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§'$§);
            if(!_loc3_)
            {
               if(§§pop().indexOf(this) == -1)
               {
               }
               §§goto(addr45);
            }
            §§pop().push(this);
         }
         addr45:
         if(!(_loc3_ && param1))
         {
            §§push(§'$§);
         }
      }
      
      private function §<I§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§'$§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop().indexOf(this) != -1)
               {
               }
               §§goto(addr53);
            }
            §§pop().splice(§'$§.indexOf(this),1);
         }
         addr53:
         if(_loc2_ || this)
         {
            §§push(§'$§);
         }
      }
      
      public function get §'!+§() : int
      {
         return this.§7S§;
      }
      
      public function get §?x§() : int
      {
         return this.§%e§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`!a§ = new Loader();
            while(true)
            {
               this.§`!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(!(_loc2_ && this))
               {
                  this.§`!a§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     while(true)
                     {
                        this.§`!a§.load(new URLRequest(this.§>!n§),new LoaderContext(true));
                        if(!(_loc2_ && this))
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
         §§goto(addr78);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§`!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§`!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
               if(_loc3_)
               {
                  this.§7S§ = this.loader.width;
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        this.§%e§ = this.loader.height;
                        if(!_loc4_)
                        {
                           if(!§-G§)
                           {
                              try
                              {
                                 addr108:
                                 (this.§`!a§.content as Bitmap).smoothing = true;
                                 break;
                              }
                              catch(e:Error)
                              {
                              }
                              dispatchEvent(new Event(Event.COMPLETE));
                           }
                           else
                           {
                              addr127:
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                           return;
                        }
                        break;
                        addr51:
                     }
                  }
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr51);
               }
               §§goto(addr108);
            }
         }
         §§goto(addr127);
      }
      
      protected function §9s§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§`!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc4_ && _loc3_))
            {
               this.§`!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
               if(!_loc4_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§2!K§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc2_.§2!K§ = _loc3_;
                  }
                  if(_loc5_)
                  {
                     addr81:
                     if(this.§2!K§ > 0)
                     {
                        if(!_loc4_)
                        {
                           addr87:
                           this.load();
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr81);
         }
         §§goto(addr87);
      }
      
      public function get loader() : Loader
      {
         return this.§`!a§;
      }
   }
}
