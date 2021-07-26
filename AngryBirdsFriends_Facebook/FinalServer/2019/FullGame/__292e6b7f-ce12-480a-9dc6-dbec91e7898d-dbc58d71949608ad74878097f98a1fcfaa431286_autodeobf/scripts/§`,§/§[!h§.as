package §`,§
{
   import §,#,§.§0!u§;
   import §,#,§.§2§;
   import §2!Y§.§"$=§;
   import §2G§.§+#]§;
   import §2G§.§3§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import flash.display.MovieClip;
   
   public class §[!h§
   {
       
      
      private var §1"w§:§3#1§;
      
      public function §[!h§(param1:MovieClip, param2:§2#9§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§+#]§ = null;
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
               _loc8_ = §"$=§.§ $8§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || §?$3§.§42§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §+#]§(param2.userId,"",false,§?!s§.NORMAL,false,(param2 as §0!u§).profileImageURL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§1"w§ = new §3#1§(param2.userId,_loc8_,false,"220",true);
               this.§1"w§.scaleX = 0.59;
               this.§1"w§.scaleY = 0.59;
               _loc4_.addChild(this.§1"w§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§1"w§)
         {
            this.§1"w§.dispose();
         }
      }
   }
}
