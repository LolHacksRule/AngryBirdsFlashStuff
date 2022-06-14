package §7-§
{
   import § " §.§+!p§;
   import § " §.§2!!§;
   import § " §.§3"2§;
   import § " §.§?!e§;
   import §!!C§.§!H§;
   import §]!>§.§[Q§;
   import flash.display.MovieClip;
   
   public class §<"+§
   {
       
      
      private var §8#§:§?!e§;
      
      public function §<"+§(param1:MovieClip, param2:§[Q§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§3"2§ = null;
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
               _loc8_ = §!H§.§,!6§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || §2!!§.§,I§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §3"2§(param2.userId,"",false,§+!p§.NORMAL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§8#§ = new §?!e§(param2.userId,_loc8_,false,"220");
               this.§8#§.scaleX = 0.59;
               this.§8#§.scaleY = 0.59;
               _loc4_.addChild(this.§8#§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§8#§)
         {
            this.§8#§.dispose();
         }
      }
   }
}
