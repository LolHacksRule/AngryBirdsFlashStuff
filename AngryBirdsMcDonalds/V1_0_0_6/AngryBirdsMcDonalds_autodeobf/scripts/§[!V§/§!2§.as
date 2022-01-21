package §[!V§
{
   import §"f§.§%1§;
   import §"f§.§@4§;
   import §"f§.§`Z§;
   import §&!!§.§7N§;
   import §&!!§.§<!'§;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §5!L§.§"!T§;
   import §5!L§.§?8§;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   
   public class §!2§ extends §"!T§
   {
       
      
      private var §#[§:§[!U§ = null;
      
      private var §&e§:§@4§;
      
      public function §!2§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§&Y§(param6);
      }
      
      private function §&Y§(param1:String) : void
      {
         var _loc2_:§7N§ = null;
         var _loc3_:String = null;
         if(param1 == "BLOCK_LANTERN_RECTANGLE")
         {
            _loc3_ = "GLOW_SQUARE";
         }
         else
         {
            _loc3_ = "GLOW_RADIAL";
         }
         _loc2_ = §<!'§.§+j§.§^!C§(_loc3_);
         this.§#[§ = new §[!U§(_loc2_.texture);
         this.§#[§.pivotX = -this.§#[§.width / 2;
         this.§#[§.pivotY = -this.§#[§.height / 2;
         this.§&e§ = §`Z§.§+j§.§[!C§(§`Z§.§+j§.§78§(this.§#[§,{
            "scaleX":0.95,
            "scaleY":0.95
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1 + Math.random() / 2,§%1§.§=!H§),§`Z§.§+j§.§78§(this.§#[§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":0.95,
            "scaleY":0.95
         },1 + Math.random() / 2,§%1§.§=!H§));
         this.§&e§.§4z§ = false;
         this.§&e§.play();
         this.§&e§.§9g§ = false;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§&e§)
         {
            this.§&e§.§%e§();
            this.§&e§ = null;
         }
         if(this.§#[§)
         {
            if(this.sprite != null && this.§#[§.parent == this.sprite)
            {
               this.sprite.removeChild(this.§#[§);
            }
            this.§#[§.dispose();
            this.§#[§ = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§#[§.parent != this.sprite)
         {
            this.sprite.addChildAt(this.§#[§,0);
         }
      }
   }
}
