package §!q§
{
   import §1U§.§"!V§;
   import §3;§.§#!C§;
   import §?^§.§0Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §!E§ extends EventDispatcher implements §2j§
   {
       
      
      private var §2_§:Boolean = false;
      
      private var §5!V§:§84§;
      
      public function §!E§(param1:§84§)
      {
         super();
         this.§5!V§ = param1;
      }
      
      public function initialize() : void
      {
         this.§5!V§.§<B§.addEventListener(§#!C§.§7$§,this.§!#§);
      }
      
      public function activate() : void
      {
         § %§.§,l§.§]!0§(this.§#G§,§ %§.SAVE);
         § %§.§,l§.§]!0§(this.§@4§,§ %§.MODIFY);
         § %§.§,l§.§]!0§(this.§]A§,§ %§.ADD);
         § %§.§,l§.§]!0§(this.§76§,§ %§.DELETE);
      }
      
      protected function §!#§(param1:Event) : void
      {
         this.§^!n§(!this.§2_§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = !§"!V§.isPaused && this.§2_§;
         this.§5!V§.§"j§.§^"'§.update(param1,_loc2_);
      }
      
      public function §@&§() : Boolean
      {
         return this.§2_§;
      }
      
      public function §^!n§(param1:Boolean) : void
      {
         if(this.§2_§ == param1)
         {
            return;
         }
         this.§2_§ = param1;
         if(this.§2_§)
         {
            dispatchEvent(new §#!C§(§#!C§.§""2§));
         }
         else
         {
            dispatchEvent(new §#!C§(§#!C§.§+q§));
         }
      }
      
      public function §@4§(param1:§0Q§ = null) : Boolean
      {
         return !this.§2_§;
      }
      
      public function §]A§(param1:String = null) : Boolean
      {
         return !this.§2_§;
      }
      
      public function §76§(param1:§0Q§ = null) : Boolean
      {
         return !this.§2_§;
      }
      
      public function §#G§() : Boolean
      {
         return !this.§2_§;
      }
   }
}
