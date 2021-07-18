package § !0§
{
   import § !G§.§ #§;
   import § !G§.§`e§;
   import §#!V§.§';§;
   import §-H§.§ 5§;
   import §-H§.§&c§;
   import §-H§.§>!T§;
   import §-H§.§@!-§;
   import §0F§.§0p§;
   import §9!=§.§[!6§;
   import §`!4§.§ !]§;
   import §`!K§.§!!>§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §<O§ extends § 5§ implements IEventDispatcher
   {
      
      public static var §[E§:Number;
      
      public static var §&a§:Number;
       
      
      public var §3d§:Number;
      
      private var §;!>§:EventDispatcher;
      
      public function §<O§(param1:§##§, param2:DisplayObjectContainer, param3:XML, param4:XML)
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
                  while(!(_loc6_ && param1))
                  {
                     §§push(§§newactivation());
                     while(!_loc6_)
                     {
                        continue loop0;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc7_ || this)
                           {
                              §§pop().§§slot[4] = param4;
                              do
                              {
                                 this.§;!>§ = new EventDispatcher();
                                 do
                                 {
                                    super(canvas);
                                    continue loop5;
                                 }
                                 while(_loc6_ && param2);
                                 
                              }
                              while(!_loc7_);
                              
                              addr22:
                              return;
                           }
                           break;
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      protected function § !$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!>§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            § !]§.§&O§(stage);
            loop0:
            while(true)
            {
               § !]§.§%l§ = true;
               while(true)
               {
                  § #§.§8R§(this.getVersionInfo());
                  continue loop0;
                  addr53:
                  loop3:
                  while(!(_loc6_ && param1))
                  {
                     loop4:
                     while(true)
                     {
                        this.§ !$§();
                        loop5:
                        while(!_loc6_)
                        {
                           if(!(_loc5_ || param2))
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §#d§(new §>!T§());
                              if(_loc5_ || param3)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           var _loc4_:§@!-§ = this.initStateLoad();
                           if(_loc5_)
                           {
                              §#d§(_loc4_);
                           }
                           while(true)
                           {
                              _loc4_.§3!U§(param1);
                              loop8:
                              for(; _loc5_ || param1; if(!(_loc5_ || param1))
                              {
                                 continue;
                              },§[!6§.§%!G§("serverConnectionError"),§§goto(addr153))
                              {
                                 _loc4_.§<!!§(param3);
                                 loop9:
                                 while(true)
                                 {
                                    §0p§.init(param2);
                                    loop10:
                                    while(§[!6§.§#D§())
                                    {
                                       if(!(_loc6_ && param3))
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          continue;
                                       }
                                       addr153:
                                       loop11:
                                       while(true)
                                       {
                                          break loop10;
                                          addr115:
                                          while(true)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                continue loop9;
                                             }
                                             continue loop11;
                                             addr129:
                                             this.§+!+§();
                                             if(_loc5_)
                                             {
                                                return;
                                             }
                                          }
                                          continue loop9;
                                       }
                                    }
                                    while(true)
                                    {
                                       §=T§(§@!-§.§9!P§);
                                       §§goto(addr115);
                                    }
                                 }
                              }
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      protected function initStateLoad() : §@!-§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§@!-§));
         §§push(true);
         §§push(§@!-§.§9!P§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc1_ || this)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr52:
                        §§pop();
                        addr54:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc1_)
                        {
                           return new §§pop().§@!-§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr71:
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr54);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr52);
      }
      
      public function §+!+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1C§.addEventListener(Event.ENTER_FRAME,this.§<!%§);
            while(true)
            {
               §1C§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               addr83:
               while(true)
               {
                  §1C§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
               }
            }
            addr90:
         }
         loop2:
         while(true)
         {
            §1C§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
            while(true)
            {
               if(_loc1_)
               {
                  if(_loc1_)
                  {
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr90);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr83);
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§?!1§())
            {
               if(!_loc3_)
               {
                  addr48:
                  §?!1§().mouseLeave();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§?!1§())
            {
               while(true)
               {
                  §?!1§().keyDown(param1);
                  addr64:
                  while(true)
                  {
                  }
                  addr39:
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  return;
                  addr46:
               }
            }
            while(true)
            {
               § #§.keyDown(param1);
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr39);
            }
            §§goto(addr46);
         }
         §§goto(addr64);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§?!1§())
            {
               if(_loc2_ || param1)
               {
                  §?!1§().keyUp(param1);
               }
            }
         }
      }
      
      public function §<!%§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§3d§);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            this.§3d§ = getTimer();
            loop0:
            while(true)
            {
               §';§.§%!O§.update(_loc2_);
               while(true)
               {
                  this.§;!>§.dispatchEvent(param1);
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §`e§.§'9§(§1C§.mouseX,§1C§.mouseY);
                        loop3:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!§"3§())
                              {
                                 while(this.updateState(_loc2_) == §&c§.STATE_STATUS_COMPLETED)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       break;
                                    }
                                    addr97:
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
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
                     break;
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     §"3§();
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr95);
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
         if(!_loc4_)
         {
            if(§?!1§().isGenericState())
            {
               loop3:
               while(true)
               {
                  §§push(_loc2_);
                  addr66:
                  while(§§pop() == §&c§.STATE_STATUS_COMPLETED)
                  {
                     if(_loc3_)
                     {
                        §1C§.addChild(§`e§.activate());
                     }
                     do
                     {
                        this.setFirstGameState();
                     }
                     while(!(_loc3_ || _loc3_));
                     
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     continue loop3;
                  }
               }
               addr65:
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr66);
            }
            return §§pop();
         }
         §§goto(addr65);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §';§.§%!O§.§ e§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=T§(§>!T§.§9!P§);
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
         if(_loc6_ || param1)
         {
            this.§;!>§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§;!>§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§;!>§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§;!>§.willTrigger(param1);
      }
   }
}
