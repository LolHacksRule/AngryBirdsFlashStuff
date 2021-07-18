package §'!O§
{
   import §-!"§.§>!W§;
   import flash.display.MovieClip;
   
   public class §^!V§ extends §>!W§
   {
       
      
      public function §^!V§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.setViewSize(param1,param2);
            loop0:
            while(§+!E§)
            {
               loop1:
               while(_loc3_)
               {
                  §+!E§.x = 0;
                  while(true)
                  {
                     §+!E§.y = 0;
                     if(_loc3_)
                     {
                        if(_loc3_ || param1)
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() * (§+!E§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(_loc3_ || _loc3_)
         {
            (§+!E§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
   }
}
