package §9x§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §6!P§ extends § m§
   {
      
      private static const §1#M§:int = 50;
       
      
      private var §[;§:MovieClip;
      
      public function §6!P§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false, param6:String = null)
      {
         this.§[;§ = new MovieClip();
         addChild(this.§[;§);
         super(param1,param2,param3,param4,!!param6 ? param6 : "",param5);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         super.createAvatar(param1);
         if(param1 == §&$<§.§5I§[§&$<§.§0"a§])
         {
            §-#2§.visible = true;
         }
         this.§`"[§(§-#2§);
         this.§ V§(§&J§,§1#M§);
         this.§+"p§(§-#2§ as §7",§);
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         super.createFacebookProfile(true);
         this.§`"[§(§&J§);
         this.§+"p§(§&J§ as §7",§);
      }
      
      private function §`"[§(param1:Sprite) : void
      {
         while(this.§[;§.numChildren > 0)
         {
            this.§[;§.removeChildAt(0);
         }
         this.§[;§.scrollRect = new Rectangle(0,0,§1#M§,§1#M§);
         this.§[;§.addChild(param1);
      }
      
      private function §+"p§(param1:§7",§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§ V§(param1,§1#M§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§>U§);
         }
      }
      
      private function §>U§(param1:Event) : void
      {
         var _loc2_:§7",§ = param1.currentTarget as §7",§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§>U§);
         }
         this.§ V§(_loc2_,§1#M§);
      }
      
      private function § V§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §9#4§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §7",§)
         {
            _loc4_ = (param1 as §7",§).bitmapWidth;
            _loc5_ = (param1 as §7",§).bitmapHeight;
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
      
      public function §9#I§() : MovieClip
      {
         return this.§[;§;
      }
   }
}
