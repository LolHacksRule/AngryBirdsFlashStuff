package §]o§
{
   public class §!T§ implements §"!Z§
   {
       
      
      private var §[!Q§:Array;
      
      private var §6!?§:Boolean;
      
      public function §!T§()
      {
         this.§[!Q§ = [];
         super();
      }
      
      public function §^f§(param1:§%!p§) : void
      {
         this.§[!Q§.push(param1);
         this.§6!?§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!p§ = null;
         for each(_loc1_ in this.§[!Q§)
         {
            _loc1_.dispose();
         }
         this.§[!Q§ = [];
      }
      
      public function §,T§(param1:String) : §^!9§
      {
         var _loc2_:§^!9§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§[!Q§.length)
         {
            _loc2_ = (this.§[!Q§[_loc3_] as §%!p§).§,T§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §]t§() : int
      {
         return this.§[!Q§.length;
      }
      
      public function §0!>§(param1:int) : §%!p§
      {
         if(param1 < 0 || param1 >= this.§]t§)
         {
            return null;
         }
         if(!this.§6!?§)
         {
            this.§[!Q§.sortOn("name");
            this.§6!?§ = true;
         }
         return this.§[!Q§[param1];
      }
   }
}
