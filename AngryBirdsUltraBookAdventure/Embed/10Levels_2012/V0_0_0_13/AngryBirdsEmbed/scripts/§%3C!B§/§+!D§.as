package §<!B§
{
   public class §+!D§ implements §<O§
   {
       
      
      private var §&!9§:Array;
      
      private var §-!9§:Boolean;
      
      public function §+!D§()
      {
         this.§&!9§ = [];
         super();
      }
      
      public function §]Y§(param1:§]!=§) : void
      {
         this.§&!9§.push(param1);
         this.§-!9§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!=§ = null;
         for each(_loc1_ in this.§&!9§)
         {
            _loc1_.dispose();
         }
         this.§&!9§ = [];
      }
      
      public function §%@§(param1:String) : §#z§
      {
         var _loc2_:§#z§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§&!9§.length)
         {
            _loc2_ = (this.§&!9§[_loc3_] as §]!=§).§%@§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §8h§() : int
      {
         return this.§&!9§.length;
      }
      
      public function §!4§(param1:int) : §]!=§
      {
         if(param1 < 0 || param1 >= this.§8h§)
         {
            return null;
         }
         if(!this.§-!9§)
         {
            this.§&!9§.sortOn("name");
            this.§-!9§ = true;
         }
         return this.§&!9§[param1];
      }
   }
}
