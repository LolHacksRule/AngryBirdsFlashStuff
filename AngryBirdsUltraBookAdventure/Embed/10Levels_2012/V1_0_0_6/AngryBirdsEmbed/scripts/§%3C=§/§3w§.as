package §<=§
{
   public class §3w§ implements §9x§
   {
       
      
      private var §'!<§:Array;
      
      private var §`<§:Boolean;
      
      public function §3w§()
      {
         this.§'!<§ = [];
         super();
      }
      
      public function §;e§(param1:§66§) : void
      {
         this.§'!<§.push(param1);
         this.§`<§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§66§ = null;
         for each(_loc1_ in this.§'!<§)
         {
            _loc1_.dispose();
         }
         this.§'!<§ = [];
      }
      
      public function §>7§(param1:String) : §#8§
      {
         var _loc2_:§#8§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§'!<§.length)
         {
            _loc2_ = (this.§'!<§[_loc3_] as §66§).§>7§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §[F§() : int
      {
         return this.§'!<§.length;
      }
      
      public function §"!=§(param1:int) : §66§
      {
         if(param1 < 0 || param1 >= this.§[F§)
         {
            return null;
         }
         if(!this.§`<§)
         {
            this.§'!<§.sortOn("name");
            this.§`<§ = true;
         }
         return this.§'!<§[param1];
      }
   }
}
