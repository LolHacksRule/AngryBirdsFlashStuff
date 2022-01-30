package §9!y§
{
   public class §'^§ extends §+'§
   {
      
      private static const §@O§:int = 8;
       
      
      public function §'^§(param1:Vector.<String> = null)
      {
         var _loc2_:String = null;
         var _loc3_:int = Math.random() * §@O§;
         do
         {
            switch(_loc3_)
            {
               case 0:
                  _loc2_ = "P_PIG_7";
                  break;
               case 1:
                  _loc2_ = "P_PIG_6";
                  break;
               case 2:
                  _loc2_ = "P_PIG_5";
                  break;
               case 3:
                  _loc2_ = "P_PIG_4";
                  break;
               case 4:
                  _loc2_ = "P_PIG_3";
                  break;
               case 5:
                  _loc2_ = "P_PIG_2";
                  break;
               case 6:
                  _loc2_ = "P_PIG_1";
                  break;
               case 7:
                  _loc2_ = "P_PIG_8";
                  break;
            }
            _loc3_ = (_loc3_ + 1) % §@O§;
         }
         while(param1 != null && param1.indexOf(_loc2_) == -1);
         
         super(_loc2_);
      }
   }
}
