package §9"U§
{
   import §!b§.§ ?§;
   import §+d§.§2!g§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §6e§ extends EventDispatcher
   {
       
      
      protected var §""$§:String;
      
      protected var §%!^§:§2!g§;
      
      protected var §&K§:§ ?§;
      
      public function §6e§(param1:String)
      {
         super();
         this.§""$§ = param1;
      }
      
      public function §6"J§() : void
      {
         if(this.isLoading)
         {
            throw new Error("Already loading friends list.");
         }
         this.§&K§ = new § ?§("me/friends/");
         this.§&K§.addEventListener(Event.COMPLETE,this.§1"R§);
         this.§&K§.load();
      }
      
      protected function §1"R§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Array = this.§&K§.§"# §.data;
         this.§%!^§ = new §2!g§();
         for each(_loc3_ in _loc2_)
         {
            this.§%!^§[_loc3_.id] = _loc3_.name;
         }
         this.§&K§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get friends() : §2!g§
      {
         return this.§%!^§;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§&K§ != null;
      }
   }
}
