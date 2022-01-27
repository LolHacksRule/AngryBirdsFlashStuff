package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§@!3§;
   import §3"$§.§[a§;
   import §3"$§.§]k§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   import com.angrybirds.§;!e§;
   
   public class §&I§ extends §6"1§
   {
      
      public static const §']§:String = "turbineFlameAnimation";
       
      
      private var §4"?§:Boolean = false;
      
      private var §%"d§:§@!3§;
      
      public function §&I§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§>]§();
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         if(this.§%"d§)
         {
            this.§4P§(param1);
         }
         return super.update(param1,param2);
      }
      
      private function §4P§(param1:Number) : void
      {
         this.§4"?§ = !this.§4"?§;
         if(this.§4"?§)
         {
            this.§%"d§.alpha = 0.5 + Math.random() * 0.5;
            this.§%"d§.scaleX = 0.8 + Math.random() * 0.4;
            this.§%"d§.scaleY = 0.9 + Math.random() * 0.2;
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§""M§) : Boolean
      {
         if(param1 > 0.02 && this.§%"d§)
         {
            sprite.removeChild(this.§%"d§);
            this.§%"d§ = null;
         }
         return super.setDamageState(param1,param2);
      }
      
      private function §>]§() : void
      {
         var _loc1_:§]k§ = §;!e§.§<x§.animationManager;
         var _loc2_:§[a§ = _loc1_.getAnimation(§']§);
         if(!_loc2_)
         {
            _loc2_ = _loc1_.§`'§(§']§,["GLOW_ENGINE_BIG_1","GLOW_ENGINE_BIG_2"]);
         }
         this.§%"d§ = new §@!3§(_loc2_);
         sprite.addChild(this.§%"d§);
         sprite.setChildIndex(this.§%"d§,0);
         this.§%"d§.x = 20;
      }
   }
}
