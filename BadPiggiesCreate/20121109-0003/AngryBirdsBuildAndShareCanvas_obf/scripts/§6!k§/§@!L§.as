package §6!k§
{
   import §#";§.§0"#§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §4!B§.§3K§;
   import §6]§.§,"0§;
   import §6]§.§8!W§;
   import §;<§.§ "4§;
   import §;<§.§'B§;
   import §;<§.§1N§;
   import §;<§.§[!h§;
   import §^!m§.§6§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §@!L§ extends § "4§ implements IEventDispatcher
   {
      
      public static var §<3§:Number;
      
      public static var §=!l§:Number;
       
      
      public var §>w§:Number;
      
      private var §-H§:EventDispatcher;
      
      public function §@!L§(param1:§@B§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr145:
            while(true)
            {
               §§push(§§newactivation());
               addr139:
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        addr136:
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              continue loop2;
                           }
                           continue loop4;
                        }
                        addr56:
                        this.init(loadingScreen,uiData,assetData);
                        addr74:
                        if(_loc7_ || param3)
                        {
                           break loop3;
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr22);
               }
            }
            if(!(_loc7_ || param3))
            {
               continue;
            }
            §§pop().§§slot[4] = param4;
            do
            {
               if(!(_loc6_ && param2))
               {
                  this.§-H§ = new EventDispatcher();
                  do
                  {
                     super(canvas);
                     do
                     {
                        if(!§&"!§.stage)
                        {
                           §&"!§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                           {
                              §&"!§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                              init(loadingScreen,uiData,assetData);
                           });
                           if(!_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr74);
                           }
                        }
                        continue;
                        addr22:
                        return;
                     }
                     while(!_loc7_);
                     
                  }
                  while(!_loc7_);
                  
                  continue;
               }
               §§goto(addr145);
               §§goto(addr139);
            }
            while(!(_loc7_ || param3));
            
            if(_loc7_)
            {
               §§goto(addr56);
            }
            §§goto(addr136);
         }
      }
      
      protected function §4!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §0"#§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            §3K§.initialize(stage);
            while(true)
            {
               §3K§.§-$§ = false;
            }
            addr100:
         }
         loop1:
         while(true)
         {
            §,"0§.§&!u§(this.getVersionInfo());
            loop2:
            while(true)
            {
               §,"0§.§5i§ = this.getVersionInfo();
               loop3:
               while(true)
               {
                  §'B§.§!u§ = §&"!§.stage.loaderInfo.parameters;
                  loop4:
                  while(true)
                  {
                     if(_loc5_)
                     {
                        if(_loc6_)
                        {
                           break;
                           addr45:
                        }
                        while(true)
                        {
                           this.§4!]§();
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
      
      protected function initStateLoad() : §1N§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§1N§));
         §§push(true);
         §§push(§1N§.§%!Q§);
         §§push(this.getMinLoadingScreenTime());
         if(!(_loc2_ && _loc1_))
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr79);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc1_)
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr78);
               }
               addr76:
               if(!§§pop())
               {
                  addr78:
                  §§pop();
               }
               §§goto(addr79);
            }
            addr79:
            if(!_loc2_)
            {
               §§pop();
               addr58:
               §§push("");
            }
            return new §§pop().§1N§(§§pop(),§§pop(),§§pop(),§§pop(),"");
         }
         §§goto(addr58);
      }
      
      public function §@n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §&"!§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §&"!§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop2:
               for(; !(_loc1_ && _loc2_); if(_loc2_ || _loc1_)
               {
                  return;
               })
               {
                  §&"!§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                  while(_loc2_ || _loc2_)
                  {
                     this.§>w§ = getTimer();
                     if(_loc2_ || this)
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     §&"!§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                     continue loop2;
                     §§goto(addr67);
                  }
                  addr67:
               }
            }
         }
         §§goto(addr109);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§<"%§())
            {
               if(_loc3_)
               {
                  §<"%§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§<"%§())
            {
               while(true)
               {
                  §<"%§().keyDown(param1);
                  addr70:
                  while(true)
                  {
                  }
                  addr45:
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr52:
                  addr62:
               }
            }
            while(true)
            {
               §,"0§.keyDown(param1);
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr45);
            }
            §§goto(addr52);
         }
         §§goto(addr62);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§<"%§())
            {
               if(!(_loc2_ && param1))
               {
                  addr49:
                  §<"%§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(getTimer() - this.§>w§);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§>w§ = getTimer();
            loop0:
            while(true)
            {
               §7I§.§[E§.update(_loc2_);
               while(true)
               {
                  this.§-H§.dispatchEvent(param1);
                  continue loop0;
                  addr74:
                  if(_loc3_ || param1)
                  {
                     §§goto(addr81);
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            if(!§-![§())
            {
               while(this.updateState(_loc2_) == §'B§.STATE_STATUS_COMPLETED)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        §-![§();
                        addr50:
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        §§goto(addr74);
                     }
                     else if(!_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr50);
               }
               return;
            }
            §§goto(addr74);
         }
         addr81:
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(§<"%§().isGenericState())
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr89:
                  while(true)
                  {
                     if(§§pop() == §'B§.STATE_STATUS_COMPLETED)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr89);
            }
            return §§pop();
         }
         §§goto(addr92);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §7I§.§[E§.§^!=§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §<t§(§[!h§.§%!Q§);
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
            this.§-H§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§-H§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-H§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§-H§.willTrigger(param1);
      }
   }
}
