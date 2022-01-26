package §'!H§
{
   public class §"+§ implements §5,§
   {
       
      
      private var §=!4§:Array;
      
      private var §`!W§:Boolean;
      
      public function §"+§()
      {
         this.§=!4§ = [];
         super();
      }
      
      public function §]F§(param1:§3^§) : void
      {
         this.§=!4§.push(param1);
         this.§`!W§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3^§ = null;
         for each(_loc1_ in this.§=!4§)
         {
            _loc1_.dispose();
         }
         this.§=!4§ = [];
      }
      
      public function §,2§(param1:String) : §?m§
      {
         var _loc2_:§?m§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=!4§.length)
         {
            _loc2_ = (this.§=!4§[_loc3_] as §3^§).§,2§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §2"§() : int
      {
         return this.§=!4§.length;
      }
      
      public function §0!L§(param1:int) : §3^§
      {
         if(param1 < 0 || param1 >= this.§2"§)
         {
            return null;
         }
         if(!this.§`!W§)
         {
            this.§=!4§.sortOn("name");
            this.§`!W§ = true;
         }
         return this.§=!4§[param1];
      }
   }
}
