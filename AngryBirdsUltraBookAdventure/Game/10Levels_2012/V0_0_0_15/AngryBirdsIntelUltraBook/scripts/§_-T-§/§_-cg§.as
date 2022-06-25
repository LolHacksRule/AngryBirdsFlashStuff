package §_-T-§
{
   import §_-ad§.§_-05N§;
   
   public class §_-cg§ extends §_-05N§
   {
       
      
      public function §_-cg§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            do
            {
               §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
   }
}
