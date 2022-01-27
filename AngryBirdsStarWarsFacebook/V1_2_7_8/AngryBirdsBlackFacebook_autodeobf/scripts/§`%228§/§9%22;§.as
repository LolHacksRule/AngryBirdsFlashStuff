package §`"8§
{
   import § 0§.§@Y§;
   import §,!_§.§2!%§;
   import §,!_§.§>!_§;
   import §[!<§.§2"Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §9";§ extends EventDispatcher
   {
       
      
      public var §%"y§:§2"Q§;
      
      public var gifts:Array;
      
      public var inviteGifts:Array;
      
      public var brags:Array;
      
      public var challenges:Array;
      
      public var §'!^§:Array;
      
      private var §^"S§:§2!%§;
      
      public function §9";§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int)
      {
         this.inviteGifts = [];
         this.brags = [];
         this.challenges = [];
         super();
         this.gifts = param1;
         this.§ !%§(param2);
         this.§'&§(param3);
         this.§ in§(param4);
         this.§`i§(param5);
         if(param6 > 0)
         {
            this.§%"y§ = new §2"Q§(param6);
         }
      }
      
      public function update() : void
      {
         if(this.isLoading)
         {
            return;
         }
         this.§^"S§ = new §2!%§();
         this.§^"S§.addEventListener(Event.COMPLETE,this.§>"I§);
         this.§^"S§.load(§>!_§.§^O§(§;"@§.SERVER_ROOT + "/getrequests"));
      }
      
      public function §#$§() : Array
      {
         var _loc1_:Array = this.gifts.concat(this.inviteGifts,this.brags,this.challenges,this.§'!^§);
         if(this.§%"y§)
         {
            _loc1_.unshift(this.§%"y§);
         }
         return _loc1_;
      }
      
      protected function §>"I§(param1:Event) : void
      {
         this.§^"S§.removeEventListener(Event.COMPLETE,this.§>"I§);
         this.gifts = this.§^"S§.data.gifts;
         this.§ !%§(this.§^"S§.data.inviteGifts);
         this.§'&§(this.§^"S§.data.brags);
         this.§ in§(this.§^"S§.data.challenges);
         this.§`i§(this.§^"S§.data.requestsForHelp);
         this.§^"S§ = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function §'&§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isBrag = true;
            §@Y§.§7"H§("flashDeleteRequest",_loc2_.r);
         }
         this.brags = this.brags.concat(param1);
      }
      
      protected function § !%§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.inviteGifts = param1;
         for each(_loc2_ in this.inviteGifts)
         {
            _loc2_.isInviteGift = true;
         }
      }
      
      protected function § in§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isChallenge = true;
            §@Y§.§7"H§("flashDeleteRequest",_loc2_.r);
         }
         this.challenges = this.challenges.concat(param1);
      }
      
      protected function §`i§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isHelpRequest = true;
         }
         this.§'!^§ = param1;
      }
      
      public function get §<"^§() : int
      {
         return this.gifts.length + this.inviteGifts.length + this.brags.length + this.challenges.length + this.§'!^§.length + (this.§%"y§ && (this.§%"y§.§&&§ > 0 || this.§%"y§.§="Q§) ? 1 : 0);
      }
      
      public function get isLoading() : Boolean
      {
         return this.§^"S§ != null;
      }
      
      public function §6"u§(param1:Boolean) : void
      {
         this.§%"y§.§="Q§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
