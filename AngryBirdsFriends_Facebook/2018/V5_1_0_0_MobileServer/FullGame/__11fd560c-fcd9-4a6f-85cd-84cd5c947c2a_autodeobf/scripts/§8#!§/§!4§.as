package §8#!§
{
   import §"!!§.§1§;
   import §+$?§.§#"n§;
   import §+$?§.§+F§;
   import §+$?§.§4!+§;
   import §+$?§.§=#>§;
   import §2G§.§4O§;
   import §2G§.§5$4§;
   import flash.display.MovieClip;
   
   public class §!4§
   {
       
      
      private var §#!v§:§+F§;
      
      public function §!4§(param1:MovieClip, param2:§5$4§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§#"n§ = null;
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
               _loc8_ = §1#0§.§^y§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || §=#>§.§]#R§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §#"n§(param2.userId,"",false,§4!+§.NORMAL,false,(param2 as §4O§).profileImageURL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§#!v§ = new §+F§(param2.userId,_loc8_,false,"220",true);
               this.§#!v§.scaleX = 0.59;
               this.§#!v§.scaleY = 0.59;
               _loc4_.addChild(this.§#!v§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§#!v§)
         {
            this.§#!v§.dispose();
         }
      }
   }
}
