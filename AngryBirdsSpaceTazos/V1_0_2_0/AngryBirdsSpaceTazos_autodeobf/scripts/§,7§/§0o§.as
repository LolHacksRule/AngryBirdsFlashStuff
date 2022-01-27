package §,7§
{
   import §#!X§.b2World;
   import §'!&§.§9!c§;
   import §'!&§.Sprite;
   import §+!9§.§;0§;
   import §8o§.§!">§;
   import §;"=§.§]"<§;
   
   public class §0o§ extends §-"@§
   {
      
      private static const §%!U§:String = "LASER_TRAIL_3";
      
      private static const §8!v§:String = "LASER_EFFECT_1";
       
      
      private var §7!S§:§9!c§;
      
      private var §;v§:Sprite;
      
      private var §8!x§:§9!c§;
      
      private var §;]§:Boolean;
      
      public function §0o§(param1:Sprite, param2:b2World, param3:§]"<§, param4:Number, param5:Number)
      {
         super(param1,param2,param3);
         this.§8!x§ = this.§@!z§(§8!v§);
         this.§8!x§.x += param4;
         this.§8!x§.y += param5;
         param1.addChildAt(this.§8!x§,0);
         this.§7!S§ = this.§`"<§(§%!U§);
         this.§;v§ = new Sprite();
         this.§;v§.x = param4;
         this.§;v§.y = param5;
         this.§;v§.addChild(this.§7!S§);
         param1.addChildAt(this.§;v§,0);
         this.§;]§ = false;
      }
      
      private function §`"<§(param1:String, param2:Number = 1) : §9!c§
      {
         var _loc3_:§!">§ = §;0§.§@!^§.textureManager.getTexture(param1);
         var _loc4_:§9!c§;
         (_loc4_ = new §9!c§(_loc3_.texture)).scaleX = -param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      private function §@!z§(param1:String, param2:Number = 1) : §9!c§
      {
         var _loc3_:§!">§ = §;0§.§@!^§.textureManager.getTexture(param1);
         var _loc4_:§9!c§;
         (_loc4_ = new §9!c§(_loc3_.texture)).scaleX = param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width / 2;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      public function §<c§(param1:Number) : void
      {
         this.§;v§.rotation = param1;
      }
      
      public function §9o§(param1:Number, param2:Number) : void
      {
         this.§7!S§.scaleX = -param1;
         this.§7!S§.scaleY = param2;
      }
      
      public function §!"G§(param1:Number, param2:Number) : void
      {
         this.§;v§.x = param1;
         this.§;v§.y = param2;
      }
      
      public function §"!i§() : void
      {
         this.§;v§.visible = false;
      }
      
      public function §-!s§() : void
      {
         if(this.§8!x§)
         {
            this.§8!x§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§;]§;
      }
      
      override public function dispose() : void
      {
         this.§8!x§.dispose();
         this.§8!x§ = null;
         this.§;v§.removeChild(this.§7!S§);
         this.§;v§.dispose();
         this.§;v§ = null;
         this.§7!S§.dispose();
         this.§7!S§ = null;
         super.dispose();
      }
      
      public function get §@!I§() : Boolean
      {
         return this.§;]§;
      }
      
      public function set §@!I§(param1:Boolean) : void
      {
         this.§;]§ = param1;
      }
   }
}
