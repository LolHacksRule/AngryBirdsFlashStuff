package §>i§
{
   public class §-"D§ implements §'!p§
   {
       
      
      private var §'!y§:Array;
      
      private var §;!4§:Boolean;
      
      public function §-"D§()
      {
         this.§'!y§ = [];
         super();
      }
      
      public function §'`§(param1:§]y§) : void
      {
         this.§'!y§.push(param1);
         this.§;!4§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]y§ = null;
         for each(_loc1_ in this.§'!y§)
         {
            _loc1_.dispose();
         }
         this.§'!y§ = [];
      }
      
      public function §-X§(param1:String) : §^J§
      {
         var _loc2_:§^J§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§'!y§.length)
         {
            _loc2_ = (this.§'!y§[_loc3_] as §]y§).§-X§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §2!l§() : int
      {
         return this.§'!y§.length;
      }
      
      public function §59§(param1:int) : §]y§
      {
         if(param1 < 0 || param1 >= this.§2!l§)
         {
            return null;
         }
         if(!this.§;!4§)
         {
            this.§'!y§.sortOn("name");
            this.§;!4§ = true;
         }
         return this.§'!y§[param1];
      }
   }
}
