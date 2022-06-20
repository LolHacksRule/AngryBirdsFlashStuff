package §7",§
{
   public class §;"f§
   {
       
      
      private var §get §:String;
      
      private var §0X§:Vector.<§<!H§>;
      
      private var §;"^§:String;
      
      public function §;"f§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Object = null;
         var _loc5_:§<!H§ = null;
         super();
         this.§get § = param1;
         this.§;"^§ = param3;
         this.§0X§ = new Vector.<§<!H§>();
         for each(_loc4_ in param2)
         {
            (_loc5_ = §<!H§.§6!?§(_loc4_)).§%!&§ = this.§get §;
            this.§0X§.push(_loc5_);
         }
      }
      
      public function get §]"%§() : Vector.<§<!H§>
      {
         return this.§0X§;
      }
      
      public function get §9"F§() : String
      {
         return this.§get §;
      }
      
      public function §6!k§(param1:int) : §<!H§
      {
         if(param1 < this.§0X§.length)
         {
            return this.§0X§[param1];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.§;"^§;
      }
   }
}
