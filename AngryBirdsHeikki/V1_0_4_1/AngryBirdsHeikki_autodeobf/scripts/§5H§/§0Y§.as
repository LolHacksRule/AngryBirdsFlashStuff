package §5H§
{
   public class §0Y§ implements §9!P§
   {
       
      
      private var §-,§:Array;
      
      private var §'k§:Boolean;
      
      public function §0Y§()
      {
         this.§-,§ = [];
         super();
      }
      
      public function §2#§(param1:§0!R§) : void
      {
         this.§-,§.push(param1);
         this.§'k§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!R§ = null;
         for each(_loc1_ in this.§-,§)
         {
            _loc1_.dispose();
         }
         this.§-,§ = [];
      }
      
      public function § X§(param1:String) : §<T§
      {
         var _loc2_:§<T§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-,§.length)
         {
            _loc2_ = (this.§-,§[_loc3_] as §0!R§).§ X§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get § !`§() : int
      {
         return this.§-,§.length;
      }
      
      public function §4q§(param1:int) : §0!R§
      {
         if(param1 < 0 || param1 >= this.§ !`§)
         {
            return null;
         }
         if(!this.§'k§)
         {
            this.§-,§.sortOn("name");
            this.§'k§ = true;
         }
         return this.§-,§[param1];
      }
   }
}
