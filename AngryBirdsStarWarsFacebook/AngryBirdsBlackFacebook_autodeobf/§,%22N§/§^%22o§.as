package §,"N§
{
   import § !m§.§^"j§;
   import §="V§.§""v§;
   import §`!o§.§+"k§;
   import §`!o§.§<9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^"o§ extends EventDispatcher
   {
       
      
      public var §7#X§:§^"j§;
      
      public var gifts:Array;
      
      public var inviteGifts:Array;
      
      public var brags:Array;
      
      public var challenges:Array;
      
      public var §>"@§:Array;
      
      private var §!#F§:§+"k§;
      
      public function §^"o§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int)
      {
         this.inviteGifts = [];
         this.brags = [];
         this.challenges = [];
         super();
         this.gifts = param1;
         this.§'"@§(param2);
         this.§%7§(param3);
         this.§>!3§(param4);
         this.§^!M§(param5);
         if(param6 > 0)
         {
            this.§7#X§ = new §^"j§(param6);
         }
      }
      
      public function update() : void
      {
         if(this.isLoading)
         {
            return;
         }
         this.§!#F§ = new §+"k§();
         this.§!#F§.addEventListener(Event.COMPLETE,this.§2!h§);
         this.§!#F§.load(§<9§.§""I§(§4#;§.SERVER_ROOT + "/getrequests"));
      }
      
      public function §4!s§() : Array
      {
         var _loc1_:Array = this.gifts.concat(this.inviteGifts,this.brags,this.challenges,this.§>"@§);
         if(this.§7#X§)
         {
            _loc1_.unshift(this.§7#X§);
         }
         return _loc1_;
      }
      
      protected function §2!h§(param1:Event) : void
      {
         this.§!#F§.removeEventListener(Event.COMPLETE,this.§2!h§);
         this.gifts = this.§!#F§.data.gifts;
         this.§'"@§(this.§!#F§.data.inviteGifts);
         this.§%7§(this.§!#F§.data.brags);
         this.§>!3§(this.§!#F§.data.challenges);
         this.§^!M§(this.§!#F§.data.requestsForHelp);
         this.§!#F§ = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function §%7§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isBrag = true;
            §""v§.§&R§("flashDeleteRequest",_loc2_.r);
         }
         this.brags = this.brags.concat(param1);
      }
      
      protected function §'"@§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.inviteGifts = param1;
         for each(_loc2_ in this.inviteGifts)
         {
            _loc2_.isInviteGift = true;
         }
      }
      
      protected function §>!3§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isChallenge = true;
            §""v§.§&R§("flashDeleteRequest",_loc2_.r);
         }
         this.challenges = this.challenges.concat(param1);
      }
      
      protected function §^!M§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _loc2_.isHelpRequest = true;
         }
         this.§>"@§ = param1;
      }
      
      public function get §#";§() : int
      {
         return this.gifts.length + this.inviteGifts.length + this.brags.length + this.challenges.length + this.§>"@§.length + (this.§7#X§ && (this.§7#X§.§8!Q§ > 0 || this.§7#X§.§%5§) ? 1 : 0);
      }
      
      public function get isLoading() : Boolean
      {
         return this.§!#F§ != null;
      }
      
      public function §2#L§(param1:Boolean) : void
      {
         this.§7#X§.§%5§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
