package §8"§
{
   public class §"#l§ extends § use§
   {
       
      
      private var §@!H§:int;
      
      private var §5q§:String;
      
      public function §"#l§(param1:Object)
      {
         super(param1);
         this.§@!H§ = param1.id;
         this.§5q§ = param1.s;
      }
      
      public function get id() : uint
      {
         return this.§@!H§;
      }
      
      public function get §=$?§() : String
      {
         return this.§5q§;
      }
      
      public function get isCoin() : Boolean
      {
         return this.§5q§ == "s" || this.§5q§ == "m" || this.§5q§ == "l";
      }
   }
}
