package §1"H§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §,"&§.§9q§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   
   public class §!v§ extends §+>§
   {
      
      private static const §4_§:String = "LASER_TRAIL_3";
      
      private static const §>"C§:String = "LASER_EFFECT_1";
       
      
      private var §1"!§:§`y§;
      
      private var §-!d§:Sprite;
      
      private var §`M§:§`y§;
      
      private var §6!O§:Boolean;
      
      public function §!v§(param1:Sprite, param2:b2World, param3:§8X§, param4:Number, param5:Number)
      {
         super(param1,param2,param3);
         this.§`M§ = this.§3^§(§>"C§);
         this.§`M§.x += param4;
         this.§`M§.y += param5;
         param1.addChildAt(this.§`M§,0);
         this.§1"!§ = this.§`"7§(§4_§);
         this.§-!d§ = new Sprite();
         this.§-!d§.x = param4;
         this.§-!d§.y = param5;
         this.§-!d§.addChild(this.§1"!§);
         param1.addChildAt(this.§-!d§,0);
         this.§6!O§ = false;
      }
      
      private function §`"7§(param1:String, param2:Number = 1) : §`y§
      {
         var _loc3_:§'!"§ = §9q§.§>!L§.textureManager.getTexture(param1);
         var _loc4_:§`y§;
         (_loc4_ = new §`y§(_loc3_.texture)).scaleX = -param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      private function §3^§(param1:String, param2:Number = 1) : §`y§
      {
         var _loc3_:§'!"§ = §9q§.§>!L§.textureManager.getTexture(param1);
         var _loc4_:§`y§;
         (_loc4_ = new §`y§(_loc3_.texture)).scaleX = param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width / 2;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      public function §>" §(param1:Number) : void
      {
         this.§-!d§.rotation = param1;
      }
      
      public function §[u§(param1:Number, param2:Number) : void
      {
         this.§1"!§.scaleX = -param1;
         this.§1"!§.scaleY = param2;
      }
      
      public function §7T§(param1:Number, param2:Number) : void
      {
         this.§-!d§.x = param1;
         this.§-!d§.y = param2;
      }
      
      public function §=F§() : void
      {
         this.§-!d§.visible = false;
      }
      
      public function §[U§() : void
      {
         if(this.§`M§)
         {
            this.§`M§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§6!O§;
      }
      
      override public function dispose() : void
      {
         this.§`M§.dispose();
         this.§`M§ = null;
         this.§-!d§.removeChild(this.§1"!§);
         this.§-!d§.dispose();
         this.§-!d§ = null;
         this.§1"!§.dispose();
         this.§1"!§ = null;
         super.dispose();
      }
      
      public function get §3"6§() : Boolean
      {
         return this.§6!O§;
      }
      
      public function set §3"6§(param1:Boolean) : void
      {
         this.§6!O§ = param1;
      }
   }
}
