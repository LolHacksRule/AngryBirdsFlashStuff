package §?""§
{
   import §-!;§.§^!!§;
   import §1!`§.§8!s§;
   import §1T§.§'!c§;
   import §5!%§.§"!F§;
   import §7!§.§#"0§;
   import §;0§.§&G§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?z§.§%r§;
   import §?z§.§4!C§;
   import §?z§.§;B§;
   import §?z§.static;
   import each.§!!'§;
   import each.§5<§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §6!A§ extends §;B§ implements IEventDispatcher
   {
      
      public static var §7!;§:Number;
      
      public static var §66§:Number;
       
      
      public var §&]§:Number;
      
      private var §`!'§:EventDispatcher;
      
      private var §-!]§:§6h§;
      
      public function §6!A§(param1:§`!o§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr154:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public function get §@!>§() : §6h§
      {
         return this.§-!]§;
      }
      
      protected function § in§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'!c§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§-!]§ = new §6h§(new §&G§("en"));
         }
         loop0:
         while(true)
         {
            §"!F§.initialize(stage);
            loop1:
            while(true)
            {
               §"!F§.§,P§ = false;
               loop2:
               while(true)
               {
                  §!!'§.§<K§(this.getVersionInfo());
                  loop3:
                  while(true)
                  {
                     §!!'§.§1"-§ = this.getVersionInfo();
                     loop4:
                     while(!_loc6_)
                     {
                        §4!C§.§#Z§ = §!!U§.stage.loaderInfo.parameters;
                        while(_loc5_)
                        {
                           while(true)
                           {
                              this.§ in§();
                              while(_loc5_ || this)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function initStateLoad() : §%r§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§%r§));
         §§push(this.§@!>§);
         §§push(true);
         §§push(§%r§.§-!q§);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr82);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!_loc1_)
                  {
                     §§goto(addr79);
                  }
                  §§goto(addr81);
               }
               addr79:
               if(!§§pop())
               {
                  addr81:
                  §§pop();
               }
               §§goto(addr82);
            }
            addr82:
            if(_loc2_)
            {
               §§pop();
               addr61:
               §§push("");
            }
            return new §§pop().§%r§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"");
         }
         §§goto(addr61);
      }
      
      public function §"9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!!U§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §!!U§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
            }
            addr96:
         }
         loop1:
         do
         {
            §!!U§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
            while(true)
            {
               §!!U§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
               for(; _loc2_; this.§&]§ = getTimer(),if(_loc2_ || _loc1_)
               {
                  continue loop1;
               })
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr96);
               }
            }
         }
         while(!_loc2_);
         
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§'E§())
            {
               if(_loc2_)
               {
                  addr33:
                  §'E§().mouseLeave();
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§'E§())
            {
               if(_loc3_)
               {
                  §'E§().keyDown(param1);
                  addr65:
                  while(true)
                  {
                  }
                  addr65:
               }
               §§goto(addr65);
            }
            while(true)
            {
               §!!'§.keyDown(param1);
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(§'E§())
            {
               if(_loc3_)
               {
                  §'E§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(getTimer() - this.§&]§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            this.§&]§ = getTimer();
            if(!_loc4_)
            {
               §'^§.§2Z§.update(_loc2_);
            }
         }
         var _loc3_:§^!!§ = new §^!!§(§^!!§.§&o§,_loc2_,param1.bubbles,param1.cancelable);
         if(_loc5_ || param1)
         {
            this.§`!'§.dispatchEvent(_loc3_);
            loop0:
            while(true)
            {
               §5<§.mouseMove(§!!U§.mouseX,§!!U§.mouseY);
               loop1:
               while(true)
               {
                  if(_loc5_ || this)
                  {
                     if(!§&!k§())
                     {
                        while(this.updateState(_loc2_) == §4!C§.§8s§)
                        {
                           if(_loc4_ && this)
                           {
                              break;
                           }
                           addr108:
                           if(!(_loc4_ && this))
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        return;
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr106);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(§'E§().isGenericState())
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     if(§§pop() == §4!C§.§8s§)
                     {
                        addr87:
                        while(true)
                        {
                           §!!U§.addChild(§5<§.activate());
                        }
                        addr87:
                     }
                     §§goto(addr32);
                  }
               }
               while(true)
               {
                  this.setFirstGameState();
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                  }
                  §§goto(addr87);
               }
            }
            addr32:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
            return §§pop();
         }
         §§goto(addr87);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §'^§.§2Z§.§2!$§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §<f§(static.§-!q§);
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
            this.§`!'§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§`!'§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!'§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!'§.willTrigger(param1);
      }
   }
}
