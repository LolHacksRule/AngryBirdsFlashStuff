package §0[§
{
   public class §[5§ implements §!!"§
   {
       
      
      private var §!Q§:Array;
      
      private var §,;§:Boolean;
      
      public function §[5§()
      {
         this.§!Q§ = [];
         super();
      }
      
      public function §^!C§(param1:§!!6§) : void
      {
         this.§!Q§.push(param1);
         this.§,;§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!6§ = null;
         for each(_loc1_ in this.§!Q§)
         {
            _loc1_.dispose();
         }
         this.§!Q§ = [];
      }
      
      public function §#N§(param1:String) : §4Q§
      {
         var _loc2_:§4Q§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§!Q§.length)
         {
            _loc2_ = (this.§!Q§[_loc3_] as §!!6§).§#N§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §&!B§() : int
      {
         return this.§!Q§.length;
      }
      
      public function §+f§(param1:int) : §!!6§
      {
         if(param1 < 0 || param1 >= this.§&!B§)
         {
            return null;
         }
         if(!this.§,;§)
         {
            this.§!Q§.sortOn("name");
            this.§,;§ = true;
         }
         return this.§!Q§[param1];
      }
   }
}
