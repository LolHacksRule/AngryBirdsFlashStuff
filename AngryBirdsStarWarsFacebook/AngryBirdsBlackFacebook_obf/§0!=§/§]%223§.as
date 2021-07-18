package §0!=§
{
   import § §.§&7§;
   import § §.§3Q§;
   import § §.§4#`§;
   import § §.§<!`§;
   import §5t§.Log;
   import §5t§.§`"+§;
   import §6"G§.§-#C§;
   import §7!$§.§&$§;
   import §<!o§.§[§;
   import §<w§.§^!q§;
   import §="2§.§?!r§;
   import §>@§.§#" §;
   import §>@§.§5"H§;
   import §`!o§.§6",§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §]"3§ extends §&7§ implements IEventDispatcher
   {
      
      public static var §?p§:Number;
      
      public static var §4w§:Number;
       
      
      public var §^#`§:Number;
      
      private var §[4§:EventDispatcher;
      
      private var §^"N§:§5"H§;
      
      public function §]"3§(param1:§'"]§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr145:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public function get §4#,§() : §5"H§
      {
         return this.§^"N§;
      }
      
      protected function §`!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!r§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§^"N§ = new §5"H§(new §#" §("en"));
            loop0:
            while(true)
            {
               §[#3§.initialize(stage);
               loop1:
               while(true)
               {
                  §[#3§.§&!`§ = false;
                  while(true)
                  {
                     Log.§#!4§(this.getVersionInfo());
                     addr34:
                     if(_loc5_ && param2)
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop6:
                        while(true)
                        {
                           this.§`!G§();
                           while(_loc6_)
                           {
                              §7![§(new §<!`§(this.§4#,§));
                              if(_loc6_)
                              {
                                 continue loop6;
                              }
                           }
                           addr56:
                           while(_loc6_ || param2)
                           {
                              if(_loc6_)
                              {
                                 continue loop6;
                              }
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §4#`§.§8X§ = §["A§.stage.loaderInfo.parameters;
                                 continue;
                              }
                              addr86:
                              while(true)
                              {
                                 Log.§<"a§ = this.getVersionInfo();
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     var _loc4_:§3Q§ = this.initStateLoad();
                     if(!_loc5_)
                     {
                        §7![§(_loc4_);
                        loop8:
                        while(true)
                        {
                           _loc4_.setLoadingScreen(param1);
                           loop9:
                           while(true)
                           {
                              _loc4_.§+!^§(param3);
                              loop10:
                              while(true)
                              {
                                 §&$§.init(param2);
                                 do
                                 {
                                    if(§6",§.§;!=§())
                                    {
                                       continue loop9;
                                    }
                                    addr160:
                                    loop14:
                                    while(true)
                                    {
                                       § g§(§3Q§.§^!7§);
                                       do
                                       {
                                          this.§,"j§();
                                       }
                                       while(_loc5_ && param2);
                                       
                                       if(_loc6_)
                                       {
                                          addr138:
                                          if(_loc6_ || param2)
                                          {
                                             break;
                                          }
                                          continue loop9;
                                       }
                                       addr180:
                                       while(!_loc5_)
                                       {
                                          continue loop14;
                                       }
                                       continue loop10;
                                    }
                                 }
                                 while(_loc5_ && param2);
                                 
                                 continue loop8;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr160);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      protected function initStateLoad() : §3Q§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§3Q§));
         §§push(this.§4#,§);
         §§push(true);
         §§push(§3Q§.§^!7§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc2_ || this)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr55:
                        §§pop();
                        addr57:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc2_)
                        {
                           return new §§pop().§3Q§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr57);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr55);
      }
      
      public function §,"j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §["A§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §["A§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               while(_loc1_)
               {
                  §["A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  loop2:
                  do
                  {
                     §["A§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                     while(!_loc2_)
                     {
                        this.§^#`§ = getTimer();
                        if(_loc1_ || this)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc1_);
                  
                  return;
               }
            }
         }
         §§goto(addr37);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(§@!2§())
            {
               if(!_loc2_)
               {
                  §@!2§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(§@!2§())
            {
               while(true)
               {
                  §@!2§().keyDown(param1);
                  addr74:
                  while(true)
                  {
                  }
                  addr49:
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  return;
                  addr56:
                  addr66:
               }
            }
            while(true)
            {
               Log.keyDown(param1);
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§goto(addr49);
            }
            §§goto(addr56);
         }
         §§goto(addr66);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(§@!2§())
            {
               if(_loc3_ || _loc2_)
               {
                  §@!2§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(getTimer() - this.§^#`§);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            this.§^#`§ = getTimer();
            if(!_loc5_)
            {
               addr43:
               §-#C§.§%!E§.update(_loc2_);
            }
            var _loc3_:§^!q§ = new §^!q§(§^!q§.§1c§,_loc2_,param1.bubbles,param1.cancelable);
            if(_loc4_)
            {
               this.§[4§.dispatchEvent(_loc3_);
            }
            loop0:
            while(true)
            {
               §`"+§.§1"L§(§["A§.mouseX,§["A§.mouseY);
               loop1:
               while(!§'"s§())
               {
                  while(this.updateState(_loc2_) == §4#`§.§-#_§)
                  {
                     if(_loc5_ && _loc2_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr102:
                     }
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(_loc5_ && this)
                     {
                        continue loop1;
                     }
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     §'"s§();
                     §§goto(addr102);
                     continue loop1;
                  }
                  return;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.updateState(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(§@!2§().isGenericState())
            {
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     if(§§pop() != §4#`§.§-#_§)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §["A§.addChild(§`"+§.activate());
                     }
                  }
               }
               while(true)
               {
                  this.setFirstGameState();
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr26);
         }
         §§goto(addr76);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §-#C§.§%!E§.§##M§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § g§(§<!`§.§^!7§);
         }
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§[4§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§[4§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[4§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[4§.willTrigger(param1);
      }
   }
}
