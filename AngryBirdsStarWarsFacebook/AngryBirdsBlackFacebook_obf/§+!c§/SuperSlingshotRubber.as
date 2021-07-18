package §+!c§
{
   import §7!F§.§0'§;
   import §7!F§.§`y§;
   import com.angrybirds.§,!q§;
   
   public class SuperSlingshotRubber extends §0'§
   {
      
      private static const §@T§:String = "SuperSlingshotRubber";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@T§ = "SuperSlingshotRubber";
         }
      }
      
      public function SuperSlingshotRubber()
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         if(_loc4_ || _loc2_)
         {
            if(!_loc1_.getAnimation(§@T§))
            {
               addr37:
               _loc2_ = [];
               if(_loc4_)
               {
                  _loc3_ = 1;
               }
               while(true)
               {
                  if(_loc3_ > 5)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              _loc1_.§%#M§(§@T§,_loc2_);
                              addr72:
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr85:
                           }
                           _loc3_++;
                        }
                        continue;
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     _loc2_.push("SABERSLING_HOLDER_0" + _loc3_);
                  }
                  §§goto(addr85);
               }
            }
            super(_loc1_.getAnimation(§@T§),true,20);
            return;
         }
         §§goto(addr37);
      }
   }
}
