package §,"N§
{
   import §#!'§.§&G§;
   import §1!i§.§,#_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`#&§ extends EventDispatcher
   {
       
      
      protected var §^!m§:String;
      
      protected var §2"8§:§,#_§;
      
      protected var §9v§:§&G§;
      
      public function §`#&§(param1:String)
      {
         super();
         this.§^!m§ = param1;
      }
      
      public function §->§() : void
      {
         if(this.isLoading)
         {
            throw new Error("Already loading friends list.");
         }
         this.§9v§ = new §&G§("me/friends/");
         this.§9v§.addEventListener(Event.COMPLETE,this.§>"1§);
         this.§9v§.load();
      }
      
      protected function §>"1§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Array = this.§9v§.§3!U§.data;
         this.§2"8§ = new §,#_§();
         for each(_loc3_ in _loc2_)
         {
            this.§2"8§[_loc3_.id] = _loc3_.name;
         }
         this.§9v§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get friends() : §,#_§
      {
         return this.§2"8§;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§9v§ != null;
      }
   }
}
