package §24§
{
   public class §!!H§ implements §5!,§
   {
       
      
      private var §+!=§:Array;
      
      private var §>X§:Boolean;
      
      public function §!!H§()
      {
         this.§+!=§ = [];
         super();
      }
      
      public function §2!&§(param1:§8J§) : void
      {
         this.§+!=§.push(param1);
         this.§>X§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8J§ = null;
         for each(_loc1_ in this.§+!=§)
         {
            _loc1_.dispose();
         }
         this.§+!=§ = [];
      }
      
      public function §%&§(param1:String) : § !F§
      {
         var _loc2_:§ !F§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§+!=§.length)
         {
            _loc2_ = (this.§+!=§[_loc3_] as §8J§).§%&§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §8!@§() : int
      {
         return this.§+!=§.length;
      }
      
      public function §6!R§(param1:int) : §8J§
      {
         if(param1 < 0 || param1 >= this.§8!@§)
         {
            return null;
         }
         if(!this.§>X§)
         {
            this.§+!=§.sortOn("name");
            this.§>X§ = true;
         }
         return this.§+!=§[param1];
      }
   }
}
