package §,#§
{
   import §"!G§.§3!f§;
   import §^C§.§>!w§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §?!T§ extends §>!w§
   {
       
      
      public function §?!T§(param1:§3!f§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         (§6"&§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
      }
   }
}
