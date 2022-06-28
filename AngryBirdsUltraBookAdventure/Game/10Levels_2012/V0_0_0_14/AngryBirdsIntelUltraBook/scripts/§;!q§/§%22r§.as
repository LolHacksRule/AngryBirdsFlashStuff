package §;!q§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §"r§ extends §=t§
   {
      
      private static const §@f§:int = 50;
       
      
      private var §=9§:MovieClip;
      
      public function §"r§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§=9§ = new MovieClip();
         addChild(this.§=9§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§9!H§);
         this.§?!$§(§`!j§);
         this.§4%§(§9!H§,§@f§);
         this.§>@§(§`!j§ as §%t§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§?!$§(§9!H§);
         this.§>@§(§9!H§ as §%t§);
      }
      
      private function §?!$§(param1:Sprite) : void
      {
         while(this.§=9§.numChildren > 0)
         {
            this.§=9§.removeChildAt(0);
         }
         this.§=9§.scrollRect = new Rectangle(0,0,§@f§,§@f§);
         this.§=9§.addChild(param1);
      }
      
      private function §>@§(param1:§%t§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§4%§(param1,§@f§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§!#§);
         }
      }
      
      private function §!#§(param1:Event) : void
      {
         var _loc2_:§%t§ = param1.currentTarget as §%t§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§!#§);
         }
         this.§4%§(_loc2_,§@f§);
      }
      
      private function §4%§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §%!l§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §%t§)
         {
            _loc4_ = (param1 as §%t§).§!'§;
            _loc5_ = (param1 as §%t§).§`!W§;
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
