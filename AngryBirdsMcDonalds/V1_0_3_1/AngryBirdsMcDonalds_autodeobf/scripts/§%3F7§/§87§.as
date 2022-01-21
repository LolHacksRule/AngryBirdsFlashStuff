package §?7§
{
   import § !Y§.§9!S§;
   import §,i§.§7;§;
   import §<Z§.§!!W§;
   import §<Z§.§"!8§;
   import §=b§.§,!G§;
   import §finally§.§8k§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §87§ extends EventDispatcher implements §!!W§
   {
      
      public static const §<B§:Array = [§ 0§.§-H§,§ 0§.§#9§,§ 0§.§#!T§,§ 0§.§&$§,§ 0§.§#!K§,§ 0§.MIGHTY_EAGLE];
      
      public static const §3!-§:Array = [§9!S§.§,!T§,§9!S§.§4]§,§9!S§.§=!2§,§9!S§.§"!0§,§9!S§.POWERUP_BOMB,§9!S§.§`!b§];
      
      protected static var §^1§:§87§;
       
      
      protected var §,J§:Boolean = false;
      
      protected var §#'§:Object;
      
      public function §87§()
      {
         this.§#'§ = {};
         super();
         if(§^1§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§'5§();
         §^1§ = this;
      }
      
      public static function get §@!7§() : §87§
      {
         if(!§^1§)
         {
            §^1§ = new §87§();
         }
         return §^1§;
      }
      
      public static function §-!^§(param1:String) : String
      {
         return §3!-§[§<B§.indexOf(param1)];
      }
      
      public function §'5§() : void
      {
         this.§#'§[§ 0§.§-H§] = 0;
         this.§#'§[§ 0§.§#9§] = 0;
         this.§#'§[§ 0§.§#!T§] = 0;
         this.§#'§[§ 0§.§&$§] = 0;
         this.§#'§[§ 0§.§#!K§] = 0;
         this.§#'§[§ 0§.MIGHTY_EAGLE] = 0;
      }
      
      public function §5?§() : void
      {
         var _loc2_:Object = {"id":§,!G§.§-!8§.email};
         var _loc3_:§7;§ = new §7;§(_loc2_,§2!M§.§`8§ + "getItems",this,§7;§.§[%§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = §"!8§.§&!p§((param1.currentTarget as URLLoader).data);
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            this.§#'§[_loc4_.type] = _loc4_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
      }
      
      public function §>&§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§#'§[_loc2_.type] = _loc2_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §?!e§(param1:String) : int
      {
         return this.§#'§[param1];
      }
      
      public function §4!#§() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §<B§)
         {
            _loc1_ += this.§?!e§(_loc2_);
         }
         return _loc1_;
      }
      
      public function §2!#§(param1:String, param2:int) : void
      {
         this.§#'§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §1![§(param1:String) : void
      {
         if(!§,!G§.§0g§(§8k§.§8h§))
         {
            --this.§#'§[param1];
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
