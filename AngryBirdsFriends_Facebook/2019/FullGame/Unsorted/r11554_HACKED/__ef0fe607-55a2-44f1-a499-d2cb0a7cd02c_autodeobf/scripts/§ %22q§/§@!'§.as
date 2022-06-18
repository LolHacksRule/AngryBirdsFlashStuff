package § "q§
{
   public class §@!'§
   {
      
      public static const §,u§:String = "none";
      
      public static const § F§:String = "run";
      
      public static const §1"V§:String = "in";
      
      public static const § !H§:String = "out";
       
      
      private var § $-§:String;
      
      private var §#"I§:String;
      
      private var §,$&§:String;
      
      private var §+#e§:String;
      
      private var §=$?§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §@!'§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§ $-§ = param1;
         this.§=$?§ = param4;
         this.§,$&§ = param2;
         this.§+#e§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§#$ §();
      }
      
      public function get startLabel() : String
      {
         return this.§ $-§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§ $-§ = param1;
         this.§#$ §();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§#"I§;
      }
      
      public function get §[#_§() : String
      {
         return this.§,$&§;
      }
      
      public function set §[#_§(param1:String) : void
      {
         this.§,$&§ = param1;
      }
      
      public function get §`$A§() : String
      {
         return this.§+#e§;
      }
      
      public function set §`$A§(param1:String) : void
      {
         this.§+#e§ = param1;
      }
      
      public function get type() : String
      {
         return this.§=$?§;
      }
      
      public function set type(param1:String) : void
      {
         this.§=$?§ = param1;
         this.§#$ §();
      }
      
      protected function §#$ §() : void
      {
         this.§#"I§ = "";
         if(this.§=$?§ == §,u§ || this.§ $-§ == "")
         {
            return;
         }
         switch(this.§=$?§)
         {
            case § F§:
               this.§#"I§ = §&Q§.§'"p§();
               break;
            case §1"V§:
               this.§#"I§ = §&Q§.§0$E§();
               break;
            case § !H§:
               this.§#"I§ = §&Q§.§^!0§();
         }
      }
      
      public function clone() : §@!'§
      {
         return new §@!'§(this.§ $-§,this.§,$&§,this.§+#e§,this.§=$?§,this.loop);
      }
   }
}
