package §59§
{
   public class §="C§
   {
       
      
      private var §&N§:String;
      
      private var §!v§:Vector.<§#l§>;
      
      private var §>!q§:Boolean;
      
      public function §="C§(param1:String, param2:Array, param3:Boolean = false)
      {
         var _loc4_:Object = null;
         super();
         this.§&N§ = param1;
         this.§>!q§ = param3;
         this.§!v§ = new Vector.<§#l§>();
         for each(_loc4_ in param2)
         {
            this.§!v§.push(§#l§.§?[§(_loc4_));
         }
      }
      
      public function get § ",§() : Boolean
      {
         return this.§>!q§;
      }
      
      public function §;?§() : int
      {
         return this.§!v§.length;
      }
      
      public function getPricePoint(param1:int) : §#l§
      {
         return this.§!v§[param1];
      }
      
      public function get id() : String
      {
         return this.§&N§;
      }
      
      public function get §9r§() : Vector.<§#l§>
      {
         return this.§!v§;
      }
   }
}
