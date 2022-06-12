package §^"7§
{
   public class §+!V§ implements §^!0§
   {
       
      
      private var §-"?§:Array;
      
      private var §extends§:Boolean;
      
      public function §+!V§()
      {
         this.§-"?§ = [];
         super();
      }
      
      public function §&!o§(param1:§]V§) : void
      {
         this.§-"?§.push(param1);
         this.§extends§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]V§ = null;
         for each(_loc1_ in this.§-"?§)
         {
            _loc1_.dispose();
         }
         this.§-"?§ = [];
      }
      
      public function §5+§(param1:String) : §"O§
      {
         var _loc2_:§"O§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-"?§.length)
         {
            _loc2_ = (this.§-"?§[_loc3_] as §]V§).§5+§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §@"+§() : int
      {
         return this.§-"?§.length;
      }
      
      public function §8!s§(param1:int) : §]V§
      {
         if(param1 < 0 || param1 >= this.§@"+§)
         {
            return null;
         }
         if(!this.§extends§)
         {
            this.§-"?§.sortOn("name");
            this.§extends§ = true;
         }
         return this.§-"?§[param1];
      }
   }
}
