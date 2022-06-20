package §[#v§
{
   import § "v§.§4$4§;
   import § "v§.§]#?§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import §!!H§.§ $4§;
   import §+!n§.§+!p§;
   import §1!1§.§<#M§;
   import §4#$§.§5"L§;
   import §4#$§.§;!2§;
   import §4#l§.TabbedShopPopup;
   import §4$A§.§=$5§;
   import §9!6§.§## §;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §=!&§.§<$!§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2"%§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §^#?§.§#!T§;
   import §^#?§.§2R§;
   import §^#?§.§?#,§;
   import §^1§.§';§;
   import §^1§.§+!Y§;
   import §^1§.§[$2§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §7"Z§ extends §';§ implements §=$5§, §;"P§
   {
      
      public static const §4f§:int = 3;
      
      public static const STATE_NAME:String = "OverlappingTournamentsMenu";
      
      private static const §]H§:int = 3000;
      
      private static var §<#w§:Boolean = false;
      
      private static const §4!l§:int = 5;
      
      private static const §1f§:int = 0;
      
      private static const §4!C§:int = 0;
      
      private static const §,#^§:int = 1;
      
      private static const §&#K§:int = 2;
      
      private static const §,"Z§:int = 3;
      
      private static var §8=§:Array;
       
      
      private var §8$4§:Timer;
      
      private var §-#S§:Timer;
      
      private var §"#2§:int;
      
      private var §%X§:int;
      
      private var §4T§:Vector.<Boolean>;
      
      private var §["U§:Vector.<Boolean>;
      
      protected var §]!a§:§5"L§;
      
      private var §1#W§:Boolean;
      
      private var §1"w§:Wallet;
      
      private var §3"B§:Boolean;
      
      private var §]">§:Vector.<§;!2§>;
      
      private var §^$!§:TextField;
      
      protected var §9!B§:§?#,§;
      
      private var §&""§:int = 0;
      
      public function §7"Z§(param1:§4#?§, param2:§?!>§)
      {
         super(param1,false,STATE_NAME,param2);
         this.§9!B§ = §?#,§.§3"1§;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      public static function §,#M§() : void
      {
         §<#w§ = true;
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      override protected function init() : void
      {
         §@!D§ = new §+#<§(this);
         this.§]!a§ = §5"L§.§3"1§;
         §@!D§.init(§&n§.§7a§.Views.View_Overlapping_Tournaments[0]);
         §8=§ = new Array();
         §8=§.push([§@!D§.getItemByName("BUTTON_TOURNAMENT_2").x]);
         §8=§.push([§@!D§.getItemByName("BUTTON_TOURNAMENT_1").x + (§@!D§.getItemByName("BUTTON_TOURNAMENT_2").x - §@!D§.getItemByName("BUTTON_TOURNAMENT_1").x) / 2,§@!D§.getItemByName("BUTTON_TOURNAMENT_2").x + (§@!D§.getItemByName("BUTTON_TOURNAMENT_3").x - §@!D§.getItemByName("BUTTON_TOURNAMENT_2").x) / 2]);
         §8=§.push([§@!D§.getItemByName("BUTTON_TOURNAMENT_1").x,§@!D§.getItemByName("BUTTON_TOURNAMENT_2").x,§@!D§.getItemByName("BUTTON_TOURNAMENT_3").x]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§"#2§ = 0;
         this.§%X§ = 0;
         §,#M§();
         this.§ #8§();
         (§@!D§.getItemByName("Title_Container").mClip.getChildByName("TextTitle") as TextField).text = "Tournaments";
         this.§^$!§ = §@!D§.getItemByName("Title_Container").mClip.getChildByName("TextTime") as TextField;
         var _loc2_:§]#?§ = §^"a§.§9!h§.§^"C§();
         _loc2_.§4#v§(AngryBirdsBase.§-##§);
      }
      
      public function § #8§() : void
      {
         this.§-!`§(true);
         this.§4T§ = new Vector.<Boolean>();
         this.§["U§ = new Vector.<Boolean>();
         if(§2"%§.§4!;§() != -1)
         {
            §5"L§.§1!P§();
            this.§&""§ = §2"%§.§4!;§();
            §2"%§.§+#E§();
            this.§["U§[§4!C§] = false;
            this.§["U§[§,#^§] = false;
            this.§["U§[§&#K§] = false;
            this.§]!a§.addEventListener(§<$!§.§4!<§,this.§%!L§);
            this.§]!a§.§"$$§(this.§&""§);
            this.§]!a§.addEventListener(§<$!§.§4!G§,this.§4$1§);
            this.§]!a§.§1'§(this.§&""§);
            this.§]!a§.addEventListener(§<$!§.§?"+§,this.§#![§);
            this.§]!a§.§"#k§(this.§&""§);
            if(this.§9!B§.active)
            {
               this.§["U§[§,"Z§] = false;
               §^"a§.§,W§ = true;
               this.§9!B§.addEventListener(§<#M§.§ "2§,this.§ Q§);
               this.§9!B§.§9"G§(this.§&""§);
            }
         }
         else
         {
            this.§4T§[§1f§] = false;
            (§+!p§.§;"-§ as §^"a§).§6H§(§9! §.§@v§);
            (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§8$-§);
            this.§]!a§.addEventListener(§<$!§.§,"N§,this.§-"x§);
            this.§]!a§.addEventListener(§<$!§.§[p§,this.onError);
            this.§]!a§.§=#6§(§<#w§);
            §<#w§ = false;
            §5"L§.§`6§(false);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!a§.removeEventListener(§<$!§.§,"N§,this.§-"x§);
         this.§]!a§.removeEventListener(§<$!§.§[p§,this.onError);
         this.§9!B§.removeEventListener(§<#M§.§ "2§,this.§ Q§);
         this.§]!a§.removeEventListener(§<$!§.§?"+§,this.§#![§);
         this.§]!a§.removeEventListener(§<$!§.§4!G§,this.§4$1§);
         this.§]!a§.removeEventListener(§<$!§.§4!<§,this.§%!L§);
         this.§]">§ = null;
         this.§+E§(this.§1"w§);
      }
      
      private function §-!`§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1#W§ = false;
            §@!D§.getItemByName("loadingTournament").setVisibility(true);
            this.§+E§(this.§1"w§);
            (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§@v§);
         }
         else
         {
            this.§1#W§ = true;
            (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:§;!2§ = null;
         switch(param2)
         {
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               §%!?§(§[$2§.STATE_NAME);
               break;
            case "showCredits":
               §%!?§(§+!Y§.STATE_NAME);
               break;
            case "SPECIAL_STORE":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§-!S§.NORMAL,§## §.DEFAULT));
               break;
            default:
               if(this.§]">§ && param2 != "" && param2.indexOf("BUTTON_TOURNAMENT_") > -1)
               {
                  for each(_loc4_ in this.§]">§)
                  {
                     if(_loc4_.buttonName == param2)
                     {
                        §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
                        if(_loc4_.§0"%§())
                        {
                           this.§-!`§(true);
                           this.§9!B§.addEventListener(§<#M§.§ "2§,this.§[b§);
                           §^"a§.§,W§ = true;
                           StateTournamentResults.§4"=§ = _loc4_.tournamentId;
                           this.§9!B§.§9"G§(_loc4_.tournamentId);
                        }
                        else
                        {
                           §4e§.§7!y§(_loc4_.tournamentId,_loc4_.brand);
                           §%!?§(§4e§.STATE_NAME);
                        }
                        break;
                     }
                  }
                  break;
               }
         }
      }
      
      private function §[b§(param1:§<#M§) : void
      {
         this.§9!B§.removeEventListener(§<#M§.§ "2§,this.§[b§);
         StateTournamentResults.§4!&§ = StateTournamentResults.§9!@§;
         §%!?§(StateTournamentResults.STATE_NAME);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;!2§ = null;
         super.update(param1);
         if(this.§4T§ && this.§4T§.length > 0)
         {
            for each(_loc2_ in this.§4T§)
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
            for each(_loc3_ in this.§]">§)
            {
               if(!_loc3_.§?$>§())
               {
                  _loc2_ = false;
               }
            }
            if(_loc2_)
            {
               this.§4T§ = null;
               this.§4#h§();
            }
         }
         else if(this.§["U§ && this.§["U§.length > 0)
         {
            for each(_loc2_ in this.§["U§)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            if(_loc2_)
            {
               this.§-"#§();
            }
            return;
         }
         if(this.§1#W§)
         {
            this.§1#W§ = false;
            §@!D§.getItemByName("loadingTournament").setVisibility(false);
            this.§ "@§(new Wallet(this,true,true,false,false));
         }
         if(this.§]">§)
         {
            var _loc5_:int = 0;
            var _loc6_:* = this.§]">§;
            while(§§hasnext(_loc6_,_loc5_))
            {
               (§§nextvalue(_loc5_,_loc6_)).update(param1);
            }
         }
         this.§-#;§();
         if(§<#w§ && !this.§8$4§)
         {
            this.§ #8§();
         }
      }
      
      protected function onError(param1:§<$!§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t find the overlapping tournaments."));
      }
      
      protected function §-"x§(param1:§<$!§) : void
      {
         var ld:§2R§ = null;
         var timeSinceEnded:Number = NaN;
         var leagueStarsTextField:TextField = null;
         var isPlayed:Boolean = false;
         var stateToRemove:String = null;
         var extraCount:int = 0;
         var next:int = 0;
         var otb:§;!2§ = null;
         var buttonPositionArray:Array = null;
         var event:§<$!§ = param1;
         if(this.§8$4§)
         {
            return;
         }
         var now:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var receivedOverlappingTournamentsInfo:Array = event.data.tournaments as Array;
         var i:int = 0;
         while(i < receivedOverlappingTournamentsInfo.length)
         {
            timeSinceEnded = now - receivedOverlappingTournamentsInfo[i].end;
            if(timeSinceEnded > 0 && timeSinceEnded < §]H§)
            {
               this.§8$4§ = new Timer(§]H§ - timeSinceEnded);
               this.§8$4§.addEventListener(TimerEvent.TIMER,function():void
               {
                  §8$4§.stop();
                  §8$4§ = null;
                  §4T§ = null;
                  §["U§ = null;
                  §4#h§();
                  §,#M§();
                  § #8§();
               });
               this.§8$4§.start();
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
         var leagueProgressBar:MovieClip = §@!D§.getItemByName("LeagueProgressBar").mClip;
         var leagueProgressFill:MovieClip = leagueProgressBar.fill;
         for each(ld in §#!T§.§]#%§)
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
            leagueProgressFill.scaleX = § $4§.§-$"§(dif / (nextLeagueProgress - currentLeagueProgress),0,1);
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
            receivedOverlappingTournamentsInfo[i].state = §;!2§.§,2§;
            isPlayed = receivedOverlappingTournamentsInfo[i].tournamentRank != undefined && receivedOverlappingTournamentsInfo[i].tournamentRank > 0;
            if(isPlayed)
            {
               if(receivedOverlappingTournamentsInfo[i].rewardClaimed == 1)
               {
                  receivedOverlappingTournamentsInfo[i].state = §;!2§.§ "J§;
               }
               else
               {
                  receivedOverlappingTournamentsInfo[i].state = §;!2§.§4"I§;
               }
            }
            if(receivedOverlappingTournamentsInfo[i].start > now)
            {
               receivedOverlappingTournamentsInfo[i].state = §;!2§.§?$A§;
            }
            else if(receivedOverlappingTournamentsInfo[i].end > now)
            {
               receivedOverlappingTournamentsInfo[i].state = !!isPlayed ? §;!2§.§8#r§ : §;!2§.§ u§;
            }
            i++;
         }
         var removeOrder:Array = [§;!2§.§,2§,§;!2§.§ "J§,§;!2§.§?$A§,§;!2§.§ u§,§;!2§.§8#r§,§;!2§.§4"I§];
         var removeOrderIndex:int = 0;
         while(receivedOverlappingTournamentsInfo.length > §4f§)
         {
            stateToRemove = removeOrder[removeOrderIndex];
            extraCount = receivedOverlappingTournamentsInfo.length - §4f§;
            i = 0;
            while(i < extraCount)
            {
               next = this.§5b§(receivedOverlappingTournamentsInfo,stateToRemove);
               if(next > -1)
               {
                  receivedOverlappingTournamentsInfo.splice(next,1);
               }
               i++;
            }
            removeOrderIndex++;
         }
         this.§]">§ = new Vector.<§;!2§>();
         var tournamentIndex:int = 0;
         while(tournamentIndex < receivedOverlappingTournamentsInfo.length)
         {
            otb = new §;!2§(§@!D§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),receivedOverlappingTournamentsInfo[tournamentIndex]);
            this.§]">§.push(otb);
            tournamentIndex++;
         }
         if(§8=§.length == §4f§)
         {
            buttonPositionArray = §8=§[receivedOverlappingTournamentsInfo.length - 1];
            i = 0;
            while(i < buttonPositionArray.length)
            {
               §@!D§.getItemByName("BUTTON_TOURNAMENT_" + (i + 1)).x = buttonPositionArray[i];
               i++;
            }
         }
         while(tournamentIndex < §4f§)
         {
            this.§]">§.push(new §;!2§(§@!D§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),null));
            tournamentIndex++;
         }
         if(!this.§4T§)
         {
            this.§4T§ = new Vector.<Boolean>();
         }
         this.§4T§[§1f§] = true;
      }
      
      private function §5b§(param1:Array, param2:String) : int
      {
         var _loc3_:int = 0;
         if(param2 == §;!2§.§,2§ || param2 == §;!2§.§ "J§)
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
      
      private function §4#h§() : void
      {
         this.§-!`§(false);
         this.§]!a§.removeEventListener(§<$!§.§,"N§,this.§-"x§);
         this.§]!a§.removeEventListener(§<$!§.§[p§,this.onError);
      }
      
      protected function §-#;§() : void
      {
         if(this.§-#S§)
         {
            return;
         }
         var timeLeftPretty:Array = this.§]!a§.§;!Y§();
         this.§^$!§.text = timeLeftPretty[0] + " left!";
         this.§^$!§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§-#S§ = new Timer(§]H§);
            this.§-#S§.addEventListener(TimerEvent.TIMER,function():void
            {
               §-#S§.stop();
               §-#S§ = null;
               §%!?§(§[$2§.STATE_NAME);
            });
            this.§-#S§.start();
         }
         timeLeftPretty = null;
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         if(this.§1"w§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.movieClip;
      }
      
      override protected function updateUIScale() : void
      {
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            if(this.§"#2§ < §4!l§)
            {
               this.§%X§ = 0;
               if(this.§1"w§)
               {
                  this.§1"w§.§6""§.scaleX = §[$2§.§ #H§;
                  this.§1"w§.§6""§.scaleY = §[$2§.§ #H§;
               }
               ++this.§"#2§;
            }
         }
         else if(this.§%X§ < §4!l§)
         {
            this.§"#2§ = 0;
            if(this.§1"w§)
            {
               this.§1"w§.§6""§.scaleX = 1;
               this.§1"w§.§6""§.scaleY = 1;
            }
            ++this.§%X§;
         }
      }
      
      protected function §%!L§(param1:§<$!§) : void
      {
         if(this.§["U§)
         {
            this.§["U§[§4!C§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§4!<§,this.§%!L§);
      }
      
      protected function §4$1§(param1:§<$!§) : void
      {
         if(this.§["U§)
         {
            this.§["U§[§,#^§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§4!G§,this.§4$1§);
      }
      
      protected function §#![§(param1:§<$!§) : void
      {
         if(this.§["U§)
         {
            this.§["U§[§&#K§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§?"+§,this.§#![§);
      }
      
      private function § Q§(param1:§<#M§) : void
      {
         if(this.§["U§)
         {
            this.§["U§[§,"Z§] = true;
         }
         this.§9!B§.removeEventListener(§<#M§.§ "2§,this.§ Q§);
      }
      
      private function §-"#§() : void
      {
         if(this.§&""§ > 0)
         {
            if(this.§9!B§.§7$?§ && this.§9!B§.§7$?§.t && this.§9!B§.§7$?§.t.a)
            {
               if(this.§9!B§.§7$?§.t.a.tid == this.§&""§)
               {
                  this.§&""§ = 0;
                  StateTournamentResults.§4!&§ = StateTournamentResults.§9!@§;
                  §%!?§(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            this.§&""§ = 0;
            this.§["U§ = null;
         }
      }
   }
}
