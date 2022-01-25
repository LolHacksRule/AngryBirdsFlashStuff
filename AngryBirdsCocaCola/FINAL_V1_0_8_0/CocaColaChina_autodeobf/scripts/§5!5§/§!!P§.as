package §5!5§
{
   public class §!!P§ implements §%k§
   {
       
      
      private var §9i§:Array;
      
      private var §%!`§:Boolean;
      
      public function §!!P§()
      {
         this.§9i§ = [];
         super();
      }
      
      public function §3Z§(param1:§]u§) : void
      {
         this.§9i§.push(param1);
         this.§%!`§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]u§ = null;
         for each(_loc1_ in this.§9i§)
         {
            _loc1_.dispose();
         }
         this.§9i§ = [];
      }
      
      public function §0!#§(param1:String) : §4!E§
      {
         var _loc2_:§4!E§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§9i§.length)
         {
            _loc2_ = (this.§9i§[_loc3_] as §]u§).§0!#§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §7!T§() : int
      {
         return this.§9i§.length;
      }
      
      public function §]!1§(param1:int) : §]u§
      {
         if(param1 < 0 || param1 >= this.§7!T§)
         {
            return null;
         }
         if(!this.§%!`§)
         {
            this.§9i§.sortOn("name");
            this.§%!`§ = true;
         }
         return this.§9i§[param1];
      }
   }
}
