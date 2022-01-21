package §?6§
{
   public class §6v§ implements § 6§
   {
       
      
      private var § -§:Array;
      
      private var §'!G§:Boolean;
      
      public function §6v§()
      {
         this.§ -§ = [];
         super();
      }
      
      public function §+!!§(param1:§2!e§) : void
      {
         this.§ -§.push(param1);
         this.§'!G§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2!e§ = null;
         for each(_loc1_ in this.§ -§)
         {
            _loc1_.dispose();
         }
         this.§ -§ = [];
      }
      
      public function §%!F§(param1:String) : §!K§
      {
         var _loc2_:§!K§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§ -§.length)
         {
            _loc2_ = (this.§ -§[_loc3_] as §2!e§).§%!F§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §,!H§() : int
      {
         return this.§ -§.length;
      }
      
      public function §-g§(param1:int) : §2!e§
      {
         if(param1 < 0 || param1 >= this.§,!H§)
         {
            return null;
         }
         if(!this.§'!G§)
         {
            this.§ -§.sortOn("name");
            this.§'!G§ = true;
         }
         return this.§ -§[param1];
      }
   }
}
