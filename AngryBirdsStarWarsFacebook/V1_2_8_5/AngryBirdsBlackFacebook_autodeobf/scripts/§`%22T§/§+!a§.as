package §`"T§
{
   import flash.display.Graphics;
   import flash.display.MovieClip;
   
   public class §+!a§ extends TutorialPopup
   {
       
      
      private var §-"P§:Boolean = false;
      
      public function §+!a§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§6";§, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Graphics = null;
         if(!this.§-"P§)
         {
            _loc2_ = §[#,§.mClip.graphics;
            _loc2_.beginFill(0,0);
            _loc2_.drawRect(0,0,§[#,§.mClip.width,§[#,§.mClip.height);
            _loc2_.endFill();
            this.§-"P§ = true;
         }
         super.show(param1);
      }
   }
}
