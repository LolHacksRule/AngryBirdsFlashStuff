package §=I§
{
   public class §#o§ implements §2i§
   {
       
      
      private var §0>§:Array;
      
      private var §3D§:Boolean;
      
      public function §#o§()
      {
         this.§0>§ = [];
         super();
      }
      
      public function §>!>§(param1:§-§) : void
      {
         this.§0>§.push(param1);
         this.§3D§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-§ = null;
         for each(_loc1_ in this.§0>§)
         {
            _loc1_.dispose();
         }
         this.§0>§ = [];
      }
      
      public function §;M§(param1:String) : §5!B§
      {
         var _loc2_:§5!B§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§0>§.length)
         {
            _loc2_ = (this.§0>§[_loc3_] as §-§).§;M§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §!!G§() : int
      {
         return this.§0>§.length;
      }
      
      public function §`a§(param1:int) : §-§
      {
         if(param1 < 0 || param1 >= this.§!!G§)
         {
            return null;
         }
         if(!this.§3D§)
         {
            this.§0>§.sortOn("name");
            this.§3D§ = true;
         }
         return this.§0>§[param1];
      }
   }
}
