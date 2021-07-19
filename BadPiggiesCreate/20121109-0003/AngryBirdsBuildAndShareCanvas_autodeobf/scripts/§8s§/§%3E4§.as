package §8s§
{
   public class §>4§ implements §=!d§
   {
       
      
      private var §!!U§:Array;
      
      private var §&!s§:Boolean;
      
      public function §>4§()
      {
         this.§!!U§ = [];
         super();
      }
      
      public function §9!E§(param1:§`H§) : void
      {
         this.§!!U§.push(param1);
         this.§&!s§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`H§ = null;
         for each(_loc1_ in this.§!!U§)
         {
            _loc1_.dispose();
         }
         this.§!!U§ = [];
      }
      
      public function §#!Q§(param1:String) : §8"§
      {
         var _loc2_:§8"§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§!!U§.length)
         {
            _loc2_ = (this.§!!U§[_loc3_] as §`H§).§#!Q§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §-"-§() : int
      {
         return this.§!!U§.length;
      }
      
      public function §@"=§(param1:int) : §`H§
      {
         if(param1 < 0 || param1 >= this.§-"-§)
         {
            return null;
         }
         if(!this.§&!s§)
         {
            this.§!!U§.sortOn("name");
            this.§&!s§ = true;
         }
         return this.§!!U§[param1];
      }
   }
}
