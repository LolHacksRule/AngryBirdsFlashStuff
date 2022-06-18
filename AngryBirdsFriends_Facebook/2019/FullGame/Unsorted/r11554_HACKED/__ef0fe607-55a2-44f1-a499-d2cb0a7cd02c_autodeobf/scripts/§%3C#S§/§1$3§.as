package §<#S§
{
   import §!6§.Sprite;
   import §'!O§.§%$>§;
   import §'!O§.§'"8§;
   import §'!O§.§0"U§;
   import §-"i§.§"!Y§;
   import §?§.§`"N§;
   import §^"[§.§=#;§;
   
   public class §1$3§ extends §[!W§
   {
       
      
      protected var §`!,§:String;
      
      protected var § !%§:String;
      
      protected var §2!Q§:String;
      
      protected var §^!]§:String;
      
      protected var §@#@§:Number = 1.0;
      
      protected var §8]§:§`"N§;
      
      public function §1$3§(param1:§"!Y§, param2:§0"U§, param3:Number, param4:§=#;§, param5:§`"N§, param6:Number, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param6,param7);
         this.§8]§ = param5;
         this.§`!,§ = param2.§%"§;
         this.§ !%§ = param2.§=!b§;
         this.§2!Q§ = param2.§"y§;
         this.§^!]§ = param2.§"#5§;
         this.§@#@§ = param2.§%$&§;
      }
      
      public function get §%"§() : String
      {
         return this.§`!,§;
      }
      
      public function get §=!b§() : String
      {
         return this.§ !%§;
      }
      
      public function get §"y§() : String
      {
         return this.§2!Q§;
      }
      
      public function get §"#5§() : String
      {
         return this.§^!]§;
      }
      
      public function get §%$&§() : Number
      {
         return this.§@#@§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§8]§)
         {
            this.§8]§.playSound(§>"H§,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§8]§)
         {
            this.§8]§.§3$A§(§>"H§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §5'§.x = 0;
         §5'§.y = §9"l§ - §5c§ + 100;
      }
      
      override protected function createLayer(param1:§'"8§, param2:Sprite, param3:§=#;§, param4:Number) : §8#P§
      {
         var _loc5_:§%$>§ = null;
         if(param1 is §%$>§)
         {
            _loc5_ = param1 as §%$>§;
            return new §&$8§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
