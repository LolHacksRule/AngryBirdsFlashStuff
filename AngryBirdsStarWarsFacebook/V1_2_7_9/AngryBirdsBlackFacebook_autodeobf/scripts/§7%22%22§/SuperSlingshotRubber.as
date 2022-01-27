package §7""§
{
   import §3"$§.§@!3§;
   import §3"$§.§]k§;
   import com.angrybirds.§;!e§;
   
   public class SuperSlingshotRubber extends §@!3§
   {
      
      private static const §^!A§:String = "SuperSlingshotRubber";
       
      
      public function SuperSlingshotRubber()
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc1_:§]k§ = §;!e§.§<x§.animationManager;
         if(!_loc1_.getAnimation(§^!A§))
         {
            _loc2_ = [];
            _loc3_ = 1;
            while(_loc3_ <= 5)
            {
               _loc2_.push("SABERSLING_HOLDER_0" + _loc3_);
               _loc3_++;
            }
            _loc1_.§`'§(§^!A§,_loc2_);
         }
         super(_loc1_.getAnimation(§^!A§),true,20);
      }
   }
}
