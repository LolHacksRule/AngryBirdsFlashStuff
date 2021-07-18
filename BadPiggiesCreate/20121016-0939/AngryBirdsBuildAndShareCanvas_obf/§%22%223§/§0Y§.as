package §""3§
{
   import §&!J§.§%!Y§;
   import §&"'§.§7!E§;
   import §-!n§.§5!U§;
   import §1"2§.§`7§;
   import §5"-§.§0=§;
   import §5"-§.§5y§;
   import §5"-§.§`$§;
   import §5"-§.§`^§;
   import §=!M§.§"o§;
   import §=!M§.§9!P§;
   import §@!v§.§6!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §0Y§ extends §`$§ implements IEventDispatcher
   {
      
      public static var §?!,§:Number;
      
      public static var §;!Z§:Number;
       
      
      public var §8c§:Number;
      
      private var §?!w§:EventDispatcher;
      
      public function §0Y§(param1:§,"5§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr156:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
         }
      }
      
      protected function §?9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §5!U§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            §%!Y§.initialize(stage);
            loop0:
            while(true)
            {
               §%!Y§.§%o§ = false;
               addr97:
               loop1:
               while(true)
               {
                  §9!P§.§#!?§(this.getVersionInfo());
                  while(true)
                  {
                     §9!P§.§]!o§ = this.getVersionInfo();
                     while(!_loc5_)
                     {
                        addr39:
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              this.§?9§();
                              do
                              {
                                 §,Y§(new §0=§());
                              }
                              while(_loc5_);
                              
                              if(_loc5_ && param3)
                              {
                                 continue loop0;
                              }
                              §§goto(addr39);
                           }
                           continue;
                           addr50:
                        }
                        var _loc4_:§`^§ = this.initStateLoad();
                        if(!_loc5_)
                        {
                           §,Y§(_loc4_);
                        }
                        while(true)
                        {
                           _loc4_.§&!6§(param1);
                           loop9:
                           while(_loc6_ || param1)
                           {
                              _loc4_.§#'§(param3);
                              loop10:
                              while(true)
                              {
                                 §`7§.init(param2);
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(§6!Q§.§1h§())
                                       {
                                          while(true)
                                          {
                                             §6!Q§.§>c§("serverConnectionError");
                                             addr153:
                                             while(true)
                                             {
                                             }
                                             addr123:
                                             if(!(_loc5_ && param1))
                                             {
                                                continue loop11;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §1!b§(§`^§.§'=§);
                                          while(_loc6_)
                                          {
                                             this.§]!w§();
                                             if(_loc5_ && this)
                                             {
                                                continue;
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr153);
                                       }
                                       continue;
                                    }
                                    continue loop10;
                                 }
                                 continue loop9;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §5y§.§;" § = §6!q§.stage.loaderInfo.parameters;
            §§goto(addr61);
         }
      }
      
      protected function initStateLoad() : §`^§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§`^§));
         §§push(true);
         §§push(§`^§.§'=§);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && this))
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                        addr52:
                        §§pop();
                        addr54:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc1_ || this)
                        {
                           return new §§pop().§`^§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr76:
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr54);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr52);
      }
      
      public function §]!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §6!q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         loop0:
         while(true)
         {
            §6!q§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
            addr98:
            while(true)
            {
               §6!q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
               continue loop0;
            }
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§&[§())
            {
               if(!_loc2_)
               {
                  §&[§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(§&[§())
            {
               if(_loc3_ || _loc3_)
               {
                  addr66:
                  §&[§().keyDown(param1);
               }
               while(true)
               {
               }
               addr70:
            }
            while(true)
            {
               §9!P§.keyDown(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§&[§())
            {
               if(_loc2_)
               {
                  addr48:
                  §&[§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(getTimer() - this.§8c§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§8c§ = getTimer();
            while(true)
            {
               §7!E§.§2=§.update(_loc2_);
               addr126:
               addr97:
               while(true)
               {
                  this.§?!w§.dispatchEvent(param1);
               }
               if(!(_loc4_ && _loc2_))
               {
                  if(§ !@§())
                  {
                     §§goto(addr77);
                  }
                  while(this.updateState(_loc2_) == §5y§.STATE_STATUS_COMPLETED)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        § !@§();
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        §§goto(addr77);
                     }
                     else if(_loc3_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr126);
                  }
                  return;
               }
            }
         }
         addr110:
         while(true)
         {
            §"o§.§-P§(§6!q§.mouseX,§6!q§.mouseY);
            continue loop3;
         }
         addr77:
         if(_loc4_)
         {
            §§goto(addr126);
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.updateState(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(§&[§().isGenericState())
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr66:
                  while(true)
                  {
                     if(§§pop() == §5y§.STATE_STATUS_COMPLETED)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               §§goto(addr66);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §7!E§.§2=§.§`!7§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §1!b§(§0=§.§'=§);
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
         if(_loc7_ || param1)
         {
            this.§?!w§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§?!w§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!w§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!w§.willTrigger(param1);
      }
   }
}
