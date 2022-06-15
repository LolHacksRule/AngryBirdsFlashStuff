package §3!7§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §<a§.§!!m§;
   import §<a§.§0!Y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §?!F§ extends EventDispatcher
   {
      
      protected static var §2"<§:§?!F§;
       
      
      protected var §'"0§:Boolean = false;
      
      protected var §`g§:§0]§;
      
      protected var §^?§:§0!Y§;
      
      protected var §"!M§:§0!Y§;
      
      protected var §&!+§:§,!_§;
      
      public function §?!F§()
      {
         var _loc1_:§2G§ = null;
         this.§^?§ = new §0!Y§();
         this.§"!M§ = new §0!Y§();
         super();
         if(§2"<§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         for each(_loc1_ in §>,§.§%!#§)
         {
            this.§^?§[_loc1_.§]6§] = 0;
         }
         §2"<§ = this;
      }
      
      public static function get §;"§() : §?!F§
      {
         if(!§2"<§)
         {
            §2"<§ = new §?!F§();
         }
         return §2"<§;
      }
      
      public function §-Y§() : void
      {
         if(this.§`g§)
         {
            this.§`g§.removeEventListener(Event.COMPLETE,this.§>!o§);
            this.§`g§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!s§);
            this.§`g§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!s§);
            this.§`g§.removeEventListener(§+!D§.§25§,this.§#!s§);
            this.§`g§ = null;
         }
         this.§`g§ = new §0]§();
         this.§`g§.addEventListener(Event.COMPLETE,this.§>!o§);
         this.§`g§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!s§);
         this.§`g§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!s§);
         this.§`g§.addEventListener(§+!D§.§25§,this.§#!s§);
         this.§`g§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/getitems"));
      }
      
      public function get §2!h§() : §,!_§
      {
         return this.§&!+§;
      }
      
      public function §>G§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2G§ = null;
         this.§&!+§ = new §,!_§(param1.ownedBundles,param1.claimableBundles);
         this.§^?§ = new §0!Y§();
         this.§"!M§ = new §0!Y§();
         for each(_loc2_ in param1.items)
         {
            _loc3_ = §>,§.§+!a§(_loc2_.i);
            if(_loc3_)
            {
               this.§^?§[_loc3_.§]6§] = 9999999;
               this.§"!M§[_loc3_.§]6§] = Number(_loc2_.s);
            }
            else
            {
               this.§^?§[_loc2_.i] = _loc2_.q;
            }
         }
         this.§`g§ = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function §>!o§(param1:Event) : void
      {
         var responseObjects:Object = null;
         var e:Event = param1;
         try
         {
            responseObjects = JSON.parse(this.§`g§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §`g§.data,§!!m§.§4H§);
         }
         this.§>G§(responseObjects);
      }
      
      protected function §#!s§(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§4!>§();
         }
         this.§`g§ = null;
      }
      
      public function §9K§(param1:String) : Number
      {
         return this.§"!M§[param1];
      }
      
      public function §!!y§(param1:String) : int
      {
         return this.§^?§[param1];
      }
      
      public function §4!J§(param1:String, param2:int) : void
      {
         this.§^?§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function § !2§(param1:String) : void
      {
         if(this.§^?§[param1] <= 0)
         {
            throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
         }
         --this.§^?§[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §6I§() : Boolean
      {
         return this.§`g§ != null;
      }
   }
}
