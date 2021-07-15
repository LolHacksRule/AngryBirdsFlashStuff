package com.graphics
{
   import com.rovio.graphics.DynamicContentManager;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.LevelManager;
   
   public class Clear extends DynamicContentManager
   {
       
      
      public function Clear(param1:String, param2:String, param3:LevelManager, param4:LevelItemManager, param5:Boolean = true, param6:int = 1)
      {
         super(param1,param2,param3,param5,param6);
      }
   }
}
