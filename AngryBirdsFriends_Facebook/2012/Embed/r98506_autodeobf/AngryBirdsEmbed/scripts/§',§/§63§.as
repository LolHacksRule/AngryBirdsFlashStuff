package §',§
{
   public class §63§ implements §0W§
   {
       
      
      private var §%!%§:Array;
      
      private var §?!#§:Boolean;
      
      public function §63§()
      {
         this.§%!%§ = [];
         super();
      }
      
      public function §`'§(param1:§6H§) : void
      {
         this.§%!%§.push(param1);
         this.§?!#§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6H§ = null;
         for each(_loc1_ in this.§%!%§)
         {
            _loc1_.dispose();
         }
         this.§%!%§ = [];
      }
      
      public function §>!%§(param1:String) : §<v§
      {
         var _loc2_:§<v§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§%!%§.length)
         {
            _loc2_ = (this.§%!%§[_loc3_] as §6H§).§>!%§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §]!?§() : int
      {
         return this.§%!%§.length;
      }
      
      public function §0U§(param1:int) : §6H§
      {
         if(param1 < 0 || param1 >= this.§]!?§)
         {
            return null;
         }
         if(!this.§?!#§)
         {
            this.§%!%§.sortOn("name");
            this.§?!#§ = true;
         }
         return this.§%!%§[param1];
      }
   }
}
