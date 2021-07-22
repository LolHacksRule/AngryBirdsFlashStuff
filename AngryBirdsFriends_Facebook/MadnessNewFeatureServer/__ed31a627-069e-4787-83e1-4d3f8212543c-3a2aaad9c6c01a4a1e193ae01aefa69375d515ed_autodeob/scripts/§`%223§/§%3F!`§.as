package §`"3§
{
   public class §?!`§
   {
       
      
      private var §@4§:String;
      
      private var §?!!§:Number;
      
      private var §=!I§:Number;
      
      private var §`#Q§:Object;
      
      public function §?!`§(param1:String, param2:Object)
      {
         super();
         this.§@4§ = param1;
         this.§`#Q§ = param2;
         var _loc3_:Date = new Date();
         this.§?!!§ = _loc3_.time;
         this.§=!I§ = _loc3_.timezoneOffset * 60;
      }
      
      public function get type() : String
      {
         return this.§@4§;
      }
      
      public function get timestamp() : Number
      {
         return this.§?!!§;
      }
      
      public function get tz() : Number
      {
         return this.§=!I§;
      }
      
      public function get parameters() : Object
      {
         return this.§`#Q§;
      }
   }
}
