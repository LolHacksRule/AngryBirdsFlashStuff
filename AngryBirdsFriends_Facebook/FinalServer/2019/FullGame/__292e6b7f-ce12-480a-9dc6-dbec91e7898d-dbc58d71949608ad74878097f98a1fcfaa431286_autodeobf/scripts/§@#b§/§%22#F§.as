package §@#b§
{
   import §,#e§.Sprite;
   import §,0§.§`5§;
   import §4"Y§.§%!w§;
   import §4"Y§.§,§;
   import §4"Y§.§@!H§;
   import §7"T§.§#"^§;
   import §8#K§.§ !q§;
   
   public class §"#F§ extends §1_§
   {
       
      
      protected var §^"`§:String;
      
      protected var §>#t§:String;
      
      protected var §^#Z§:String;
      
      protected var § !j§:String;
      
      protected var §#$;§:Number = 1.0;
      
      protected var §[""§:§ !q§;
      
      public function §"#F§(param1:§`5§, param2:§,#1§, param3:Number, param4:§#"^§, param5:§ !q§, param6:Number, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param6,param7);
         this.§[""§ = param5;
         this.§^"`§ = param2.§<y§;
         this.§>#t§ = param2.§import§;
         this.§^#Z§ = param2.§>!&§;
         this.§ !j§ = param2.§6!P§;
         this.§#$;§ = param2.§!#Z§;
      }
      
      public function get §<y§() : String
      {
         return this.§^"`§;
      }
      
      public function get §import§() : String
      {
         return this.§>#t§;
      }
      
      public function get §>!&§() : String
      {
         return this.§^#Z§;
      }
      
      public function get §6!P§() : String
      {
         return this.§ !j§;
      }
      
      public function get §!#Z§() : Number
      {
         return this.§#$;§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§[""§)
         {
            this.§[""§.playSound(§<"!§,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§[""§)
         {
            this.§[""§.§8!7§(§<"!§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §'"d§.x = 0;
         §'"d§.y = §=!J§ - §%""§ + 100;
      }
      
      override protected function createLayer(param1:§@!H§, param2:Sprite, param3:§#"^§, param4:Number) : §=$;§
      {
         var _loc5_:§%!w§ = null;
         if(param1 is §%!w§)
         {
            _loc5_ = param1 as §%!w§;
            return new §+!I§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
