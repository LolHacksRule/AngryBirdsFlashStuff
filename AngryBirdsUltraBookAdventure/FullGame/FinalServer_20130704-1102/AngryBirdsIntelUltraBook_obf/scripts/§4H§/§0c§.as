package §4H§
{
   public class §0c§
   {
      
      private static var §&F§:§0c§;
       
      
      private var §6!A§:Array;
      
      private var §<!4§:Array;
      
      public function §0c§()
      {
         this.§6!A§ = [];
         this.§<!4§ = [];
         super();
         if(§&F§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §&F§ = this;
      }
      
      public static function get §[U§() : §0c§
      {
         if(!§&F§)
         {
            §&F§ = new §0c§();
         }
         return §&F§;
      }
      
      public static function §#w§(param1:Array, param2:Array) : Array
      {
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc3_.indexOf(_loc4_) == -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function §@!=§(param1:String) : void
      {
         if(this.§6!A§.indexOf(param1) == -1)
         {
            this.§6!A§.push(param1);
         }
      }
      
      public function §%!Y§(param1:String) : Boolean
      {
         return this.§6!A§.indexOf(param1) == -1 && this.§<!4§.indexOf(param1) == -1;
      }
      
      public function §]v§(param1:String) : Boolean
      {
         return this.§<!4§.indexOf(param1) == -1;
      }
      
      public function §'?§(param1:String) : Boolean
      {
         return this.§<!4§.indexOf(param1) == -1;
      }
      
      public function §'N§() : Array
      {
         return this.§6!A§;
      }
      
      public function §+!^§() : Array
      {
         return this.§<!4§;
      }
      
      public function §-c§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§@!=§(_loc2_);
         }
      }
      
      public function §4C§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§<!4§.indexOf(_loc2_) == -1)
            {
               this.§<!4§.push(_loc2_);
            }
         }
      }
   }
}
