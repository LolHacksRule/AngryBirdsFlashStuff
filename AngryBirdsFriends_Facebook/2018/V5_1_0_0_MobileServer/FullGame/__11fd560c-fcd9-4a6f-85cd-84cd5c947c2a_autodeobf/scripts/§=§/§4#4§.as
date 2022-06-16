package §=§#9
{
   import §'!L§.§8"y§;
   import §6$8§.§#"E§;
   import §6$8§.§]!7§;
   import §6$8§.§`#h§;
   import §8"L§.§6!0§;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   
   public class §4#4§ extends §>!o§
   {
       
      
      protected var §,!z§:String;
      
      protected var §7"a§:String;
      
      protected var §3"X§:String;
      
      protected var §`8§:String;
      
      protected var §9"y§:Number = 1.0;
      
      protected var §&#x§:§6!0§;
      
      public function §4#4§(param1:§8"y§, param2:§#"E§, param3:Number, param4:§34§, param5:§6!0§, param6:Number, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param6,param7);
         this.§&#x§ = param5;
         this.§,!z§ = param2.§6!=§;
         this.§7"a§ = param2.§;"a§;
         this.§3"X§ = param2.§?!Z§;
         this.§`8§ = param2.§7!A§;
         this.§9"y§ = param2.§?!6§;
      }
      
      public function get §6!=§() : String
      {
         return this.§,!z§;
      }
      
      public function get §;"a§() : String
      {
         return this.§7"a§;
      }
      
      public function get §?!Z§() : String
      {
         return this.§3"X§;
      }
      
      public function get §7!A§() : String
      {
         return this.§`8§;
      }
      
      public function get §?!6§() : Number
      {
         return this.§9"y§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§&#x§)
         {
            this.§&#x§.playSound(§>#5§,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§&#x§)
         {
            this.§&#x§.§5#u§(§>#5§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §5$0§.x = 0;
         §5$0§.y = §3$>§ - §<!G§ + 100;
      }
      
      override protected function createLayer(param1:§]!7§, param2:Sprite, param3:§34§, param4:Number) : §2!f§
      {
         var _loc5_:§`#h§ = null;
         if(param1 is §`#h§)
         {
            _loc5_ = param1 as §`#h§;
            return new §0$&§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
