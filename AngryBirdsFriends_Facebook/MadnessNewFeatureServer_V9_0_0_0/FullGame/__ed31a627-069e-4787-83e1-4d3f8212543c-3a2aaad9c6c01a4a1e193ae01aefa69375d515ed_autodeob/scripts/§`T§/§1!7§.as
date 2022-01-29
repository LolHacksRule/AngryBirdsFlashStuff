package §`T§
{
   public class §1!7§ extends §^"2§
   {
       
      
      private var §!#n§:uint;
      
      private var §%"H§:Boolean;
      
      private var §&#e§:uint;
      
      public function §1!7§(param1:Object)
      {
         super(param1);
         this.§!#n§ = param1.d;
         this.§%"H§ = !!param1.r ? Boolean(param1.r) : false;
         this.§&#e§ = !!param1.p ? uint(param1.p) : uint(0);
      }
      
      public function get day() : uint
      {
         return this.§!#n§;
      }
      
      public function get §3#d§() : Boolean
      {
         return this.§%"H§;
      }
      
      public function get §`"k§() : uint
      {
         return this.§&#e§;
      }
   }
}
