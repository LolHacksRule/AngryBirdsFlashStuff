package §7!S§
{
   import §+"f§.§!r§;
   import §+"f§.§'!5§;
   import §+"f§.§`!1§;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §>P§.§?[§;
   
   public class § !x§ extends §>"-§
   {
       
      
      protected var §>"=§:String;
      
      protected var §2#5§:String;
      
      protected var §>"'§:String;
      
      protected var §2!y§:String;
      
      protected var §5!f§:Number = 1.0;
      
      protected var § "U§:§?[§;
      
      public function § !x§(param1:§`!1§, param2:Number, param3:§&"0§, param4:§?[§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param5,param6);
         this.§ "U§ = param4;
         this.§>"=§ = param1.§-!2§;
         this.§2#5§ = param1.§]j§;
         this.§>"'§ = param1.§;!&§;
         this.§2!y§ = param1.§3""§;
         this.§5!f§ = param1.textureScale;
      }
      
      public function get §-!2§() : String
      {
         return this.§>"=§;
      }
      
      public function get §]j§() : String
      {
         return this.§2#5§;
      }
      
      public function get §;!&§() : String
      {
         return this.§>"'§;
      }
      
      public function get §3""§() : String
      {
         return this.§2!y§;
      }
      
      public function get textureScale() : Number
      {
         return this.§5!f§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§ "U§)
         {
            this.§ "U§.§=Y§(§4!B§,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§ "U§)
         {
            this.§ "U§.§@!D§(§4!B§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §4"'§.x = 0;
         §4"'§.y = §<"X§ - §;!0§ + 100;
      }
      
      override protected function createLayer(param1:§!r§, param2:Sprite, param3:§&"0§, param4:Number) : §@=§
      {
         var _loc5_:§'!5§ = null;
         if(param1 is §'!5§)
         {
            _loc5_ = param1 as §'!5§;
            return new §3!p§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
