package §#A§
{
   public class §,!;§
   {
      
      public static const §!!"§:String = "none";
      
      public static const §>6§:String = "run";
      
      public static const §-"1§:String = "in";
      
      public static const §?!q§:String = "out";
       
      
      private var §0!x§:String;
      
      private var §&!M§:String;
      
      private var §^D§:String;
      
      private var §=w§:String;
      
      private var §2E§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §,!;§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§0!x§ = param1;
         this.§2E§ = param4;
         this.§^D§ = param2;
         this.§=w§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§'!r§();
      }
      
      public function get startLabel() : String
      {
         return this.§0!x§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§0!x§ = param1;
         this.§'!r§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§&!M§;
      }
      
      public function get §#!c§() : String
      {
         return this.§^D§;
      }
      
      public function set §#!c§(param1:String) : void
      {
         this.§^D§ = param1;
      }
      
      public function get §3!;§() : String
      {
         return this.§=w§;
      }
      
      public function set §3!;§(param1:String) : void
      {
         this.§=w§ = param1;
      }
      
      public function get type() : String
      {
         return this.§2E§;
      }
      
      public function set type(param1:String) : void
      {
         this.§2E§ = param1;
         this.§'!r§();
      }
      
      protected function §'!r§() : void
      {
         this.§&!M§ = "";
         if(this.§2E§ == §!!"§ || this.§0!x§ == "")
         {
            return;
         }
         switch(this.§2E§)
         {
            case §>6§:
               this.§&!M§ = §!!'§.§4"$§();
               break;
            case §-"1§:
               this.§&!M§ = §!!'§.§5?§();
               break;
            case §?!q§:
               this.§&!M§ = §!!'§.§7V§();
         }
      }
      
      public function clone() : §,!;§
      {
         return new §,!;§(this.§0!x§,this.§^D§,this.§=w§,this.§2E§,this.loop);
      }
   }
}
