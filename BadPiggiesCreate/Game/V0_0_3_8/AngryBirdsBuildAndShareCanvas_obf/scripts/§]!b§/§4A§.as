package §]!b§
{
   import §,m§.§?"%§;
   import §4!7§.§^!a§;
   import §`%§.§8!0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import §true§.§>"-§;
   
   public class §4A§ extends EventDispatcher implements §9h§, §^!a§
   {
       
      
      private var §4!&§:Boolean = false;
      
      private var §8O§:§]?§;
      
      public function §4A§(param1:§]?§)
      {
         super();
         this.§8O§ = param1;
      }
      
      public function initialize() : void
      {
         this.§8O§.§%H§.addEventListener(§?"%§.§@p§,this.§;!,§);
      }
      
      public function activate() : void
      {
      }
      
      protected function §;!,§(param1:Event) : void
      {
         this.§9!V§(!this.§4!&§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = !§8!0§.isPaused && this.§4!&§;
         this.§8O§.§4+§.§]!D§.update(param1,_loc2_);
      }
      
      public function §+!G§() : Boolean
      {
         return this.§4!&§;
      }
      
      public function §9!V§(param1:Boolean) : void
      {
         if(this.§4!&§ == param1)
         {
            return;
         }
         this.§4!&§ = param1;
         if(this.§4!&§)
         {
            dispatchEvent(new §?"%§(§?"%§.§['§));
         }
         else
         {
            dispatchEvent(new §?"%§(§?"%§.§!![§));
         }
      }
      
      public function canObjectBeModified(param1:§>"-§ = null) : Boolean
      {
         return !this.§4!&§;
      }
      
      public function canObjectBeAdded(param1:String = null) : Boolean
      {
         return !this.§4!&§;
      }
      
      public function canObjectBeDeleted(param1:§>"-§ = null) : Boolean
      {
         return !this.§4!&§;
      }
      
      public function canSave() : Boolean
      {
         return !this.§4!&§;
      }
   }
}
