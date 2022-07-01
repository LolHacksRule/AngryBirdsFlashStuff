package §4%§
{
   public class §>!2§ implements §5P§
   {
       
      
      private var §#Q§:Array;
      
      private var §=!9§:Boolean;
      
      public function §>!2§()
      {
         this.§#Q§ = [];
         super();
      }
      
      public function §<!"§(param1:§`"3§) : void
      {
         this.§#Q§.push(param1);
         this.§=!9§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`"3§ = null;
         for each(_loc1_ in this.§#Q§)
         {
            _loc1_.dispose();
         }
         this.§#Q§ = [];
      }
      
      public function §9!§(param1:String) : §+k§
      {
         var _loc2_:§+k§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§#Q§.length)
         {
            _loc2_ = (this.§#Q§[_loc3_] as §`"3§).§9!§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §0[§() : int
      {
         return this.§#Q§.length;
      }
      
      public function §`P§(param1:int) : §`"3§
      {
         if(param1 < 0 || param1 >= this.§0[§)
         {
            return null;
         }
         if(!this.§=!9§)
         {
            this.§#Q§.sortOn("name");
            this.§=!9§ = true;
         }
         return this.§#Q§[param1];
      }
   }
}
