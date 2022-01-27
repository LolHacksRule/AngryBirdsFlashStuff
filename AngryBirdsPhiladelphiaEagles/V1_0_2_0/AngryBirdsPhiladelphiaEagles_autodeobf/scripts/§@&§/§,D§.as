package §@&§
{
   public class §,D§ implements §!!?§
   {
       
      
      private var §"!§:Array;
      
      private var §`f§:Boolean;
      
      public function §,D§()
      {
         this.§"!§ = [];
         super();
      }
      
      public function §&!J§(param1:§"E§) : void
      {
         this.§"!§.push(param1);
         this.§`f§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"E§ = null;
         for each(_loc1_ in this.§"!§)
         {
            _loc1_.dispose();
         }
         this.§"!§ = [];
      }
      
      public function §%l§(param1:String) : §^s§
      {
         var _loc2_:§^s§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§"!§.length)
         {
            _loc2_ = (this.§"!§[_loc3_] as §"E§).§%l§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §[U§() : int
      {
         return this.§"!§.length;
      }
      
      public function §>`§(param1:int) : §"E§
      {
         if(param1 < 0 || param1 >= this.§[U§)
         {
            return null;
         }
         if(!this.§`f§)
         {
            this.§"!§.sortOn("name");
            this.§`f§ = true;
         }
         return this.§"!§[param1];
      }
   }
}
