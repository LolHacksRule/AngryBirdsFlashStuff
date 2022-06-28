package §6!M§
{
   public class §2F§
   {
      
      private static var §[!W§:§2F§;
       
      
      private var §%W§:Array;
      
      private var §1O§:Array;
      
      public function §2F§()
      {
         this.§%W§ = [];
         this.§1O§ = [];
         super();
         if(§[!W§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §[!W§ = this;
      }
      
      public static function get §<d§() : §2F§
      {
         if(!§[!W§)
         {
            §[!W§ = new §2F§();
         }
         return §[!W§;
      }
      
      public static function §3!-§(param1:Array, param2:Array) : Array
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
      
      public function §&2§(param1:String) : void
      {
         if(this.§%W§.indexOf(param1) == -1)
         {
            this.§%W§.push(param1);
         }
      }
      
      public function §^!C§(param1:String) : Boolean
      {
         return this.§%W§.indexOf(param1) == -1 && this.§1O§.indexOf(param1) == -1;
      }
      
      public function §5!>§(param1:String) : Boolean
      {
         return this.§1O§.indexOf(param1) == -1;
      }
      
      public function §9K§(param1:String) : Boolean
      {
         return this.§1O§.indexOf(param1) == -1;
      }
      
      public function §+y§() : Array
      {
         return this.§%W§;
      }
      
      public function §;;§() : Array
      {
         return this.§1O§;
      }
      
      public function §`!c§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§&2§(_loc2_);
         }
      }
      
      public function §-!M§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§1O§.indexOf(_loc2_) == -1)
            {
               this.§1O§.push(_loc2_);
            }
         }
      }
   }
}
