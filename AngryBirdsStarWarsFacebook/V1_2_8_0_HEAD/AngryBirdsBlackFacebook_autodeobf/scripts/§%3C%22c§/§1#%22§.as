package §<"c§
{
   import § §.§3Q§;
   import §>@§.§5"H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §1#"§ extends §3Q§
   {
       
      
      public function §1#"§(param1:§5"H§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(§'#F§)
         {
            _loc3_ = param1 / (§'#F§.width / §'#F§.scaleX);
            if(§'#F§.height / §'#F§.scaleY * _loc3_ > param2)
            {
               _loc3_ = param2 / (§'#F§.height / §'#F§.scaleY);
            }
            §'#F§.scaleX = §'#F§.scaleY = _loc3_;
            §'#F§.x = param1 - §'#F§.width >> 1;
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc5_:MovieClip;
         (_loc5_ = MovieClip(§'#F§.getChildByName("mcLoadBar"))["bar"]).width = 46 + param1 * (806 - 46);
         _loc5_.x = -85 - 46 / 2 + _loc5_.width / 2;
      }
   }
}
