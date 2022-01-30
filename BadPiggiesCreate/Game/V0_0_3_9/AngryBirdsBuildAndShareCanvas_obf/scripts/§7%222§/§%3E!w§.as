package §7"2§
{
   import §%!n§.§,;§;
   import §%%§.§7!O§;
   import §3!S§.§%s§;
   import §5!k§.§6"6§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §>!w§ extends EventDispatcher implements §!"1§, §,;§
   {
       
      
      private var §?!=§:Boolean = false;
      
      private var §"Z§:§;!5§;
      
      public function §>!w§(param1:§;!5§)
      {
         super();
         this.§"Z§ = param1;
      }
      
      public function initialize() : void
      {
         this.§"Z§.§[U§.addEventListener(§6"6§.§9Q§,this.§1$§);
      }
      
      public function activate() : void
      {
      }
      
      protected function §1$§(param1:Event) : void
      {
         this.§!&§(!this.§?!=§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = !§%s§.isPaused && this.§?!=§;
         this.§"Z§.§94§.§'!E§.update(param1,_loc2_);
      }
      
      public function §9-§() : Boolean
      {
         return this.§?!=§;
      }
      
      public function §!&§(param1:Boolean) : void
      {
         if(this.§?!=§ == param1)
         {
            return;
         }
         this.§?!=§ = param1;
         if(this.§?!=§)
         {
            dispatchEvent(new §6"6§(§6"6§.§#§));
         }
         else
         {
            dispatchEvent(new §6"6§(§6"6§.§]!'§));
         }
      }
      
      public function canObjectBeModified(param1:§7!O§ = null) : Boolean
      {
         return !this.§?!=§;
      }
      
      public function canObjectBeAdded(param1:String = null) : Boolean
      {
         return !this.§?!=§;
      }
      
      public function canObjectBeDeleted(param1:§7!O§ = null) : Boolean
      {
         return !this.§?!=§;
      }
      
      public function canSave() : Boolean
      {
         return !this.§?!=§;
      }
   }
}
