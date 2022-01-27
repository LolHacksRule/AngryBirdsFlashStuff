package §7!A§
{
   public class §>M§ implements §>!<§
   {
       
      
      private var §"5§:Array;
      
      private var §][§:Boolean;
      
      public function §>M§()
      {
         this.§"5§ = [];
         super();
      }
      
      public function §'!@§(param1:§9!H§) : void
      {
         this.§"5§.push(param1);
         this.§][§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!H§ = null;
         for each(_loc1_ in this.§"5§)
         {
            _loc1_.dispose();
         }
         this.§"5§ = [];
      }
      
      public function §[!,§(param1:String) : §%b§
      {
         var _loc2_:§%b§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§"5§.length)
         {
            _loc2_ = (this.§"5§[_loc3_] as §9!H§).§[!,§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §'!;§() : int
      {
         return this.§"5§.length;
      }
      
      public function §83§(param1:int) : §9!H§
      {
         if(param1 < 0 || param1 >= this.§'!;§)
         {
            return null;
         }
         if(!this.§][§)
         {
            this.§"5§.sortOn("name");
            this.§][§ = true;
         }
         return this.§"5§[param1];
      }
   }
}
