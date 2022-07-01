package §]!b§
{
   import §'!O§.§5!v§;
   import §'!O§.§@!l§;
   import §,m§.§?"%§;
   import §4!7§.§]!1§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §0<§ extends EventDispatcher implements §9h§
   {
       
      
      private var §3!B§:Vector.<String>;
      
      private var §8O§:§]?§;
      
      public function §0<§(param1:§]?§)
      {
         super();
         this.§8O§ = param1;
      }
      
      public function initialize() : void
      {
         this.§8O§.§5;§.addEventListener(§?"%§.§['§,this.onPhysicsEnabled,false,1);
         this.§8O§.§5;§.addEventListener(§?"%§.§!![§,this.§]X§,false);
         this.§8O§.§%H§.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!c§);
      }
      
      protected function onPhysicsEnabled(param1:Event) : void
      {
         this.§^!=§();
      }
      
      protected function §]X§(param1:Event) : void
      {
         this.§3"2§(false);
      }
      
      public function §73§() : void
      {
         var _loc1_:§@!l§ = §5!v§.§?D§(this.§3!B§[this.§3!B§.length - 1]);
         this.§8O§.§4+§.§7&§(_loc1_);
      }
      
      public function §7"0§() : void
      {
         this.§3!B§ = null;
      }
      
      public function §3"2§(param1:Boolean = true) : void
      {
         if(this.§3!B§ != null && this.§3!B§.length > 0)
         {
            dispatchEvent(new §?"%§(§?"%§.§&!l§));
            this.§73§();
            this.§3!B§.pop();
            dispatchEvent(new §?"%§(§?"%§.§"M§));
         }
      }
      
      public function §^!=§() : void
      {
         if(!§]!1§.§9j§.canCreateUndoPoint())
         {
            return;
         }
         if(this.§3!B§ == null)
         {
            this.§3!B§ = new Vector.<String>();
         }
         this.§3!B§.push(this.§8O§.§4+§.§]!D§.§>7§().§ "3§());
      }
      
      public function activate() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §6!c§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && §]!1§.§9j§.§5]§())
         {
            this.§3"2§();
         }
      }
   }
}
