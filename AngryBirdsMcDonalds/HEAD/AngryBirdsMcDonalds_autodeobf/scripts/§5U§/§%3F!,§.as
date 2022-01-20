package §5U§
{
   import § !J§.§%M§;
   import §4!A§.§#b§;
   import §4!A§.§3!#§;
   import §4!A§.§7#§;
   import §4j§.§0K§;
   import §4j§.§;!O§;
   import §8T§.b2World;
   import §9`§.§#U§;
   import §9`§.§8!P§;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   
   public class §?!,§ extends §;!O§
   {
       
      
      private var §+!l§:§+i§ = null;
      
      private var §8m§:§#b§;
      
      public function §?!,§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§5r§(param6);
      }
      
      private function §5r§(param1:String) : void
      {
         var _loc2_:§8!P§ = null;
         var _loc3_:String = null;
         if(param1 == "BLOCK_LANTERN_RECTANGLE")
         {
            _loc3_ = "GLOW_SQUARE";
         }
         else
         {
            _loc3_ = "GLOW_RADIAL";
         }
         _loc2_ = §#U§.§5!!§.§#P§(_loc3_);
         this.§+!l§ = new §+i§(_loc2_.texture);
         this.§+!l§.pivotX = -this.§+!l§.width / 2;
         this.§+!l§.pivotY = -this.§+!l§.height / 2;
         this.§8m§ = §3!#§.§5!!§.§%N§(§3!#§.§5!!§.§30§(this.§+!l§,{
            "scaleX":0.95,
            "scaleY":0.95
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1 + Math.random() / 2,§7#§.§[q§),§3!#§.§5!!§.§30§(this.§+!l§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":0.95,
            "scaleY":0.95
         },1 + Math.random() / 2,§7#§.§[q§));
         this.§8m§.§ o§ = false;
         this.§8m§.play();
         this.§8m§.§'!]§ = false;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§8m§)
         {
            this.§8m§.§'!§();
            this.§8m§ = null;
         }
         if(this.§+!l§)
         {
            if(this.sprite != null && this.§+!l§.parent == this.sprite)
            {
               this.sprite.removeChild(this.§+!l§);
            }
            this.§+!l§.dispose();
            this.§+!l§ = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§+!l§.parent != this.sprite)
         {
            this.sprite.addChildAt(this.§+!l§,0);
         }
      }
   }
}
