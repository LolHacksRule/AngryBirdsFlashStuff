package §0I§
{
   public class §<i§
   {
      
      public static const §9,§:String = "none";
      
      public static const §5]§:String = "run";
      
      public static const §+!i§:String = "in";
      
      public static const §4!>§:String = "out";
       
      
      private var §"w§:String;
      
      private var §?;§:String;
      
      private var §+f§:String;
      
      private var §?!R§:String;
      
      private var § !b§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §<i§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§"w§ = param1;
         this.§ !b§ = param4;
         this.§+f§ = param2;
         this.§?!R§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§=Q§();
      }
      
      public function get startLabel() : String
      {
         return this.§"w§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§"w§ = param1;
         this.§=Q§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§?;§;
      }
      
      public function get §0!f§() : String
      {
         return this.§+f§;
      }
      
      public function set §0!f§(param1:String) : void
      {
         this.§+f§ = param1;
      }
      
      public function get §@!K§() : String
      {
         return this.§?!R§;
      }
      
      public function set §@!K§(param1:String) : void
      {
         this.§?!R§ = param1;
      }
      
      public function get type() : String
      {
         return this.§ !b§;
      }
      
      public function set type(param1:String) : void
      {
         this.§ !b§ = param1;
         this.§=Q§();
      }
      
      protected function §=Q§() : void
      {
         this.§?;§ = "";
         if(this.§ !b§ == §9,§ || this.§"w§ == "")
         {
            return;
         }
         if(this.§ !b§ == §+!i§)
         {
            this.§?;§ = §^U§.§"!+§();
         }
         else if(this.§ !b§ == §4!>§)
         {
            this.§?;§ = §^U§.§7!K§();
         }
      }
      
      public function clone() : §<i§
      {
         return new §<i§(this.§"w§,this.§+f§,this.§?!R§,this.§ !b§,this.loop);
      }
   }
}
