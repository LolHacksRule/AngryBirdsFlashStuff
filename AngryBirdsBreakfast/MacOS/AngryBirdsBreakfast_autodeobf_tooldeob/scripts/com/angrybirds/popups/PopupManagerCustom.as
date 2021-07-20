package com.angrybirds.popups
{
   import com.rovio.ui.popup.PopupManager;
   import com.rovio.ui.popup.PopupLayer;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.BasicGame;
   import flash.display.MovieClip;
   
   public class PopupManagerCustom extends PopupManager
   {
       
      
      public function PopupManagerCustom(param1:MovieClip, param2:LocalizationManager, param3:BasicGame, param4:Number, param5:Number, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function closeAllPopupsCustom(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:PopupLayer = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in mLayers)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.clearQueue();
            }
         }
      }
   }
}
