package §>0§
{
   public class §;!H§ implements §;-§
   {
       
      
      private var §-`§:Array;
      
      private var §1C§:Boolean;
      
      public function §;!H§()
      {
         this.§-`§ = [];
         super();
      }
      
      public function §6!M§(param1:§[!W§) : void
      {
         this.§-`§.push(param1);
         this.§1C§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!W§ = null;
         for each(_loc1_ in this.§-`§)
         {
            _loc1_.dispose();
         }
         this.§-`§ = [];
      }
      
      public function §+!7§(param1:String) : §7"§
      {
         var _loc2_:§7"§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-`§.length)
         {
            _loc2_ = (this.§-`§[_loc3_] as §[!W§).§+!7§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §1n§() : int
      {
         return this.§-`§.length;
      }
      
      public function §?!0§(param1:int) : §[!W§
      {
         if(param1 < 0 || param1 >= this.§1n§)
         {
            return null;
         }
         if(!this.§1C§)
         {
            this.§-`§.sortOn("name");
            this.§1C§ = true;
         }
         return this.§-`§[param1];
      }
   }
}
