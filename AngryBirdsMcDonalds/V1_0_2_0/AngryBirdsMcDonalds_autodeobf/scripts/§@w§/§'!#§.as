package §@w§
{
   import § v§.§!!^§;
   import §!!h§.§1H§;
   import §+-§.§3!5§;
   import §7"§.§1! §;
   import §7"§.§[!K§;
   import §9!W§.§^!+§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §'!#§ extends EventDispatcher implements §1! §
   {
      
      public static const §8#§:Array = [§`H§.§43§,§`H§.§=^§,§`H§.§1!h§,§`H§.§9!a§,§`H§.§ Y§,§`H§.MIGHTY_EAGLE];
      
      public static const §'![§:Array = [§^!+§.§"C§,§^!+§.§>[§,§^!+§.§6!§,§^!+§.§9F§,§^!+§.POWERUP_BOMB,§^!+§.§>!]§];
      
      protected static var §?e§:§'!#§;
       
      
      protected var §]!n§:Boolean = false;
      
      protected var §52§:Object;
      
      public function §'!#§()
      {
         this.§52§ = {};
         super();
         if(§?e§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§@C§();
         §?e§ = this;
      }
      
      public static function get §'!S§() : §'!#§
      {
         if(!§?e§)
         {
            §?e§ = new §'!#§();
         }
         return §?e§;
      }
      
      public static function §^S§(param1:String) : String
      {
         return §'![§[§8#§.indexOf(param1)];
      }
      
      public function §@C§() : void
      {
         this.§52§[§`H§.§43§] = 0;
         this.§52§[§`H§.§=^§] = 0;
         this.§52§[§`H§.§1!h§] = 0;
         this.§52§[§`H§.§9!a§] = 0;
         this.§52§[§`H§.§ Y§] = 0;
         this.§52§[§`H§.MIGHTY_EAGLE] = 0;
      }
      
      public function §03§() : void
      {
         var _loc2_:Object = {"id":§!!^§.§,!a§.email};
         var _loc3_:§1H§ = new §1H§(_loc2_,§'j§.§2H§ + "getItems",this,§1H§.§`P§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = §[!K§.§,!j§((param1.currentTarget as URLLoader).data);
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            this.§52§[_loc4_.type] = _loc4_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
      }
      
      public function §?c§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§52§[_loc2_.type] = _loc2_.count;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §2v§(param1:String) : int
      {
         return this.§52§[param1];
      }
      
      public function §"!V§() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §8#§)
         {
            _loc1_ += this.§2v§(_loc2_);
         }
         return _loc1_;
      }
      
      public function §8!F§(param1:String, param2:int) : void
      {
         this.§52§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §4-§(param1:String) : void
      {
         if(!§!!^§.§use§(§3!5§.§-!2§))
         {
            --this.§52§[param1];
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
