package §6"R§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   import §>P§.§@D§;
   
   public class §;h§ extends §[!R§
   {
      
      public static const §5;§:String = §@D§.§5;§;
      
      public static const §5!v§:String = "PIG_TIE_FIGHTER";
       
      
      public function §;h§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §3"J§ = new §,N§(§?!J§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(§@!"§ && §@!"§.isFrozen)
         {
            this.§!$§();
         }
      }
      
      override protected function setFrozen(param1:Boolean) : void
      {
         if(§?!J§.definition != §5!v§)
         {
            super.setFrozen(param1);
         }
      }
      
      private function §!$§() : void
      {
         var _loc2_:§[a§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc1_:Sprite = (§]h§ as §6"U§).§[!7§();
         if(_loc1_ && _loc1_.numChildren == 1)
         {
            _loc2_ = animation.getSubAnimation(§5;§);
            if(_loc2_)
            {
               _loc3_ = 2 + Math.random() * 4;
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  if(_loc5_ = this.§`!6§(_loc2_))
                  {
                     _loc1_.addChild(_loc5_);
                  }
                  _loc4_++;
               }
            }
         }
      }
      
      private function §`!6§(param1:§[a§) : DisplayObject
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = param1.frameCount;
         _loc3_ = param1.getFrame(Math.random() * _loc2_,null);
         if(_loc3_)
         {
            sprite.addChild(_loc3_);
            if(Math.random() < 0.5)
            {
               _loc3_.rotation = Math.PI;
               _loc3_.y = 5 + Math.random() * 10;
            }
            else
            {
               _loc3_.y = -(5 + Math.random() * 10);
            }
            _loc3_.x = -10 + Math.random() * 20;
            _loc3_.scaleX = 2 + Math.random();
            _loc3_.scaleY = 2 + Math.random();
         }
         return _loc3_;
      }
   }
}
