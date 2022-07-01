package §2!5§
{
   import §+%§.§5!F§;
   import §+%§.§5!O§;
   import §;!§.§8V§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §;p§ extends EventDispatcher implements §4!]§
   {
       
      
      private var §&!q§:Vector.<String>;
      
      private var §!^§:§0!X§;
      
      public function §;p§(param1:§0!X§)
      {
         super();
         this.§!^§ = param1;
      }
      
      public function initialize() : void
      {
         this.§!^§.§0!y§.addEventListener(§8V§.§#!u§,this.onPhysicsEnabled,false,1);
         this.§!^§.§0!y§.addEventListener(§8V§.§[!F§,this.§9!,§,false,1);
         this.§!^§.§!e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1!r§);
      }
      
      protected function onPhysicsEnabled(param1:Event) : void
      {
         this.§^3§();
      }
      
      protected function §9!,§(param1:Event) : void
      {
         this.§"!1§(false);
      }
      
      public function §=!C§() : void
      {
         var _loc1_:§5!F§ = §5!O§.§+!R§(this.§&!q§[this.§&!q§.length - 1]);
         this.§!^§.§@s§.§87§(_loc1_);
      }
      
      public function §1"7§() : void
      {
         this.§&!q§ = null;
      }
      
      public function §"!1§(param1:Boolean = true) : void
      {
         if(this.§&!q§ != null && this.§&!q§.length > 0)
         {
            this.§=!C§();
            this.§&!q§.pop();
            dispatchEvent(new §8V§(§8V§.§<!,§));
         }
      }
      
      public function §^3§() : void
      {
         if(!§=,§.§if §.§>!6§())
         {
            return;
         }
         if(this.§&!q§ == null)
         {
            this.§&!q§ = new Vector.<String>();
         }
         this.§&!q§.push(this.§!^§.§@s§.§'4§.§"!T§().§^![§());
      }
      
      public function activate() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §1!r§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && §=,§.§if §.§9'§())
         {
            this.§"!1§();
         }
      }
   }
}
