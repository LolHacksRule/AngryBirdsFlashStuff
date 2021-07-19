package §+6§
{
   public class §'2§ implements §7i§
   {
       
      
      private var §5!"§:Array;
      
      private var §7;§:Boolean;
      
      public function §'2§()
      {
         this.§5!"§ = [];
         super();
      }
      
      public function §!!P§(param1:§^j§) : void
      {
         this.§5!"§.push(param1);
         this.§7;§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^j§ = null;
         for each(_loc1_ in this.§5!"§)
         {
            _loc1_.dispose();
         }
         this.§5!"§ = [];
      }
      
      public function §4u§(param1:String) : §=!`§
      {
         var _loc2_:§=!`§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5!"§.length)
         {
            _loc2_ = (this.§5!"§[_loc3_] as §^j§).§4u§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §-x§() : int
      {
         return this.§5!"§.length;
      }
      
      public function §[j§(param1:int) : §^j§
      {
         if(param1 < 0 || param1 >= this.§-x§)
         {
            return null;
         }
         if(!this.§7;§)
         {
            this.§5!"§.sortOn("name");
            this.§7;§ = true;
         }
         return this.§5!"§[param1];
      }
   }
}
