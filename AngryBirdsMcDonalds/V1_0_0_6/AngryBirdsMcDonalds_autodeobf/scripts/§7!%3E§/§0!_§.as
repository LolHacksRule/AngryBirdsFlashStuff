package §7!>§
{
   import §#M§.§,d§;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §>!<§.§-E§;
   import §`!@§.§!!Y§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §0!_§ extends EventDispatcher implements §[!X§
   {
      
      public static const §7A§:Array = [§4y§.§`]§,§4y§.§9K§,§4y§.§%C§,§4y§.§+&§,§4y§.§-!m§,§4y§.MIGHTY_EAGLE];
      
      public static const §@d§:Array = [§,d§.§8Q§,§,d§.§?+§,§,d§.§[E§,§,d§.§?!D§,§,d§.POWERUP_BOMB,§,d§.§>>§];
      
      protected static var §5k§:§0!_§;
       
      
      protected var §6!k§:Boolean = false;
      
      protected var §?!g§:Object;
      
      public function §0!_§()
      {
         this.§?!g§ = {};
         super();
         if(§5k§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§2D§();
         §5k§ = this;
      }
      
      public static function get §+j§() : §0!_§
      {
         if(!§5k§)
         {
            §5k§ = new §0!_§();
         }
         return §5k§;
      }
      
      public static function §0!3§(param1:String) : String
      {
         return §@d§[§7A§.indexOf(param1)];
      }
      
      public function §2D§() : void
      {
         this.§?!g§[§4y§.§`]§] = 0;
         this.§?!g§[§4y§.§9K§] = 0;
         this.§?!g§[§4y§.§%C§] = 0;
         this.§?!g§[§4y§.§+&§] = 0;
         this.§?!g§[§4y§.§-!m§] = 0;
         this.§?!g§[§4y§.MIGHTY_EAGLE] = 0;
      }
      
      public function §?!m§() : void
      {
         var _loc2_:Object = {"id":§[!5§.§7!h§.email};
         var _loc3_:§-E§ = new §-E§(_loc2_,§ 4§.§=R§ + "getItems",this,§-E§.§]!,§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = §!!Y§.§@M§((param1.currentTarget as URLLoader).data);
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            this.§?!g§[_loc4_.type] = _loc4_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
      }
      
      public function §?@§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§?!g§[_loc2_.type] = _loc2_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §^!R§(param1:String) : int
      {
         return this.§?!g§[param1];
      }
      
      public function §+6§() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §7A§)
         {
            _loc1_ += this.§^!R§(_loc2_);
         }
         return _loc1_;
      }
      
      public function §;c§(param1:String, param2:int) : void
      {
         this.§?!g§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §,<§(param1:String) : void
      {
         if(!§[!5§.§1G§(§^d§.§@P§))
         {
            --this.§?!g§[param1];
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
