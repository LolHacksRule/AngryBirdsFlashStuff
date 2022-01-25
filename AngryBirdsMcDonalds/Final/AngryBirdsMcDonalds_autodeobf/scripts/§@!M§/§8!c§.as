package §@!M§
{
   import §'!`§.§;!§;
   import §'!`§.§for§;
   import §-0§.b2World;
   import §0@§.§1]§;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §7! §.§%!h§;
   import §7! §.§4n§;
   import §^m§.§-D§;
   import §^m§.§0!-§;
   import §^m§.§=!a§;
   
   public class §8!c§ extends §;!§
   {
       
      
      private var § E§:§1]§ = null;
      
      private var §6J§:§0!-§;
      
      public function §8!c§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§`!d§(param6);
      }
      
      private function §`!d§(param1:String) : void
      {
         var _loc2_:§%!h§ = null;
         var _loc3_:String = null;
         if(param1 == "BLOCK_LANTERN_RECTANGLE")
         {
            _loc3_ = "GLOW_SQUARE";
         }
         else
         {
            _loc3_ = "GLOW_RADIAL";
         }
         _loc2_ = §4n§.§9$§.§-f§(_loc3_);
         this.§ E§ = new §1]§(_loc2_.texture);
         this.§ E§.pivotX = -this.§ E§.width / 2;
         this.§ E§.pivotY = -this.§ E§.height / 2;
         this.§6J§ = §-D§.§9$§.§@!4§(§-D§.§9$§.§9!H§(this.§ E§,{
            "scaleX":0.95,
            "scaleY":0.95
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1 + Math.random() / 2,§=!a§.§>B§),§-D§.§9$§.§9!H§(this.§ E§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":0.95,
            "scaleY":0.95
         },1 + Math.random() / 2,§=!a§.§>B§));
         this.§6J§.§ !R§ = false;
         this.§6J§.play();
         this.§6J§.§2!^§ = false;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§6J§)
         {
            this.§6J§.§7!S§();
            this.§6J§ = null;
         }
         if(this.§ E§)
         {
            if(this.sprite != null && this.§ E§.parent == this.sprite)
            {
               this.sprite.removeChild(this.§ E§);
            }
            this.§ E§.dispose();
            this.§ E§ = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§ E§.parent != this.sprite)
         {
            this.sprite.addChildAt(this.§ E§,0);
         }
      }
   }
}
