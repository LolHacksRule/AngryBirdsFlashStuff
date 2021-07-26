package §5,§
{
   public class §&"G§ extends §@"m§
   {
       
      
      private var §#!<§:int;
      
      private var §,#2§:String;
      
      public function §&"G§(param1:Object)
      {
         super(param1);
         this.§#!<§ = param1.id;
         this.§,#2§ = param1.s;
      }
      
      public function get id() : uint
      {
         return this.§#!<§;
      }
      
      public function get §2"G§() : String
      {
         return this.§,#2§;
      }
      
      public function get isCoin() : Boolean
      {
         return this.§,#2§ == "s" || this.§,#2§ == "m" || this.§,#2§ == "l";
      }
   }
}
