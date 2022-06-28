package §0!5§
{
   public class §!o§ implements include
   {
       
      
      private var §3m§:Array;
      
      private var §"!@§:Boolean;
      
      public function §!o§()
      {
         this.§3m§ = [];
         super();
      }
      
      public function §^!0§(param1:§#!8§) : void
      {
         this.§3m§.push(param1);
         this.§"!@§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#!8§ = null;
         for each(_loc1_ in this.§3m§)
         {
            _loc1_.dispose();
         }
         this.§3m§ = [];
      }
      
      public function §else §(param1:String) : §5!D§
      {
         var _loc2_:§5!D§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§3m§.length)
         {
            _loc2_ = (this.§3m§[_loc3_] as §#!8§).§else §(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §5<§() : int
      {
         return this.§3m§.length;
      }
      
      public function §@!"§(param1:int) : §#!8§
      {
         if(param1 < 0 || param1 >= this.§5<§)
         {
            return null;
         }
         if(!this.§"!@§)
         {
            this.§3m§.sortOn("name");
            this.§"!@§ = true;
         }
         return this.§3m§[param1];
      }
   }
}
