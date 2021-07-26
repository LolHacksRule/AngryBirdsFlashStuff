package §-$'§
{
   import §&?§.§!M§;
   import §&?§.§1!&§;
   import §&?§.§5"f§;
   import §'"b§.§ #F§;
   import §,#,§.§=#o§;
   import §1#`§.§&#m§;
   import §4S§.§-$C§;
   import §4S§.§1!Y§;
   import §4S§.§<#j§;
   import §4S§.§?#l§;
   import §6"p§.§^"t§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §9#!§.§2#B§;
   import §?#z§.§]$?§;
   import §?Q§.ErrorPopup;
   import §]#'§.§4"s§;
   import §`,§.§7!$§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §4$A§ extends EventDispatcher implements §2#B§
   {
      
      private static const §5$§:String = "/challenge/mark";
      
      private static var §#!'§:Number = 0;
       
      
      private var §4;§:§-$C§;
      
      private var §%!Q§:§-$C§;
      
      private var §5!Q§:§-$C§;
      
      private var §&#A§:§-$C§;
      
      private var §`#V§:§-$C§;
      
      private var §,"9§:§-$C§;
      
      private var §?#y§:Array;
      
      private const §`!h§:String = "/tournament";
      
      private const §7$6§:String = "/currentTournamentInfo";
      
      private const §8#_§:String = "/unconcludedTournament";
      
      private const §5!Y§:String = "/previousTournamentResults";
      
      private const §'!$§:String = "/claimTournamentReward";
      
      private const §5!f§:String = "/tournaments/info";
      
      private const §4#V§:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const §@"J§:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const §%#l§:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var §4!P§:Object;
      
      private var §try §:Object;
      
      private var §?#V§:§1!&§;
      
      private var §>!%§:String;
      
      private var §8!=§:§5"f§;
      
      private var §6!]§:§!M§;
      
      public function §4$A§()
      {
         this.§?#y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function §+"I§() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§5!f§ + "?st=" + §1!Y§.§?!j§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3! §();
         var _loc2_:§-$C§ = new §-$C§();
         _loc2_.addEventListener(Event.COMPLETE,this.§`$6§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§=#@§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#@§);
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc2_.load(_loc1_);
      }
      
      protected function §`$6§(param1:Event) : void
      {
         if(!param1 || !param1.currentTarget)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t load the overlapping tournaments."));
            return;
         }
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§`$6§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.§=#@§);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#@§);
         this.§try § = param1.currentTarget.data;
         dispatchEvent(new §&#m§(§&#m§.§9G§,this.§try §));
      }
      
      public function final(param1:int = 0) : void
      {
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§`!h§ + this.§7$6§ + "?st=" + §1!Y§.§?!j§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3! §();
         var _loc3_:§-$C§ = new §-$C§();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc3_.addEventListener(Event.COMPLETE,this.§!#%§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §!#%§(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§!#%§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1 && param1.currentTarget)
         {
            if(!param1.currentTarget.data.id)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Tournament not found."));
               return;
            }
            if(!this.§4!P§)
            {
               this.§4!P§ = new Object();
            }
            this.§4!P§[param1.currentTarget.data.id] = param1.currentTarget.data;
            this.§]i§(param1.currentTarget.data.id);
         }
         else
         {
            this.§]i§(0);
         }
      }
      
      public function §]i§(param1:int = 0) : void
      {
         § #F§.§+!,§.§8#y§(this.§4!P§[param1].eventInfo);
         dispatchEvent(new §&#m§(§&#m§.§&!I§,this.§4!P§[param1]));
         if(!§4"s§.§+!,§ || !§4"s§.§+!,§.active)
         {
            this.§<F§();
         }
      }
      
      public function §]u§(param1:int) : Object
      {
         if(this.§4!P§[param1])
         {
            return this.§4!P§[param1];
         }
         return null;
      }
      
      public function §@# §() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§`!h§ + this.§8#_§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3! §();
         this.§%!Q§ = new §-$C§();
         this.§%!Q§.addEventListener(Event.COMPLETE,this.§7k§);
         this.§%!Q§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%!Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§%!Q§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§%!Q§.load(_loc1_);
      }
      
      public function §<F§() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§`!h§ + this.§5!Y§);
         if(§7!$§.§+!,§.§`!X§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §7!$§.§+!,§.§`!X§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3! §();
         this.§5!Q§ = new §-$C§();
         this.§5!Q§.addEventListener(Event.COMPLETE,this.§2#c§);
         this.§5!Q§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5!Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5!Q§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5!Q§.load(_loc1_);
      }
      
      public function §>$7§(param1:int) : void
      {
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§4#V§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3! §();
         this.§&#A§ = new §-$C§();
         this.§&#A§.addEventListener(Event.COMPLETE,this.§6$@§);
         this.§&#A§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&#A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&#A§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&#A§.load(_loc2_);
      }
      
      public function §'"4§(param1:int) : void
      {
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§@"J§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3! §();
         this.§`#V§ = new §-$C§();
         this.§`#V§.addEventListener(Event.COMPLETE,this.§7"@§);
         this.§`#V§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§`#V§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`#V§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§`#V§.load(_loc2_);
      }
      
      public function §=S§() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§`!h§ + this.§'!$§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3! §();
         this.§,"9§ = new §-$C§();
         this.§,"9§.addEventListener(Event.COMPLETE,this.§`"`§);
         this.§,"9§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§,"9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§,"9§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§,"9§.load(_loc1_);
      }
      
      protected function §`"`§(param1:Event) : void
      {
         §7!$§.§+!,§.§;#I§();
         dispatchEvent(new §&#m§(§&#m§.§8#?§,param1.currentTarget.data));
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Tournament loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      protected function §=#@§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §&#m§(§&#m§.§^"=§));
         dispatchEvent(new §&#m§(§&#m§.§9G§,null));
      }
      
      public function §;"z§(param1:String, param2:Array, param3:§]#q§) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Object = null;
         var _loc9_:§?# § = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc4_:Array = [];
         if(param1.length > 0)
         {
            _loc5_ = §@z§.§"D§ + param1 + ".swf";
            _loc6_ = §@z§.§[!Z§ + "tournament_" + param1 + ".pak";
            if(this.§>!%§ != _loc5_)
            {
               this.§>!%§ = _loc5_;
               if(this.§6!]§)
               {
                  this.§6!]§.dispose();
                  this.§6!]§ = null;
               }
               this.§6!]§ = new §!M§();
               _loc4_.push(<pack url="{_loc6_}"/>);
               _loc4_.push(<library swf="{_loc5_}"/>);
            }
         }
         if(param3)
         {
            for each(_loc8_ in param2)
            {
               if((_loc9_ = param3.getLevelForId(_loc8_.levelId)) == null)
               {
                  if(AngryBirdsBase.DEBUG_MODE_ENABLED)
                  {
                     _loc7_ = §@z§.§`"9§ + "Level" + _loc8_.levelId + ".lvl";
                  }
                  else
                  {
                     _loc7_ = §@z§.§^D§ + _loc8_.levelId.substr(0,6) + "/Level" + _loc8_.levelId + ".lvl";
                  }
                  _loc4_.push(<level url="{_loc7_}" id="{_loc8_.levelId}"/>);
               }
            }
         }
         if(_loc4_.length > 0)
         {
            this.§8!=§ = new §5"f§(true);
            this.§8!=§.init(§<#j§.§<!b§(),"",§@z§.§ !D§.§!X§(),this.§6!]§,null,(§]$?§.§;u§ as §@z§).§5u§());
            this.§8!=§.§?p§();
            _loc10_ = 0;
            while(_loc10_ < _loc4_.length)
            {
               _loc11_ = _loc4_[_loc10_];
               this.§8!=§.§,b§(_loc11_);
               _loc10_++;
            }
            this.§8!=§.§4H§(this.§0#F§);
         }
         else
         {
            dispatchEvent(new §&#m§(§&#m§.§]"]§,new §!M§()));
         }
      }
      
      private function §0#F§() : void
      {
         dispatchEvent(new §&#m§(§&#m§.§]"]§,this.§6!]§));
         this.§8!=§ = null;
      }
      
      protected function §7k§(param1:Event) : void
      {
         dispatchEvent(new §&#m§(§&#m§.§ #%§,param1.currentTarget.data));
      }
      
      protected function §2#c§(param1:Event) : void
      {
         dispatchEvent(new §&#m§(§&#m§.§&#h§,param1.currentTarget.data));
      }
      
      protected function §6$@§(param1:Event) : void
      {
         if(this.§&#A§)
         {
            this.§&#A§.removeEventListener(Event.COMPLETE,this.§6$@§);
            this.§&#A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§&#A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§&#A§ = null;
         }
         dispatchEvent(new §&#m§(§&#m§.§%#i§,!!param1.currentTarget ? param1.currentTarget.data : §&#m§(param1).data));
      }
      
      protected function §7"@§(param1:Event) : void
      {
         if(this.§`#V§)
         {
            this.§`#V§.removeEventListener(Event.COMPLETE,this.§7"@§);
            this.§`#V§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§`#V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§`#V§ = null;
         }
         dispatchEvent(new §&#m§(§&#m§.§'"Z§,param1.currentTarget.data));
      }
      
      private function §3! §() : String
      {
         return this.§`"L§(this.§?#y§);
      }
      
      private function §`"L§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function §[#k§(param1:Array) : void
      {
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §5$§);
         _loc2_.data = JSON.stringify(param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§-$C§ = new §-$C§();
         _loc3_.addEventListener(Event.COMPLETE,this.§7#6§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §7#6§(param1:Event) : void
      {
         §^"t§.log("Tournament challenge sent");
      }
      
      private function §]#T§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - §#!'§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §7!$§.§1#7§)
         {
            return true;
         }
         §#!'§ = _loc1_;
         return false;
      }
      
      public function §1$;§(param1:int) : Boolean
      {
         return this.§4!P§ && this.§4!P§[param1];
      }
      
      public function §2!P§(param1:int) : void
      {
         this.§>$7§(param1);
         this.§'"4§(param1);
      }
   }
}
