package §3!8§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §null § extends §0z§
   {
      
      private static const §[^§:int = 50;
       
      
      private var §+"§:MovieClip;
      
      public function §null §(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§+"§ = new MovieClip();
         addChild(this.§+"§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§4!H§);
         this.§#!^§(§=!s§);
         this.§<!!§(§4!H§,§[^§);
         this.§9i§(§=!s§ as §%!5§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§#!^§(§4!H§);
         this.§9i§(§4!H§ as §%!5§);
      }
      
      private function §#!^§(param1:Sprite) : void
      {
         while(this.§+"§.numChildren > 0)
         {
            this.§+"§.removeChildAt(0);
         }
         this.§+"§.scrollRect = new Rectangle(0,0,§[^§,§[^§);
         this.§+"§.addChild(param1);
      }
      
      private function §9i§(param1:§%!5§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§<!!§(param1,§[^§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§>4§);
         }
      }
      
      private function §>4§(param1:Event) : void
      {
         var _loc2_:§%!5§ = param1.currentTarget as §%!5§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§>4§);
         }
         this.§<!!§(_loc2_,§[^§);
      }
      
      private function §<!!§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §2!_§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §%!5§)
         {
            _loc4_ = (param1 as §%!5§).§+1§;
            _loc5_ = (param1 as §%!5§).§#!b§;
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
