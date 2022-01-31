package §3+§
{
   import § !j§.§4#c§;
   import §!#C§.§&%§;
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §"",§.§4#Q§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §##Z§.§"#Q§;
   import §##Z§.§'#N§;
   import §##Z§.§<$2§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §2";§.§'#J§;
   import §2";§.§7!z§;
   import §2";§.§95§;
   import §2J§.§]#@§;
   import §5" §.TabbedShopPopup;
   import §8#K§.§ case§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §<!r§.§=!P§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §0!S§ extends §7!z§ implements §%!#§, §&>§
   {
      
      public static const §<";§:int = 3;
      
      public static const STATE_NAME:String = "OverlappingTournamentsMenu";
      
      private static const §&!W§:int = 3000;
      
      private static var §'#i§:Boolean = false;
      
      private static const §2##§:int = 5;
      
      private static const §`#A§:int = 0;
      
      private static const §&"q§:int = 0;
      
      private static const §5!i§:int = 1;
      
      private static const §&!c§:int = 2;
      
      private static const §<"x§:int = 3;
      
      private static var §]!Z§:Array;
       
      
      private var §>!%§:Timer;
      
      private var §3"8§:Timer;
      
      private var §,#^§:int;
      
      private var §[![§:int;
      
      private var §2#z§:Vector.<Boolean>;
      
      private var §4#"§:Vector.<Boolean>;
      
      protected var §8#Q§:§'##§;
      
      private var §""x§:Boolean;
      
      private var §1!B§:Wallet;
      
      private var §""-§:Boolean;
      
      private var §]"?§:Vector.<§=!P§>;
      
      private var §1"1§:TextField;
      
      protected var § !F§:§<$2§;
      
      private var §8!_§:int = 0;
      
      public function §0!S§(param1:§;"n§, param2:§4#c§)
      {
         super(param1,false,STATE_NAME,param2);
         this.§ !F§ = §<$2§.§`"H§;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      public static function §>!Q§() : void
      {
         §'#i§ = true;
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      override protected function init() : void
      {
         §[$5§ = new §5!z§(this);
         this.§8#Q§ = §'##§.§`"H§;
         §[$5§.init(§?l§.§3m§.Views.View_Overlapping_Tournaments[0]);
         §]!Z§ = new Array();
         §]!Z§.push([§[$5§.getItemByName("BUTTON_TOURNAMENT_2").x]);
         §]!Z§.push([§[$5§.getItemByName("BUTTON_TOURNAMENT_1").x + (§[$5§.getItemByName("BUTTON_TOURNAMENT_2").x - §[$5§.getItemByName("BUTTON_TOURNAMENT_1").x) / 2,§[$5§.getItemByName("BUTTON_TOURNAMENT_2").x + (§[$5§.getItemByName("BUTTON_TOURNAMENT_3").x - §[$5§.getItemByName("BUTTON_TOURNAMENT_2").x) / 2]);
         §]!Z§.push([§[$5§.getItemByName("BUTTON_TOURNAMENT_1").x,§[$5§.getItemByName("BUTTON_TOURNAMENT_2").x,§[$5§.getItemByName("BUTTON_TOURNAMENT_3").x]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§,#^§ = 0;
         this.§[![§ = 0;
         §>!Q§();
         this.§@!G§();
         (§[$5§.getItemByName("Title_Container").mClip.getChildByName("TextTitle") as TextField).text = "Tournaments";
         this.§1"1§ = §[$5§.getItemByName("Title_Container").mClip.getChildByName("TextTime") as TextField;
         var _loc2_:§ case§ = § #v§.§1!!§.§`Z§();
         _loc2_.§?s§(AngryBirdsBase.§;#+§);
      }
      
      public function §@!G§() : void
      {
         this.§%A§(true);
         this.§2#z§ = new Vector.<Boolean>();
         this.§4#"§ = new Vector.<Boolean>();
         if(§&%§.§#!=§() != -1)
         {
            §'##§.§0!V§();
            this.§8!_§ = §&%§.§#!=§();
            §&%§.§;$@§();
            this.§4#"§[§&"q§] = false;
            this.§4#"§[§5!i§] = false;
            this.§4#"§[§&!c§] = false;
            this.§8#Q§.addEventListener(§]#@§.§,!N§,this.§?$+§);
            this.§8#Q§.§<#>§(this.§8!_§);
            this.§8#Q§.addEventListener(§]#@§.§,X§,this.§!#<§);
            this.§8#Q§.§6W§(this.§8!_§);
            this.§8#Q§.addEventListener(§]#@§.§4#p§,this.§5$%§);
            this.§8#Q§.§`!u§(this.§8!_§);
            if(this.§ !F§.active)
            {
               this.§4#"§[§<"x§] = false;
               § #v§.§%"W§ = true;
               this.§ !F§.addEventListener(§4#Q§.§4f§,this.§]!N§);
               this.§ !F§.§ $%§(this.§8!_§);
            }
         }
         else
         {
            this.§2#z§[§`#A§] = false;
            (§7n§.§-$<§ as § #v§).§ "u§(§`""§.§+#X§);
            (§7n§.§-$<§ as § #v§).§<z§(§`""§.§8$,§);
            this.§8#Q§.addEventListener(§]#@§.§]<§,this.§0A§);
            this.§8#Q§.addEventListener(§]#@§.§6$7§,this.onError);
            this.§8#Q§.§2!j§(§'#i§);
            §'#i§ = false;
            §'##§.§#$@§(false);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8#Q§.removeEventListener(§]#@§.§]<§,this.§0A§);
         this.§8#Q§.removeEventListener(§]#@§.§6$7§,this.onError);
         this.§ !F§.removeEventListener(§4#Q§.§4f§,this.§]!N§);
         this.§8#Q§.removeEventListener(§]#@§.§4#p§,this.§5$%§);
         this.§8#Q§.removeEventListener(§]#@§.§,X§,this.§!#<§);
         this.§8#Q§.removeEventListener(§]#@§.§,!N§,this.§?$+§);
         this.§]"?§ = null;
         this.§&!U§(this.§1!B§);
      }
      
      private function §%A§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§""x§ = false;
            §[$5§.getItemByName("loadingTournament").setVisibility(true);
            this.§&!U§(this.§1!B§);
            (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§+#X§);
         }
         else
         {
            this.§""x§ = true;
            (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:§=!P§ = null;
         switch(param2)
         {
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               §1!L§(§95§.STATE_NAME);
               break;
            case "showCredits":
               §1!L§(§'#J§.STATE_NAME);
               break;
            case "SPECIAL_STORE":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
               break;
            default:
               if(this.§]"?§ && param2 != "" && param2.indexOf("BUTTON_TOURNAMENT_") > -1)
               {
                  for each(_loc4_ in this.§]"?§)
                  {
                     if(_loc4_.buttonName == param2)
                     {
                        §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
                        if(_loc4_.§;#i§())
                        {
                           this.§%A§(true);
                           this.§ !F§.addEventListener(§4#Q§.§4f§,this.§23§);
                           § #v§.§%"W§ = true;
                           StateTournamentResults.§<#%§ = _loc4_.tournamentId;
                           this.§ !F§.§ $%§(_loc4_.tournamentId);
                           break;
                        }
                        §;!H§.§-3§(_loc4_.tournamentId,_loc4_.brand);
                        §1!L§(§;!H§.STATE_NAME);
                        break;
                     }
                  }
                  break;
               }
         }
      }
      
      private function §23§(param1:§4#Q§) : void
      {
         this.§ !F§.removeEventListener(§4#Q§.§4f§,this.§23§);
         StateTournamentResults.§2!x§ = StateTournamentResults.§="M§;
         §1!L§(StateTournamentResults.STATE_NAME);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§=!P§ = null;
         var _loc4_:§=!P§ = null;
         super.update(param1);
         if(this.§2#z§ && this.§2#z§.length > 0)
         {
            for each(_loc2_ in this.§2#z§)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            if(!_loc2_)
            {
               return;
            }
            for each(_loc3_ in this.§]"?§)
            {
               if(!_loc3_.§4#]§())
               {
                  _loc2_ = false;
               }
            }
            if(_loc2_)
            {
               this.§2#z§ = null;
               this.§#f§();
            }
         }
         else if(this.§4#"§ && this.§4#"§.length > 0)
         {
            for each(_loc2_ in this.§4#"§)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            if(_loc2_)
            {
               this.§]#C§();
            }
            return;
         }
         if(this.§""x§)
         {
            this.§""x§ = false;
            §[$5§.getItemByName("loadingTournament").setVisibility(false);
            this.§0!A§(new Wallet(this,true,true,false,false));
         }
         if(this.§]"?§)
         {
            for each(_loc4_ in this.§]"?§)
            {
               _loc4_.update(param1);
            }
         }
         this.§8!&§();
         if(§'#i§ && !this.§>!%§)
         {
            this.§@!G§();
         }
      }
      
      protected function onError(param1:§]#@§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t find the overlapping tournaments."));
      }
      
      protected function §0A§(param1:§]#@§) : void
      {
         var ld:§"#Q§ = null;
         var timeSinceEnded:Number = NaN;
         var leagueStarsTextField:TextField = null;
         var isPlayed:Boolean = false;
         var stateToRemove:String = null;
         var extraCount:int = 0;
         var next:int = 0;
         var otb:§=!P§ = null;
         var buttonPositionArray:Array = null;
         var event:§]#@§ = param1;
         if(this.§>!%§)
         {
            return;
         }
         var now:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var receivedOverlappingTournamentsInfo:Array = event.data.tournaments as Array;
         var i:int = 0;
         while(i < receivedOverlappingTournamentsInfo.length)
         {
            timeSinceEnded = now - receivedOverlappingTournamentsInfo[i].end;
            if(timeSinceEnded > 0 && timeSinceEnded < §&!W§)
            {
               this.§>!%§ = new Timer(§&!W§ - timeSinceEnded);
               this.§>!%§.addEventListener(TimerEvent.TIMER,function():void
               {
                  §>!%§.stop();
                  §>!%§ = null;
                  §2#z§ = null;
                  §4#"§ = null;
                  §#f§();
                  §>!Q§();
                  §@!G§();
               });
               this.§>!%§.start();
               return;
            }
            i++;
         }
         var leagueInfo:Object = event.data.allLeagueInfo;
         var currentLeagueIcon:String = leagueInfo.currentLeagueInfo.tn;
         var nextLeagueIcon:String = leagueInfo.nextLeagueInfo.tn;
         var currentLeagueProgress:int = leagueInfo.currentLeagueInfo.rt;
         var nextLeagueProgress:int = leagueInfo.nextLeagueInfo.rt;
         var playerProgress:int = event.data.lr;
         var leagueStars:int = leagueInfo.currentLeagueInfo.ls;
         var leagueProgressBar:MovieClip = §[$5§.getItemByName("LeagueProgressBar").mClip;
         var leagueProgressFill:MovieClip = leagueProgressBar.fill;
         for each(ld in §'#N§.§3!N§)
         {
            leagueProgressBar.getChildByName(ld.id).visible = ld.id == nextLeagueIcon;
         }
         if(currentLeagueIcon == "DIAMOND" || leagueStars > 0)
         {
            leagueProgressBar.getChildByName("DIAMOND").visible = false;
            leagueProgressBar.getChildByName("STAR").visible = true;
            leagueStarsTextField = (leagueProgressBar.getChildByName("STAR") as MovieClip).getChildByName("txtStarRating") as TextField;
            if(leagueStars > 0)
            {
               leagueStarsTextField.text = "" + (leagueStars + 1);
            }
            else
            {
               leagueStarsTextField.text = "1";
            }
         }
         else
         {
            leagueProgressBar.getChildByName("STAR").visible = false;
         }
         var dif:int = playerProgress - currentLeagueProgress;
         if(dif > 0)
         {
            dif = dif <= 4 ? 4 : int(dif);
            leagueProgressFill.scaleX = §;"x§.§<!f§(dif / (nextLeagueProgress - currentLeagueProgress),0,1);
         }
         else
         {
            leagueProgressFill.scaleX = 0;
         }
         (leagueProgressBar.getChildByName("TextLeagueProgress") as TextField).text = playerProgress + "/" + nextLeagueProgress;
         receivedOverlappingTournamentsInfo.sortOn(["start","id"],[Array.NUMERIC,Array.DESCENDING]);
         i = 0;
         while(i < receivedOverlappingTournamentsInfo.length)
         {
            receivedOverlappingTournamentsInfo[i].state = §=!P§.§;!J§;
            isPlayed = receivedOverlappingTournamentsInfo[i].tournamentRank != undefined && receivedOverlappingTournamentsInfo[i].tournamentRank > 0;
            if(isPlayed)
            {
               if(receivedOverlappingTournamentsInfo[i].rewardClaimed == 1)
               {
                  receivedOverlappingTournamentsInfo[i].state = §=!P§.§ !U§;
               }
               else
               {
                  receivedOverlappingTournamentsInfo[i].state = §=!P§.§ 0§;
               }
            }
            if(receivedOverlappingTournamentsInfo[i].start > now)
            {
               receivedOverlappingTournamentsInfo[i].state = §=!P§.§[!T§;
            }
            else if(receivedOverlappingTournamentsInfo[i].end > now)
            {
               receivedOverlappingTournamentsInfo[i].state = !!isPlayed ? §=!P§.§-#G§ : §=!P§.§^![§;
            }
            i++;
         }
         var removeOrder:Array = [§=!P§.§;!J§,§=!P§.§ !U§,§=!P§.§[!T§,§=!P§.§^![§,§=!P§.§-#G§,§=!P§.§ 0§];
         var removeOrderIndex:int = 0;
         while(receivedOverlappingTournamentsInfo.length > §<";§)
         {
            stateToRemove = removeOrder[removeOrderIndex];
            extraCount = receivedOverlappingTournamentsInfo.length - §<";§;
            i = 0;
            while(i < extraCount)
            {
               next = this.§06§(receivedOverlappingTournamentsInfo,stateToRemove);
               if(next > -1)
               {
                  receivedOverlappingTournamentsInfo.splice(next,1);
               }
               i++;
            }
            removeOrderIndex++;
         }
         this.§]"?§ = new Vector.<§=!P§>();
         var tournamentIndex:int = 0;
         while(tournamentIndex < receivedOverlappingTournamentsInfo.length)
         {
            otb = new §=!P§(§[$5§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),receivedOverlappingTournamentsInfo[tournamentIndex]);
            this.§]"?§.push(otb);
            tournamentIndex++;
         }
         if(§]!Z§.length == §<";§)
         {
            buttonPositionArray = §]!Z§[receivedOverlappingTournamentsInfo.length - 1];
            i = 0;
            while(i < buttonPositionArray.length)
            {
               §[$5§.getItemByName("BUTTON_TOURNAMENT_" + (i + 1)).x = buttonPositionArray[i];
               i++;
            }
         }
         while(tournamentIndex < §<";§)
         {
            this.§]"?§.push(new §=!P§(§[$5§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),null));
            tournamentIndex++;
         }
         if(!this.§2#z§)
         {
            this.§2#z§ = new Vector.<Boolean>();
         }
         this.§2#z§[§`#A§] = true;
      }
      
      private function §06§(param1:Array, param2:String) : int
      {
         var _loc3_:int = 0;
         if(param2 == §=!P§.§;!J§ || param2 == §=!P§.§ !U§)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               if(param1[_loc3_].state == param2)
               {
                  return _loc3_;
               }
               _loc3_++;
            }
         }
         else
         {
            _loc3_ = param1.length - 1;
            while(_loc3_ >= 0)
            {
               if(param1[_loc3_].state == param2)
               {
                  return _loc3_;
               }
               _loc3_--;
            }
         }
         return -1;
      }
      
      private function §#f§() : void
      {
         this.§%A§(false);
         this.§8#Q§.removeEventListener(§]#@§.§]<§,this.§0A§);
         this.§8#Q§.removeEventListener(§]#@§.§6$7§,this.onError);
      }
      
      protected function §8!&§() : void
      {
         if(this.§3"8§)
         {
            return;
         }
         var timeLeftPretty:Array = this.§8#Q§.§@!L§();
         this.§1"1§.text = timeLeftPretty[0] + " left!";
         this.§1"1§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§3"8§ = new Timer(§&!W§);
            this.§3"8§.addEventListener(TimerEvent.TIMER,function():void
            {
               §3"8§.stop();
               §3"8§ = null;
               §1!L§(§95§.STATE_NAME);
            });
            this.§3"8§.start();
         }
         timeLeftPretty = null;
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         if(this.§1!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.movieClip;
      }
      
      override protected function updateUIScale() : void
      {
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            if(this.§,#^§ < §2##§)
            {
               this.§[![§ = 0;
               if(this.§1!B§)
               {
                  this.§1!B§.§+F§.scaleX = §95§.§^"_§;
                  this.§1!B§.§+F§.scaleY = §95§.§^"_§;
               }
               ++this.§,#^§;
            }
         }
         else if(this.§[![§ < §2##§)
         {
            this.§,#^§ = 0;
            if(this.§1!B§)
            {
               this.§1!B§.§+F§.scaleX = 1;
               this.§1!B§.§+F§.scaleY = 1;
            }
            ++this.§[![§;
         }
      }
      
      protected function §?$+§(param1:§]#@§) : void
      {
         if(this.§4#"§)
         {
            this.§4#"§[§&"q§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§,!N§,this.§?$+§);
      }
      
      protected function §!#<§(param1:§]#@§) : void
      {
         if(this.§4#"§)
         {
            this.§4#"§[§5!i§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§,X§,this.§!#<§);
      }
      
      protected function §5$%§(param1:§]#@§) : void
      {
         if(this.§4#"§)
         {
            this.§4#"§[§&!c§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§4#p§,this.§5$%§);
      }
      
      private function §]!N§(param1:§4#Q§) : void
      {
         if(this.§4#"§)
         {
            this.§4#"§[§<"x§] = true;
         }
         this.§ !F§.removeEventListener(§4#Q§.§4f§,this.§]!N§);
      }
      
      private function §]#C§() : void
      {
         if(this.§8!_§ > 0)
         {
            if(this.§ !F§.§>!L§ && this.§ !F§.§>!L§.t && this.§ !F§.§>!L§.t.a)
            {
               if(this.§ !F§.§>!L§.t.a.tid == this.§8!_§)
               {
                  this.§8!_§ = 0;
                  StateTournamentResults.§2!x§ = StateTournamentResults.§="M§;
                  §1!L§(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            this.§8!_§ = 0;
            this.§4#"§ = null;
         }
      }
   }
}
