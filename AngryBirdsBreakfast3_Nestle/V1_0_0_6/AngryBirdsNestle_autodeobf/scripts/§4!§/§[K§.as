package §4!§
{
   import §0!$§.§2!K§;
   import §2W§.§`!v§;
   
   public class §[K§
   {
      
      private static var §5!Y§:Class = §3u§;
       
      
      private var §&!X§:§`!v§;
      
      public function §[K§()
      {
         super();
         this.§-!X§(§2!K§.§5i§(§5!Y§));
      }
      
      private function §-!X§(param1:XML) : void
      {
         var _loc2_:§1!R§ = null;
         var _loc3_:§ !M§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§&!X§ = new §`!v§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §1!R§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new § !M§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc2_.§]`§(_loc3_);
            }
            this.§&!X§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §6v§() : Array
      {
         var _loc3_:§1!R§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§&!X§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("name");
         return _loc2_;
      }
      
      public function §7!n§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§1!R§ = this.§&!X§[param1];
         var _loc3_:Array = _loc2_.§7!n§();
         _loc3_.sortOn("name");
         return _loc3_;
      }
      
      public function §0!4§(param1:String) : §1!R§
      {
         return this.§&!X§[param1.toUpperCase()];
      }
   }
}
