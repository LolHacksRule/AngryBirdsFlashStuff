package §5" §
{
   public class §<F§
   {
       
      
      private var §3#Z§:String;
      
      private var §!!p§:Vector.<§!#h§>;
      
      private var §>!T§:String;
      
      public function §<F§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Object = null;
         var _loc5_:§!#h§ = null;
         super();
         this.§3#Z§ = param1;
         this.§>!T§ = param3;
         this.§!!p§ = new Vector.<§!#h§>();
         for each(_loc4_ in param2)
         {
            (_loc5_ = §!#h§.§^$B§(_loc4_)).§>7§ = this.§3#Z§;
            this.§!!p§.push(_loc5_);
         }
      }
      
      public function get §""&§() : Vector.<§!#h§>
      {
         return this.§!!p§;
      }
      
      public function get §>!Z§() : String
      {
         return this.§3#Z§;
      }
      
      public function §4"O§(param1:int) : §!#h§
      {
         if(param1 < this.§!!p§.length)
         {
            return this.§!!p§[param1];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.§>!T§;
      }
   }
}
