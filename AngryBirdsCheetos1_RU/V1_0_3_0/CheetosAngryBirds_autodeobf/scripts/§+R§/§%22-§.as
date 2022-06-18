package §+R§
{
   public class §"-§ implements §9x§
   {
       
      
      private var §;&§:Array;
      
      private var §>!?§:Boolean;
      
      public function §"-§()
      {
         this.§;&§ = [];
         super();
      }
      
      public function §6O§(param1:§#!O§) : void
      {
         this.§;&§.push(param1);
         this.§>!?§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#!O§ = null;
         for each(_loc1_ in this.§;&§)
         {
            _loc1_.dispose();
         }
         this.§;&§ = [];
      }
      
      public function §,J§(param1:String) : §[`§
      {
         var _loc2_:§[`§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§;&§.length)
         {
            _loc2_ = (this.§;&§[_loc3_] as §#!O§).§,J§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §finally§() : int
      {
         return this.§;&§.length;
      }
      
      public function §5v§(param1:int) : §#!O§
      {
         if(param1 < 0 || param1 >= this.§finally§)
         {
            return null;
         }
         if(!this.§>!?§)
         {
            this.§;&§.sortOn("name");
            this.§>!?§ = true;
         }
         return this.§;&§[param1];
      }
   }
}
