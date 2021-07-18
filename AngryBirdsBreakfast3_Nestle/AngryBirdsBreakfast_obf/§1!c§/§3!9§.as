package §1!c§
{
   import §,M§.§+f§;
   import §37§.§4=§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §3!9§ extends §4=§
   {
       
      
      public function §3!9§(param1:§+f§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setViewSize(param1,param2);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setLoadingScreen(param1);
            do
            {
               this.setLoadingPercentage(0);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§=x§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
         }
      }
   }
}
