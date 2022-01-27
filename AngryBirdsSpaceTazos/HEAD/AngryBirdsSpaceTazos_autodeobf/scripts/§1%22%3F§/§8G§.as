package §1"?§
{
   import §&!]§.§#[§;
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§"[§;
   import §>"2§.§8k§;
   
   public class §8G§ extends §%!0§
   {
      
      private static const §0h§:String = "LASER_TRAIL_3";
      
      private static const §"Q§:String = "LASER_EFFECT_1";
       
      
      private var §2i§:§#[§;
      
      private var §5M§:Sprite;
      
      private var §3"@§:§#[§;
      
      private var §+!<§:Boolean;
      
      public function §8G§(param1:Sprite, param2:b2World, param3:§-"8§, param4:Number, param5:Number)
      {
         super(param1,param2,param3);
         this.§3"@§ = this.§1Y§(§"Q§);
         this.§3"@§.x += param4;
         this.§3"@§.y += param5;
         param1.addChildAt(this.§3"@§,0);
         this.§2i§ = this.§0!A§(§0h§);
         this.§5M§ = new Sprite();
         this.§5M§.x = param4;
         this.§5M§.y = param5;
         this.§5M§.addChild(this.§2i§);
         param1.addChildAt(this.§5M§,0);
         this.§+!<§ = false;
      }
      
      private function §0!A§(param1:String, param2:Number = 1) : §#[§
      {
         var _loc3_:§"[§ = §8k§.§;!]§.textureManager.getTexture(param1);
         var _loc4_:§#[§;
         (_loc4_ = new §#[§(_loc3_.texture)).scaleX = -param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      private function §1Y§(param1:String, param2:Number = 1) : §#[§
      {
         var _loc3_:§"[§ = §8k§.§;!]§.textureManager.getTexture(param1);
         var _loc4_:§#[§;
         (_loc4_ = new §#[§(_loc3_.texture)).scaleX = param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width / 2;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      public function §0!L§(param1:Number) : void
      {
         this.§5M§.rotation = param1;
      }
      
      public function §&"8§(param1:Number, param2:Number) : void
      {
         this.§2i§.scaleX = -param1;
         this.§2i§.scaleY = param2;
      }
      
      public function §3"F§(param1:Number, param2:Number) : void
      {
         this.§5M§.x = param1;
         this.§5M§.y = param2;
      }
      
      public function §!!h§() : void
      {
         this.§5M§.visible = false;
      }
      
      public function §!!p§() : void
      {
         if(this.§3"@§)
         {
            this.§3"@§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§+!<§;
      }
      
      override public function dispose() : void
      {
         this.§3"@§.dispose();
         this.§3"@§ = null;
         this.§5M§.removeChild(this.§2i§);
         this.§5M§.dispose();
         this.§5M§ = null;
         this.§2i§.dispose();
         this.§2i§ = null;
         super.dispose();
      }
      
      public function get §8!o§() : Boolean
      {
         return this.§+!<§;
      }
      
      public function set §8!o§(param1:Boolean) : void
      {
         this.§+!<§ = param1;
      }
   }
}
