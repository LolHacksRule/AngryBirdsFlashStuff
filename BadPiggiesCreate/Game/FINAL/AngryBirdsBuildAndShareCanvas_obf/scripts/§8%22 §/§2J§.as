package §8" §
{
   public class §2J§
   {
      
      public static const §6v§:String = "post";
      
      public static const §;Z§:String = "pre";
      
      public static const §-!Y§:String = "condition";
       
      
      private var §!!N§:String = "";
      
      private var §"h§:String = "normal";
      
      private var §#!W§:String = "condition";
      
      public function §2J§(param1:XML)
      {
         super();
         this.§!!N§ = param1.toString();
         if(param1.hasOwnProperty("@expression"))
         {
            this.§"h§ = param1.@expression;
         }
         if(param1.hasOwnProperty("@type"))
         {
            this.§#!W§ = param1.@type;
         }
      }
      
      public function get text() : String
      {
         return this.§!!N§;
      }
      
      public function get expression() : String
      {
         return this.§"h§;
      }
      
      public function get type() : String
      {
         return this.§#!W§;
      }
   }
}
