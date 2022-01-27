package §`"]§
{
   import §!!k§.§'§;
   import §!!k§.§?!3§;
   import com.angrybirds.§<!J§;
   
   public class SuperSlingshotRubber extends §'#4§
   {
      
      private static const §!#0§:String = "SuperSlingshotRubber";
       
      
      public function SuperSlingshotRubber()
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc1_:§?!3§ = §<!J§.§=!%§.animationManager;
         if(!_loc1_.getAnimation(§!#0§))
         {
            _loc2_ = [];
            _loc3_ = 1;
            while(_loc3_ <= 5)
            {
               _loc2_.push("SABERSLING_HOLDER_0" + _loc3_);
               _loc3_++;
            }
            _loc1_.§&!d§(§!#0§,_loc2_);
         }
         super(_loc1_.getAnimation(§!#0§),true,20);
      }
   }
}
