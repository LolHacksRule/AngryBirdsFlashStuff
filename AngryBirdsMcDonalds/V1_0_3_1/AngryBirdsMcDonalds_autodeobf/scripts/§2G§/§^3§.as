package §2G§
{
   import § !%§.§0!U§;
   import § !%§.§7!>§;
   import §&c§.§%!a§;
   import §&c§.Sprite;
   import §&x§.b2World;
   import §3!@§.§ s§;
   import §?!§.§-=§;
   import §?!§.§>!4§;
   import §`!"§.§2+§;
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   
   public class §^3§ extends §-=§
   {
       
      
      private var final:§%!a§ = null;
      
      private var §!Q§:§2,§;
      
      public function §^3§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§5k§(param6);
      }
      
      private function §5k§(param1:String) : void
      {
         var _loc2_:§0!U§ = null;
         var _loc3_:String = null;
         if(param1 == "BLOCK_LANTERN_RECTANGLE")
         {
            _loc3_ = "GLOW_SQUARE";
         }
         else
         {
            _loc3_ = "GLOW_RADIAL";
         }
         _loc2_ = §7!>§.§@!7§.§1m§(_loc3_);
         this.final = new §%!a§(_loc2_.texture);
         this.final.pivotX = -this.final.width / 2;
         this.final.pivotY = -this.final.height / 2;
         this.§!Q§ = §2+§.§@!7§.§?O§(§2+§.§@!7§.§@!6§(this.final,{
            "scaleX":0.95,
            "scaleY":0.95
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1 + Math.random() / 2,§;i§.§#!,§),§2+§.§@!7§.§@!6§(this.final,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":0.95,
            "scaleY":0.95
         },1 + Math.random() / 2,§;i§.§#!,§));
         this.§!Q§.§+!<§ = false;
         this.§!Q§.play();
         this.§!Q§.§#f§ = false;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§!Q§)
         {
            this.§!Q§.§'V§();
            this.§!Q§ = null;
         }
         if(this.final)
         {
            if(this.sprite != null && this.final.parent == this.sprite)
            {
               this.sprite.removeChild(this.final);
            }
            this.final.dispose();
            this.final = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.final.parent != this.sprite)
         {
            this.sprite.addChildAt(this.final,0);
         }
      }
   }
}
