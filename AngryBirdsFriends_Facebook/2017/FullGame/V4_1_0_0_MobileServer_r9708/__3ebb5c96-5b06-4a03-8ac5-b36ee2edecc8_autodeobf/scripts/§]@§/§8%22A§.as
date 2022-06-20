package §]@§
{
   public class §8"A§
   {
      
      public static const §^"'§:String = "none";
      
      public static const §+!f§:String = "run";
      
      public static const §+"Z§:String = "in";
      
      public static const §7?§:String = "out";
       
      
      private var §>!8§:String;
      
      private var §-!v§:String;
      
      private var §;"q§:String;
      
      private var §"G§:String;
      
      private var §7#n§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §8"A§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§>!8§ = param1;
         this.§7#n§ = param4;
         this.§;"q§ = param2;
         this.§"G§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§&#;§();
      }
      
      public function get startLabel() : String
      {
         return this.§>!8§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§>!8§ = param1;
         this.§&#;§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§-!v§;
      }
      
      public function get §16§() : String
      {
         return this.§;"q§;
      }
      
      public function set §16§(param1:String) : void
      {
         this.§;"q§ = param1;
      }
      
      public function get §2#s§() : String
      {
         return this.§"G§;
      }
      
      public function set §2#s§(param1:String) : void
      {
         this.§"G§ = param1;
      }
      
      public function get type() : String
      {
         return this.§7#n§;
      }
      
      public function set type(param1:String) : void
      {
         this.§7#n§ = param1;
         this.§&#;§();
      }
      
      protected function §&#;§() : void
      {
         this.§-!v§ = "";
         if(this.§7#n§ == §^"'§ || this.§>!8§ == "")
         {
            return;
         }
         switch(this.§7#n§)
         {
            case §+!f§:
               this.§-!v§ = §+#Z§.§]#@§();
               break;
            case §+"Z§:
               this.§-!v§ = §+#Z§.§="-§();
               break;
            case §7?§:
               this.§-!v§ = §+#Z§.§8E§();
         }
      }
      
      public function clone() : §8"A§
      {
         return new §8"A§(this.§>!8§,this.§;"q§,this.§"G§,this.§7#n§,this.loop);
      }
   }
}
