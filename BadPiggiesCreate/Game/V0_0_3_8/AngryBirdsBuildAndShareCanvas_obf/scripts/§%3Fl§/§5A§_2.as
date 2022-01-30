package §?l§
{
   public class §5A§ implements §9!X§
   {
       
      
      private var §=!R§:Array;
      
      private var §8m§:Boolean;
      
      public function §5A§()
      {
         this.§=!R§ = [];
         super();
      }
      
      public function §@!@§(param1:§;6§) : void
      {
         this.§=!R§.push(param1);
         this.§8m§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;6§ = null;
         for each(_loc1_ in this.§=!R§)
         {
            _loc1_.dispose();
         }
         this.§=!R§ = [];
      }
      
      public function §2B§(param1:String) : §5a§
      {
         var _loc2_:§5a§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=!R§.length)
         {
            _loc2_ = (this.§=!R§[_loc3_] as §;6§).§2B§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §#!C§() : int
      {
         return this.§=!R§.length;
      }
      
      public function §&!i§(param1:int) : §;6§
      {
         if(param1 < 0 || param1 >= this.§#!C§)
         {
            return null;
         }
         if(!this.§8m§)
         {
            this.§=!R§.sortOn("name");
            this.§8m§ = true;
         }
         return this.§=!R§[param1];
      }
   }
}
