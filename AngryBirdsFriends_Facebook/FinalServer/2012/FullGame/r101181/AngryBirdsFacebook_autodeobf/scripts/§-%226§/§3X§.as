package §-"6§
{
   import § "C§.§2"=§;
   import §#^§.§ "A§;
   import §0!G§.§#`§;
   import §0!G§.§%"+§;
   import §0!G§.§&"5§;
   import §0!G§.§1-§;
   import §0§.SWFWheel;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §6o§.§="7§;
   import §8!v§.§>!+§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §3X§ extends §&"5§ implements IEventDispatcher
   {
      
      public static var §9!"§:Number;
      
      public static var §4t§:Number;
       
      
      public var §>!1§:Number;
      
      private var §`!s§:EventDispatcher;
      
      public function §3X§(param1:§5E§, param2:DisplayObjectContainer, param3:XML, param4:XML)
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
      
      protected function §="-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>!E§.init();
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
               SWFWheel.§9!K§ = false;
               while(!(_loc6_ && this))
               {
                  §+!k§.§0!2§(this.getVersionInfo());
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        §+!k§.§9>§ = this.getVersionInfo();
                        loop4:
                        while(true)
                        {
                           §1-§.§[U§ = §5!X§.stage.loaderInfo.parameters;
                           loop5:
                           while(true)
                           {
                              addr40:
                              while(true)
                              {
                                 this.§="-§();
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
      
      protected function initStateLoad() : §#`§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§#`§));
         §§push(true);
         §§push(§#`§.STATE_NAME);
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
                           return new §§pop().§#`§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
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
      
      public function §'!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §5!X§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §5!X§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               do
               {
                  §5!X§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  while(!_loc2_)
                  {
                     §5!X§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                     while(!_loc2_)
                     {
                        this.§>!1§ = getTimer();
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
            if(§>k§())
            {
               if(_loc2_ || _loc2_)
               {
                  §>k§().mouseLeave();
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
            if(§>k§())
            {
               while(true)
               {
                  §>k§().keyDown(param1);
                  while(true)
                  {
                  }
               }
               addr56:
            }
            do
            {
               §+!k§.keyDown(param1);
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
            if(§>k§())
            {
               if(_loc2_)
               {
                  §>k§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§>!1§);
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§>!1§ = getTimer();
         }
         loop0:
         while(true)
         {
            §>!+§.§;"§.update(_loc2_);
            loop1:
            while(true)
            {
               this.§`!s§.dispatchEvent(param1);
               loop2:
               while(true)
               {
                  §="7§.§4!O§(§5!X§.mouseX,§5!X§.mouseY);
                  loop3:
                  while(!_loc3_)
                  {
                     if(!§[!@§())
                     {
                        while(this.updateState(_loc2_) == §1-§.STATE_STATUS_COMPLETED)
                        {
                           §§goto(addr45);
                        }
                        return;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        return;
                     }
                     while(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §[!@§();
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
            if(§>k§().isGenericState())
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  addr73:
                  while(§§pop() == §1-§.STATE_STATUS_COMPLETED)
                  {
                     do
                     {
                        §5!X§.addChild(§="7§.activate());
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
            §>!+§.§;"§.§&7§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=!w§(§%"+§.STATE_NAME);
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
            this.§`!s§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§`!s§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!s§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!s§.willTrigger(param1);
      }
   }
}
