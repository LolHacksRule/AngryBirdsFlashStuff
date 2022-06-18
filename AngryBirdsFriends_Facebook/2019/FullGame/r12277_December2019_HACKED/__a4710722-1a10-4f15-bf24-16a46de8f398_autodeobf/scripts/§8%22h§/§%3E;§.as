package §8"h§
{
   import §#!S§.§0!q§;
   import §#!S§.§?##§;
   import §#!S§.§^#b§;
   import §#Z§.Sprite;
   import §-!j§.§4"-§;
   import §0#I§.§-!6§;
   import §9#M§.§%"=§;
   
   public class §>;§ extends §]n§
   {
       
      
      protected var §<[§:String;
      
      protected var §8"9§:String;
      
      protected var §&0§:String;
      
      protected var §="N§:String;
      
      protected var §-#p§:Number = 1.0;
      
      protected var §?"_§:§4"-§;
      
      public function §>;§(param1:§-!6§, param2:§^#b§, param3:Number, param4:§%"=§, param5:§4"-§, param6:Number, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param6,param7);
         this.§?"_§ = param5;
         this.§<[§ = param2.§"#§;
         this.§8"9§ = param2.§]Q§;
         this.§&0§ = param2.§`!t§;
         this.§="N§ = param2.§=!8§;
         this.§-#p§ = param2.§3!1§;
      }
      
      public function get §"#§() : String
      {
         return this.§<[§;
      }
      
      public function get §]Q§() : String
      {
         return this.§8"9§;
      }
      
      public function get §`!t§() : String
      {
         return this.§&0§;
      }
      
      public function get §=!8§() : String
      {
         return this.§="N§;
      }
      
      public function get §3!1§() : Number
      {
         return this.§-#p§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§?"_§)
         {
            this.§?"_§.playSound(§-!Y§,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§?"_§)
         {
            this.§?"_§.§'!?§(§-!Y§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §&-§.x = 0;
         §&-§.y = §5U§ - §9"W§ + 100;
      }
      
      override protected function createLayer(param1:§?##§, param2:Sprite, param3:§%"=§, param4:Number) : §`#s§
      {
         var _loc5_:§0!q§ = null;
         if(param1 is §0!q§)
         {
            _loc5_ = param1 as §0!q§;
            return new §%#N§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
