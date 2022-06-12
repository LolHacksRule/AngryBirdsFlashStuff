package §;" §
{
   public class §>"0§
   {
      
      public static const §9!7§:String = "post";
      
      public static const §]"3§:String = "pre";
      
      public static const §,!Q§:String = "condition";
       
      
      private var §-"1§:String = "";
      
      private var §'u§:String = "normal";
      
      private var §%!G§:String = "condition";
      
      public function §>"0§(param1:XML)
      {
         super();
         this.§-"1§ = param1.toString();
         if(param1.hasOwnProperty("@expression"))
         {
            this.§'u§ = param1.@expression;
         }
         if(param1.hasOwnProperty("@type"))
         {
            this.§%!G§ = param1.@type;
         }
      }
      
      public function get text() : String
      {
         return this.§-"1§;
      }
      
      public function get expression() : String
      {
         return this.§'u§;
      }
      
      public function get type() : String
      {
         return this.§%!G§;
      }
   }
}
