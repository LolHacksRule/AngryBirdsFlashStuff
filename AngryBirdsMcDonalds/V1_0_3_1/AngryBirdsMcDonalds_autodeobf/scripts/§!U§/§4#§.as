package §!U§
{
   public class §4#§ implements §2d§
   {
       
      
      private var §>!M§:Array;
      
      private var §`!B§:Boolean;
      
      public function §4#§()
      {
         this.§>!M§ = [];
         super();
      }
      
      public function §!!c§(param1:§?!A§) : void
      {
         this.§>!M§.push(param1);
         this.§`!B§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!A§ = null;
         for each(_loc1_ in this.§>!M§)
         {
            _loc1_.dispose();
         }
         this.§>!M§ = [];
      }
      
      public function §4Q§(param1:String) : § else§
      {
         var _loc2_:§ else§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§>!M§.length)
         {
            _loc2_ = (this.§>!M§[_loc3_] as §?!A§).§4Q§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §8!$§() : int
      {
         return this.§>!M§.length;
      }
      
      public function §`Z§(param1:int) : §?!A§
      {
         if(param1 < 0 || param1 >= this.§8!$§)
         {
            return null;
         }
         if(!this.§`!B§)
         {
            this.§>!M§.sortOn("name");
            this.§`!B§ = true;
         }
         return this.§>!M§[param1];
      }
   }
}
