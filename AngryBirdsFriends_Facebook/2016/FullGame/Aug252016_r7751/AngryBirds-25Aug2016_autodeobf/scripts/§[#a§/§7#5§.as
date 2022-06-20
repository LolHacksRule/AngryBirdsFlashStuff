package §[#a§
{
   import §,#L§.§!#%§;
   import §8§.§#$+§;
   import §8§.§@!"§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §>!#§.§'"R§;
   import §?§.§>"$§;
   import §@"§.§]!-§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   import §`#C§.§@!1§;
   
   public class §7#5§ extends §`#X§
   {
      
      private static var §`#y§:§'"R§ = new §'"R§();
       
      
      private var §96§:String;
      
      public function §7#5§(param1:String, param2:Sprite, param3:§`"W§, param4:b2World, param5:§8K§, param6:§!#%§, param7:Number, param8:String = "", param9:int = 1)
      {
         this.§96§ = param1;
         var _loc10_:String = param5.itemName;
         var _loc11_:§`"W§;
         if(!(_loc11_ = §>"$§.§3#'§.animationManager.getAnimation(_loc10_)))
         {
            _loc11_ = this.§%>§(param5,_loc10_);
         }
         super(param2,_loc11_,param4,param5,param6,param7);
      }
      
      private function §%>§(param1:§8K§, param2:String) : §`"W§
      {
         var _loc3_:Array = param1.getAnimationDefinitions();
         var _loc4_:§]!-§;
         (_loc4_ = §>"$§.§3#'§.animationManager).§3!A§(param2,_loc3_);
         return _loc4_.getAnimation(param2);
      }
      
      override public function isTnt() : Boolean
      {
         var _loc1_:* = Boolean(super.isTnt());
         if(!_loc1_)
         {
            _loc1_ = itemName.indexOf("MISC_THEMED_EXPLOSIVE_") != -1;
         }
         return _loc1_;
      }
      
      override protected function playScreamSound() : void
      {
         var _loc1_:String = (levelItem as §@!1§).idleSound;
         var _loc2_:String = (levelItem as §@!1§).soundChannel;
         if(_loc1_)
         {
            §#$+§.§=#P§(_loc1_,_loc2_ == null ? §#$+§.§#"k§ : _loc2_);
         }
      }
      
      override public function playFearSound() : §@!"§
      {
         var _loc1_:String = (levelItem as §@!1§).fearSound;
         var _loc2_:String = (levelItem as §@!1§).soundChannel;
         var _loc3_:§@!"§ = null;
         if(_loc1_)
         {
            _loc3_ = §#$+§.§=#P§(_loc1_,_loc2_ == null ? §#$+§.§#"k§ : _loc2_);
         }
         return _loc3_;
      }
   }
}
