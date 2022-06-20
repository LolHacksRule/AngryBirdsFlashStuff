package §]#m§
{
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §4o§.§!"e§;
   import §6!6§.§%§;
   import §6!6§.§6!r§;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   
   public class §?#q§ extends §0!^§
   {
       
      
      private var §+_§:Number = 0;
      
      private var §&!?§:Sprite;
      
      private var §^m§:Sprite;
      
      public function §?#q§(param1:§!"e§, param2:§6!r§, param3:Number, param4:§'0§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createLayer(param1:§%#1§, param2:Sprite, param3:§'0§, param4:Number) : §<#A§
      {
         var _loc6_:§'#'§ = null;
         var _loc7_:Image = null;
         var _loc5_:§<#A§ = super.createLayer(param1,param2,param3,param4);
         if(param1.spriteName == "THEME_FB_ROCKINRIO_MG_2")
         {
            _loc6_ = param3.getTexture("THEME_FB_ROCINRIO_LIGHTS");
            _loc7_ = new Image(_loc6_.texture);
            this.§&!?§ = new Sprite();
            this.§&!?§.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            _loc7_ = new Image(_loc6_.texture);
            this.§^m§ = new Sprite();
            this.§^m§.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            param2.addChild(this.§&!?§);
            param2.addChild(this.§^m§);
            this.§&!?§.y = 411;
            this.§&!?§.x = 200;
            this.§^m§.y = 411;
            this.§^m§.x = 528;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         this.§+_§ += param1;
         this.§&!?§.rotation = -0.7 + Math.sin(this.§+_§ / 2500) * 0.4;
         this.§^m§.rotation = 0.7 + Math.sin(this.§+_§ * 1.1 / 2500) * 0.4;
      }
   }
}
