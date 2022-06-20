package §4R§
{
   public class §+!J§ extends § e§
   {
       
      
      private var §'!'§:int;
      
      private var §&!>§:String;
      
      public function §+!J§(param1:Object)
      {
         super(param1);
         this.§'!'§ = param1.id;
         this.§&!>§ = param1.s;
      }
      
      public function get id() : uint
      {
         return this.§'!'§;
      }
      
      public function get §7#n§() : String
      {
         return this.§&!>§;
      }
      
      public function get isCoin() : Boolean
      {
         return this.§&!>§ == "s" || this.§&!>§ == "m" || this.§&!>§ == "l";
      }
   }
}
