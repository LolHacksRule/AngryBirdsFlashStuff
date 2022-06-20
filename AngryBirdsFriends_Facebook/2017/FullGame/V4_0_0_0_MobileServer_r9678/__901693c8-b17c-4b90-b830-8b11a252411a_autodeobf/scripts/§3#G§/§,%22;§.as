package §3#G§
{
   import § "$§.§'"R§;
   import § $%§.§ $7§;
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §&"J§.§`]§;
   import §6"r§.§!#A§;
   import §<"p§.§?!T§;
   import §<u§.§ "a§;
   import §>!I§.§%#'§;
   import §>!I§.§9#!§;
   import §>!I§.§@!q§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §[#&§.§&#R§;
   import §[0§.§;$-§;
   import §];§.§-!t§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §,";§ extends EventDispatcher implements §&#R§
   {
      
      private static const §@"A§:String = "/challenge/mark";
      
      private static var § #i§:Number = 0;
       
      
      private var §0!&§:§4"v§;
      
      private var §^$<§:§4"v§;
      
      private var §37§:§4"v§;
      
      private var §-#A§:§4"v§;
      
      private var §5E§:§4"v§;
      
      private var §5#8§:§4"v§;
      
      private var §+$9§:Array;
      
      private const §9"K§:String = "/tournament";
      
      private const §,2§:String = "/currentTournamentInfo";
      
      private const §;" §:String = "/unconcludedTournament";
      
      private const §>$9§:String = "/previousTournamentResults";
      
      private const §!!7§:String = "/claimTournamentReward";
      
      private const §@!b§:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const §^"K§:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const §;$2§:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var §@!P§:Object;
      
      private var §<$&§:§9#!§;
      
      private var §4$=§:String;
      
      private var §'! §:§@!q§;
      
      private var §8#>§:§%#'§;
      
      public function §,";§()
      {
         this.§+$9§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function §2$8§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§9"K§ + this.§,2§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§#!4§();
         this.§0!&§ = new §4"v§();
         this.§0!&§.addEventListener(Event.COMPLETE,this.§]J§);
         this.§0!&§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0!&§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0!&§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0!&§.load(_loc1_);
      }
      
      public function §![§() : void
      {
         this.§]J§(null);
      }
      
      public function §2B§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§9"K§ + this.§;" §);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§#!4§();
         this.§^$<§ = new §4"v§();
         this.§^$<§.addEventListener(Event.COMPLETE,this.§'#%§);
         this.§^$<§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^$<§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^$<§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§^$<§.load(_loc1_);
      }
      
      public function §@x§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§9"K§ + this.§>$9§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§#!4§();
         this.§37§ = new §4"v§();
         this.§37§.addEventListener(Event.COMPLETE,this.§"!D§);
         this.§37§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§37§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§37§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§37§.load(_loc1_);
      }
      
      public function §3c§(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.§?j§(new §'"R§(§'"R§.§4&§,§-!t§.§ "D§.§;"_§));
            return;
         }
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§@!b§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§#!4§();
         this.§-#A§ = new §4"v§();
         this.§-#A§.addEventListener(Event.COMPLETE,this.§?j§);
         this.§-#A§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§-#A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§-#A§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§-#A§.load(_loc2_);
      }
      
      public function §0#F§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§^"K§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§#!4§();
         this.§5E§ = new §4"v§();
         this.§5E§.addEventListener(Event.COMPLETE,this.§6#?§);
         this.§5E§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5E§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5E§.load(_loc1_);
      }
      
      public function §^"r§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§9"K§ + this.§!!7§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§#!4§();
         this.§5#8§ = new §4"v§();
         this.§5#8§.addEventListener(Event.COMPLETE,this.§>!J§);
         this.§5#8§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5#8§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5#8§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5#8§.load(_loc1_);
      }
      
      protected function §>!J§(param1:Event) : void
      {
         §-!t§.§ "D§.§1"V§();
         dispatchEvent(new §'"R§(§'"R§.§<!7§,param1.currentTarget.data));
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         throw new Error("Tournament error:" + param1.text + " id: " + param1.errorID);
      }
      
      protected function §]J§(param1:Event) : void
      {
         if(param1 && param1.currentTarget)
         {
            this.§@!P§ = param1.currentTarget.data;
         }
         § "a§.§ "D§.§5a§(this.§@!P§.eventInfo);
         dispatchEvent(new §'"R§(§'"R§.§",§,this.§@!P§));
         if(!§;$-§.§ "D§ || !§;$-§.§ "D§.active)
         {
            this.§@x§();
         }
         if(param1 == null && this.§!!4§() && §-!t§.§ "D§.§&[§)
         {
            dispatchEvent(new §'"R§(§'"R§.§7#O§,§-!t§.§ "D§.§&[§));
            return;
         }
         this.§0#F§();
      }
      
      public function §=#&§(param1:String, param2:Array, param3:§^#Q§) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Object = null;
         var _loc9_:§]#B§ = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc4_:Array = [];
         if(param1.length > 0)
         {
            _loc5_ = §-#+§.§7'§ + param1 + ".swf";
            _loc6_ = §-#+§.§[$§ + "tournament_" + param1 + ".pak";
            if(this.§4$=§ != _loc5_)
            {
               this.§4$=§ = _loc5_;
               if(this.§8#>§)
               {
                  this.§8#>§.dispose();
                  this.§8#>§ = null;
               }
               this.§8#>§ = new §%#'§();
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
                  _loc7_ = §-#+§.§<#;§ + "Level" + _loc8_.levelId + ".lvl";
                  _loc4_.push(<level url="{_loc7_}" id="{_loc8_.levelId}"/>);
               }
            }
         }
         if(_loc4_.length > 0)
         {
            this.§'! § = new §@!q§(true);
            this.§'! §.init(§ $7§.§<J§(),"",§-#+§.§;!$§.§>"[§(),this.§8#>§,null,(§!#A§.§>q§ as §-#+§).§5<§());
            this.§'! §.§8#N§();
            _loc10_ = 0;
            while(_loc10_ < _loc4_.length)
            {
               _loc11_ = _loc4_[_loc10_];
               this.§'! §.§'"g§(_loc11_);
               _loc10_++;
            }
            this.§'! §.§?!+§(this.§5!5§);
         }
         else
         {
            dispatchEvent(new §'"R§(§'"R§.§7$9§,new §%#'§()));
         }
      }
      
      private function §5!5§() : void
      {
         dispatchEvent(new §'"R§(§'"R§.§7$9§,this.§8#>§));
         this.§'! § = null;
      }
      
      protected function §'#%§(param1:Event) : void
      {
         dispatchEvent(new §'"R§(§'"R§.§3!C§,param1.currentTarget.data));
      }
      
      protected function §"!D§(param1:Event) : void
      {
         dispatchEvent(new §'"R§(§'"R§.§<!L§,param1.currentTarget.data));
      }
      
      protected function §?j§(param1:Event) : void
      {
         if(this.§-#A§)
         {
            this.§-#A§.removeEventListener(Event.COMPLETE,this.§?j§);
            this.§-#A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§-#A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§-#A§ = null;
         }
         dispatchEvent(new §'"R§(§'"R§.§4&§,!!param1.currentTarget ? param1.currentTarget.data : §'"R§(param1).data));
      }
      
      protected function §6#?§(param1:Event) : void
      {
         if(this.§5E§)
         {
            this.§5E§.removeEventListener(Event.COMPLETE,this.§6#?§);
            this.§5E§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§5E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§5E§ = null;
         }
         dispatchEvent(new §'"R§(§'"R§.§7#O§,param1.currentTarget.data));
      }
      
      private function §#!4§() : String
      {
         return this.§9!c§(this.§+$9§);
      }
      
      private function §9!c§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function §3q§(param1:Array) : void
      {
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §@"A§);
         _loc2_.data = JSON.stringify(param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§4"v§ = new §4"v§();
         _loc3_.addEventListener(Event.COMPLETE,this.§'$,§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §'$,§(param1:Event) : void
      {
         §?!T§.log("Tournament challenge sent");
      }
      
      private function §!!4§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - § #i§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §-!t§.§<N§)
         {
            return true;
         }
         § #i§ = _loc1_;
         return false;
      }
   }
}
