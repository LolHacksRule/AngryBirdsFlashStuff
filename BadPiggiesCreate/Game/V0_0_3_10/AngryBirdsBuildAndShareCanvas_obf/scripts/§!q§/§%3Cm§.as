package §!q§
{
   import §3;§.§#!C§;
   import §7M§.§+R§;
   import §7M§.§7!#§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §<m§ extends EventDispatcher implements §2j§
   {
       
      
      private var § !8§:Vector.<String>;
      
      private var §5!V§:§84§;
      
      public function §<m§(param1:§84§)
      {
         super();
         this.§5!V§ = param1;
      }
      
      public function initialize() : void
      {
         this.§5!V§.§4!v§.addEventListener(§#!C§.§""2§,this.onPhysicsEnabled,false,1);
         this.§5!V§.§4!v§.addEventListener(§#!C§.§+q§,this.§>!$§,false,1);
         this.§5!V§.§<B§.addEventListener(KeyboardEvent.KEY_DOWN,this.§^"5§);
      }
      
      protected function onPhysicsEnabled(param1:Event) : void
      {
         this.§#l§();
      }
      
      protected function §>!$§(param1:Event) : void
      {
         this.§%!=§(false);
      }
      
      public function §>!S§() : void
      {
         var _loc1_:§+R§ = §7!#§.§>"&§(this.§ !8§[this.§ !8§.length - 1]);
         this.§5!V§.§"j§.§52§(_loc1_);
      }
      
      public function §<q§() : void
      {
         this.§ !8§ = null;
      }
      
      public function §%!=§(param1:Boolean = true) : void
      {
         if(this.§ !8§ != null && this.§ !8§.length > 0)
         {
            this.§>!S§();
            this.§ !8§.pop();
            dispatchEvent(new §#!C§(§#!C§.§"" §));
         }
      }
      
      public function §#l§() : void
      {
         if(!§ %§.§,l§.§8!9§())
         {
            return;
         }
         if(this.§ !8§ == null)
         {
            this.§ !8§ = new Vector.<String>();
         }
         this.§ !8§.push(this.§5!V§.§"j§.§^"'§.§&!7§().§ j§());
      }
      
      public function activate() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §^"5§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && § %§.§,l§.§?!7§())
         {
            this.§%!=§();
         }
      }
   }
}
