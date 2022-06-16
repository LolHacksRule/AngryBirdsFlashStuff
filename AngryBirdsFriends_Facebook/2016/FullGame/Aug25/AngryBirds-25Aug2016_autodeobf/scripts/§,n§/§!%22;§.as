package §,n§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §!";§ extends §3I§
   {
      
      private static const §3n§:int = 50;
       
      
      private var §7" §:MovieClip;
      
      public function §!";§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false, param6:String = null)
      {
         this.§7" § = new MovieClip();
         addChild(this.§7" §);
         super(param1,param2,param3,param4,!!param6 ? param6 : "",param5);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         super.createAvatar(param1);
         if(param1 == §?#!§.§@$6§[§?#!§.§8"N§])
         {
            §3$#§.visible = true;
         }
         this.§]!r§(§3$#§);
         this.§^$0§(§@W§,§3n§);
         this.§!!$§(§3$#§ as §+!f§);
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         super.createFacebookProfile(true);
         this.§]!r§(§@W§);
         this.§!!$§(§@W§ as §+!f§);
      }
      
      private function §]!r§(param1:Sprite) : void
      {
         while(this.§7" §.numChildren > 0)
         {
            this.§7" §.removeChildAt(0);
         }
         this.§7" §.scrollRect = new Rectangle(0,0,§3n§,§3n§);
         this.§7" §.addChild(param1);
      }
      
      private function §!!$§(param1:§+!f§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§^$0§(param1,§3n§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§1#X§);
         }
      }
      
      private function §1#X§(param1:Event) : void
      {
         var _loc2_:§+!f§ = param1.currentTarget as §+!f§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§1#X§);
         }
         this.§^$0§(_loc2_,§3n§);
      }
      
      private function §^$0§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §^;§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §+!f§)
         {
            _loc4_ = (param1 as §+!f§).bitmapWidth;
            _loc5_ = (param1 as §+!f§).bitmapHeight;
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
      
      public function §7!b§() : MovieClip
      {
         return this.§7" §;
      }
   }
}
