package §4!S§
{
   public class §&"'§
   {
      
      public static const §<!d§:String = "post";
      
      public static const §4G§:String = "pre";
      
      public static const §3!m§:String = "condition";
       
      
      private var §0"9§:String = "";
      
      private var §'"%§:String = "normal";
      
      private var §4!I§:String = "condition";
      
      public function §&"'§(param1:XML)
      {
         super();
         this.§0"9§ = param1.toString();
         if(param1.hasOwnProperty("@expression"))
         {
            this.§'"%§ = param1.@expression;
         }
         if(param1.hasOwnProperty("@type"))
         {
            this.§4!I§ = param1.@type;
         }
      }
      
      public function get text() : String
      {
         return this.§0"9§;
      }
      
      public function get expression() : String
      {
         return this.§'"%§;
      }
      
      public function get type() : String
      {
         return this.§4!I§;
      }
   }
}
