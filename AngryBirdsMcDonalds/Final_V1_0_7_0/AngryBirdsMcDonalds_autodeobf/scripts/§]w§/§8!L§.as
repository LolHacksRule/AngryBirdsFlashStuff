package §]w§
{
   import §%!5§.§6!W§;
   import §-!F§.§2[§;
   import §1!^§.§,!n§;
   import §7!N§.§0-§;
   import §<! §.§1!6§;
   import §<! §.§<<§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §8!L§ extends EventDispatcher implements §<<§
   {
      
      public static const §!!1§:Array = [§-K§.§2!8§,§-K§.§-T§,§-K§.§=Q§,§-K§.§"!l§,§-K§.§9S§,§-K§.MIGHTY_EAGLE];
      
      public static const §#5§:Array = [§6!W§.§1!#§,§6!W§.§#w§,§6!W§.§;u§,§6!W§.§3!Z§,§6!W§.POWERUP_BOMB,§6!W§.§@!E§];
      
      protected static var §5! §:§8!L§;
       
      
      protected var §^!!§:Boolean = false;
      
      protected var § !A§:Object;
      
      public function §8!L§()
      {
         this.§ !A§ = {};
         super();
         if(§5! §)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§5!-§();
         §5! § = this;
      }
      
      public static function get §9$§() : §8!L§
      {
         if(!§5! §)
         {
            §5! § = new §8!L§();
         }
         return §5! §;
      }
      
      public static function §]z§(param1:String) : String
      {
         return §#5§[§!!1§.indexOf(param1)];
      }
      
      public function §5!-§() : void
      {
         this.§ !A§[§-K§.§2!8§] = 0;
         this.§ !A§[§-K§.§-T§] = 0;
         this.§ !A§[§-K§.§=Q§] = 0;
         this.§ !A§[§-K§.§"!l§] = 0;
         this.§ !A§[§-K§.§9S§] = 0;
         this.§ !A§[§-K§.MIGHTY_EAGLE] = 0;
      }
      
      public function §-!<§() : void
      {
         var _loc2_:Object = {"id":§0-§.§6!&§.email};
         var _loc3_:§,!n§ = new §,!n§(_loc2_,§9!_§.§?!k§ + "getItems",this,§,!n§.§-I§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = §1!6§.§>o§((param1.currentTarget as URLLoader).data);
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            this.§ !A§[_loc4_.type] = _loc4_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
      }
      
      public function §12§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§ !A§[_loc2_.type] = _loc2_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §1!G§(param1:String) : int
      {
         return this.§ !A§[param1];
      }
      
      public function § get§() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §!!1§)
         {
            _loc1_ += this.§1!G§(_loc2_);
         }
         return _loc1_;
      }
      
      public function §8]§(param1:String, param2:int) : void
      {
         this.§ !A§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §,D§(param1:String) : void
      {
         if(!§0-§.§-5§(§2[§.§^N§))
         {
            --this.§ !A§[param1];
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
