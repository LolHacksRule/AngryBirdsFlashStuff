package §<!e§
{
   import §0t§.§"I§;
   import §1o§.§'8§;
   import §1o§.§,!c§;
   import §1o§.§7B§;
   import §1o§.§8!%§;
   import §2!,§.§!Q§;
   import flash.display.MovieClip;
   
   public class §"!]§
   {
       
      
      private var §#!C§:§8!%§;
      
      public function §"!]§(param1:MovieClip, param2:§!Q§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§7B§ = null;
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
               _loc8_ = §"I§.§<!v§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || §,!c§.§4!^§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §7B§(param2.userId,"",false,§'8§.NORMAL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§#!C§ = new §8!%§(param2.userId,_loc8_,false,"220");
               this.§#!C§.scaleX = 0.59;
               this.§#!C§.scaleY = 0.59;
               _loc4_.addChild(this.§#!C§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§#!C§)
         {
            this.§#!C§.dispose();
         }
      }
   }
}
