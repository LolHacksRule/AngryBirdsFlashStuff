package §[U§
{
   public class §!<§ implements §!!U§
   {
       
      
      private var §2!Q§:Array;
      
      private var §1$§:Boolean;
      
      public function §!<§()
      {
         this.§2!Q§ = [];
         super();
      }
      
      public function §&!d§(param1:§8f§) : void
      {
         this.§2!Q§.push(param1);
         this.§1$§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8f§ = null;
         for each(_loc1_ in this.§2!Q§)
         {
            _loc1_.dispose();
         }
         this.§2!Q§ = [];
      }
      
      public function §>!R§(param1:String) : §%&§
      {
         var _loc2_:§%&§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2!Q§.length)
         {
            _loc2_ = (this.§2!Q§[_loc3_] as §8f§).§>!R§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §0!Q§() : int
      {
         return this.§2!Q§.length;
      }
      
      public function §#!]§(param1:int) : §8f§
      {
         if(param1 < 0 || param1 >= this.§0!Q§)
         {
            return null;
         }
         if(!this.§1$§)
         {
            this.§2!Q§.sortOn("name");
            this.§1$§ = true;
         }
         return this.§2!Q§[param1];
      }
   }
}
