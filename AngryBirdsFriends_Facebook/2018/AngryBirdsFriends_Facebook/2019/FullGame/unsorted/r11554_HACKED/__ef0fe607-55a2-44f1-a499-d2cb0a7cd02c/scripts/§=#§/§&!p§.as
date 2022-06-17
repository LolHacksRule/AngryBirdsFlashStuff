package §=#§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §&!p§ extends §%#y§
   {
      
      private static const §;C§:int = 50;
       
      
      private var §]!O§:MovieClip;
      
      public function §&!p§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false, param6:String = null)
      {
         this.§]!O§ = new MovieClip();
         addChild(this.§]!O§);
         super(param1,param2,param3,param4,!!param6 ? param6 : "",param5);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         super.createAvatar(param1);
         if(param1 == §1#+§.§;D§[§1#+§.§]!;§])
         {
            §-" §.visible = true;
         }
         this.§`"-§(§-" §);
         this.§]!E§(§?!!§,§;C§);
         this.§?!x§(§-" § as §1!"§);
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         super.createFacebookProfile(true);
         this.§`"-§(§?!!§);
         this.§?!x§(§?!!§ as §1!"§);
      }
      
      private function §`"-§(param1:Sprite) : void
      {
         while(this.§]!O§.numChildren > 0)
         {
            this.§]!O§.removeChildAt(0);
         }
         this.§]!O§.scrollRect = new Rectangle(0,0,§;C§,§;C§);
         this.§]!O§.addChild(param1);
      }
      
      private function §?!x§(param1:§1!"§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§]!E§(param1,§;C§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§@"S§);
         }
      }
      
      private function §@"S§(param1:Event) : void
      {
         var _loc2_:§1!"§ = param1.currentTarget as §1!"§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§@"S§);
         }
         this.§]!E§(_loc2_,§;C§);
      }
      
      private function §]!E§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §%"O§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §1!"§)
         {
            _loc4_ = (param1 as §1!"§).bitmapWidth;
            _loc5_ = (param1 as §1!"§).bitmapHeight;
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
      
      public function §%"F§() : MovieClip
      {
         return this.§]!O§;
      }
   }
}
