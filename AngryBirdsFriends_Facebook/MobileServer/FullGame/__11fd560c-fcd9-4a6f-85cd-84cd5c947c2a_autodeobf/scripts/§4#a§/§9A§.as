package §4#a§
{
   import §%#w§.§2#s§;
   import §2G§.§#"8§;
   import §8#!§.§5`§;
   import §9"r§.§1#e§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §<"w§.§=&§;
   import §="h§.§`"O§;
   import §>#G§.§%6§;
   import §>#G§.§-!,§;
   import §>#G§.§[9§;
   import §?P§.ErrorPopup;
   import §@V§.§0X§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §]!6§.§6Y§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §9A§ extends EventDispatcher implements §=&§
   {
      
      private static const § !u§:String = "/challenge/mark";
      
      private static var §<"x§:Number = 0;
       
      
      private var §<Y§:§1"V§;
      
      private var §2!]§:§1"V§;
      
      private var §%!o§:§1"V§;
      
      private var §&#^§:§1"V§;
      
      private var §0#%§:§1"V§;
      
      private var §5"C§:§1"V§;
      
      private var §8O§:Array;
      
      private const §9#f§:String = "/tournament";
      
      private const §>"n§:String = "/currentTournamentInfo";
      
      private const §``§:String = "/unconcludedTournament";
      
      private const §`#,§:String = "/previousTournamentResults";
      
      private const §>y§:String = "/claimTournamentReward";
      
      private const §9#0§:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const §,#0§:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const §+!t§:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var §8#C§:Object;
      
      private var §8"S§:§[9§;
      
      private var §8#A§:String;
      
      private var §5Z§:§-!,§;
      
      private var §5#y§:§%6§;
      
      public function §9A§()
      {
         this.§8O§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function §8>§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§9#f§ + this.§>"n§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§2"a§();
         this.§<Y§ = new §1"V§();
         this.§<Y§.addEventListener(Event.COMPLETE,this.§1O§);
         this.§<Y§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<Y§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<Y§.load(_loc1_);
      }
      
      public function §15§() : void
      {
         this.§1O§(null);
      }
      
      public function §]#u§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§9#f§ + this.§``§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§2"a§();
         this.§2!]§ = new §1"V§();
         this.§2!]§.addEventListener(Event.COMPLETE,this.§;t§);
         this.§2!]§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2!]§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2!]§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2!]§.load(_loc1_);
      }
      
      public function §-`§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§9#f§ + this.§`#,§);
         _loc1_.url += "?" + §5`§.§6!§.§7j§();
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§2"a§();
         this.§%!o§ = new §1"V§();
         this.§%!o§.addEventListener(Event.COMPLETE,this.§1_§);
         this.§%!o§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%!o§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§%!o§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§%!o§.load(_loc1_);
      }
      
      public function §@W§(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.§ #7§(new §1#e§(§1#e§.§<"Y§,§5`§.§6!§.§"!^§));
            return;
         }
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§9#0§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§2"a§();
         this.§&#^§ = new §1"V§();
         this.§&#^§.addEventListener(Event.COMPLETE,this.§ #7§);
         this.§&#^§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&#^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&#^§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&#^§.load(_loc2_);
      }
      
      public function §]"Q§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§,#0§ + "&" + §5`§.§6!§.§7j§());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§2"a§();
         this.§0#%§ = new §1"V§();
         this.§0#%§.addEventListener(Event.COMPLETE,this.§ #Q§);
         this.§0#%§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0#%§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0#%§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0#%§.load(_loc1_);
      }
      
      public function §^"r§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§9#f§ + this.§>y§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§2"a§();
         this.§5"C§ = new §1"V§();
         this.§5"C§.addEventListener(Event.COMPLETE,this.§>"2§);
         this.§5"C§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5"C§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5"C§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5"C§.load(_loc1_);
      }
      
      protected function §>"2§(param1:Event) : void
      {
         §5`§.§6!§.§<!J§();
         dispatchEvent(new §1#e§(§1#e§.§&t§,param1.currentTarget.data));
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Tournament error:" + param1.text + " id: " + param1.errorID));
      }
      
      protected function §1O§(param1:Event) : void
      {
         if(param1 && param1.currentTarget)
         {
            this.§8#C§ = param1.currentTarget.data;
         }
         §`"O§.§6!§.§>#<§(this.§8#C§.eventInfo);
         dispatchEvent(new §1#e§(§1#e§.§=;§,this.§8#C§));
         if(!§2#s§.§6!§ || !§2#s§.§6!§.active)
         {
            this.§-`§();
         }
         if(param1 == null && this.§`!4§() && §5`§.§6!§.§^"=§)
         {
            dispatchEvent(new §1#e§(§1#e§.§>"d§,§5`§.§6!§.§^"=§));
            return;
         }
         this.§]"Q§();
      }
      
      public function §"#u§(param1:String, param2:Array, param3:§8=§) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Object = null;
         var _loc9_:§>f§ = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc4_:Array = [];
         if(param1.length > 0)
         {
            _loc5_ = §,A§.§&W§ + param1 + ".swf";
            _loc6_ = §,A§.§"w§ + "tournament_" + param1 + ".pak";
            if(this.§8#A§ != _loc5_)
            {
               this.§8#A§ = _loc5_;
               if(this.§5#y§)
               {
                  this.§5#y§.dispose();
                  this.§5#y§ = null;
               }
               this.§5#y§ = new §%6§();
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
                     _loc7_ = §,A§.§9"n§ + "Level" + _loc8_.levelId + ".lvl";
                  }
                  else
                  {
                     _loc7_ = §,A§.§;X§ + _loc8_.levelId.substr(0,6) + "/Level" + _loc8_.levelId + ".lvl";
                  }
                  _loc4_.push(<level url="{_loc7_}" id="{_loc8_.levelId}"/>);
               }
            }
         }
         if(_loc4_.length > 0)
         {
            this.§5Z§ = new §-!,§(true);
            this.§5Z§.init(§0X§.§+!D§(),"",§,A§.§2#O§.§&#e§(),this.§5#y§,null,(§3#U§.§9#^§ as §,A§).§-"f§());
            this.§5Z§.§7"0§();
            _loc10_ = 0;
            while(_loc10_ < _loc4_.length)
            {
               _loc11_ = _loc4_[_loc10_];
               this.§5Z§.§?2§(_loc11_);
               _loc10_++;
            }
            this.§5Z§.§&",§(this.§?s§);
         }
         else
         {
            dispatchEvent(new §1#e§(§1#e§.§]!<§,new §%6§()));
         }
      }
      
      private function §?s§() : void
      {
         dispatchEvent(new §1#e§(§1#e§.§]!<§,this.§5#y§));
         this.§5Z§ = null;
      }
      
      protected function §;t§(param1:Event) : void
      {
         dispatchEvent(new §1#e§(§1#e§.§=r§,param1.currentTarget.data));
      }
      
      protected function §1_§(param1:Event) : void
      {
         dispatchEvent(new §1#e§(§1#e§.§<$;§,param1.currentTarget.data));
      }
      
      protected function § #7§(param1:Event) : void
      {
         if(this.§&#^§)
         {
            this.§&#^§.removeEventListener(Event.COMPLETE,this.§ #7§);
            this.§&#^§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§&#^§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§&#^§ = null;
         }
         dispatchEvent(new §1#e§(§1#e§.§<"Y§,!!param1.currentTarget ? param1.currentTarget.data : §1#e§(param1).data));
      }
      
      protected function § #Q§(param1:Event) : void
      {
         if(this.§0#%§)
         {
            this.§0#%§.removeEventListener(Event.COMPLETE,this.§ #Q§);
            this.§0#%§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§0#%§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§0#%§ = null;
         }
         dispatchEvent(new §1#e§(§1#e§.§>"d§,param1.currentTarget.data));
      }
      
      private function §2"a§() : String
      {
         return this.§,k§(this.§8O§);
      }
      
      private function §,k§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function §%2§(param1:Array) : void
      {
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + § !u§);
         _loc2_.data = JSON.stringify(param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§1"V§ = new §1"V§();
         _loc3_.addEventListener(Event.COMPLETE,this.§'#D§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §'#D§(param1:Event) : void
      {
         §6Y§.log("Tournament challenge sent");
      }
      
      private function §`!4§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - §<"x§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §5`§.§9"I§)
         {
            return true;
         }
         §<"x§ = _loc1_;
         return false;
      }
   }
}
