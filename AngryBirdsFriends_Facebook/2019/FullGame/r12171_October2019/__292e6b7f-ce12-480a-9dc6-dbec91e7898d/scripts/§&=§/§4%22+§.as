package §&=§
{
   public class §4"+§
   {
       
      
      private var §2"G§:String;
      
      private var §4#6§:Number;
      
      private var §`!`§:Number;
      
      private var §;"k§:Object;
      
      public function §4"+§(param1:String, param2:Object)
      {
         super();
         this.§2"G§ = param1;
         this.§;"k§ = param2;
         var _loc3_:Date = new Date();
         this.§4#6§ = _loc3_.time;
         this.§`!`§ = _loc3_.timezoneOffset * 60;
      }
      
      public function get type() : String
      {
         return this.§2"G§;
      }
      
      public function get timestamp() : Number
      {
         return this.§4#6§;
      }
      
      public function get tz() : Number
      {
         return this.§`!`§;
      }
      
      public function get parameters() : Object
      {
         return this.§;"k§;
      }
   }
}
