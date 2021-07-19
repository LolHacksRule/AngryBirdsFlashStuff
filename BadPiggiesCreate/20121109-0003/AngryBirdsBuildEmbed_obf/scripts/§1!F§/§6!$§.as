package §1!F§
{
   public class §6!$§ extends §#!@§
   {
       
      
      public function §6!$§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            if(!(_loc1_ && _loc1_))
            {
               §+!$§.getItemByName("Button_Fullscreen").setVisibility(false);
            }
         }
      }
   }
}
