package §7P§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§="p§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §%3§ extends §]D§
   {
      
      public static const §1a§:String = §="p§.§1a§;
      
      public static const §=!M§:String = "PIG_TIE_FIGHTER";
       
      
      public function §%3§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §7[§ = new §=#<§(§'!P§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(§]"@§ && §]"@§.isFrozen)
         {
            this.§;##§();
         }
      }
      
      override protected function setFrozen(param1:Boolean) : void
      {
         if(§'!P§.definition != §=!M§)
         {
            super.setFrozen(param1);
         }
      }
      
      private function §;##§() : void
      {
         var _loc2_:§>"G§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc1_:Sprite = (§2N§ as §`#§).§-#L§();
         if(_loc1_ && _loc1_.numChildren == 1)
         {
            _loc2_ = animation.getSubAnimation(§1a§);
            if(_loc2_)
            {
               _loc3_ = 2 + Math.random() * 4;
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  if(_loc5_ = this.§!R§(_loc2_))
                  {
                     _loc1_.addChild(_loc5_);
                  }
                  _loc4_++;
               }
            }
         }
      }
      
      private function §!R§(param1:§>"G§) : DisplayObject
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
