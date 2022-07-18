package §5§#7
{
   import flash.display.Graphics;
   import flash.display.MovieClip;
   
   public class §%!I§ extends TutorialPopup
   {
       
      
      private var §;!p§:Boolean = false;
      
      public function §%!I§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§3!c§, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Graphics = null;
         if(!this.§;!p§)
         {
            _loc2_ = §^c§.mClip.graphics;
            _loc2_.beginFill(0,0);
            _loc2_.drawRect(0,0,§^c§.mClip.width,§^c§.mClip.height);
            _loc2_.endFill();
            this.§;!p§ = true;
         }
         super.show(param1);
      }
   }
}
