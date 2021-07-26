package §!!L§
{
   import § $0§.§5R§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §'n§.§+"g§;
   import §+`§.§%"q§;
   import §,#,§.§%"#§;
   import §,#,§.§=#o§;
   import §1#`§.§&#m§;
   import §3"V§.§ b§;
   import §3"V§.§^!7§;
   import §7"&§.§1k§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §]#'§.§3$-§;
   import §]#'§.§4"s§;
   import §]#'§.§6#P§;
   import §]§.§1$?§;
   import §]§.§3"E§;
   import §]§.§[#t§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`"t§.§7"U§;
   import §`,§.§+!>§;
   import §`,§.§7!$§;
   import §`D§.TabbedShopPopup;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §8"^§ extends §1$?§ implements §1k§, §+#?§
   {
      
      public static const §8B§:int = 3;
      
      public static const STATE_NAME:String = "OverlappingTournamentsMenu";
      
      private static const §3"#§:int = 3000;
      
      private static var §["a§:Boolean = false;
      
      private static const §3"h§:int = 5;
      
      private static const §!f§:int = 0;
      
      private static const §,!E§:int = 0;
      
      private static const §3#p§:int = 1;
      
      private static const §=!%§:int = 2;
      
      private static const §29§:int = 3;
      
      private static var §<#g§:Array;
       
      
      private var §`!Y§:Timer;
      
      private var §="G§:Timer;
      
      private var §7"4§:int;
      
      private var §6!N§:int;
      
      private var §#$!§:Vector.<Boolean>;
      
      private var §!#A§:Vector.<Boolean>;
      
      protected var §<$B§:§7!$§;
      
      private var §?"#§:Boolean;
      
      private var §"#W§:Wallet;
      
      private var §-6§:Boolean;
      
      private var §=#h§:Vector.<§+!>§>;
      
      private var §2$=§:TextField;
      
      protected var §-$#§:§4"s§;
      
      private var §^C§:int = 0;
      
      public function §8"^§(param1:§]#q§, param2:§%"q§)
      {
         super(param1,false,STATE_NAME,param2);
         this.§-$#§ = §4"s§.§+!,§;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      public static function §!#C§() : void
      {
         §["a§ = true;
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function init() : void
      {
         §;!w§ = new §%"X§(this);
         this.§<$B§ = §7!$§.§+!,§;
         §;!w§.init(§false§.§4#;§.Views.View_Overlapping_Tournaments[0]);
         §<#g§ = new Array();
         §<#g§.push([§;!w§.getItemByName("BUTTON_TOURNAMENT_2").x]);
         §<#g§.push([§;!w§.getItemByName("BUTTON_TOURNAMENT_1").x + (§;!w§.getItemByName("BUTTON_TOURNAMENT_2").x - §;!w§.getItemByName("BUTTON_TOURNAMENT_1").x) / 2,§;!w§.getItemByName("BUTTON_TOURNAMENT_2").x + (§;!w§.getItemByName("BUTTON_TOURNAMENT_3").x - §;!w§.getItemByName("BUTTON_TOURNAMENT_2").x) / 2]);
         §<#g§.push([§;!w§.getItemByName("BUTTON_TOURNAMENT_1").x,§;!w§.getItemByName("BUTTON_TOURNAMENT_2").x,§;!w§.getItemByName("BUTTON_TOURNAMENT_3").x]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7"4§ = 0;
         this.§6!N§ = 0;
         §!#C§();
         this.§ #H§();
         (§;!w§.getItemByName("Title_Container").mClip.getChildByName("TextTitle") as TextField).text = "Tournaments";
         this.§2$=§ = §;!w§.getItemByName("Title_Container").mClip.getChildByName("TextTime") as TextField;
         var _loc2_:§^!7§ = §@z§.§ !D§.§'e§();
         _loc2_.§%Q§(AngryBirdsBase.§>"D§);
      }
      
      public function § #H§() : void
      {
         this.§?!U§(true);
         this.§#$!§ = new Vector.<Boolean>();
         this.§!#A§ = new Vector.<Boolean>();
         if(§%"#§.§9"1§() != -1)
         {
            §7!$§.§'"P§();
            this.§^C§ = §%"#§.§9"1§();
            §%"#§.§5A§();
            this.§!#A§[§,!E§] = false;
            this.§!#A§[§3#p§] = false;
            this.§!#A§[§=!%§] = false;
            this.§<$B§.addEventListener(§&#m§.§&!I§,this.§[§);
            this.§<$B§.final(this.§^C§);
            this.§<$B§.addEventListener(§&#m§.§'"Z§,this.§"#y§);
            this.§<$B§.§'"4§(this.§^C§);
            this.§<$B§.addEventListener(§&#m§.§%#i§,this.§&#"§);
            this.§<$B§.§!'§(this.§^C§);
            if(this.§-$#§.active)
            {
               this.§!#A§[§29§] = false;
               §@z§.§ P§ = true;
               this.§-$#§.addEventListener(§+"g§.§7#i§,this.§?R§);
               this.§-$#§.§08§(this.§^C§);
            }
         }
         else
         {
            this.§#$!§[§!f§] = false;
            (§]$?§.§;u§ as §@z§).§-"o§(§2+§.§3#u§);
            (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§,"P§);
            this.§<$B§.addEventListener(§&#m§.§9G§,this.§-#g§);
            this.§<$B§.addEventListener(§&#m§.§^"=§,this.onError);
            this.§<$B§.§+"I§(§["a§);
            §["a§ = false;
            §7!$§.§0#§(false);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<$B§.removeEventListener(§&#m§.§9G§,this.§-#g§);
         this.§<$B§.removeEventListener(§&#m§.§^"=§,this.onError);
         this.§-$#§.removeEventListener(§+"g§.§7#i§,this.§?R§);
         this.§<$B§.removeEventListener(§&#m§.§%#i§,this.§&#"§);
         this.§<$B§.removeEventListener(§&#m§.§'"Z§,this.§"#y§);
         this.§<$B§.removeEventListener(§&#m§.§&!I§,this.§[§);
         this.§=#h§ = null;
         this.§7=§(this.§"#W§);
      }
      
      private function §?!U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?"#§ = false;
            §;!w§.getItemByName("loadingTournament").setVisibility(true);
            this.§7=§(this.§"#W§);
            (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§3#u§);
         }
         else
         {
            this.§?"#§ = true;
            (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:§+!>§ = null;
         switch(param2)
         {
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               §3#§(§3"E§.STATE_NAME);
               break;
            case "showCredits":
               §3#§(§[#t§.STATE_NAME);
               break;
            case "SPECIAL_STORE":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§@#D§.NORMAL,§5R§.DEFAULT));
               break;
            default:
               if(this.§=#h§ && param2 != "" && param2.indexOf("BUTTON_TOURNAMENT_") > -1)
               {
                  for each(_loc4_ in this.§=#h§)
                  {
                     if(_loc4_.buttonName == param2)
                     {
                        § b§.playSound("Menu_Confirm",§ b§.§;$5§);
                        if(_loc4_.§"!n§())
                        {
                           this.§?!U§(true);
                           this.§-$#§.addEventListener(§+"g§.§7#i§,this.§[!r§);
                           §@z§.§ P§ = true;
                           StateTournamentResults.§^z§ = _loc4_.tournamentId;
                           this.§-$#§.§08§(_loc4_.tournamentId);
                        }
                        else
                        {
                           § !8§.§=v§(_loc4_.tournamentId,_loc4_.brand);
                           §3#§(§ !8§.STATE_NAME);
                        }
                        break;
                     }
                  }
               }
         }
      }
      
      private function §[!r§(param1:§+"g§) : void
      {
         this.§-$#§.removeEventListener(§+"g§.§7#i§,this.§[!r§);
         StateTournamentResults.§+G§ = StateTournamentResults.§9`§;
         §3#§(StateTournamentResults.STATE_NAME);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§+!>§ = null;
         var _loc4_:§+!>§ = null;
         super.update(param1);
         if(this.§#$!§ && this.§#$!§.length > 0)
         {
            for each(_loc2_ in this.§#$!§)
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
            for each(_loc3_ in this.§=#h§)
            {
               if(!_loc3_.§7!?§())
               {
                  _loc2_ = false;
               }
            }
            if(_loc2_)
            {
               this.§#$!§ = null;
               this.§##D§();
            }
         }
         else if(this.§!#A§ && this.§!#A§.length > 0)
         {
            for each(_loc2_ in this.§!#A§)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            if(_loc2_)
            {
               this.§="n§();
            }
            return;
         }
         if(this.§?"#§)
         {
            this.§?"#§ = false;
            §;!w§.getItemByName("loadingTournament").setVisibility(false);
            this.§6"h§(new Wallet(this,true,true,false,false));
         }
         if(this.§=#h§)
         {
            for each(_loc4_ in this.§=#h§)
            {
               _loc4_.update(param1);
            }
         }
         this.§9!=§();
         if(§["a§ && !this.§`!Y§)
         {
            this.§ #H§();
         }
      }
      
      protected function onError(param1:§&#m§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t find the overlapping tournaments."));
      }
      
      protected function §-#g§(param1:§&#m§) : void
      {
         var ld:§3$-§ = null;
         var timeSinceEnded:Number = NaN;
         var leagueStarsTextField:TextField = null;
         var isPlayed:Boolean = false;
         var stateToRemove:String = null;
         var extraCount:int = 0;
         var next:int = 0;
         var otb:§+!>§ = null;
         var buttonPositionArray:Array = null;
         var event:§&#m§ = param1;
         if(this.§`!Y§)
         {
            return;
         }
         var now:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var receivedOverlappingTournamentsInfo:Array = event.data.tournaments as Array;
         var i:int = 0;
         while(i < receivedOverlappingTournamentsInfo.length)
         {
            timeSinceEnded = now - receivedOverlappingTournamentsInfo[i].end;
            if(timeSinceEnded > 0 && timeSinceEnded < §3"#§)
            {
               this.§`!Y§ = new Timer(§3"#§ - timeSinceEnded);
               this.§`!Y§.addEventListener(TimerEvent.TIMER,function():void
               {
                  §`!Y§.stop();
                  §`!Y§ = null;
                  §#$!§ = null;
                  §!#A§ = null;
                  §##D§();
                  §!#C§();
                  § #H§();
               });
               this.§`!Y§.start();
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
         var leagueProgressBar:MovieClip = §;!w§.getItemByName("LeagueProgressBar").mClip;
         var leagueProgressFill:MovieClip = leagueProgressBar.fill;
         for each(ld in §6#P§.§]$+§)
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
            leagueProgressFill.scaleX = §7"U§.§!!7§(dif / (nextLeagueProgress - currentLeagueProgress),0,1);
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
            receivedOverlappingTournamentsInfo[i].state = §+!>§.§'#5§;
            isPlayed = receivedOverlappingTournamentsInfo[i].tournamentRank != undefined && receivedOverlappingTournamentsInfo[i].tournamentRank > 0;
            if(isPlayed)
            {
               if(receivedOverlappingTournamentsInfo[i].rewardClaimed == 1)
               {
                  receivedOverlappingTournamentsInfo[i].state = §+!>§.§]D§;
               }
               else
               {
                  receivedOverlappingTournamentsInfo[i].state = §+!>§.§>!o§;
               }
            }
            if(receivedOverlappingTournamentsInfo[i].start > now)
            {
               receivedOverlappingTournamentsInfo[i].state = §+!>§.§?X§;
            }
            else if(receivedOverlappingTournamentsInfo[i].end > now)
            {
               receivedOverlappingTournamentsInfo[i].state = !!isPlayed ? §+!>§.§=3§ : §+!>§.§1!a§;
            }
            i++;
         }
         var removeOrder:Array = [§+!>§.§'#5§,§+!>§.§]D§,§+!>§.§?X§,§+!>§.§1!a§,§+!>§.§=3§,§+!>§.§>!o§];
         var removeOrderIndex:int = 0;
         while(receivedOverlappingTournamentsInfo.length > §8B§)
         {
            stateToRemove = removeOrder[removeOrderIndex];
            extraCount = receivedOverlappingTournamentsInfo.length - §8B§;
            i = 0;
            while(i < extraCount)
            {
               next = this.§-#f§(receivedOverlappingTournamentsInfo,stateToRemove);
               if(next > -1)
               {
                  receivedOverlappingTournamentsInfo.splice(next,1);
               }
               i++;
            }
            removeOrderIndex++;
         }
         this.§=#h§ = new Vector.<§+!>§>();
         var tournamentIndex:int = 0;
         while(tournamentIndex < receivedOverlappingTournamentsInfo.length)
         {
            otb = new §+!>§(§;!w§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),receivedOverlappingTournamentsInfo[tournamentIndex]);
            this.§=#h§.push(otb);
            tournamentIndex++;
         }
         if(§<#g§.length == §8B§)
         {
            buttonPositionArray = §<#g§[receivedOverlappingTournamentsInfo.length - 1];
            i = 0;
            while(i < buttonPositionArray.length)
            {
               §;!w§.getItemByName("BUTTON_TOURNAMENT_" + (i + 1)).x = buttonPositionArray[i];
               i++;
            }
         }
         while(tournamentIndex < §8B§)
         {
            this.§=#h§.push(new §+!>§(§;!w§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),null));
            tournamentIndex++;
         }
         if(!this.§#$!§)
         {
            this.§#$!§ = new Vector.<Boolean>();
         }
         this.§#$!§[§!f§] = true;
      }
      
      private function §-#f§(param1:Array, param2:String) : int
      {
         var _loc3_:int = 0;
         if(param2 == §+!>§.§'#5§ || param2 == §+!>§.§]D§)
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
      
      private function §##D§() : void
      {
         this.§?!U§(false);
         this.§<$B§.removeEventListener(§&#m§.§9G§,this.§-#g§);
         this.§<$B§.removeEventListener(§&#m§.§^"=§,this.onError);
      }
      
      protected function §9!=§() : void
      {
         if(this.§="G§)
         {
            return;
         }
         var timeLeftPretty:Array = this.§<$B§.§?#"§();
         this.§2$=§.text = timeLeftPretty[0] + " left!";
         this.§2$=§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§="G§ = new Timer(§3"#§);
            this.§="G§.addEventListener(TimerEvent.TIMER,function():void
            {
               §="G§.stop();
               §="G§ = null;
               §3#§(§3"E§.STATE_NAME);
            });
            this.§="G§.start();
         }
         timeLeftPretty = null;
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         if(this.§"#W§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.movieClip;
      }
      
      override protected function updateUIScale() : void
      {
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            if(this.§7"4§ < §3"h§)
            {
               this.§6!N§ = 0;
               if(this.§"#W§)
               {
                  this.§"#W§.§`#8§.scaleX = §3"E§.§3$0§;
                  this.§"#W§.§`#8§.scaleY = §3"E§.§3$0§;
               }
               ++this.§7"4§;
            }
         }
         else if(this.§6!N§ < §3"h§)
         {
            this.§7"4§ = 0;
            if(this.§"#W§)
            {
               this.§"#W§.§`#8§.scaleX = 1;
               this.§"#W§.§`#8§.scaleY = 1;
            }
            ++this.§6!N§;
         }
      }
      
      protected function §[§(param1:§&#m§) : void
      {
         if(this.§!#A§)
         {
            this.§!#A§[§,!E§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§&!I§,this.§[§);
      }
      
      protected function §"#y§(param1:§&#m§) : void
      {
         if(this.§!#A§)
         {
            this.§!#A§[§3#p§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§'"Z§,this.§"#y§);
      }
      
      protected function §&#"§(param1:§&#m§) : void
      {
         if(this.§!#A§)
         {
            this.§!#A§[§=!%§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§%#i§,this.§&#"§);
      }
      
      private function §?R§(param1:§+"g§) : void
      {
         if(this.§!#A§)
         {
            this.§!#A§[§29§] = true;
         }
         this.§-$#§.removeEventListener(§+"g§.§7#i§,this.§?R§);
      }
      
      private function §="n§() : void
      {
         if(this.§^C§ > 0)
         {
            if(this.§-$#§.§]$ § && this.§-$#§.§]$ §.t && this.§-$#§.§]$ §.t.a)
            {
               if(this.§-$#§.§]$ §.t.a.tid == this.§^C§)
               {
                  this.§^C§ = 0;
                  StateTournamentResults.§+G§ = StateTournamentResults.§9`§;
                  §3#§(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            this.§^C§ = 0;
            this.§!#A§ = null;
         }
      }
   }
}
