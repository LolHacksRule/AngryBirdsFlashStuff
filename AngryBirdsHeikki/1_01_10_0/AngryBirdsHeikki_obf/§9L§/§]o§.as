package §9L§
{
   import §&!9§.§ T§;
   import §-!"§.§=p§;
   import §-!"§.§>!W§;
   import §-!"§.§[u§;
   import §-!"§.§]7§;
   import §5!1§.§"!X§;
   import §<u§.§;A§;
   import §@R§.§!!%§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^V§.§4!H§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §]o§ extends §]7§ implements IEventDispatcher
   {
      
      public static var § f§:Number;
      
      public static var §=8§:Number;
       
      
      public var §#!>§:Number;
      
      private var §'l§:EventDispatcher;
      
      public function §]o§(param1:§^D§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr155:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      protected function § S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&M§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            § T§.initialize(stage);
            loop0:
            while(true)
            {
               § T§.§7!#§ = false;
               while(true)
               {
                  §4,§.§&!#§(this.getVersionInfo());
                  loop2:
                  while(true)
                  {
                     §4,§.§?+§ = this.getVersionInfo();
                     while(true)
                     {
                        §=p§.§<!I§ = §=Z§.stage.loaderInfo.parameters;
                        loop4:
                        while(_loc5_ || param3)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              this.§ S§();
                              loop6:
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    §?!%§(new §[u§());
                                    if(_loc5_ || this)
                                    {
                                       continue loop2;
                                    }
                                    continue loop6;
                                 }
                                 var _loc4_:§>!W§ = this.initStateLoad();
                                 if(!(_loc6_ && param2))
                                 {
                                    §?!%§(_loc4_);
                                 }
                                 loop8:
                                 do
                                 {
                                    _loc4_.§&G§(param1);
                                    while(true)
                                    {
                                       _loc4_.§4!S§(param3);
                                       loop10:
                                       for(; !(_loc6_ && this); if(!(_loc5_ || param3))
                                       {
                                          continue;
                                       },§4!H§.§-%§("serverConnectionError"),§§goto(addr144))
                                       {
                                          §;A§.init(param2);
                                          while(true)
                                          {
                                             if(§4!H§.§7!"§())
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop10;
                                                }
                                                addr144:
                                                loop12:
                                                while(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §9^§(§>!W§.§@o§);
                                                      do
                                                      {
                                                         this.§>E§();
                                                      }
                                                      while(_loc6_);
                                                      
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop8;
                                                }
                                                continue;
                                             }
                                             §§goto(addr122);
                                          }
                                       }
                                    }
                                 }
                                 while(!_loc5_);
                                 
                                 return;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      protected function initStateLoad() : §>!W§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§>!W§));
         §§push(true);
         §§push(§>!W§.§@o§);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr63:
                        §§pop();
                        addr65:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!(_loc1_ && _loc2_))
                        {
                           return new §§pop().§>!W§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr87:
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr65);
               }
               §§goto(addr87);
            }
         }
         §§goto(addr63);
      }
      
      public function §>E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §=Z§.addEventListener(Event.ENTER_FRAME,this.§@8§);
            while(true)
            {
               §=Z§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
            }
            addr110:
         }
         loop1:
         while(true)
         {
            §=Z§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
            loop2:
            do
            {
               if(!(_loc1_ || _loc2_))
               {
                  continue loop1;
               }
               §=Z§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
               while(!_loc2_)
               {
                  this.§#!>§ = getTimer();
                  if(!(_loc2_ && this))
                  {
                     continue loop2;
                  }
               }
               §§goto(addr110);
            }
            while(_loc2_ && this);
            
            return;
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§=!@§())
            {
               if(_loc2_ || param1)
               {
                  §=!@§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(§=!@§())
            {
               while(true)
               {
                  §=!@§().keyDown(param1);
                  addr69:
                  while(true)
                  {
                  }
                  addr44:
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr51:
                  addr61:
               }
            }
            while(true)
            {
               §4,§.keyDown(param1);
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr44);
            }
            §§goto(addr51);
         }
         §§goto(addr61);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§=!@§())
            {
               if(!_loc3_)
               {
                  addr43:
                  §=!@§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §@8§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§#!>§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§#!>§ = getTimer();
            loop0:
            while(true)
            {
               §"!X§.§ s§.update(_loc2_);
               loop1:
               while(true)
               {
                  this.§'l§.dispatchEvent(param1);
                  loop2:
                  while(true)
                  {
                     §!!%§.§`0§(§=Z§.mouseX,§=Z§.mouseY);
                     loop3:
                     while(§1G§())
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           addr34:
                           addr92:
                        }
                        continue;
                        if(_loc4_ || _loc2_)
                        {
                           return;
                        }
                        continue;
                        return;
                     }
                     while(true)
                     {
                        if(this.updateState(_loc2_) == §=p§.STATE_STATUS_COMPLETED)
                        {
                           if(!_loc4_)
                           {
                              continue loop2;
                           }
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                        }
                        else
                        {
                           §§goto(addr34);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §1G§();
            §§goto(addr63);
         }
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
         if(_loc4_)
         {
            if(§=!@§().isGenericState())
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     if(§§pop() != §=p§.STATE_STATUS_COMPLETED)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §=Z§.addChild(§!!%§.activate());
                     }
                  }
               }
               while(true)
               {
                  this.setFirstGameState();
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§goto(addr27);
                     }
                     addr56:
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr27);
         }
         §§goto(addr56);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"!X§.§ s§.§"!`§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §9^§(§[u§.§@o§);
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
         if(_loc7_ || param2)
         {
            this.§'l§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§'l§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'l§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§'l§.willTrigger(param1);
      }
   }
}
