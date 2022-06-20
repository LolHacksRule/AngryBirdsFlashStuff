package §-!"§
{
   public class §8?§
   {
       
      
      private var §=$?§:String;
      
      private var §7!j§:Number;
      
      private var §,!%§:Number;
      
      private var §##!§:Object;
      
      public function §8?§(param1:String, param2:Object)
      {
         super();
         this.§=$?§ = param1;
         this.§##!§ = param2;
         var _loc3_:Date = new Date();
         this.§7!j§ = _loc3_.time;
         this.§,!%§ = _loc3_.timezoneOffset * 60;
      }
      
      public function get type() : String
      {
         return this.§=$?§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!j§;
      }
      
      public function get tz() : Number
      {
         return this.§,!%§;
      }
      
      public function get parameters() : Object
      {
         return this.§##!§;
      }
   }
}
