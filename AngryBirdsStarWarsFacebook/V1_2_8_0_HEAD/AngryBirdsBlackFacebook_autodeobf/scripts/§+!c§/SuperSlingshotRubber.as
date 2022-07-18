package §+!c§
{
   import §7!F§.§0'§;
   import §7!F§.§`y§;
   import com.angrybirds.§,!q§;
   
   public class SuperSlingshotRubber extends §0'§
   {
      
      private static const §@T§:String = "SuperSlingshotRubber";
       
      
      public function SuperSlingshotRubber()
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         if(!_loc1_.getAnimation(§@T§))
         {
            _loc2_ = [];
            _loc3_ = 1;
            while(_loc3_ <= 5)
            {
               _loc2_.push("SABERSLING_HOLDER_0" + _loc3_);
               _loc3_++;
            }
            _loc1_.§%#M§(§@T§,_loc2_);
         }
         super(_loc1_.getAnimation(§@T§),true,20);
      }
   }
}
