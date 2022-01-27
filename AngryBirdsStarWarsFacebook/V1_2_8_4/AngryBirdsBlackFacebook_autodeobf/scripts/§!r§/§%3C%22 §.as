package §!r§
{
   import §!!k§.§'§;
   import §!!k§.§1!^§;
   import §!!k§.§?!3§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import com.angrybirds.§<!J§;
   import §use§.Sprite;
   
   public class §<" § extends §%E§
   {
      
      public static const §'"?§:String = "turbineFlameAnimation";
       
      
      private var §!!e§:Boolean = false;
      
      private var §="o§:§'#4§;
      
      public function §<" §(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§<"A§();
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         if(this.§="o§)
         {
            this.§'#'§(param1);
         }
         return super.update(param1,param2);
      }
      
      private function §'#'§(param1:Number) : void
      {
         this.§!!e§ = !this.§!!e§;
         if(this.§!!e§)
         {
            this.§="o§.alpha = 0.5 + Math.random() * 0.5;
            this.§="o§.scaleX = 0.8 + Math.random() * 0.4;
            this.§="o§.scaleY = 0.9 + Math.random() * 0.2;
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§'=§) : Boolean
      {
         if(param1 > 0.02 && this.§="o§)
         {
            sprite.removeChild(this.§="o§);
            this.§="o§ = null;
         }
         return super.setDamageState(param1,param2);
      }
      
      private function §<"A§() : void
      {
         var _loc1_:§?!3§ = §<!J§.§=!%§.animationManager;
         var _loc2_:§1!^§ = _loc1_.getAnimation(§'"?§);
         if(!_loc2_)
         {
            _loc2_ = _loc1_.§&!d§(§'"?§,["GLOW_ENGINE_BIG_1","GLOW_ENGINE_BIG_2"]);
         }
         this.§="o§ = new §'#4§(_loc2_);
         sprite.addChild(this.§="o§);
         sprite.setChildIndex(this.§="o§,0);
         this.§="o§.x = 20;
      }
   }
}
