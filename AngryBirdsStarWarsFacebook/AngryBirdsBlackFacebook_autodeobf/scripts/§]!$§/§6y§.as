package §]!$§
{
   public class §6y§
   {
      
      public static const §8"@§:String = "none";
      
      public static const §5z§:String = "run";
      
      public static const §>]§:String = "in";
      
      public static const §;X§:String = "out";
       
      
      private var §2"F§:String;
      
      private var §6!!§:String;
      
      private var §!!p§:String;
      
      private var §%#5§:String;
      
      private var §;"-§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §6y§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§2"F§ = param1;
         this.§;"-§ = param4;
         this.§!!p§ = param2;
         this.§%#5§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§8!L§();
      }
      
      public function get startLabel() : String
      {
         return this.§2"F§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§2"F§ = param1;
         this.§8!L§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§6!!§;
      }
      
      public function get §%#N§() : String
      {
         return this.§!!p§;
      }
      
      public function set §%#N§(param1:String) : void
      {
         this.§!!p§ = param1;
      }
      
      public function get §`"i§() : String
      {
         return this.§%#5§;
      }
      
      public function set §`"i§(param1:String) : void
      {
         this.§%#5§ = param1;
      }
      
      public function get type() : String
      {
         return this.§;"-§;
      }
      
      public function set type(param1:String) : void
      {
         this.§;"-§ = param1;
         this.§8!L§();
      }
      
      protected function §8!L§() : void
      {
         this.§6!!§ = "";
         if(this.§;"-§ == §8"@§ || this.§2"F§ == "")
         {
            return;
         }
         switch(this.§;"-§)
         {
            case §5z§:
               this.§6!!§ = §`#?§.§[! §();
               break;
            case §>]§:
               this.§6!!§ = §`#?§.§9!-§();
               break;
            case §;X§:
               this.§6!!§ = §`#?§.§`J§();
         }
      }
      
      public function clone() : §6y§
      {
         return new §6y§(this.§2"F§,this.§!!p§,this.§%#5§,this.§;"-§,this.loop);
      }
   }
}
