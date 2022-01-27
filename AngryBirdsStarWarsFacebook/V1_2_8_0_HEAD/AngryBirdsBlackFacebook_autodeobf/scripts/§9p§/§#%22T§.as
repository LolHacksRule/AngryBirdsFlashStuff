package §9p§
{
   import §1!i§.§,#_§;
   import §;#Q§.§>#I§;
   
   public class §#"T§ implements §>#I§
   {
       
      
      private var §="K§:Number;
      
      private var §3"D§:§1!J§;
      
      private var §#"8§:§,#_§;
      
      private var §;"D§:String;
      
      private var § #$§:int;
      
      public function §#"T§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         this.§="K§ = param1.starCoins == undefined ? Number(NaN) : Number(param1.starCoins);
         if(param1.energy)
         {
            (this.§3"D§ = new §1!J§()).init(param1.energy);
         }
         if(param1.birdLevels)
         {
            this.§#"8§ = new §,#_§(param1.birdLevels);
         }
         if(param1.reward)
         {
            this.§;"D§ = param1.reward.i;
            this.§ #$§ = param1.reward.q;
         }
      }
      
      public function get starCoins() : Number
      {
         return this.§="K§;
      }
      
      public function get § 8§() : §1!J§
      {
         return this.§3"D§;
      }
      
      public function get birdLevels() : §,#_§
      {
         return this.§#"8§;
      }
      
      public function get §@!?§() : String
      {
         return this.§;"D§;
      }
      
      public function get §+",§() : int
      {
         return this.§ #$§;
      }
   }
}
