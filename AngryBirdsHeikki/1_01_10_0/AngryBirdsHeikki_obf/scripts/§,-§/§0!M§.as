package §,-§
{
   public class §0!M§ implements §3!f§
   {
       
      
      private var §+_§:Array;
      
      private var §<^§:Boolean;
      
      public function §0!M§()
      {
         this.§+_§ = [];
         super();
      }
      
      public function §3u§(param1:§]M§) : void
      {
         this.§+_§.push(param1);
         this.§<^§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]M§ = null;
         for each(_loc1_ in this.§+_§)
         {
            _loc1_.dispose();
         }
         this.§+_§ = [];
      }
      
      public function §?&§(param1:String) : §!>§
      {
         var _loc2_:§!>§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§+_§.length)
         {
            _loc2_ = (this.§+_§[_loc3_] as §]M§).§?&§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §[J§() : int
      {
         return this.§+_§.length;
      }
      
      public function §^m§(param1:int) : §]M§
      {
         if(param1 < 0 || param1 >= this.§[J§)
         {
            return null;
         }
         if(!this.§<^§)
         {
            this.§+_§.sortOn("name");
            this.§<^§ = true;
         }
         return this.§+_§[param1];
      }
   }
}
