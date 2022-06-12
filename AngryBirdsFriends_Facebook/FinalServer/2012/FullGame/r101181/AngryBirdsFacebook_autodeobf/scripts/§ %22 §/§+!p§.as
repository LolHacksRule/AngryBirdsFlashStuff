package § " §
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §+!p§ extends MovieClip
   {
      
      protected static var §+!K§:Array;
      
      protected static var §+f§:Array;
      
      protected static var §;!c§:Boolean = true;
      
      public static const §1s§:String = "small";
      
      public static const §'"6§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §7!G§:String = "large";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §+!K§ = [];
            loop0:
            while(true)
            {
               §+f§ = [];
               while(true)
               {
                  §;!c§ = true;
                  loop2:
                  while(true)
                  {
                     §1s§ = "small";
                     loop3:
                     while(true)
                     {
                        §'"6§ = "square";
                        loop4:
                        while(true)
                        {
                           NORMAL = "normal";
                           while(!_loc2_)
                           {
                              §7!G§ = "large";
                              loop6:
                              while(!_loc2_)
                              {
                                 continue loop2;
                                 while(true)
                                 {
                                    §`!2§("fbcdn-profile-a.akamaihd.net",true);
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 return;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      protected var §]D§:Loader;
      
      protected var §7"=§:String;
      
      protected var §<k§:int = 3;
      
      private var §+!g§:int = 0;
      
      private var §7@§:int = 0;
      
      public function §+!p§(param1:String, param2:Boolean = false, param3:String = "square")
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
            while(_loc4_);
            
         }
      }
      
      protected static function §`!2§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(§+!K§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr93:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     continue loop0;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  addr99:
                  while(true)
                  {
                     continue loop0;
                     addr89:
                     §§pop().push(§§pop());
                     do
                     {
                        Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
                     }
                     while(!(_loc3_ || param2));
                     
                     if(!_loc4_)
                     {
                        return;
                        addr71:
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public static function §]"0§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+!p§ = null;
         if(!_loc6_)
         {
            if(§;!c§ == param1)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
            §;!c§ = param1;
         }
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §+f§)
         {
            if(!(_loc6_ && §+!p§))
            {
               §§push(param1);
               for(; !§§pop(); if(!(_loc5_ || §+!p§))
               {
                  continue;
               },if(§§pop())
               {
                  §§goto(addr123);
               },§§goto(addr75))
               {
                  §§push(Boolean(_loc2_.loader));
                  if(!_loc6_)
                  {
                     continue;
                  }
                  addr123:
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr124:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           continue loop2;
                        }
                        addr96:
                        addr96:
                        addr137:
                        continue loop0;
                     }
                  }
               }
               if(!_loc2_.loader.parent)
               {
                  §§goto(addr133);
               }
               §§goto(addr96);
            }
            §§goto(addr81);
         }
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            while(true)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
               addr108:
               while(true)
               {
                  §§push(this);
                  if(!_loc5_)
                  {
                     if(param2)
                     {
                        addr59:
                        §§push("https://");
                        if(_loc4_)
                        {
                           addr68:
                           §§push(§§pop() + "graph.facebook.com/");
                           if(!_loc5_)
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr99:
                                    §§push(§§pop() + "/picture?type=");
                                    if(_loc4_ || this)
                                    {
                                       addr97:
                                       §§push(param3);
                                    }
                                    §§pop().§7"=§ = §§pop();
                                    continue;
                                 }
                              }
                              §§goto(addr99);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        §§push("http://");
                        if(!_loc5_)
                        {
                           §§goto(addr68);
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr59);
               }
            }
            addr115:
         }
         while(true)
         {
            this.load();
            if(!_loc4_)
            {
               continue;
            }
            if(!(_loc5_ && param1))
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr115);
            }
            §§goto(addr108);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§+f§);
            if(!(_loc2_ && _loc2_))
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
            §§push(§+f§);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§+f§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop().indexOf(this) != -1)
               {
               }
               §§goto(addr48);
            }
            §§pop().splice(§+f§.indexOf(this),1);
         }
         addr48:
         if(!_loc3_)
         {
            §§push(§+f§);
         }
      }
      
      public function get §!b§() : int
      {
         return this.§+!g§;
      }
      
      public function get §6!n§() : int
      {
         return this.§7@§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]D§ = new Loader();
            loop0:
            while(true)
            {
               this.§]D§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  this.§]D§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        this.§]D§.load(new URLRequest(this.§7"=§),new LoaderContext(true));
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop0;
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var e:Event = param1;
         loop0:
         while(true)
         {
            this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            addr103:
            while(true)
            {
               this.§]D§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
               if(!_loc4_)
               {
                  this.§+!g§ = this.loader.width;
                  if(_loc5_ || this)
                  {
                     continue loop0;
                  }
               }
               addr139:
               dispatchEvent(new Event(Event.COMPLETE));
               return;
            }
         }
      }
      
      protected function §>0§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(_loc4_)
            {
               this.§]D§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
               if(!(_loc5_ && _loc3_))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§<k§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§<k§ = _loc3_;
                  }
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr96);
               }
               if(this.§<k§ > 0)
               {
                  if(_loc4_ || param1)
                  {
                     §§goto(addr96);
                  }
               }
               §§goto(addr96);
            }
         }
         addr96:
         this.load();
      }
      
      public function get loader() : Loader
      {
         return this.§]D§;
      }
   }
}
