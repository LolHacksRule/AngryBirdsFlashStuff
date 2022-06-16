package §6! §
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §@2§ extends §<"#§
   {
      
      private static const §]>§:int = 50;
       
      
      private var § !a§:MovieClip;
      
      public function §@2§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§ !a§ = new MovieClip();
         addChild(this.§ !a§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§+W§);
         this.§@" §(§5"9§);
         this.§2@§(§+W§,§]>§);
         this.§ !e§(§5"9§ as §@!k§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§@" §(§+W§);
         this.§ !e§(§+W§ as §@!k§);
      }
      
      private function §@" §(param1:Sprite) : void
      {
         while(this.§ !a§.numChildren > 0)
         {
            this.§ !a§.removeChildAt(0);
         }
         this.§ !a§.scrollRect = new Rectangle(0,0,§]>§,§]>§);
         this.§ !a§.addChild(param1);
      }
      
      private function § !e§(param1:§@!k§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§2@§(param1,§]>§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§"!T§);
         }
      }
      
      private function §"!T§(param1:Event) : void
      {
         var _loc2_:§@!k§ = param1.currentTarget as §@!k§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§"!T§);
         }
         this.§2@§(_loc2_,§]>§);
      }
      
      private function §2@§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc5_:int = 0;
         var _loc4_:int = param1.width;
         _loc5_ = param1.height;
         if(param1 is §9!t§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §@!k§)
         {
            _loc4_ = (param1 as §@!k§).§#<§;
            _loc5_ = (param1 as §@!k§).§87§;
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
