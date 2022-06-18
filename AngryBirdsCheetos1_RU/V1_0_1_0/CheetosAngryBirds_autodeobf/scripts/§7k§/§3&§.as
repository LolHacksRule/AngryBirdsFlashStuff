package §7k§
{
   public class §3&§ implements §#>§
   {
       
      
      private var §=M§:Array;
      
      private var §1!S§:Boolean;
      
      public function §3&§()
      {
         this.§=M§ = [];
         super();
      }
      
      public function §<Q§(param1:§ M§) : void
      {
         this.§=M§.push(param1);
         this.§1!S§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ M§ = null;
         for each(_loc1_ in this.§=M§)
         {
            _loc1_.dispose();
         }
         this.§=M§ = [];
      }
      
      public function §`!]§(param1:String) : §5O§
      {
         var _loc2_:§5O§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=M§.length)
         {
            _loc2_ = (this.§=M§[_loc3_] as § M§).§`!]§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §[Y§() : int
      {
         return this.§=M§.length;
      }
      
      public function §]!1§(param1:int) : § M§
      {
         if(param1 < 0 || param1 >= this.§[Y§)
         {
            return null;
         }
         if(!this.§1!S§)
         {
            this.§=M§.sortOn("name");
            this.§1!S§ = true;
         }
         return this.§=M§[param1];
      }
   }
}
