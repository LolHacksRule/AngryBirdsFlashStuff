package §^`§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §%j§ extends §,!K§
   {
      
      private static const §5!Z§:int = 50;
       
      
      private var §6O§:MovieClip;
      
      public function §%j§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§6O§ = new MovieClip();
         addChild(this.§6O§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§4!^§);
         this.§1=§(§#Y§);
         this.§@2§(§4!^§,§5!Z§);
         this.§<?§(§#Y§ as §14§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§1=§(§4!^§);
         this.§<?§(§4!^§ as §14§);
      }
      
      private function §1=§(param1:Sprite) : void
      {
         while(this.§6O§.numChildren > 0)
         {
            this.§6O§.removeChildAt(0);
         }
         this.§6O§.scrollRect = new Rectangle(0,0,§5!Z§,§5!Z§);
         this.§6O§.addChild(param1);
      }
      
      private function §<?§(param1:§14§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§@2§(param1,§5!Z§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§0N§);
         }
      }
      
      private function §0N§(param1:Event) : void
      {
         var _loc2_:§14§ = param1.currentTarget as §14§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§0N§);
         }
         this.§@2§(_loc2_,§5!Z§);
      }
      
      private function §@2§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §>!N§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §14§)
         {
            _loc4_ = (param1 as §14§).§9! §;
            _loc5_ = (param1 as §14§).§1"$§;
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
