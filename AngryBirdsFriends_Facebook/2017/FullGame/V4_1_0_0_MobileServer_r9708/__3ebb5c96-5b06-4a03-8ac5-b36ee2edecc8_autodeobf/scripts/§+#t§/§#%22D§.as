package §+#t§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §#"D§ extends §-"3§
   {
      
      private static const §'#2§:int = 50;
       
      
      private var §"N§:MovieClip;
      
      public function §#"D§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false, param6:String = null)
      {
         this.§"N§ = new MovieClip();
         addChild(this.§"N§);
         super(param1,param2,param3,param4,!!param6 ? param6 : "",param5);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         super.createAvatar(param1);
         if(param1 == §!"l§.§,!E§[§!"l§.§8!3§])
         {
            §;$&§.visible = true;
         }
         this.§4G§(§;$&§);
         this.§>&§(§8!m§,§'#2§);
         this.§7#&§(§;$&§ as §5V§);
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         super.createFacebookProfile(true);
         this.§4G§(§8!m§);
         this.§7#&§(§8!m§ as §5V§);
      }
      
      private function §4G§(param1:Sprite) : void
      {
         while(this.§"N§.numChildren > 0)
         {
            this.§"N§.removeChildAt(0);
         }
         this.§"N§.scrollRect = new Rectangle(0,0,§'#2§,§'#2§);
         this.§"N§.addChild(param1);
      }
      
      private function §7#&§(param1:§5V§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§>&§(param1,§'#2§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§;#E§);
         }
      }
      
      private function §;#E§(param1:Event) : void
      {
         var _loc2_:§5V§ = param1.currentTarget as §5V§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§;#E§);
         }
         this.§>&§(_loc2_,§'#2§);
      }
      
      private function §>&§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §5F§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §5V§)
         {
            _loc4_ = (param1 as §5V§).bitmapWidth;
            _loc5_ = (param1 as §5V§).bitmapHeight;
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
      
      public function §?![§() : MovieClip
      {
         return this.§"N§;
      }
   }
}
