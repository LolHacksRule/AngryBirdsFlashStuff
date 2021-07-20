package §^!o§
{
   import §2L§.§[!3§;
   import §6! §.§1!3§;
   import §6! §.§<"#§;
   import §6! §.§@!k§;
   import §6! §.§@2§;
   import §^!U§.§,J§;
   import flash.display.MovieClip;
   
   public class §@?§
   {
       
      
      private var §]!>§:§1!3§;
      
      public function §@?§(param1:MovieClip, param2:§,J§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§@2§ = null;
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
               _loc8_ = §[!3§.§5O§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || §<"#§.§+y§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §@2§(param2.userId,"",false,§@!k§.NORMAL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§]!>§ = new §1!3§(param2.userId,_loc8_,false,"220");
               this.§]!>§.scaleX = 0.59;
               this.§]!>§.scaleY = 0.59;
               _loc4_.addChild(this.§]!>§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§]!>§)
         {
            this.§]!>§.dispose();
         }
      }
   }
}
