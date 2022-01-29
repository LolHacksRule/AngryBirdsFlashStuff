package §&"`§
{
   public class §2i§
   {
       
      
      private var §>#L§:String;
      
      private var §2#e§:Vector.<§2#N§>;
      
      private var §<#+§:String;
      
      public function §2i§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Object = null;
         var _loc5_:§2#N§ = null;
         super();
         this.§>#L§ = param1;
         this.§<#+§ = param3;
         this.§2#e§ = new Vector.<§2#N§>();
         for each(_loc4_ in param2)
         {
            (_loc5_ = §2#N§.§?"=§(_loc4_)).§2"m§ = this.§>#L§;
            this.§2#e§.push(_loc5_);
         }
      }
      
      public function get §2#d§() : Vector.<§2#N§>
      {
         return this.§2#e§;
      }
      
      public function get §@-§() : String
      {
         return this.§>#L§;
      }
      
      public function §7!W§(param1:int) : §2#N§
      {
         if(param1 < this.§2#e§.length)
         {
            return this.§2#e§[param1];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.§<#+§;
      }
   }
}
