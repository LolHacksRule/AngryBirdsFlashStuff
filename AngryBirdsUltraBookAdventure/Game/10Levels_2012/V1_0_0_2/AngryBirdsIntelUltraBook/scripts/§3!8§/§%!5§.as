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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<§ = [];
            while(true)
            {
               §[9§ = [];
               addr113:
               while(true)
               {
                  §%>§ = true;
                  while(true)
                  {
                     §9!2§ = "small";
                     addr40:
                     if(_loc2_ || _loc1_)
                     {
                        return;
                        addr57:
                     }
                  }
               }
               addr91:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               NORMAL = "normal";
               while(_loc2_ || _loc1_)
               {
                  §;R§ = "large";
                  do
                  {
                     §`!_§("fbcdn-profile-a.akamaihd.net",true);
                  }
                  while(!_loc2_);
                  
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     §§goto(addr40);
                  }
                  while(!_loc1_)
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr113);
                  addr89:
               }
               while(true)
               {
                  §+a§ = "square";
                  §§goto(addr89);
                  §§goto(addr67);
               }
               addr67:
               §§goto(addr57);
               addr103:
            }
         }
         §§goto(addr103);
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
         if(!(_loc4_ && this))
         {
            super();
            do
            {
               this.init(param1,param2,param3);
            }
            while(!_loc5_);
            
         }
      }
      
      protected static function §`!_§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§<§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr86:
               addr89:
               while(§§pop().indexOf(§§pop()) == -1)
               {
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      public static function §]`§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§%!5§ = null;
         if(_loc5_ || param1)
         {
            if(§%>§ == param1)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
            §%>§ = param1;
         }
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §[9§)
         {
            if(_loc5_)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || _loc2_)
                     {
                        addr137:
                        if(!_loc2_.loader.parent)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              addr148:
                              _loc2_.addChild(_loc2_.loader);
                              break;
                           }
                           break;
                        }
                        addr108:
                        continue loop0;
                     }
                     §§goto(addr148);
                  }
                  else
                  {
                     §§push(Boolean(_loc2_.loader));
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ || param1))
                                 {
                                    break;
                                 }
                                 if(_loc5_ || _loc3_)
                                 {
                                    _loc2_.removeChild(_loc2_.loader);
                                    break;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc2_.loader.parent == _loc2_);
                                    if(_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    addr116:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                           if(true)
                           {
                              continue loop0;
                           }
                           §§goto(addr108);
                           addr84:
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr108);
            }
            §§goto(addr137);
         }
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§'6§);
            while(true)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.§@!K§);
               while(!(_loc4_ && param1))
               {
                  §§push(this);
                  if(!_loc4_)
                  {
                     if(param2)
                     {
                        addr41:
                        §§push("https://");
                        §§push((!(_loc4_ && param2) ? §§pop() : §§pop()) + "graph.facebook.com/");
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(!(_loc4_ && param2))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && param1))
                              {
                                 addr106:
                                 §§push(§§pop() + "/picture?type=");
                                 if(_loc5_ || this)
                                 {
                                    addr104:
                                    §§push(param3);
                                 }
                                 §§pop().§2!o§ = §§pop();
                                 while(!_loc4_)
                                 {
                                    this.load();
                                    if(_loc5_)
                                    {
                                       return;
                                       addr34:
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr106);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        §§push("http://");
                        if(!_loc4_)
                        {
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr41);
               }
            }
         }
         §§goto(addr34);
      }
      
      private function §'6§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§[9§);
            if(!(_loc2_ && param1))
            {
               if(§§pop().indexOf(this) == -1)
               {
                  if(!_loc2_)
                  {
                     addr44:
                     §[9§.push(this);
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      private function §@!K§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(§[9§);
            if(_loc2_)
            {
               if(§§pop().indexOf(this) != -1)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr48:
                     §[9§.splice(§[9§.indexOf(this),1);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
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
         }
         loop0:
         while(true)
         {
            this.§`!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§`!u§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
               while(_loc2_ || _loc2_)
               {
                  continue loop0;
                  this.§`!u§.load(new URLRequest(this.§2!o§),new LoaderContext(true));
                  if(!(_loc1_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
               while(true)
               {
                  this.§&Z§ = this.loader.width;
                  loop2:
                  while(true)
                  {
                     addr61:
                     while(true)
                     {
                        this.§3!,§ = this.loader.height;
                        while(§%>§)
                        {
                           if(!_loc4_)
                           {
                              continue loop2;
                           }
                           if(!(_loc4_ || _loc2_))
                           {
                              continue;
                           }
                        }
                        try
                        {
                           addr104:
                           (this.§`!u§.content as Bitmap).smoothing = true;
                        }
                        catch(e:Error)
                        {
                        }
                        dispatchEvent(new Event(Event.COMPLETE));
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            addChild(this.§`!u§);
            if(_loc4_)
            {
               §§goto(addr38);
            }
            break;
         }
         §§goto(addr104);
      }
      
      protected function §"[§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!_loc4_)
            {
               this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
               addr29:
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr54);
               }
               §§goto(addr86);
            }
            addr54:
            var _loc2_:*;
            §§push((_loc2_ = this).§^!p§);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.§^!p§ = _loc3_;
            }
            if(!_loc4_)
            {
               addr86:
               if(this.§^!p§ > 0)
               {
                  if(_loc5_)
                  {
                     this.load();
                  }
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function get loader() : Loader
      {
         return this.§`!u§;
      }
   }
}
