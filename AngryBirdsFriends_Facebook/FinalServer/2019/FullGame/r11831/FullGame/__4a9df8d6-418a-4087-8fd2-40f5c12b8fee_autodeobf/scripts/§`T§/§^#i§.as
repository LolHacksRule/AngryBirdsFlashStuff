package §`T§
{
   public class §^#i§ extends §^"2§
   {
       
      
      private var §`"X§:int;
      
      private var §%R§:String;
      
      public function §^#i§(param1:Object)
      {
         super(param1);
         this.§`"X§ = param1.id;
         this.§%R§ = param1.s;
      }
      
      public function get id() : uint
      {
         return this.§`"X§;
      }
      
      public function get §@4§() : String
      {
         return this.§%R§;
      }
      
      public function get isCoin() : Boolean
      {
         return this.§%R§ == "s" || this.§%R§ == "m" || this.§%R§ == "l";
      }
   }
}
