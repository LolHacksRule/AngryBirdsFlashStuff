package §%w§
{
   import §-H§.§@!-§;
   import flash.display.MovieClip;
   
   public class §@!V§ extends §@!-§
   {
       
      
      public function §@!V§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.setViewSize(param1,param2);
            loop0:
            while(§2L§)
            {
               if(!(_loc3_ && param2))
               {
                  §2L§.x = 0;
               }
               loop1:
               while(!(_loc3_ && param1))
               {
                  while(true)
                  {
                     §2L§.y = 0;
                     if(_loc4_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() * (§2L§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(!(_loc3_ && this))
         {
            (§2L§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
   }
}
