package §4#l§
{
   public class §^$@§
   {
       
      
      private var §&#^§:String;
      
      private var §"!?§:Vector.<§0"[§>;
      
      private var §6#>§:String;
      
      public function §^$@§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Object = null;
         var _loc5_:§0"[§ = null;
         super();
         this.§&#^§ = param1;
         this.§6#>§ = param3;
         this.§"!?§ = new Vector.<§0"[§>();
         for each(_loc4_ in param2)
         {
            (_loc5_ = §0"[§.§%#M§(_loc4_)).§ k§ = this.§&#^§;
            this.§"!?§.push(_loc5_);
         }
      }
      
      public function get §6!V§() : Vector.<§0"[§>
      {
         return this.§"!?§;
      }
      
      public function get §#"d§() : String
      {
         return this.§&#^§;
      }
      
      public function §1!d§(param1:int) : §0"[§
      {
         if(param1 < this.§"!?§.length)
         {
            return this.§"!?§[param1];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.§6#>§;
      }
   }
}
