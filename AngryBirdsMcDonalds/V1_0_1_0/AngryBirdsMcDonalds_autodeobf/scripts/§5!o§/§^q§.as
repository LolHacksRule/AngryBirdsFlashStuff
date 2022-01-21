package §5!o§
{
   import §&[§.§&!m§;
   import §&[§.§,!"§;
   import §1B§.b2World;
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   import §3l§.§&W§;
   import §3l§.§9m§;
   import §3l§.§@! §;
   import §5!G§.§8+§;
   import §5!G§.§;p§;
   import §@!b§.§@!k§;
   
   public class §^q§ extends §;p§
   {
       
      
      private var §0U§:§<7§ = null;
      
      private var §!!<§:§&W§;
      
      public function §^q§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§>o§(param6);
      }
      
      private function §>o§(param1:String) : void
      {
         var _loc2_:§,!"§ = null;
         var _loc3_:String = null;
         if(param1 == "BLOCK_LANTERN_RECTANGLE")
         {
            _loc3_ = "GLOW_SQUARE";
         }
         else
         {
            _loc3_ = "GLOW_RADIAL";
         }
         _loc2_ = §&!m§.§>E§.§4!0§(_loc3_);
         this.§0U§ = new §<7§(_loc2_.texture);
         this.§0U§.pivotX = -this.§0U§.width / 2;
         this.§0U§.pivotY = -this.§0U§.height / 2;
         this.§!!<§ = §@! §.§>E§.§69§(§@! §.§>E§.§"0§(this.§0U§,{
            "scaleX":0.95,
            "scaleY":0.95
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1 + Math.random() / 2,§9m§.§>-§),§@! §.§>E§.§"0§(this.§0U§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":0.95,
            "scaleY":0.95
         },1 + Math.random() / 2,§9m§.§>-§));
         this.§!!<§.§;!=§ = false;
         this.§!!<§.play();
         this.§!!<§.§>!<§ = false;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§!!<§)
         {
            this.§!!<§.§'Q§();
            this.§!!<§ = null;
         }
         if(this.§0U§)
         {
            if(this.sprite != null && this.§0U§.parent == this.sprite)
            {
               this.sprite.removeChild(this.§0U§);
            }
            this.§0U§.dispose();
            this.§0U§ = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§0U§.parent != this.sprite)
         {
            this.sprite.addChildAt(this.§0U§,0);
         }
      }
   }
}
