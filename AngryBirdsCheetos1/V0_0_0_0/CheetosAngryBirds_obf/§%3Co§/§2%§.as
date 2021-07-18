package §<o§
{
   import § ;§.§4N§;
   import §%!$§.§=m§;
   import §&! §.§0!V§;
   import §+?§.§@]§;
   import §@,§.§"j§;
   import §@,§.§4h§;
   import §@[§.§1q§;
   import §[!#§.§6v§;
   import §]2§.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.*;
   import flash.utils.*;
   
   public class §2%§ extends §%!B§
   {
      
      public static var §0!,§:Number;
      
      public static var §6M§:Number;
       
      
      public var §=+§:Number;
      
      private var §4u§:Vector.<§0!V§>;
      
      public function §2%§(param1:§7!1§, param2:DisplayObjectContainer, param3:XML, param4:XML)
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
                  addr152:
                  addr42:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
                  return;
               }
            }
            if(!(_loc6_ || param3))
            {
               continue;
            }
            §§pop().§§slot[4] = param4;
            §§goto(addr125);
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            §1q§.§[I§(stage);
            while(true)
            {
               §1q§.static = true;
               addr78:
               while(true)
               {
                  §4h§.§6§(this.getVersionInfo());
               }
               addr52:
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               §6'§(new §6!Z§());
               if(_loc5_ || param3)
               {
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        §=m§.init();
                        addr41:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              addr43:
                              if(!(_loc6_ && param2))
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr52);
                              }
                              while(true)
                              {
                                 §[4§.§@z§ = §;0§.stage.loaderInfo.parameters;
                                 §§goto(addr43);
                              }
                              addr73:
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        §§goto(addr78);
                     }
                  }
                  var _loc4_:§6t§ = this.§&x§();
                  if(_loc5_)
                  {
                     §6'§(_loc4_);
                     _loc4_.§-!S§(param1);
                     _loc4_.§?v§(param3);
                     §@]§.init(param2);
                     addr189:
                     addr180:
                     addr185:
                     addr165:
                     if(§6v§.§]r§())
                     {
                        if(_loc5_ || param2)
                        {
                           if(_loc5_ || this)
                           {
                              §6v§.§9!D§("serverConnectionError");
                              addr153:
                              if(_loc5_ || param1)
                              {
                                 addr110:
                                 §[!K§(§6t§.§`O§);
                                 addr115:
                                 if(_loc5_ || param3)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          this.§+!7§();
                                          if(!_loc5_)
                                          {
                                             §§goto(addr115);
                                          }
                                          return;
                                          addr109:
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr109);
               }
               §§goto(addr41);
            }
         }
         §§goto(addr73);
      }
      
      protected function §&x§() : §6t§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§6t§));
         §§push(true);
         §§push(§6t§.§`O§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || this)
                     {
                        addr57:
                        §§pop();
                        addr59:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!(_loc2_ && this))
                        {
                           return new §§pop().§6t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr59);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr57);
      }
      
      public function §+!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;0§.addEventListener(Event.ENTER_FRAME,this.§[x§);
            while(true)
            {
               §;0§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §;0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                     while(_loc1_)
                     {
                        §;0§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                        do
                        {
                           this.§=+§ = getTimer();
                        }
                        while(!(_loc1_ || this));
                        
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§2! §())
            {
               if(!_loc2_)
               {
                  §2! §().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§2! §())
            {
               if(!_loc2_)
               {
                  §2! §().keyDown(param1);
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
               §4h§.keyDown(param1);
               if(_loc3_)
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
         if(!_loc2_)
         {
            if(§2! §())
            {
               if(!(_loc2_ && param1))
               {
                  §2! §().keyUp(param1);
               }
            }
         }
      }
      
      public function §[x§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§0!V§ = null;
         §§push(getTimer() - this.§=+§);
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc2_)
         {
            this.§=+§ = getTimer();
            if(_loc7_)
            {
               §4N§.§!!L§.update(_loc2_);
            }
         }
         for each(_loc3_ in this.§4u§)
         {
            if(!(_loc6_ && param1))
            {
               _loc3_.§[x§();
            }
         }
         if(_loc7_ || param1)
         {
            §"j§.§9Q§(§;0§.mouseX,§;0§.mouseY);
            loop1:
            while(!§2y§())
            {
               loop2:
               while(true)
               {
                  if(this.updateState(_loc2_) == §[4§.STATE_STATUS_COMPLETED)
                  {
                     if(_loc7_)
                     {
                        if(_loc6_ && _loc2_)
                        {
                           if(_loc7_ || param1)
                           {
                           }
                           continue loop1;
                        }
                        §2y§();
                     }
                     if(_loc7_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  break;
                  addr142:
                  while(true)
                  {
                     continue loop2;
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr142);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.updateState(param1));
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(§2! §().isGenericState())
            {
               if(_loc3_)
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     if(§§pop() != §[4§.STATE_STATUS_COMPLETED)
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        §;0§.addChild(§"j§.activate());
                        addr85:
                        while(true)
                        {
                           this.setFirstGameState();
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        addr85:
                     }
                     §§goto(addr85);
                  }
                  addr61:
               }
               §§goto(addr85);
            }
            while(true)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr61);
            }
            return §§pop();
         }
         §§goto(addr85);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4N§.§!!L§.§8!4§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §[!K§(§6!Z§.§`O§);
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
      
      public function §]!P§(param1:§0!V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§4u§.indexOf(param1) < 0)
            {
               if(!_loc3_)
               {
                  this.§4u§.push(param1);
               }
            }
         }
      }
      
      public function §'K§(param1:§0!V§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§4u§.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_)
               {
                  this.§4u§.splice(_loc2_,1);
               }
            }
         }
      }
   }
}
