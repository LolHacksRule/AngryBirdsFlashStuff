package §2S§
{
   import §&6§.§`!T§;
   import §&6§.§`!q§;
   import §,4§.§;_§;
   import §,E§.§"!K§;
   import §0$§.§!t§;
   import §7F§.§@i§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §6!P§ extends EventDispatcher implements §`!T§
   {
      
      public static const §3!§:Array = [§9!A§.§4r§,§9!A§.§!b§,§9!A§.§ !q§,§9!A§.§"S§,§9!A§.§<W§,§9!A§.MIGHTY_EAGLE];
      
      public static const §^c§:Array = [§@i§.§80§,§@i§.§6!N§,§@i§.§^5§,§@i§.§1!!§,§@i§.POWERUP_BOMB,§@i§.§8!Q§];
      
      protected static var §5y§:§6!P§;
       
      
      protected var §5e§:Boolean = false;
      
      protected var §2F§:Object;
      
      public function §6!P§()
      {
         this.§2F§ = {};
         super();
         if(§5y§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§=0§();
         §5y§ = this;
      }
      
      public static function get §5!!§() : §6!P§
      {
         if(!§5y§)
         {
            §5y§ = new §6!P§();
         }
         return §5y§;
      }
      
      public static function §1<§(param1:String) : String
      {
         return §^c§[§3!§.indexOf(param1)];
      }
      
      public function §=0§() : void
      {
         this.§2F§[§9!A§.§4r§] = 0;
         this.§2F§[§9!A§.§!b§] = 0;
         this.§2F§[§9!A§.§ !q§] = 0;
         this.§2F§[§9!A§.§"S§] = 0;
         this.§2F§[§9!A§.§<W§] = 0;
         this.§2F§[§9!A§.MIGHTY_EAGLE] = 0;
      }
      
      public function §0u§() : void
      {
         var _loc2_:Object = {"id":§!t§.§<1§.email};
         var _loc3_:§"!K§ = new §"!K§(_loc2_,§3![§.§=![§ + "getItems",this,§"!K§.§<!4§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = §`!q§.§-`§((param1.currentTarget as URLLoader).data);
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            this.§2F§[_loc4_.type] = _loc4_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
      }
      
      public function §<4§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§2F§[_loc2_.type] = _loc2_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §>!h§(param1:String) : int
      {
         return this.§2F§[param1];
      }
      
      public function §&!_§() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §3!§)
         {
            _loc1_ += this.§>!h§(_loc2_);
         }
         return _loc1_;
      }
      
      public function §if§(param1:String, param2:int) : void
      {
         this.§2F§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §[!c§(param1:String) : void
      {
         if(!§!t§.§0P§(§;_§.§2!Q§))
         {
            --this.§2F§[param1];
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
