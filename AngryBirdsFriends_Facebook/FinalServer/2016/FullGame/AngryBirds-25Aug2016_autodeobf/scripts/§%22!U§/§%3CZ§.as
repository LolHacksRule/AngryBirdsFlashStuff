package §"!U§
{
   public class §<Z§
   {
       
      
      private var §&!T§:String;
      
      private var §`F§:Vector.<§7#9§>;
      
      private var §-[§:String;
      
      public function §<Z§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Object = null;
         var _loc5_:§7#9§ = null;
         super();
         this.§&!T§ = param1;
         this.§-[§ = param3;
         this.§`F§ = new Vector.<§7#9§>();
         for each(_loc4_ in param2)
         {
            (_loc5_ = §7#9§.§"!Y§(_loc4_)).§9!+§ = this.§&!T§;
            this.§`F§.push(_loc5_);
         }
      }
      
      public function get §&#'§() : Vector.<§7#9§>
      {
         return this.§`F§;
      }
      
      public function get §?#Q§() : String
      {
         return this.§&!T§;
      }
      
      public function §6!X§(param1:int) : §7#9§
      {
         if(param1 < this.§`F§.length)
         {
            return this.§`F§[param1];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.§-[§;
      }
   }
}
