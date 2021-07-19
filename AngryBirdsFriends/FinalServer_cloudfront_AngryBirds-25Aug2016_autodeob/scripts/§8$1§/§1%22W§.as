package §8$1§
{
   import §6§.§]!Q§;
   import §9$§.Sprite;
   import §@"§.§&!=§;
   import §^§.§0!3§;
   import §^§.§7#%§;
   import §^§.§?V§;
   import §`#C§.§8!h§;
   
   public class §1"W§ extends §<"G§
   {
       
      
      protected var §+!w§:String;
      
      protected var §+=§:String;
      
      protected var §9p§:String;
      
      protected var §,"'§:String;
      
      protected var §;!z§:Number = 1.0;
      
      protected var §0#$§:§8!h§;
      
      public function §1"W§(param1:§]!Q§, param2:§7#%§, param3:Number, param4:§&!=§, param5:§8!h§, param6:Number, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param6,param7);
         this.§0#$§ = param5;
         this.§+!w§ = param2.§7"z§;
         this.§+=§ = param2.§&t§;
         this.§9p§ = param2.§?!#§;
         this.§,"'§ = param2.§,!8§;
         this.§;!z§ = param2.§#!q§;
      }
      
      public function get §7"z§() : String
      {
         return this.§+!w§;
      }
      
      public function get §&t§() : String
      {
         return this.§+=§;
      }
      
      public function get §?!#§() : String
      {
         return this.§9p§;
      }
      
      public function get §,!8§() : String
      {
         return this.§,"'§;
      }
      
      public function get §#!q§() : Number
      {
         return this.§;!z§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§0#$§)
         {
            this.§0#$§.playSound(§-$4§,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§0#$§)
         {
            this.§0#$§.§%!!§(§-$4§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §""I§.x = 0;
         §""I§.y = §`"7§ - §8"S§ + 100;
      }
      
      override protected function createLayer(param1:§?V§, param2:Sprite, param3:§&!=§, param4:Number) : §`#'§
      {
         var _loc5_:§0!3§ = null;
         if(param1 is §0!3§)
         {
            _loc5_ = param1 as §0!3§;
            return new §0";§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
