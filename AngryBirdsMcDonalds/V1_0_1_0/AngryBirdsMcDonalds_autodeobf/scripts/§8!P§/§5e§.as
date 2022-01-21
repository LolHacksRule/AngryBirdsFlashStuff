package §8!P§
{
   import § !1§.§8!Y§;
   import § !1§.§[n§;
   import §'Y§.§6Q§;
   import §2o§.§;!@§;
   import §?H§.§>!!§;
   import §`!d§.§7!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §5e§ extends EventDispatcher implements §[n§
   {
      
      public static const §4q§:Array = [§;S§.§4I§,§;S§.§2!_§,§;S§.§1?§,§;S§.§<I§,§;S§.§',§,§;S§.MIGHTY_EAGLE];
      
      public static const §8!j§:Array = [§;!@§.§`!h§,§;!@§.§-#§,§;!@§.§#!$§,§;!@§.§]E§,§;!@§.POWERUP_BOMB,§;!@§.§;!#§];
      
      protected static var §;!T§:§5e§;
       
      
      protected var §<_§:Boolean = false;
      
      protected var § in§:Object;
      
      public function §5e§()
      {
         this.§ in§ = {};
         super();
         if(§;!T§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§in §();
         §;!T§ = this;
      }
      
      public static function get §>E§() : §5e§
      {
         if(!§;!T§)
         {
            §;!T§ = new §5e§();
         }
         return §;!T§;
      }
      
      public static function §>!A§(param1:String) : String
      {
         return §8!j§[§4q§.indexOf(param1)];
      }
      
      public function §in §() : void
      {
         this.§ in§[§;S§.§4I§] = 0;
         this.§ in§[§;S§.§2!_§] = 0;
         this.§ in§[§;S§.§1?§] = 0;
         this.§ in§[§;S§.§<I§] = 0;
         this.§ in§[§;S§.§',§] = 0;
         this.§ in§[§;S§.MIGHTY_EAGLE] = 0;
      }
      
      public function §=!A§() : void
      {
         var _loc2_:Object = {"id":§>!!§.§^!4§.email};
         var _loc3_:§6Q§ = new §6Q§(_loc2_,§;!4§.§'!O§ + "getItems",this,§6Q§.§&!0§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = §8!Y§.§%f§((param1.currentTarget as URLLoader).data);
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            this.§ in§[_loc4_.type] = _loc4_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
      }
      
      public function §8!L§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§ in§[_loc2_.type] = _loc2_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §!!O§(param1:String) : int
      {
         return this.§ in§[param1];
      }
      
      public function §?B§() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §4q§)
         {
            _loc1_ += this.§!!O§(_loc2_);
         }
         return _loc1_;
      }
      
      public function §#<§(param1:String, param2:int) : void
      {
         this.§ in§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §9H§(param1:String) : void
      {
         if(!§>!!§.§8S§(§7!§.§+e§))
         {
            --this.§ in§[param1];
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
