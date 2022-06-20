package §1C§
{
   import § !D§.§'"u§;
   import §-"i§.§"!Y§;
   import §-"i§.§@M§;
   
   public class §,!$§
   {
       
      
      private var §^#C§:Vector.<§7o§>;
      
      public function §,!$§(param1:§'"u§)
      {
         var _loc2_:§7o§ = null;
         super();
         this.§^#C§ = §,$§.§;!M§();
         for each(_loc2_ in this.§^#C§)
         {
            _loc2_.initialize(param1);
         }
      }
      
      public function §`!A§(param1:String, param2:String) : void
      {
         var _loc3_:§7o§ = null;
         for each(_loc3_ in this.§^#C§)
         {
            if(_loc3_.§@c§(param2))
            {
               _loc3_.§`!A§(param1,param2);
            }
         }
      }
      
      public function §3!@§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§^#C§.length)
         {
            _loc1_.push(this.§^#C§[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§7o§ = null;
         for each(_loc2_ in this.§^#C§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function §"#B§(param1:String, param2:String, param3:§"!Y§) : Boolean
      {
         var _loc4_:§7o§ = null;
         for each(_loc4_ in this.§^#C§)
         {
            if(_loc4_.§@c§(param1))
            {
               param3.§=$A§(_loc4_ as §@M§,param2);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var _loc1_:§7o§ = null;
         for each(_loc1_ in this.§^#C§)
         {
            _loc1_.clear();
         }
      }
   }
}
