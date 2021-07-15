package §5!G§
{
   import each.§8!N§;
   
   public class §64§
   {
      
      private static var §=!w§:Class = §]W§;
       
      
      private var §#!;§:Vector.<§#!6§>;
      
      public function §64§()
      {
         super();
         this.§5!<§(§8!N§.§?!c§(§=!w§));
      }
      
      private function §5!<§(param1:XML) : void
      {
         var _loc2_:§#!6§ = null;
         var _loc3_:XML = null;
         this.§#!;§ = new Vector.<§#!6§>();
         for each(_loc3_ in param1.language)
         {
            _loc2_ = new §#!6§();
            _loc2_.id = _loc3_.@id;
            _loc2_.name = _loc3_.@name;
            _loc2_.nativeName = _loc3_.@nativeName;
            this.§#!;§.push(_loc2_);
         }
      }
      
      public function §5!U§() : Array
      {
         var _loc2_:§#!6§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§#!;§)
         {
            _loc1_.push(_loc2_);
         }
         _loc1_.sortOn("nativeName");
         return _loc1_;
      }
   }
}
