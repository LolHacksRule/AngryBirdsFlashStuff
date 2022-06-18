package § !'§
{
   public class §2#§ implements §"6§
   {
       
      
      private var §%n§:Array;
      
      private var §19§:Boolean;
      
      public function §2#§()
      {
         this.§%n§ = [];
         super();
      }
      
      public function §!3§(param1:§!!F§) : void
      {
         this.§%n§.push(param1);
         this.§19§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!F§ = null;
         for each(_loc1_ in this.§%n§)
         {
            _loc1_.dispose();
         }
         this.§%n§ = [];
      }
      
      public function §7E§(param1:String) : §6'§
      {
         var _loc2_:§6'§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§%n§.length)
         {
            _loc2_ = (this.§%n§[_loc3_] as §!!F§).§7E§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §7[§() : int
      {
         return this.§%n§.length;
      }
      
      public function §5l§(param1:int) : §!!F§
      {
         if(param1 < 0 || param1 >= this.§7[§)
         {
            return null;
         }
         if(!this.§19§)
         {
            this.§%n§.sortOn("name");
            this.§19§ = true;
         }
         return this.§%n§[param1];
      }
   }
}
