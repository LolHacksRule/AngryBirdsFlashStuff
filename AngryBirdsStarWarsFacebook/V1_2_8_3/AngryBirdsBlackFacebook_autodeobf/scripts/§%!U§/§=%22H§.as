package §%!U§
{
   import §'!P§.§29§;
   import §+d§.§2!g§;
   
   public class §="H§ implements §29§
   {
       
      
      private var §6g§:Number;
      
      private var §<s§:§>!m§;
      
      private var §6"F§:§2!g§;
      
      private var §?"p§:String;
      
      private var § "N§:int;
      
      public function §="H§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         this.§6g§ = param1.starCoins == undefined ? Number(NaN) : Number(param1.starCoins);
         if(param1.energy)
         {
            (this.§<s§ = new §>!m§()).init(param1.energy);
         }
         if(param1.birdLevels)
         {
            this.§6"F§ = new §2!g§(param1.birdLevels);
         }
         if(param1.reward)
         {
            this.§?"p§ = param1.reward.i;
            this.§ "N§ = param1.reward.q;
         }
      }
      
      public function get starCoins() : Number
      {
         return this.§6g§;
      }
      
      public function get §<#+§() : §>!m§
      {
         return this.§<s§;
      }
      
      public function get birdLevels() : §2!g§
      {
         return this.§6"F§;
      }
      
      public function get §["O§() : String
      {
         return this.§?"p§;
      }
      
      public function get §+!n§() : int
      {
         return this.§ "N§;
      }
   }
}
