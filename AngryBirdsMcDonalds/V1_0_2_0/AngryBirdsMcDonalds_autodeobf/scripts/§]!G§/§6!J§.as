package §]!G§
{
   import §%`§.§,!k§;
   import §%`§.§`I§;
   import §'a§.§0!f§;
   import §3!g§.b2World;
   import §5!l§.§ !D§;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.Sprite;
   import §=!F§.§"!2§;
   import §=!F§.§8!]§;
   import §=!F§.§^!^§;
   
   public class §6!J§ extends §`I§
   {
       
      
      private var §<!5§:§2!K§ = null;
      
      private var §]!Z§:§^!^§;
      
      public function §6!J§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§[!l§(param6);
      }
      
      private function §[!l§(param1:String) : void
      {
         var _loc2_:§9Z§ = null;
         var _loc3_:String = null;
         if(param1 == "BLOCK_LANTERN_RECTANGLE")
         {
            _loc3_ = "GLOW_SQUARE";
         }
         else
         {
            _loc3_ = "GLOW_RADIAL";
         }
         _loc2_ = § !D§.§'!S§.§2x§(_loc3_);
         this.§<!5§ = new §2!K§(_loc2_.texture);
         this.§<!5§.pivotX = -this.§<!5§.width / 2;
         this.§<!5§.pivotY = -this.§<!5§.height / 2;
         this.§]!Z§ = §8!]§.§'!S§.§<!X§(§8!]§.§'!S§.§-!S§(this.§<!5§,{
            "scaleX":0.95,
            "scaleY":0.95
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1 + Math.random() / 2,§"!2§.§8N§),§8!]§.§'!S§.§-!S§(this.§<!5§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":0.95,
            "scaleY":0.95
         },1 + Math.random() / 2,§"!2§.§8N§));
         this.§]!Z§.§,T§ = false;
         this.§]!Z§.play();
         this.§]!Z§.§8>§ = false;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§]!Z§)
         {
            this.§]!Z§.§1Y§();
            this.§]!Z§ = null;
         }
         if(this.§<!5§)
         {
            if(this.sprite != null && this.§<!5§.parent == this.sprite)
            {
               this.sprite.removeChild(this.§<!5§);
            }
            this.§<!5§.dispose();
            this.§<!5§ = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§<!5§.parent != this.sprite)
         {
            this.sprite.addChildAt(this.§<!5§,0);
         }
      }
   }
}
