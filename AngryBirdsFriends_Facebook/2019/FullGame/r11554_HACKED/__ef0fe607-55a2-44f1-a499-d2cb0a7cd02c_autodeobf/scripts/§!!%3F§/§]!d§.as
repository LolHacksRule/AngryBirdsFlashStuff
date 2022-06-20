package §!!?§
{
   public class §]!d§
   {
       
      
      private var §&#P§:String;
      
      private var §&!E§:Vector.<§!#z§>;
      
      private var §+0§:String;
      
      public function §]!d§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Object = null;
         var _loc5_:§!#z§ = null;
         super();
         this.§&#P§ = param1;
         this.§+0§ = param3;
         this.§&!E§ = new Vector.<§!#z§>();
         for each(_loc4_ in param2)
         {
            (_loc5_ = §!#z§.§,!+§(_loc4_)).§^!K§ = this.§&#P§;
            this.§&!E§.push(_loc5_);
         }
      }
      
      public function get §7"i§() : Vector.<§!#z§>
      {
         return this.§&!E§;
      }
      
      public function get § "[§() : String
      {
         return this.§&#P§;
      }
      
      public function §@8§(param1:int) : §!#z§
      {
         if(param1 < this.§&!E§.length)
         {
            return this.§&!E§[param1];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.§+0§;
      }
   }
}
