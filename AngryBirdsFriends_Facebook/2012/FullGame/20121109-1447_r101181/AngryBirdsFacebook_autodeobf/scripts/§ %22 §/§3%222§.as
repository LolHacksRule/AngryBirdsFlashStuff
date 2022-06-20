package § " §
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §3"2§ extends §2!!§
   {
      
      private static const §,!l§:int = 50;
       
      
      private var §%",§:MovieClip;
      
      public function §3"2§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§%",§ = new MovieClip();
         addChild(this.§%",§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§#!j§);
         this.§8T§(§>!#§);
         this.§"G§(§#!j§,§,!l§);
         this.§8"F§(§>!#§ as §+!p§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§8T§(§#!j§);
         this.§8"F§(§#!j§ as §+!p§);
      }
      
      private function §8T§(param1:Sprite) : void
      {
         while(this.§%",§.numChildren > 0)
         {
            this.§%",§.removeChildAt(0);
         }
         this.§%",§.scrollRect = new Rectangle(0,0,§,!l§,§,!l§);
         this.§%",§.addChild(param1);
      }
      
      private function §8"F§(param1:§+!p§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§"G§(param1,§,!l§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§04§);
         }
      }
      
      private function §04§(param1:Event) : void
      {
         var _loc2_:§+!p§ = param1.currentTarget as §+!p§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§04§);
         }
         this.§"G§(_loc2_,§,!l§);
      }
      
      private function §"G§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc5_:int = 0;
         var _loc4_:int = param1.width;
         _loc5_ = param1.height;
         if(param1 is §3P§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §+!p§)
         {
            _loc4_ = (param1 as §+!p§).§!b§;
            _loc5_ = (param1 as §+!p§).§6!n§;
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
