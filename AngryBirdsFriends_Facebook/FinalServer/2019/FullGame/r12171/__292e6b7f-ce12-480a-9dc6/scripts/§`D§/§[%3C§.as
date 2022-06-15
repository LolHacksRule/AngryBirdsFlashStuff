package §`D§
{
   public class §[<§
   {
       
      
      private var §0$%§:String;
      
      private var §3Y§:Vector.<§`d§>;
      
      private var §]"'§:String;
      
      public function §[<§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Object = null;
         var _loc5_:§`d§ = null;
         super();
         this.§0$%§ = param1;
         this.§]"'§ = param3;
         this.§3Y§ = new Vector.<§`d§>();
         for each(_loc4_ in param2)
         {
            (_loc5_ = §`d§.§4G§(_loc4_)).§>"_§ = this.§0$%§;
            this.§3Y§.push(_loc5_);
         }
      }
      
      public function get §#$3§() : Vector.<§`d§>
      {
         return this.§3Y§;
      }
      
      public function get §"`§() : String
      {
         return this.§0$%§;
      }
      
      public function §1$1§(param1:int) : §`d§
      {
         if(param1 < this.§3Y§.length)
         {
            return this.§3Y§[param1];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.§]"'§;
      }
   }
}
