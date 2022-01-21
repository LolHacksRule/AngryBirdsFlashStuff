package §[r§
{
   public class §&!e§ implements §3=§
   {
       
      
      private var §#e§:Array;
      
      private var §;n§:Boolean;
      
      public function §&!e§()
      {
         this.§#e§ = [];
         super();
      }
      
      public function §4!#§(param1:§6J§) : void
      {
         this.§#e§.push(param1);
         this.§;n§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6J§ = null;
         for each(_loc1_ in this.§#e§)
         {
            _loc1_.dispose();
         }
         this.§#e§ = [];
      }
      
      public function §6Q§(param1:String) : §"T§
      {
         var _loc2_:§"T§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§#e§.length)
         {
            _loc2_ = (this.§#e§[_loc3_] as §6J§).§6Q§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §]K§() : int
      {
         return this.§#e§.length;
      }
      
      public function §9?§(param1:int) : §6J§
      {
         if(param1 < 0 || param1 >= this.§]K§)
         {
            return null;
         }
         if(!this.§;n§)
         {
            this.§#e§.sortOn("name");
            this.§;n§ = true;
         }
         return this.§#e§[param1];
      }
   }
}
