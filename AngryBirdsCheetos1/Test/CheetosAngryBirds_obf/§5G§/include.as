package §5G§
{
   import §"§.§;!?§;
   import flash.display.MovieClip;
   
   public class include extends §;!?§
   {
       
      
      public function include(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setViewSize(param1,param2);
            while(§=b§)
            {
               if(_loc3_)
               {
                  §=b§.x = 0;
               }
               do
               {
                  §=b§.y = 0;
               }
               while(_loc4_);
               
               if(_loc3_)
               {
                  addr41:
                  break;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() * (§=b§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(_loc4_ || _loc2_)
         {
            (§=b§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
   }
}
