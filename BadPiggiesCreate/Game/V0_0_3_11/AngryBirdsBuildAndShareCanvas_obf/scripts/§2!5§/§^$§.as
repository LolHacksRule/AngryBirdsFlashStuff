package §2!5§
{
   import §'x§.§?z§;
   import §;!§.§8V§;
   import §@!P§.§?"%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^$§ extends EventDispatcher implements §4!]§
   {
       
      
      private var §@!Y§:Boolean = false;
      
      private var §!^§:§0!X§;
      
      public function §^$§(param1:§0!X§)
      {
         super();
         this.§!^§ = param1;
      }
      
      public function initialize() : void
      {
         this.§!^§.§!e§.addEventListener(§8V§.§3!v§,this.§1M§);
      }
      
      public function activate() : void
      {
         §=,§.§if §.§,!M§(this.§9q§,§=,§.SAVE);
         §=,§.§if §.§,!M§(this.§#!A§,§=,§.MODIFY);
         §=,§.§if §.§,!M§(this.§ try§,§=,§.ADD);
         §=,§.§if §.§,!M§(this.§-!+§,§=,§.DELETE);
      }
      
      protected function §1M§(param1:Event) : void
      {
         this.§2"§(!this.§@!Y§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = !§?z§.isPaused && this.§@!Y§;
         this.§!^§.§@s§.§'4§.update(param1,_loc2_);
      }
      
      public function §4"0§() : Boolean
      {
         return this.§@!Y§;
      }
      
      public function §2"§(param1:Boolean) : void
      {
         if(this.§@!Y§ == param1)
         {
            return;
         }
         this.§@!Y§ = param1;
         if(this.§@!Y§)
         {
            dispatchEvent(new §8V§(§8V§.§#!u§));
         }
         else
         {
            dispatchEvent(new §8V§(§8V§.§[!F§));
         }
      }
      
      public function §#!A§(param1:§?"%§ = null) : Boolean
      {
         return !this.§@!Y§;
      }
      
      public function § try§(param1:String = null) : Boolean
      {
         return !this.§@!Y§;
      }
      
      public function §-!+§(param1:§?"%§ = null) : Boolean
      {
         return !this.§@!Y§;
      }
      
      public function §9q§() : Boolean
      {
         return !this.§@!Y§;
      }
   }
}
