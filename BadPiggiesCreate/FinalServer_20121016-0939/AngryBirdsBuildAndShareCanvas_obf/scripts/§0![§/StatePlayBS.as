package §0![§
{
   import § "@§.§%!3§;
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §'!A§.§-!S§;
   import §'@§.§^J§;
   import §'p§.§="#§;
   import §+h§.§5h§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import §=!#§.§2"-§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §6l§
   {
      
      public static const §'=§:String = "StatePlayBS";
      
      public static const §#!q§:int = 50;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'=§ = "StatePlayBS";
            do
            {
               §#!q§ = 50;
            }
            while(_loc2_ && StatePlayBS);
            
         }
      }
      
      private var §^'§:Boolean = true;
      
      protected var §&"$§:§^J§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&"$§ = new §^J§();
         }
         do
         {
            super(param1,param2);
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
         }
         while(true)
         {
            §2"-§.§@&§(false);
            loop1:
            while(true)
            {
               §?E§ = new §'s§(this);
               do
               {
                  §?E§.init(§`7§.§>"?§.Views.View_LevelPlayBS[0]);
                  continue loop1;
               }
               while(_loc2_ && _loc1_);
               
               return;
            }
            if(_loc2_ && _loc1_)
            {
               continue;
            }
            §§goto(addr80);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.levelStarted();
         }
         do
         {
            §5!U§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
         }
         do
         {
            this.§&"$§.§&!Y§(0);
            do
            {
               this.§9!+§(0);
               do
               {
                  §?E§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_ && this);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(§5h§.isOpen)
            {
               if(_loc4_)
               {
                  addr29:
                  §§push(0);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr33:
                  §§push(super.run(param1));
                  if(_loc4_ || param1)
                  {
                     §§push(int(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && param1))
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() != §5y§.STATE_STATUS_RUNNING)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§goto(addr118);
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr119:
                        }
                     }
                     loop1:
                     while(true)
                     {
                        this.§9!+§(param1);
                        while(mNextState.length > 0)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        return §5y§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr85);
                  }
                  addr118:
                  return _loc2_;
               }
               addr85:
               return §5y§.STATE_STATUS_COMPLETED;
            }
            §§goto(addr33);
         }
         §§goto(addr29);
      }
      
      override public function getVictoryState() : String
      {
         return §@8§.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §7!Y§.§'=§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!_loc3_)
            {
               if(Keyboard.R === _loc2_)
               {
                  addr74:
                  §§push(0);
                  if(_loc3_ && param1)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               loop2:
               switch(§§pop())
               {
                  case 0:
                     §%!3§.§4[§(§'=§);
                     while(true)
                     {
                        mNextState = §%!3§.§'=§;
                        if(_loc3_)
                        {
                           break loop2;
                        }
                        if(!(_loc3_ && this))
                        {
                           continue loop0;
                        }
                     }
               }
               addr99:
               return;
            }
            §§goto(addr74);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            if(param3 is §="#§)
            {
               if(_loc5_ || param3)
               {
                  addr136:
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§-!S§.LISTENER_EVENT_MOUSE_DOWN);
                     addr139:
                     addr140:
                     while(§§pop() != §§pop())
                     {
                        continue loop0;
                     }
                     §"o§.§2!a§();
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr74);
         }
         §§goto(addr136);
      }
      
      private function §9!+§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:int = §-!K§.getScore();
         §§push(this.§&"$§.getValue());
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               if(§§pop() < _loc2_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(int(Math.min(_loc2_,this.§&"$§.getValue() + param1 * §#!q§)));
                     if(!(_loc5_ || _loc2_))
                     {
                        break;
                     }
                     _loc3_ = §§pop();
                     loop1:
                     while(true)
                     {
                        addr55:
                        while(true)
                        {
                           this.§&"$§.§&!Y§(_loc3_);
                           addr60:
                           while(!_loc6_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr123);
               }
               while(true)
               {
                  §?E§.setText(_loc2_.toString(),"TextField_CurrentScore");
                  if(_loc5_ || _loc2_)
                  {
                     while(true)
                     {
                        if(false)
                        {
                           §§goto(addr55);
                        }
                        else
                        {
                           §§push(AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§));
                           if(!(_loc6_ && _loc3_))
                           {
                              addr122:
                              §§push(int(§§pop()));
                           }
                        }
                        addr123:
                        var _loc4_:* = §§pop();
                        if(!_loc6_)
                        {
                           §?E§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
                        }
                        return;
                     }
                     addr53:
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr122);
         }
         §§goto(addr53);
      }
   }
}
