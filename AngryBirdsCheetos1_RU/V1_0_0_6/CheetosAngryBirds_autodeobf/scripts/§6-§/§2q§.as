package §6-§
{
   public class §2q§ implements §3R§
   {
       
      
      private var §1M§:Array;
      
      private var §'w§:Boolean;
      
      public function §2q§()
      {
         this.§1M§ = [];
         super();
      }
      
      public function §^a§(param1:§;J§) : void
      {
         this.§1M§.push(param1);
         this.§'w§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;J§ = null;
         for each(_loc1_ in this.§1M§)
         {
            _loc1_.dispose();
         }
         this.§1M§ = [];
      }
      
      public function §1r§(param1:String) : §,2§
      {
         var _loc2_:§,2§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§1M§.length)
         {
            _loc2_ = (this.§1M§[_loc3_] as §;J§).§1r§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §0<§() : int
      {
         return this.§1M§.length;
      }
      
      public function §[>§(param1:int) : §;J§
      {
         if(param1 < 0 || param1 >= this.§0<§)
         {
            return null;
         }
         if(!this.§'w§)
         {
            this.§1M§.sortOn("name");
            this.§'w§ = true;
         }
         return this.§1M§[param1];
      }
   }
}
