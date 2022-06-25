package §"!!§
{
   import § $§.Server;
   import §'N§.§'!6§;
   import §'N§.Log;
   import §2D§.SWFWheel;
   import §3!j§.SoundEngine;
   import §<!G§.TweenManager;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §[!>§.StateLoad;
   import §[!>§.StateManager;
   import §[!>§.§]!i§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class BasicGame extends StateManager implements IEventDispatcher
   {
      
      public static var §]t§:Number;
      
      public static var §,-§:Number;
       
      
      public var §class§:Number;
      
      private var §`!b§:EventDispatcher;
      
      public function BasicGame(param1:§&G§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                  addr141:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
         }
      }
      
      protected function §``§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            SoundEngine.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            SWFWheel.initialize(stage);
            loop0:
            while(true)
            {
               SWFWheel.§0L§ = true;
               loop1:
               while(true)
               {
                  Log.§-3§(this.getVersionInfo());
                  while(true)
                  {
                     StateBase.§#-§ = §"B§.stage.loaderInfo.parameters;
                     addr55:
                     loop3:
                     while(_loc6_)
                     {
                        while(true)
                        {
                           this.§``§();
                           continue loop3;
                        }
                     }
                     continue loop0;
                     addr30:
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     if(false)
                     {
                        §§goto(addr41);
                     }
                     var _loc4_:StateLoad = this.initStateLoad();
                     if(_loc6_ || param1)
                     {
                        §&=§(_loc4_);
                     }
                     while(true)
                     {
                        _loc4_.setLoadingScreen(param1);
                        loop7:
                        while(!(_loc5_ && param2))
                        {
                           _loc4_.§'!+§(param3);
                           loop8:
                           while(true)
                           {
                              §3!5§.init(param2);
                              do
                              {
                                 if(Server.§`!3§())
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       Server.§8>§("serverConnectionError");
                                    }
                                    continue loop8;
                                 }
                                 addr123:
                                 while(true)
                                 {
                                    §0!f§(StateLoad.STATE_NAME);
                                    do
                                    {
                                       this.§3A§();
                                    }
                                    while(_loc5_);
                                    
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop8;
                                 }
                              }
                              while(_loc5_ && this);
                              
                              if(!_loc5_)
                              {
                                 return;
                              }
                              continue loop7;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §&=§(new §]!i§());
            if(!_loc6_)
            {
               continue;
            }
            if(_loc6_)
            {
               §§goto(addr30);
            }
            §§goto(addr55);
         }
         §§goto(addr79);
      }
      
      protected function initStateLoad() : StateLoad
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(StateLoad));
         §§push(true);
         §§push(StateLoad.STATE_NAME);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop());
               if(_loc2_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§pop();
                        addr67:
                        §§push("");
                        if(_loc2_)
                        {
                           §§goto(addr81);
                        }
                     }
                     §§push("");
                  }
                  addr81:
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           §§pop();
                        }
                     }
                  }
                  §§goto(addr107);
               }
               addr107:
               return new §§pop().StateLoad(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
            }
            §§goto(addr81);
         }
         §§goto(addr67);
      }
      
      public function §3A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"B§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §"B§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               while(true)
               {
                  §"B§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  while(_loc2_)
                  {
                     §"B§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§class§ = getTimer();
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§;!W§())
            {
               if(_loc2_ || this)
               {
                  §;!W§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§;!W§())
            {
               while(true)
               {
                  §;!W§().keyDown(param1);
                  while(true)
                  {
                  }
               }
               addr68:
            }
            do
            {
               Log.keyDown(param1);
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr68);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§;!W§())
            {
               if(!_loc2_)
               {
                  addr40:
                  §;!W§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(getTimer() - this.§class§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§class§ = getTimer();
            while(true)
            {
               TweenManager.§&!'§.update(_loc2_);
               while(_loc3_)
               {
                  this.§`!b§.dispatchEvent(param1);
                  loop2:
                  for(; !(_loc4_ && _loc3_); loop4:
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        if(§<y§())
                        {
                           break;
                        }
                        while(this.updateState(_loc2_) == StateBase.STATE_STATUS_COMPLETED)
                        {
                           if(_loc4_ && _loc2_)
                           {
                              break;
                           }
                           addr66:
                           if(!_loc4_)
                           {
                              continue loop4;
                           }
                        }
                        return;
                     }
                     continue loop2;
                  },return)
                  {
                     while(true)
                     {
                        §'!6§.§#!U§(§"B§.mouseX,§"B§.mouseY);
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(§;!W§().isGenericState())
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr90:
                  while(true)
                  {
                     if(§§pop() == StateBase.STATE_STATUS_COMPLETED)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr90);
            }
            return §§pop();
         }
         §§goto(addr94);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            TweenManager.§&!'§.§%T§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §0!f§(§]!i§.STATE_NAME);
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
         if(_loc7_ || this)
         {
            this.§`!b§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§`!b§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!b§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!b§.willTrigger(param1);
      }
   }
}
