package §];§
{
   import §&"J§.§%"E§;
   import §&"J§.§3!3§;
   import §+#t§.§#"D§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §+#t§.§7§;
   import §[G§.§8A§;
   import flash.display.MovieClip;
   
   public class §0+§
   {
       
      
      private var §5!A§:§7#4§;
      
      public function §0+§(param1:MovieClip, param2:§%"E§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§#"D§ = null;
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
               _loc8_ = §8A§.§&i§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || §-"3§.§<"l§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §#"D§(param2.userId,"",false,§5V§.NORMAL,false,(param2 as §3!3§).profileImageURL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§5!A§ = new §7#4§(param2.userId,_loc8_,false,"220",true);
               this.§5!A§.scaleX = 0.59;
               this.§5!A§.scaleY = 0.59;
               _loc4_.addChild(this.§5!A§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§5!A§)
         {
            this.§5!A§.dispose();
         }
      }
   }
}
