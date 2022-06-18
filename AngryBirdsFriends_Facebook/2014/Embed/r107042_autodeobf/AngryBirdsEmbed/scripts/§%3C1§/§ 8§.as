package §<1§
{
   public class § 8§ implements §=!H§
   {
       
      
      private var §5<§:Array;
      
      private var §-!;§:Boolean;
      
      public function § 8§()
      {
         this.§5<§ = [];
         super();
      }
      
      public function § L§(param1:§4!M§) : void
      {
         this.§5<§.push(param1);
         this.§-!;§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!M§ = null;
         for each(_loc1_ in this.§5<§)
         {
            _loc1_.dispose();
         }
         this.§5<§ = [];
      }
      
      public function §!5§(param1:String) : § null§
      {
         var _loc2_:§ null§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5<§.length)
         {
            _loc2_ = (this.§5<§[_loc3_] as §4!M§).§!5§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §;!%§() : int
      {
         return this.§5<§.length;
      }
      
      public function §>O§(param1:int) : §4!M§
      {
         if(param1 < 0 || param1 >= this.§;!%§)
         {
            return null;
         }
         if(!this.§-!;§)
         {
            this.§5<§.sortOn("name");
            this.§-!;§ = true;
         }
         return this.§5<§[param1];
      }
   }
}
