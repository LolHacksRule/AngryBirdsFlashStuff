package §7!3§
{
   public class §+!7§
   {
       
      
      private var §4!$§:String;
      
      private var §`!0§:Number;
      
      private var §4]§:Number;
      
      private var § "]§:Object;
      
      public function §+!7§(param1:String, param2:Object)
      {
         super();
         this.§4!$§ = param1;
         this.§ "]§ = param2;
         var _loc3_:Date = new Date();
         this.§`!0§ = _loc3_.time;
         this.§4]§ = _loc3_.timezoneOffset * 60;
      }
      
      public function get type() : String
      {
         return this.§4!$§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!0§;
      }
      
      public function get tz() : Number
      {
         return this.§4]§;
      }
      
      public function get parameters() : Object
      {
         return this.§ "]§;
      }
   }
}
