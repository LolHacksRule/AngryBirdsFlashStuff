package §%"J§
{
   import §&%§.SWFWheel;
   import §+!c§.§&!0§;
   import §+!c§.§;!=§;
   import §2"'§.§0W§;
   import §2<§.§8M§;
   import §8";§.§+d§;
   import §8";§.§5]§;
   import §8";§.§6!9§;
   import §8";§.§?4§;
   import §8m§.§@"M§;
   import §`"%§.§ "<§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §3!O§ extends §6!9§ implements IEventDispatcher
   {
      
      public static var §7!i§:Number;
      
      public static var §9A§:Number;
       
      
      public var §%!s§:Number;
      
      private var §]" §:EventDispatcher;
      
      public function §3!O§(param1:§!`§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr131:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(!_loc6_)
                     {
                        §§pop().§§slot[3] = param3;
                        while(!_loc6_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc6_ && param3))
                           {
                              continue loop2;
                           }
                           continue loop4;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function §;!Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@"M§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            SWFWheel.initialize(stage);
            while(true)
            {
               SWFWheel.§["&§ = false;
               while(!(_loc6_ && this))
               {
                  §;!=§.§;"J§(this.getVersionInfo());
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        §;!=§.§]!_§ = this.getVersionInfo();
                        loop4:
                        while(true)
                        {
                           §+d§.§!"R§ = §%3§.stage.loaderInfo.parameters;
                           loop5:
                           while(true)
                           {
                              addr40:
                              while(true)
                              {
                                 this.§;!Z§();
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function initStateLoad() : §?4§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§?4§));
         §§push(true);
         §§push(§?4§.STATE_NAME);
         §§push(this.getMinLoadingScreenTime());
         if(!(_loc1_ && _loc1_))
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || this)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr73:
                        §§pop();
                        addr75:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!(_loc1_ && _loc1_))
                        {
                           return new §§pop().§?4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr75);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr73);
      }
      
      public function §#r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §%3§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §%3§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               do
               {
                  §%3§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  while(!_loc2_)
                  {
                     §%3§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                     while(!_loc2_)
                     {
                        this.§%!s§ = getTimer();
                        if(!(_loc2_ && this))
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(_loc2_ && this);
               
            }
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(§2!d§())
            {
               if(_loc2_ || _loc2_)
               {
                  §2!d§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§2!d§())
            {
               while(true)
               {
                  §2!d§().keyDown(param1);
                  while(true)
                  {
                  }
               }
               addr56:
            }
            do
            {
               §;!=§.keyDown(param1);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
            }
            while(_loc2_ && param1);
            
            return;
         }
         §§goto(addr56);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§2!d§())
            {
               if(_loc2_)
               {
                  §2!d§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§%!s§);
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§%!s§ = getTimer();
         }
         loop0:
         while(true)
         {
            §0W§.§&"5§.update(_loc2_);
            loop1:
            while(true)
            {
               this.§]" §.dispatchEvent(param1);
               loop2:
               while(true)
               {
                  §&!0§.§%!E§(§%3§.mouseX,§%3§.mouseY);
                  loop3:
                  while(!_loc3_)
                  {
                     if(!§@">§())
                     {
                        while(this.updateState(_loc2_) == §+d§.STATE_STATUS_COMPLETED)
                        {
                           §§goto(addr45);
                        }
                     }
                     if(_loc4_ || _loc3_)
                     {
                        return;
                     }
                     while(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §@">§();
                        }
                        if(_loc4_)
                        {
                           if(!(_loc3_ && param1))
                           {
                              continue loop2;
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop0;
                     return;
                  }
                  continue loop1;
               }
            }
         }
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
         if(!_loc4_)
         {
            if(§2!d§().isGenericState())
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  addr73:
                  while(§§pop() == §+d§.STATE_STATUS_COMPLETED)
                  {
                     do
                     {
                        §%3§.addChild(§&!0§.activate());
                        do
                        {
                           this.setFirstGameState();
                        }
                        while(!(_loc3_ || _loc2_));
                        
                     }
                     while(!_loc3_);
                     
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop4;
                  }
               }
               addr72:
            }
            while(true)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr73);
            }
            return §§pop();
         }
         §§goto(addr72);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §0W§.§&"5§.§'"=§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §`H§(§5]§.STATE_NAME);
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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§]" §.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§]" §.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]" §.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§]" §.willTrigger(param1);
      }
   }
}
