package §1o§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §7B§ extends §,!c§
   {
      
      private static const §<'§:int = 50;
       
      
      private var §""!§:MovieClip;
      
      public function §7B§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§""!§ = new MovieClip();
         addChild(this.§""!§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§9!u§);
         this.§4l§(§>"0§);
         this.§%!u§(§9!u§,§<'§);
         this.§=`§(§>"0§ as §'8§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§4l§(§9!u§);
         this.§=`§(§9!u§ as §'8§);
      }
      
      private function §4l§(param1:Sprite) : void
      {
         while(this.§""!§.numChildren > 0)
         {
            this.§""!§.removeChildAt(0);
         }
         this.§""!§.scrollRect = new Rectangle(0,0,§<'§,§<'§);
         this.§""!§.addChild(param1);
      }
      
      private function §=`§(param1:§'8§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§%!u§(param1,§<'§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§1"%§);
         }
      }
      
      private function §1"%§(param1:Event) : void
      {
         var _loc2_:§'8§ = param1.currentTarget as §'8§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§1"%§);
         }
         this.§%!u§(_loc2_,§<'§);
      }
      
      private function §%!u§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc5_:int = 0;
         var _loc4_:int = param1.width;
         _loc5_ = param1.height;
         if(param1 is §%"%§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §'8§)
         {
            _loc4_ = (param1 as §'8§).§#">§;
            _loc5_ = (param1 as §'8§).§;!J§;
            if(_loc4_ < _loc5_)
            {
               _loc3_ = param2 / _loc4_;
               param1.scaleX = _loc3_;
               param1.scaleY = _loc3_;
            }
            else
            {
               _loc3_ = param2 / _loc5_;
               param1.scaleX = _loc3_;
               param1.scaleY = _loc3_;
               param1.x = -(param1.width - param2) / 2;
            }
         }
      }
   }
}
