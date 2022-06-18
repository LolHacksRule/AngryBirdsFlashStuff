package §3!,§
{
   public class §,6§ implements §1g§
   {
       
      
      private var §@1§:Array;
      
      private var §@G§:Boolean;
      
      public function §,6§()
      {
         this.§@1§ = [];
         super();
      }
      
      public function §@Q§(param1:§ e§) : void
      {
         this.§@1§.push(param1);
         this.§@G§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ e§ = null;
         for each(_loc1_ in this.§@1§)
         {
            _loc1_.dispose();
         }
         this.§@1§ = [];
      }
      
      public function §+"§(param1:String) : §8!3§
      {
         var _loc2_:§8!3§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@1§.length)
         {
            _loc2_ = (this.§@1§[_loc3_] as § e§).§+"§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §%a§() : int
      {
         return this.§@1§.length;
      }
      
      public function §=8§(param1:int) : § e§
      {
         if(param1 < 0 || param1 >= this.§%a§)
         {
            return null;
         }
         if(!this.§@G§)
         {
            this.§@1§.sortOn("name");
            this.§@G§ = true;
         }
         return this.§@1§[param1];
      }
   }
}
