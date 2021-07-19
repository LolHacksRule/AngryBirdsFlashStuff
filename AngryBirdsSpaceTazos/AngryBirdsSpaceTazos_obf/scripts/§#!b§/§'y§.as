package §#!b§
{
   import §%!r§.§&!!§;
   import §%!r§.§3!'§;
   import §+!h§.§#V§;
   import §0N§.§2!@§;
   import §0N§.§5!^§;
   import §1%§.§0!3§;
   import §1%§.§9!s§;
   import §1%§.§@!t§;
   import §1%§.§[L§;
   import §3"#§.§<!O§;
   import §7!a§.§;G§;
   import §<W§.§!!u§;
   import §=u§.§!D§;
   import §^=§.§-G§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §'y§ extends §9!s§ implements IEventDispatcher
   {
      
      public static var §8&§:Number;
      
      public static var §`w§:Number;
       
      
      public var §8!c§:Number;
      
      private var §`!<§:EventDispatcher;
      
      private var §7Z§:§3!'§;
      
      public function §'y§(param1:§"!"§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(!_loc7_)
                     {
                        §§pop().§§slot[3] = param3;
                        while(_loc6_)
                        {
                           continue loop4;
                           §§push(§§newactivation());
                           if(_loc7_ && param3)
                           {
                              continue loop4;
                           }
                           if(_loc7_)
                           {
                              continue loop2;
                           }
                           §§pop().§§slot[4] = param4;
                           §§goto(addr116);
                           loop7:
                           while(!(_loc7_ && param1))
                           {
                              super(canvas);
                              while(true)
                              {
                                 if(_loc7_ && param1)
                                 {
                                    while(true)
                                    {
                                       this.§`!<§ = new EventDispatcher();
                                       continue loop7;
                                    }
                                 }
                                 else
                                 {
                                    addr49:
                                    addr116:
                                 }
                                 if(_loc6_)
                                 {
                                    if(§2! §.stage)
                                    {
                                       if(_loc6_)
                                       {
                                          this.init(loadingScreen,uiData,assetData);
                                          break;
                                       }
                                       break;
                                    }
                                    §2! §.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                                    {
                                       §2! §.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                                       init(loadingScreen,uiData,assetData);
                                    });
                                    if(_loc7_ && param3)
                                    {
                                       break;
                                    }
                                 }
                                 continue loop1;
                                 continue;
                                 return;
                              }
                              §§goto(addr49);
                           }
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get §super§() : §3!'§
      {
         return this.§7Z§;
      }
      
      protected function §;!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!O§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§7Z§ = new §3!'§(new §&!!§("en"));
            loop0:
            while(true)
            {
               §;G§.initialize(stage);
               addr100:
               while(true)
               {
                  §;G§.§&![§ = false;
                  addr95:
                  while(true)
                  {
                     §2!@§.§ G§(this.getVersionInfo());
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function initStateLoad() : §@!t§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§@!t§));
         §§push(this.§super§);
         §§push(true);
         §§push(§@!t§.STATE_NAME);
         §§push(this.getMinLoadingScreenTime());
         if(_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr60:
                        §§pop();
                        addr62:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc2_)
                        {
                           return new §§pop().§@!t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr62);
               }
               §§goto(addr81);
            }
         }
         §§goto(addr60);
      }
      
      public function §for §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2! §.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §2! §.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               for(; _loc1_; if(!(_loc1_ || _loc2_))
               {
                  continue;
               },return,addr37:)
               {
                  §2! §.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  while(true)
                  {
                     §2! §.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                     while(!_loc2_)
                     {
                        this.§8!c§ = getTimer();
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§,"7§())
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr49:
                  §,"7§().mouseLeave();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§,"7§())
            {
               if(!_loc2_)
               {
                  §,"7§().keyDown(param1);
               }
               while(true)
               {
                  §§goto(addr34);
               }
            }
            addr34:
            §§goto(addr45);
         }
         addr45:
         while(true)
         {
            §2!@§.keyDown(param1);
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§,"7§())
            {
               if(_loc3_ || param1)
               {
                  addr49:
                  §,"7§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(getTimer() - this.§8!c§);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            this.§8!c§ = getTimer();
            if(_loc5_ || this)
            {
               §!D§.§[!1§.update(_loc2_);
            }
         }
         var _loc3_:§!!u§ = new §!!u§(§!!u§.§8!Q§,_loc2_,param1.bubbles,param1.cancelable);
         if(!(_loc4_ && _loc3_))
         {
            this.§`!<§.dispatchEvent(_loc3_);
            loop0:
            while(true)
            {
               §5!^§.§#`§(§2! §.mouseX,§2! §.mouseY);
               loop1:
               do
               {
                  if(!§@1§())
                  {
                     while(this.updateState(_loc2_) == §0!3§.§-c§)
                     {
                        if(_loc5_)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           §@1§();
                        }
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue;
                  return;
               }
               while(!(_loc5_ || this));
               
            }
         }
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
            if(§,"7§().isGenericState())
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  addr79:
                  while(§§pop() == §0!3§.§-c§)
                  {
                     do
                     {
                        §2! §.addChild(§5!^§.activate());
                        do
                        {
                           this.setFirstGameState();
                        }
                        while(!_loc4_);
                        
                     }
                     while(!(_loc4_ || _loc3_));
                     
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop4;
                  }
               }
               addr78:
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr79);
            }
            return §§pop();
         }
         §§goto(addr78);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §!D§.§[!1§.§+'§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!^§(§[L§.STATE_NAME);
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
            this.§`!<§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§`!<§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!<§.willTrigger(param1);
      }
   }
}
