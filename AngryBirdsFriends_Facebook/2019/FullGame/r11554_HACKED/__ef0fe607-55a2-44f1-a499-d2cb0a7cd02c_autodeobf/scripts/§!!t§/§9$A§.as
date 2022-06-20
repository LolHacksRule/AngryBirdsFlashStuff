package §!!t§
{
   import §!!?§.TabbedShopPopup;
   import §!§.§="D§;
   import §"$=§.§'![§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+"u§.§2U§;
   import §+"u§.§^"C§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §3!5§.§0#r§;
   import §3"G§.§16§;
   import §3=§.§-"4§;
   import §3=§.§1U§;
   import §3=§.§6"H§;
   import §4!n§.§'!,§;
   import §6!'§.§@#c§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>"h§.§?>§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §]"'§.§@"%§;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §9$A§ extends §-"4§ implements §="D§, §["b§
   {
      
      public static const §>T§:int = 3;
      
      public static const STATE_NAME:String = "OverlappingTournamentsMenu";
      
      private static const §`R§:int = 3000;
      
      private static var §@"6§:Boolean = false;
      
      private static const §;s§:int = 5;
      
      private static const §%N§:int = 0;
       
      
      private var §0#D§:Timer;
      
      private var §+#u§:Timer;
      
      private var §@!6§:int;
      
      private var §3]§:int;
      
      private var §;!C§:Vector.<Boolean>;
      
      private var §7!!§:Vector.<Boolean>;
      
      protected var §;"§:§^"C§;
      
      private var §6m§:Boolean;
      
      private var §?3§:Wallet;
      
      private var §6G§:Boolean;
      
      private var §[!q§:Vector.<§2U§>;
      
      private var §>!Q§:TextField;
      
      protected var §?#r§:§@#c§;
      
      public function §9$A§(param1:§'![§, param2:§16§)
      {
         super(param1,false,STATE_NAME,param2);
         this.§?#r§ = §@#c§.§?q§;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      public static function §`o§() : void
      {
         §@"6§ = true;
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function init() : void
      {
         §<"`§ = new §?!F§(this);
         this.§;"§ = §^"C§.§?q§;
         §<"`§.init(§0"j§.§-i§.Views.View_Overlapping_Tournaments[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@!6§ = 0;
         this.§3]§ = 0;
         this.§-"3§();
         (§<"`§.getItemByName("Title_Container").mClip.getChildByName("TextTitle") as TextField).text = "Tournaments";
         this.§>!Q§ = §<"`§.getItemByName("Title_Container").mClip.getChildByName("TextTime") as TextField;
      }
      
      public function §-"3§() : void
      {
         this.§9K§(true);
         this.§;!C§ = new Vector.<Boolean>();
         this.§;!C§[§%N§] = false;
         (§%"T§.§>$<§ as §'"a§).§##b§(§<"c§.§!!>§);
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§&!;§);
         this.§;"§.addEventListener(§0#r§.§,B§,this.§5#J§);
         this.§;"§.addEventListener(§0#r§.§7!m§,this.onError);
         this.§;"§.§6"T§(§@"6§);
         §@"6§ = false;
         §^"C§.§]y§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;"§.removeEventListener(§0#r§.§,B§,this.§5#J§);
         this.§;"§.removeEventListener(§0#r§.§7!m§,this.onError);
         this.§[!q§ = null;
         this.§"[§(this.§?3§);
      }
      
      private function §9K§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6m§ = false;
            §<"`§.getItemByName("loadingTournament").setVisibility(true);
            this.§"[§(this.§?3§);
            (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§!!>§);
         }
         else
         {
            this.§6m§ = true;
            (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:§2U§ = null;
         switch(param2)
         {
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               §%D§(§6"H§.STATE_NAME);
               break;
            case "showCredits":
               §%D§(§1U§.STATE_NAME);
               break;
            case "SPECIAL_STORE":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%#§.NORMAL,§9#5§.DEFAULT));
               break;
            default:
               if(this.§[!q§ && param2 != "" && param2.indexOf("BUTTON_TOURNAMENT_") > -1)
               {
                  for each(_loc4_ in this.§[!q§)
                  {
                     if(_loc4_.buttonName == param2)
                     {
                        §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
                        if(_loc4_.§0!#§())
                        {
                           this.§9K§(true);
                           this.§?#r§.addEventListener(§?>§.§]#s§,this.§+#x§);
                           §'"a§.§;$2§ = true;
                           StateTournamentResults.§>!j§ = _loc4_.tournamentId;
                           this.§?#r§.§!$C§(_loc4_.tournamentId);
                        }
                        else
                        {
                           §'8§.§7"Y§(_loc4_.tournamentId);
                           §%D§(§'8§.STATE_NAME);
                        }
                        break;
                     }
                  }
                  break;
               }
         }
      }
      
      private function §+#x§(param1:§?>§) : void
      {
         this.§?#r§.removeEventListener(§?>§.§]#s§,this.§+#x§);
         StateTournamentResults.§?"y§ = StateTournamentResults.§+$E§;
         §%D§(StateTournamentResults.STATE_NAME);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§2U§ = null;
         super.update(param1);
         if(this.§;!C§ || this.§7!!§)
         {
            for each(_loc2_ in this.§;!C§)
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
            for each(_loc2_ in this.§7!!§)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            if(_loc2_)
            {
               this.§;!C§ = null;
               this.§7!!§ = null;
               this.§+"E§();
            }
         }
         if(this.§6m§)
         {
            this.§6m§ = false;
            §<"`§.getItemByName("loadingTournament").setVisibility(false);
            this.§[D§(new Wallet(this,true,true,false,true));
         }
         if(this.§[!q§)
         {
            for each(_loc3_ in this.§[!q§)
            {
               _loc3_.update(param1);
            }
         }
         this.§3!j§();
         if(§@"6§ && !this.§0#D§)
         {
            this.§-"3§();
         }
      }
      
      protected function onError(param1:§0#r§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t find the overlapping tournaments."));
      }
      
      protected function §5#J§(param1:§0#r§) : void
      {
         var addToTheMenu:Boolean = false;
         var timeSinceEnded:Number = NaN;
         var alreadyInserted:Boolean = false;
         var tempInfoObject:Object = null;
         var otb:§2U§ = null;
         var event:§0#r§ = param1;
         if(this.§0#D§)
         {
            return;
         }
         var receivedOverlappingTournamentsInfo:Array = event.data as Array;
         receivedOverlappingTournamentsInfo.sortOn("id",Array.DESCENDING);
         var now:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var i:int = 0;
         while(i < receivedOverlappingTournamentsInfo.length)
         {
            timeSinceEnded = now - receivedOverlappingTournamentsInfo[i].end;
            if(timeSinceEnded > 0 && timeSinceEnded < §`R§)
            {
               this.§0#D§ = new Timer(§`R§ - timeSinceEnded);
               this.§0#D§.addEventListener(TimerEvent.TIMER,function():void
               {
                  §0#D§.stop();
                  §0#D§ = null;
                  §;!C§ = null;
                  §7!!§ = null;
                  §+"E§();
                  §@"6§ = true;
                  §-"3§();
               });
               this.§0#D§.start();
               return;
            }
            i++;
         }
         this.§[!q§ = new Vector.<§2U§>();
         this.§7!!§ = new Vector.<Boolean>();
         var currentOverlappingTournamentsInfo:Array = new Array();
         var currentTournamentIndex:int = 0;
         i = 0;
         while(i < receivedOverlappingTournamentsInfo.length)
         {
            addToTheMenu = false;
            if(receivedOverlappingTournamentsInfo[i].hasOwnProperty("tournamentRank"))
            {
               addToTheMenu = true;
            }
            else if(receivedOverlappingTournamentsInfo[i].inventoryUpdates)
            {
               addToTheMenu = true;
            }
            else if(receivedOverlappingTournamentsInfo[i].start <= now && now <= receivedOverlappingTournamentsInfo[i].end)
            {
               addToTheMenu = true;
            }
            else if(now < receivedOverlappingTournamentsInfo[i].start)
            {
               addToTheMenu = true;
            }
            if(addToTheMenu)
            {
               currentOverlappingTournamentsInfo.push(receivedOverlappingTournamentsInfo[i]);
               if(currentOverlappingTournamentsInfo.length == §>T§)
               {
                  break;
               }
            }
            i++;
         }
         if(currentOverlappingTournamentsInfo.length < §>T§)
         {
            receivedOverlappingTournamentsInfo.sortOn("end",Array.DESCENDING);
            i = 0;
            while(i < receivedOverlappingTournamentsInfo.length)
            {
               if(receivedOverlappingTournamentsInfo[i].end <= now)
               {
                  alreadyInserted = false;
                  for each(tempInfoObject in currentOverlappingTournamentsInfo)
                  {
                     if(tempInfoObject.id == receivedOverlappingTournamentsInfo[i].id)
                     {
                        alreadyInserted = true;
                        break;
                     }
                  }
                  if(!alreadyInserted)
                  {
                     currentOverlappingTournamentsInfo.push(receivedOverlappingTournamentsInfo[i]);
                     if(currentOverlappingTournamentsInfo.length == §>T§)
                     {
                        break;
                     }
                  }
               }
               i++;
            }
         }
         currentOverlappingTournamentsInfo.sortOn("end",Array.NUMERIC);
         var tournamentIndex:int = 0;
         while(tournamentIndex < currentOverlappingTournamentsInfo.length)
         {
            otb = new §2U§(§<"`§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),currentOverlappingTournamentsInfo[tournamentIndex]);
            this.§[!q§.push(otb);
            tournamentIndex++;
         }
         while(tournamentIndex < §>T§)
         {
            this.§[!q§.push(new §2U§(§<"`§.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),null));
            tournamentIndex++;
         }
         if(!this.§;!C§)
         {
            this.§;!C§ = new Vector.<Boolean>();
         }
         this.§;!C§[§%N§] = true;
      }
      
      private function §+"E§() : void
      {
         this.§9K§(false);
         this.§;"§.removeEventListener(§0#r§.§,B§,this.§5#J§);
         this.§;"§.removeEventListener(§0#r§.§7!m§,this.onError);
      }
      
      protected function §3!j§() : void
      {
         if(this.§+#u§)
         {
            return;
         }
         var timeLeftPretty:Array = this.§;"§.§=#i§();
         this.§>!Q§.text = timeLeftPretty[0] + " left!";
         this.§>!Q§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§+#u§ = new Timer(§`R§);
            this.§+#u§.addEventListener(TimerEvent.TIMER,function():void
            {
               §+#u§.stop();
               §+#u§ = null;
               §%D§(§6"H§.STATE_NAME);
            });
            this.§+#u§.start();
         }
         timeLeftPretty = null;
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         if(this.§?3§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.movieClip;
      }
      
      override protected function updateUIScale() : void
      {
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            if(this.§@!6§ < §;s§)
            {
               this.§3]§ = 0;
               if(this.§?3§)
               {
                  this.§?3§.§5#k§.scaleX = §6"H§.§!d§;
                  this.§?3§.§5#k§.scaleY = §6"H§.§!d§;
               }
               ++this.§@!6§;
            }
         }
         else if(this.§3]§ < §;s§)
         {
            this.§@!6§ = 0;
            if(this.§?3§)
            {
               this.§?3§.§5#k§.scaleX = 1;
               this.§?3§.§5#k§.scaleY = 1;
            }
            ++this.§3]§;
         }
      }
   }
}
