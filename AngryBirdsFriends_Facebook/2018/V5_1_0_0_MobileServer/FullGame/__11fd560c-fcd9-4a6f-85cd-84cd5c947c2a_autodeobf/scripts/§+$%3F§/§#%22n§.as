package §+$?§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §#"n§ extends §=#>§
   {
      
      private static const §?!<§:int = 50;
       
      
      private var §="H§:MovieClip;
      
      public function §#"n§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false, param6:String = null)
      {
         this.§="H§ = new MovieClip();
         addChild(this.§="H§);
         super(param1,param2,param3,param4,!!param6 ? param6 : "",param5);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         super.createAvatar(param1);
         if(param1 == §<"`§.§,;§[§<"`§.§8"P§])
         {
            §]"X§.visible = true;
         }
         this.§,$<§(§]"X§);
         this.§3H§(§'!,§,§?!<§);
         this.§3`§(§]"X§ as §4!+§);
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         super.createFacebookProfile(true);
         this.§,$<§(§'!,§);
         this.§3`§(§'!,§ as §4!+§);
      }
      
      private function §,$<§(param1:Sprite) : void
      {
         while(this.§="H§.numChildren > 0)
         {
            this.§="H§.removeChildAt(0);
         }
         this.§="H§.scrollRect = new Rectangle(0,0,§?!<§,§?!<§);
         this.§="H§.addChild(param1);
      }
      
      private function §3`§(param1:§4!+§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§3H§(param1,§?!<§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§7#0§);
         }
      }
      
      private function §7#0§(param1:Event) : void
      {
         var _loc2_:§4!+§ = param1.currentTarget as §4!+§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§7#0§);
         }
         this.§3H§(_loc2_,§?!<§);
      }
      
      private function §3H§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §="@§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §4!+§)
         {
            _loc4_ = (param1 as §4!+§).bitmapWidth;
            _loc5_ = (param1 as §4!+§).bitmapHeight;
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
      
      public function §@#§() : MovieClip
      {
         return this.§="H§;
      }
   }
}
