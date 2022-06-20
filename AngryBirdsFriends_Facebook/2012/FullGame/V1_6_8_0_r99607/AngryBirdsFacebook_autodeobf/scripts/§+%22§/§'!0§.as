package §+"§
{
   import §+I§.§`!o§;
   import §7N§.§43§;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§^!I§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §'!0§ extends EventDispatcher
   {
      
      public static const §5!K§:Array = [§<!A§.§;!;§,§<!A§.§7X§,§<!A§.§[;§,§<!A§.§2!4§,§<!A§.§=!5§,§<!A§.MIGHTY_EAGLE];
      
      public static const §"R§:Array = [§`!o§.§7!D§,§`!o§.§@!j§,§`!o§.§?!5§,§`!o§.§=!M§,§`!o§.POWERUP_BOMB,§`!o§.§[E§];
      
      protected static var §#!O§:§'!0§;
       
      
      protected var §&>§:Boolean = false;
      
      protected var §`P§:§,!S§;
      
      protected var §!a§:Object;
      
      public function §'!0§()
      {
         this.§!a§ = {};
         super();
         if(§#!O§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§!a§[§<!A§.§;!;§] = 0;
         this.§!a§[§<!A§.§7X§] = 0;
         this.§!a§[§<!A§.§[;§] = 0;
         this.§!a§[§<!A§.§2!4§] = 0;
         this.§!a§[§<!A§.§=!5§] = 0;
         this.§!a§[§<!A§.MIGHTY_EAGLE] = 0;
         §#!O§ = this;
      }
      
      public static function get §8c§() : §'!0§
      {
         if(!§#!O§)
         {
            §#!O§ = new §'!0§();
         }
         return §#!O§;
      }
      
      public static function §1!1§(param1:String) : String
      {
         return §"R§[§5!K§.indexOf(param1)];
      }
      
      public function §]!f§() : void
      {
         if(this.§`P§)
         {
            this.§`P§.removeEventListener(Event.COMPLETE,this.§ !E§);
            this.§`P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[]§);
            this.§`P§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[]§);
            this.§`P§.removeEventListener(§"!n§.§"+§,this.§[]§);
            this.§`P§ = null;
         }
         this.§`P§ = new §,!S§();
         this.§`P§.addEventListener(Event.COMPLETE,this.§ !E§);
         this.§`P§.addEventListener(IOErrorEvent.IO_ERROR,this.§[]§);
         this.§`P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[]§);
         this.§`P§.addEventListener(§"!n§.§"+§,this.§[]§);
         this.§`P§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/getitems"));
      }
      
      public function §,d§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§!a§[_loc2_.i] = _loc2_.q;
         }
         this.§`P§ = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function § !E§(param1:Event) : void
      {
         var responseObjects:Array = null;
         var responseObject:Object = null;
         var e:Event = param1;
         try
         {
            responseObjects = JSON.parse(this.§`P§.data) as Array;
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §`P§.data,§^!I§.§50§);
         }
         for each(responseObject in responseObjects)
         {
            this.§!a§[responseObject.i] = responseObject.q;
         }
         this.§`P§ = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function §[]§(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§?!S§();
         }
         this.§`P§ = null;
      }
      
      public function §9+§(param1:String) : int
      {
         return this.§!a§[param1];
      }
      
      public function § !p§() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §5!K§)
         {
            _loc1_ += this.§9+§(_loc2_);
         }
         return _loc1_;
      }
      
      public function §'u§(param1:String, param2:int) : void
      {
         this.§!a§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §4!#§(param1:String) : void
      {
         if(this.§!a§[param1] <= 0)
         {
            throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
         }
         --this.§!a§[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §%!H§() : Boolean
      {
         return this.§`P§ != null;
      }
   }
}
