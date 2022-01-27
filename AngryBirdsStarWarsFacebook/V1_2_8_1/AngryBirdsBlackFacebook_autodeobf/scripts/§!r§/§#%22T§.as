package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§ "A§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §#"T§ extends §^#2§
   {
      
      public static const §`![§:String = § "A§.§`![§;
      
      public static const §!"`§:String = "PIG_TIE_FIGHTER";
       
      
      public function §#"T§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §'"w§ = new §]>§(§^"k§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(§`"b§ && §`"b§.isFrozen)
         {
            this.§!!l§();
         }
      }
      
      override protected function setFrozen(param1:Boolean) : void
      {
         if(§^"k§.definition != §!"`§)
         {
            super.setFrozen(param1);
         }
      }
      
      private function §!!l§() : void
      {
         var _loc2_:§1!^§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc1_:Sprite = (§]!g§ as §%!w§).§'"y§();
         if(_loc1_ && _loc1_.numChildren == 1)
         {
            _loc2_ = animation.getSubAnimation(§`![§);
            if(_loc2_)
            {
               _loc3_ = 2 + Math.random() * 4;
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  if(_loc5_ = this.§9H§(_loc2_))
                  {
                     _loc1_.addChild(_loc5_);
                  }
                  _loc4_++;
               }
            }
         }
      }
      
      private function §9H§(param1:§1!^§) : DisplayObject
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
