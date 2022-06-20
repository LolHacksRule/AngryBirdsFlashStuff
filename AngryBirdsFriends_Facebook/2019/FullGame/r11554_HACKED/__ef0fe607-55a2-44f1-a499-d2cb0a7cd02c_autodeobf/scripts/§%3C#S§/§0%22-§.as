package §<#S§
{
   import §!6§.Image;
   import §!6§.Sprite;
   import §'!O§.§'"8§;
   import §'!O§.§@P§;
   import §-"i§.§"!Y§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   
   public class §0"-§ extends §[!W§
   {
       
      
      private var §'"Q§:Number = 0;
      
      private var §^$A§:Sprite;
      
      private var §[#;§:Sprite;
      
      public function §0"-§(param1:§"!Y§, param2:§@P§, param3:Number, param4:§=#;§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createLayer(param1:§'"8§, param2:Sprite, param3:§=#;§, param4:Number) : §8#P§
      {
         var _loc6_:§^!8§ = null;
         var _loc7_:Image = null;
         var _loc5_:§8#P§ = super.createLayer(param1,param2,param3,param4);
         if(param1.spriteName == "THEME_FB_ROCKINRIO_MG_2")
         {
            _loc6_ = param3.getTexture("THEME_FB_ROCINRIO_LIGHTS");
            _loc7_ = new Image(_loc6_.texture);
            this.§^$A§ = new Sprite();
            this.§^$A§.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            _loc7_ = new Image(_loc6_.texture);
            this.§[#;§ = new Sprite();
            this.§[#;§.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            param2.addChild(this.§^$A§);
            param2.addChild(this.§[#;§);
            this.§^$A§.y = 411;
            this.§^$A§.x = 200;
            this.§[#;§.y = 411;
            this.§[#;§.x = 528;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         this.§'"Q§ += param1;
         this.§^$A§.rotation = -0.7 + Math.sin(this.§'"Q§ / 2500) * 0.4;
         this.§[#;§.rotation = 0.7 + Math.sin(this.§'"Q§ * 1.1 / 2500) * 0.4;
      }
   }
}
