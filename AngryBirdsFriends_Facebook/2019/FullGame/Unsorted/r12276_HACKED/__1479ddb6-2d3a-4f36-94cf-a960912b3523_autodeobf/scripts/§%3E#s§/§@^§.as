package §>#s§
{
   public class §@^§
   {
      
      public static const §""=§:String = "none";
      
      public static const §=z§:String = "run";
      
      public static const §1!A§:String = "in";
      
      public static const §0K§:String = "out";
       
      
      private var §##q§:String;
      
      private var §`"?§:String;
      
      private var §@"x§:String;
      
      private var §^"-§:String;
      
      private var §4!$§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §@^§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§##q§ = param1;
         this.§4!$§ = param4;
         this.§@"x§ = param2;
         this.§^"-§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§-#I§();
      }
      
      public function get startLabel() : String
      {
         return this.§##q§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§##q§ = param1;
         this.§-#I§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§`"?§;
      }
      
      public function get §'3§() : String
      {
         return this.§@"x§;
      }
      
      public function set §'3§(param1:String) : void
      {
         this.§@"x§ = param1;
      }
      
      public function get §%#f§() : String
      {
         return this.§^"-§;
      }
      
      public function set §%#f§(param1:String) : void
      {
         this.§^"-§ = param1;
      }
      
      public function get type() : String
      {
         return this.§4!$§;
      }
      
      public function set type(param1:String) : void
      {
         this.§4!$§ = param1;
         this.§-#I§();
      }
      
      protected function §-#I§() : void
      {
         this.§`"?§ = "";
         if(this.§4!$§ == §""=§ || this.§##q§ == "")
         {
            return;
         }
         switch(this.§4!$§)
         {
            case §=z§:
               this.§`"?§ = §-$$§.§`d§();
               break;
            case §1!A§:
               this.§`"?§ = §-$$§.§"#0§();
               break;
            case §0K§:
               this.§`"?§ = §-$$§.§%#Z§();
         }
      }
      
      public function clone() : §@^§
      {
         return new §@^§(this.§##q§,this.§@"x§,this.§^"-§,this.§4!$§,this.loop);
      }
   }
}
