package §7U§
{
   public class §>Y§ implements §?!R§
   {
       
      
      private var §7!"§:Array;
      
      private var §7!1§:Boolean;
      
      public function §>Y§()
      {
         this.§7!"§ = [];
         super();
      }
      
      public function § !n§(param1:§`L§) : void
      {
         this.§7!"§.push(param1);
         this.§7!1§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`L§ = null;
         for each(_loc1_ in this.§7!"§)
         {
            _loc1_.dispose();
         }
         this.§7!"§ = [];
      }
      
      public function §@g§(param1:String) : §@!4§
      {
         var _loc2_:§@!4§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§7!"§.length)
         {
            _loc2_ = (this.§7!"§[_loc3_] as §`L§).§@g§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §0!@§() : int
      {
         return this.§7!"§.length;
      }
      
      public function §0g§(param1:int) : §`L§
      {
         if(param1 < 0 || param1 >= this.§0!@§)
         {
            return null;
         }
         if(!this.§7!1§)
         {
            this.§7!"§.sortOn("name");
            this.§7!1§ = true;
         }
         return this.§7!"§[param1];
      }
   }
}
