package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§0'§;
   import §7!F§.§>"G§;
   import §7!F§.§`y§;
   import §<"B§.§94§;
   import com.angrybirds.§,!q§;
   
   public class §7"?§ extends §`#G§
   {
      
      public static const §9"F§:String = "turbineFlameAnimation";
       
      
      private var §]!%§:Boolean = false;
      
      private var §]!o§:§0'§;
      
      public function §7"?§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§2!2§();
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         if(this.§]!o§)
         {
            this.§^"]§(param1);
         }
         return super.update(param1,param2);
      }
      
      private function §^"]§(param1:Number) : void
      {
         this.§]!%§ = !this.§]!%§;
         if(this.§]!%§)
         {
            this.§]!o§.alpha = 0.5 + Math.random() * 0.5;
            this.§]!o§.scaleX = 0.8 + Math.random() * 0.4;
            this.§]!o§.scaleY = 0.9 + Math.random() * 0.2;
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         if(param1 > 0.02 && this.§]!o§)
         {
            sprite.removeChild(this.§]!o§);
            this.§]!o§ = null;
         }
         return super.setDamageState(param1,param2);
      }
      
      private function §2!2§() : void
      {
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         var _loc2_:§>"G§ = _loc1_.getAnimation(§9"F§);
         if(!_loc2_)
         {
            _loc2_ = _loc1_.§%#M§(§9"F§,["GLOW_ENGINE_BIG_1","GLOW_ENGINE_BIG_2"]);
         }
         this.§]!o§ = new §0'§(_loc2_);
         sprite.addChild(this.§]!o§);
         sprite.setChildIndex(this.§]!o§,0);
         this.§]!o§.x = 20;
      }
   }
}
