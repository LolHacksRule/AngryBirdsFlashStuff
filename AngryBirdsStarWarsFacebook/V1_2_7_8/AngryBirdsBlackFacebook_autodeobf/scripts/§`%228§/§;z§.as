package §`"8§
{
   import §0R§.§!!M§;
   import §7A§.§5"2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §;z§ extends EventDispatcher
   {
       
      
      protected var §="F§:String;
      
      protected var §3"b§:§5"2§;
      
      protected var §`!E§:§!!M§;
      
      public function §;z§(param1:String)
      {
         super();
         this.§="F§ = param1;
      }
      
      public function §1!0§() : void
      {
         if(this.isLoading)
         {
            throw new Error("Already loading friends list.");
         }
         this.§`!E§ = new §!!M§("me/friends/");
         this.§`!E§.addEventListener(Event.COMPLETE,this.§'r§);
         this.§`!E§.load();
      }
      
      protected function §'r§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Array = this.§`!E§.§?"u§.data;
         this.§3"b§ = new §5"2§();
         for each(_loc3_ in _loc2_)
         {
            this.§3"b§[_loc3_.id] = _loc3_.name;
         }
         this.§`!E§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get friends() : §5"2§
      {
         return this.§3"b§;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§`!E§ != null;
      }
   }
}
