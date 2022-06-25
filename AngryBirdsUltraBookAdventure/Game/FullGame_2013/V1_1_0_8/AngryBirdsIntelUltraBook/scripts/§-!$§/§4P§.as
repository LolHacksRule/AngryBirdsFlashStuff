package §-!$§
{
   import § !v§.SWFWheel;
   import §-^§.§?7§;
   import §1!B§.§7n§;
   import §1!B§.§<m§;
   import §8!H§.§"_§;
   import §8!H§.§&!C§;
   import §8!H§.§6!o§;
   import §8!H§.§9![§;
   import §>f§.§2!z§;
   import §[!b§.§-!Q§;
   import §]F§.§`!G§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §4P§ extends §6!o§ implements IEventDispatcher
   {
      
      public static var §#!t§:Number;
      
      public static var § !-§:Number;
       
      
      public var §`!R§:Number;
      
      private var §6t§:EventDispatcher;
      
      public function §4P§(param1:§,w§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr150:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      protected function §0;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!Q§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            SWFWheel.initialize(stage);
            while(true)
            {
               SWFWheel.§7!w§ = false;
            }
            addr90:
         }
         loop1:
         while(true)
         {
            §<m§.§^2§(this.getVersionInfo());
            loop2:
            while(true)
            {
               §<m§.§>! § = this.getVersionInfo();
               loop3:
               while(true)
               {
                  §9![§.§?!4§ = §`O§.stage.loaderInfo.parameters;
                  while(true)
                  {
                     if(_loc5_)
                     {
                        loop5:
                        while(true)
                        {
                           this.§0;§();
                           while(_loc5_)
                           {
                              §9X§(new §&!C§());
                              if(_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    break loop5;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr90);
                        }
                        continue;
                        addr44:
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function initStateLoad() : §"_§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§"_§));
         §§push(true);
         §§push(§"_§.§'!q§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr62:
                        §§pop();
                        addr64:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!_loc2_)
                        {
                           return new §§pop().§"_§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr71:
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr64);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr62);
      }
      
      public function §5!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §`O§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §`O§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               addr35:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               return;
               addr52:
            }
         }
         loop1:
         while(true)
         {
            §`O§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
            loop2:
            while(true)
            {
               §`O§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
               while(true)
               {
                  if(_loc1_)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr80:
                  this.§`!R§ = getTimer();
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr35);
               }
               continue loop1;
            }
         }
         §§goto(addr52);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(§>j§())
            {
               if(!(_loc2_ && this))
               {
                  §>j§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§>j§())
            {
               if(_loc2_ || _loc3_)
               {
                  §>j§().keyDown(param1);
                  addr54:
                  while(true)
                  {
                  }
                  addr54:
               }
               §§goto(addr54);
            }
            while(true)
            {
               §<m§.keyDown(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§>j§())
            {
               if(!_loc3_)
               {
                  §>j§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§`!R§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§`!R§ = getTimer();
            while(true)
            {
               §`!G§.§[U§.update(_loc2_);
               loop1:
               for(; !_loc3_; if(!(_loc3_ && this))
               {
                  return;
               })
               {
                  this.§6t§.dispatchEvent(param1);
                  loop2:
                  while(true)
                  {
                     §7n§.§&y§(§`O§.mouseX,§`O§.mouseY);
                     loop3:
                     while(§+Q§())
                     {
                        if(!(_loc4_ || _loc2_))
                        {
                           while(true)
                           {
                              break loop3;
                           }
                           return;
                        }
                        addr34:
                        addr34:
                        addr100:
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        if(this.updateState(_loc2_) == §9![§.STATE_STATUS_COMPLETED)
                        {
                           if(!(_loc4_ || param1))
                           {
                              break loop2;
                           }
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 §+Q§();
                                 break loop2;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        §§goto(addr34);
                     }
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(§>j§().isGenericState())
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr94:
                  while(true)
                  {
                     if(§§pop() == §9![§.STATE_STATUS_COMPLETED)
                     {
                        loop2:
                        while(true)
                        {
                           §`O§.addChild(§7n§.activate());
                           addr101:
                           while(true)
                           {
                              this.setFirstGameState();
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc2_)
               {
                  break;
               }
               §§goto(addr94);
            }
            return §§pop();
         }
         §§goto(addr101);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!G§.§[U§.§+!Z§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §9!m§(§&!C§.§'!q§);
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
            this.§6t§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§6t§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6t§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6t§.willTrigger(param1);
      }
   }
}
