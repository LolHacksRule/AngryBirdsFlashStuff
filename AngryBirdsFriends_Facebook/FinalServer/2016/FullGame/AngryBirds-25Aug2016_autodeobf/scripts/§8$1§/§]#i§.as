package §8$1§
{
   import §6§.§]!Q§;
   import §9$§.Image;
   import §9$§.Sprite;
   import §@"§.§&!=§;
   import §@"§.§+!3§;
   import §^§.§?V§;
   import §^§.§[>§;
   
   public class §]#i§ extends §<"G§
   {
       
      
      private var §'# §:Number = 0;
      
      private var §]# §:Sprite;
      
      private var §+"f§:Sprite;
      
      public function §]#i§(param1:§]!Q§, param2:§[>§, param3:Number, param4:§&!=§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createLayer(param1:§?V§, param2:Sprite, param3:§&!=§, param4:Number) : §`#'§
      {
         var _loc6_:§+!3§ = null;
         var _loc7_:Image = null;
         var _loc5_:§`#'§ = super.createLayer(param1,param2,param3,param4);
         if(param1.spriteName == "THEME_FB_ROCKINRIO_MG_2")
         {
            _loc6_ = param3.getTexture("THEME_FB_ROCINRIO_LIGHTS");
            _loc7_ = new Image(_loc6_.texture);
            this.§]# § = new Sprite();
            this.§]# §.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            _loc7_ = new Image(_loc6_.texture);
            this.§+"f§ = new Sprite();
            this.§+"f§.addChild(_loc7_);
            _loc7_.x = -_loc6_.pivotX;
            _loc7_.y = -_loc6_.pivotY;
            param2.addChild(this.§]# §);
            param2.addChild(this.§+"f§);
            this.§]# §.y = 411;
            this.§]# §.x = 200;
            this.§+"f§.y = 411;
            this.§+"f§.x = 528;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         this.§'# § += param1;
         this.§]# §.rotation = -0.7 + Math.sin(this.§'# § / 2500) * 0.4;
         this.§+"f§.rotation = 0.7 + Math.sin(this.§'# § * 1.1 / 2500) * 0.4;
      }
   }
}
