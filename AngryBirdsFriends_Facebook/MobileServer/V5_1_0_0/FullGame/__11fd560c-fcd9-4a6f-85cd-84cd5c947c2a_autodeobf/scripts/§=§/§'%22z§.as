package §=§#9
{
   import §'!L§.§8"y§;
   import §6$8§.§]§;
   import §6$8§.§]!7§;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import §`"8§.§`"X§;
   
   public class §'"z§ extends §>!o§
   {
       
      
      private var §"!>§:Number = 0;
      
      private var §'"Q§:Sprite;
      
      private var §8"d§:Sprite;
      
      public function §'"z§(param1:§8"y§, param2:§]§, param3:Number, param4:§34§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createLayer(param1:§]!7§, param2:Sprite, param3:§34§, param4:Number) : §2!f§
      {
         var _loc6_:§`"X§ = null;
         var _loc7_:Image = null;
         var _loc5_:§2!f§ = super.createLayer(param1,param2,param3,param4);
         if(param1.spriteName == "THEME_FB_ROCKINRIO_MG_2")
         {
            _loc6_ = param3.getTexture("THEME_FB_ROCINRIO_LIGHTS");
            _loc7_ = new Image(_loc6_.texture);
            this.§'"Q§ = new Sprite();
            this.§'"Q§.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            _loc7_ = new Image(_loc6_.texture);
            this.§8"d§ = new Sprite();
            this.§8"d§.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            param2.addChild(this.§'"Q§);
            param2.addChild(this.§8"d§);
            this.§'"Q§.y = 411;
            this.§'"Q§.x = 200;
            this.§8"d§.y = 411;
            this.§8"d§.x = 528;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         this.§"!>§ += param1;
         this.§'"Q§.rotation = -0.7 + Math.sin(this.§"!>§ / 2500) * 0.4;
         this.§8"d§.rotation = 0.7 + Math.sin(this.§"!>§ * 1.1 / 2500) * 0.4;
      }
   }
}
