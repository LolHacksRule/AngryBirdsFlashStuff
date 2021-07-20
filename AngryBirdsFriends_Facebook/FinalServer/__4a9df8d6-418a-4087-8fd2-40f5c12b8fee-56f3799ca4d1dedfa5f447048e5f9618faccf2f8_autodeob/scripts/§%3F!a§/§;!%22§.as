package §?!a§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §;!"§ extends §-=§
   {
      
      private static const § #&§:int = 50;
       
      
      private var §4#^§:MovieClip;
      
      public function §;!"§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false, param6:String = null)
      {
         this.§4#^§ = new MovieClip();
         addChild(this.§4#^§);
         super(param1,param2,param3,param4,!!param6 ? param6 : "",param5);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         super.createAvatar(param1);
         if(param1 == §4" §.§9# §[§4" §.§&#d§])
         {
            §#"@§.visible = true;
         }
         this.§>!!§(§#"@§);
         this.§1$$§(§<!]§,§ #&§);
         this.§2!5§(§#"@§ as §6#b§);
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         super.createFacebookProfile(true);
         this.§>!!§(§<!]§);
         this.§2!5§(§<!]§ as §6#b§);
      }
      
      private function §>!!§(param1:Sprite) : void
      {
         while(this.§4#^§.numChildren > 0)
         {
            this.§4#^§.removeChildAt(0);
         }
         this.§4#^§.scrollRect = new Rectangle(0,0,§ #&§,§ #&§);
         this.§4#^§.addChild(param1);
      }
      
      private function §2!5§(param1:§6#b§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§1$$§(param1,§ #&§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§["n§);
         }
      }
      
      private function §["n§(param1:Event) : void
      {
         var _loc2_:§6#b§ = param1.currentTarget as §6#b§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§["n§);
         }
         this.§1$$§(_loc2_,§ #&§);
      }
      
      private function §1$$§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §=4§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §6#b§)
         {
            _loc4_ = (param1 as §6#b§).bitmapWidth;
            _loc5_ = (param1 as §6#b§).bitmapHeight;
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
      
      public function §3!J§() : MovieClip
      {
         return this.§4#^§;
      }
   }
}
