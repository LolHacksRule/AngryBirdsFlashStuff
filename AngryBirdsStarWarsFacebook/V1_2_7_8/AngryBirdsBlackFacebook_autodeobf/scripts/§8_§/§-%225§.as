package §8_§
{
   import §7A§.§5"2§;
   import §@##§.§#^§;
   
   public class §-"5§ implements §#^§
   {
       
      
      private var §9x§:Number;
      
      private var §7k§:§<Z§;
      
      private var §!"<§:§5"2§;
      
      private var §&"J§:String;
      
      private var §0"Z§:int;
      
      public function §-"5§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         this.§9x§ = param1.starCoins == undefined ? Number(NaN) : Number(param1.starCoins);
         if(param1.energy)
         {
            (this.§7k§ = new §<Z§()).init(param1.energy);
         }
         if(param1.birdLevels)
         {
            this.§!"<§ = new §5"2§(param1.birdLevels);
         }
         if(param1.reward)
         {
            this.§&"J§ = param1.reward.i;
            this.§0"Z§ = param1.reward.q;
         }
      }
      
      public function get starCoins() : Number
      {
         return this.§9x§;
      }
      
      public function get §>"T§() : §<Z§
      {
         return this.§7k§;
      }
      
      public function get birdLevels() : §5"2§
      {
         return this.§!"<§;
      }
      
      public function get §+!l§() : String
      {
         return this.§&"J§;
      }
      
      public function get §""f§() : int
      {
         return this.§0"Z§;
      }
   }
}
