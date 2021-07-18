package §7#W§
{
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §,"N§.§6"w§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §,"N§.§@>§;
   import §<"c§.§?#N§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §`"%§.§"!4§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §2&§ extends §?#N§
   {
      
      public static const §^!7§:String = "stateTournamentPlay";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §^!7§ = "stateTournamentPlay";
         }
      }
      
      public function §2&§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "stateTournamentPlay")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.activate(param1);
         }
         do
         {
            §@#B§(§4#;§.singleton.dataModel).§!!C§.addEventListener(§@"b§.§3R§,this.onTournamentOver);
         }
         while(!_loc3_);
         
      }
      
      private function onTournamentOver(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            § g§(§6!W§.§^!7§);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §@#B§(§4#;§.singleton.dataModel).§!!C§.removeEventListener(§@"b§.§3R§,this.onTournamentOver);
         }
         do
         {
            super.deActivate();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.levelStarted();
         }
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function viewEventHandler(param1:§"!4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!§03§)
            {
               do
               {
                  §§push(param1.type == §"!4§.RESTART_LEVEL);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr120:
                           while(true)
                           {
                              §§push(§@#B§(§4#;§.singleton.dataModel).§^"J§.energy <= 0);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        addr119:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           super.viewEventHandler(param1);
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 addr25:
                                 return;
                                 addr39:
                              }
                              else
                              {
                                 addr123:
                              }
                              return;
                           }
                        }
                        if(!(_loc3_ || _loc3_))
                        {
                           break;
                        }
                        if(_loc3_ || _loc3_)
                        {
                           §4#;§.singleton.popupManager.openPopup(new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP),true,true,true);
                           break;
                        }
                        §§goto(addr120);
                     }
                     continue;
                  }
                  §§goto(addr119);
               }
               while(!(_loc3_ || _loc2_));
               
               §§goto(addr25);
            }
            §§goto(addr123);
         }
         §§goto(addr39);
      }
      
      override protected function getTutorialsToShow() : Vector.<String>
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Vector.<String> = super.getTutorialsToShow();
         var _loc2_:int = _loc1_.indexOf(§6"w§.§+!G§);
         if(_loc3_)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc4_ && this))
               {
                  _loc1_.splice(_loc2_,1);
               }
            }
         }
         return _loc1_;
      }
      
      override public function getVictoryStateName() : String
      {
         return §'!O§.§^!7§;
      }
      
      override public function getLoserStateName() : String
      {
         return §9!b§.§^!7§;
      }
      
      override protected function addPauseView() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Pause"));
         if(_loc4_)
         {
            §2!j§ = new §=#4§(_loc2_,§+!b§,_loc1_,§^"N§);
         }
      }
      
      override protected function addPlayView() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Play"));
         if(!(_loc3_ && _loc3_))
         {
            §?#M§ = new §]"s§(_loc2_,§+!b§,§ F§,_loc1_,§^"N§);
         }
      }
      
      override protected function showLevelScores() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = §+!b§.currentLevel;
         if(!_loc3_)
         {
            §@!m§(§4#;§.singleton).§""s§.showLevelScores(§+!b§.getEpisodeForLevel(§+!b§.currentLevel).name,_loc1_,true);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
      }
   }
}
