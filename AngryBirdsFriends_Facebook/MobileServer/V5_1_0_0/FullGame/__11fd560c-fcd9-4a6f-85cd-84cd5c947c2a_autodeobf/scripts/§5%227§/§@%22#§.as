package §5"7§
{
   public class §@"#§
   {
       
      
      private var §"#7§:String;
      
      private var §2#Z§:Number;
      
      private var §#T§:Number;
      
      private var §[C§:Object;
      
      public function §@"#§(param1:String, param2:Object)
      {
         super();
         this.§"#7§ = param1;
         this.§[C§ = param2;
         var _loc3_:Date = new Date();
         this.§2#Z§ = _loc3_.time;
         this.§#T§ = _loc3_.timezoneOffset * 60;
      }
      
      public function get type() : String
      {
         return this.§"#7§;
      }
      
      public function get timestamp() : Number
      {
         return this.§2#Z§;
      }
      
      public function get tz() : Number
      {
         return this.§#T§;
      }
      
      public function get parameters() : Object
      {
         return this.§[C§;
      }
   }
}
