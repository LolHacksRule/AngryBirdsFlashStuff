package §5"$§
{
   import §%$!§.§8!t§;
   import §%$!§.§9$6§;
   import §,n§.§!";§;
   import §,n§.§+!f§;
   import §,n§.§3I§;
   import §,n§.§]E§;
   import §;4§.§-#a§;
   import flash.display.MovieClip;
   
   public class §+#Y§
   {
       
      
      private var §0!_§:§]E§;
      
      public function §+#Y§(param1:MovieClip, param2:§8!t§)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:§!";§ = null;
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
               _loc8_ = §-#a§.§;"h§(param2.userId);
            }
            if(_loc8_ == "" || _loc8_ == null || §3I§.§5#"§ == false)
            {
               _loc5_.visible = true;
               _loc7_.visible = true;
               _loc6_.visible = true;
               _loc9_ = new §!";§(param2.userId,"",false,§+!f§.NORMAL,false,(param2 as §9$6§).profileImageURL);
               _loc6_.addChild(_loc9_);
            }
            else
            {
               _loc5_.visible = false;
               _loc7_.visible = false;
               _loc6_.visible = false;
               this.§0!_§ = new §]E§(param2.userId,_loc8_,false,"220",true);
               this.§0!_§.scaleX = 0.59;
               this.§0!_§.scaleY = 0.59;
               _loc4_.addChild(this.§0!_§);
            }
         }
      }
      
      public function dispose() : void
      {
         if(this.§0!_§)
         {
            this.§0!_§.dispose();
         }
      }
   }
}
