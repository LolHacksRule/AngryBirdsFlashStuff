package §9"U§
{
   import §%!G§.§0"V§;
   import §%!G§.§`?§;
   import §5"Q§.§5"s§;
   import §^!T§.§'"9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §>!Y§ extends EventDispatcher
   {
       
      
      public var §#!N§:§'"9§;
      
      public var gifts:Array;
      
      public var inviteGifts:Array;
      
      public var brags:Array;
      
      public var challenges:Array;
      
      public var §'!#§:Array;
      
      private var § !9§:§`?§;
      
      public function §>!Y§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int)
      {
         this.inviteGifts = [];
         this.brags = [];
         this.challenges = [];
         super();
         this.gifts = param1;
         this.§0#3§(param2);
         this.§5"M§(param3);
         this.§-!y§(param4);
         this.§;!O§(param5);
         if(param6 > 0)
         {
            this.§#!N§ = new §'"9§(param6);
         }
      }
      
      public function update() : void
      {
         if(this.isLoading)
         {
            return;
         }
         this.§ !9§ = new §`?§();
         this.§ !9§.addEventListener(Event.COMPLETE,this.§3"a§);
         this.§ !9§.load(§0"V§.§2"r§(§4"#§.SERVER_ROOT + "/getrequests"));
      }
      
      public function §[P§() : Array
      {
         var _loc1_:Array = this.gifts.concat(this.inviteGifts,this.brags,this.challenges,this.§'!#§);
         if(this.§#!N§)
         {
            _loc1_.unshift(this.§#!N§);
         }
         return _loc1_;
      }
      
      protected function §3"a§(param1:Event) : void
      {
         this.§ !9§.removeEventListener(Event.COMPLETE,this.§3"a§);
         this.gifts = this.§ !9§.data.gifts;
         this.§0#3§(this.§ !9§.data.inviteGifts);
         this.§5"M§(this.§ !9§.data.brags);
         this.§-!y§(this.§ !9§.data.challenges);
         this.§;!O§(this.§ !9§.data.requestsForHelp);
         this.§ !9§ = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function §5"M§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isBrag = true;
            §5"s§.§<!8§("flashDeleteRequest",_loc2_.r);
         }
         this.brags = this.brags.concat(param1);
      }
      
      protected function §0#3§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.inviteGifts = param1;
         for each(_loc2_ in this.inviteGifts)
         {
            _loc2_.isInviteGift = true;
         }
      }
      
      protected function §-!y§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isChallenge = true;
            §5"s§.§<!8§("flashDeleteRequest",_loc2_.r);
         }
         this.challenges = this.challenges.concat(param1);
      }
      
      protected function §;!O§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isHelpRequest = true;
         }
         this.§'!#§ = param1;
      }
      
      public function get §"$§() : int
      {
         return this.gifts.length + this.inviteGifts.length + this.brags.length + this.challenges.length + this.§'!#§.length + (this.§#!N§ && (this.§#!N§.§ "h§ > 0 || this.§#!N§.§5!7§) ? 1 : 0);
      }
      
      public function get isLoading() : Boolean
      {
         return this.§ !9§ != null;
      }
      
      public function §#o§(param1:Boolean) : void
      {
         this.§#!N§.§5!7§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
