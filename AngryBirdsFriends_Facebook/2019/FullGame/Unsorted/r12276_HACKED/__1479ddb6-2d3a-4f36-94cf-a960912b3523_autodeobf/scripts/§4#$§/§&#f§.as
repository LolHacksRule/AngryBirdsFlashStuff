package §4#$§
{
   import §3#t§.§-#b§;
   import §9x§.§ m§;
   import §9x§.§,"V§;
   import §9x§.§6!P§;
   import §9x§.§7",§;
   import §>#Y§.§#!&§;
   import §>#Y§.§1N§;
   import flash.display.MovieClip;
   
   public class §&#f§
   {
       
      
      private var §;#K§:§,"V§;
      
      public function §&#f§(param1:MovieClip, param2:§#!&§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§6!P§ = null;
         super();
         if(param1)
         {
            _loc3_ = param1.getChildByName("AvatarHolder") as MovieClip;
            _loc4_ = _loc3_.getChildByName("EmptyAvatar") as MovieClip;
            _loc5_ = _loc3_.getChildByName("PigFrame") as MovieClip;
            _loc6_ = _loc3_.getChildByName("EmptyProfile") as MovieClip;
            _loc7_ = _loc3_.getChildByName("PigFrameShadow") as MovieClip;
            if(_loc4_)
            {
               while(_loc4_.numChildren > 0)
               {
                  _loc4_.removeChildAt(0);
               }
            }
            if(_loc6_)
            {
               while(_loc6_.numChildren > 0)
               {
                  _loc6_.removeChildAt(0);
               }
            }
            if((_loc8_ = param2.avatarString) == "" || _loc8_ == null)
            {
               _loc8_ = §-#b§.§5!K§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || § m§.§8!U§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §6!P§(param2.userId,"",false,§7",§.NORMAL,false,(param2 as §1N§).profileImageURL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§;#K§ = new §,"V§(param2.userId,_loc8_,false,"220",true);
               this.§;#K§.scaleX = 0.59;
               this.§;#K§.scaleY = 0.59;
               _loc4_.addChild(this.§;#K§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§;#K§)
         {
            this.§;#K§.dispose();
         }
      }
   }
}
