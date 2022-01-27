package §0b§
{
   import flash.display.Graphics;
   import flash.display.MovieClip;
   
   public class §1!c§ extends TutorialPopup
   {
       
      
      private var §;!j§:Boolean = false;
      
      public function §1!c§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§=#&§, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Graphics = null;
         if(!this.§;!j§)
         {
            _loc2_ = §,r§.mClip.graphics;
            _loc2_.beginFill(0,0);
            _loc2_.drawRect(0,0,§,r§.mClip.width,§,r§.mClip.height);
            _loc2_.endFill();
            this.§;!j§ = true;
         }
         super.show(param1);
      }
   }
}
