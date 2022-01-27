package §7""§
{
   import §7A§.§5"2§;
   import com.rovio.assets.§5"]§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §0I§ extends Sprite
   {
      
      private static var §8!I§:§5"2§;
       
      
      private var §""E§:String;
      
      private var §?"J§:Array;
      
      private var §^"t§:Number = -1;
      
      private var §`!y§:Number = -1;
      
      private var §%"<§:Number = -1;
      
      private var § !;§:Number = -1;
      
      private var §5"L§:Boolean;
      
      private var §8"'§:Array;
      
      public function §0I§(param1:String, param2:Boolean = true)
      {
         this.§?"J§ = [];
         super();
         this.§5"L§ = param2;
         this.§""E§ = param1;
         if(this.§5"L§)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§[D§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§%!w§);
            if(§8!I§ == null)
            {
               §8!I§ = new §5"2§();
            }
            if(§8!I§[this.§""E§] == undefined)
            {
               §8!I§[this.§""E§] = [];
            }
            this.§8"'§ = §8!I§[this.§""E§];
         }
      }
      
      private function §[D§(param1:Event) : void
      {
         this.§="a§();
      }
      
      private function §%!w§(param1:Event) : void
      {
         var _loc3_:Array = null;
         var _loc4_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?"J§.length)
         {
            _loc3_ = this.§?"J§[_loc2_];
            while(_loc3_.length > 0)
            {
               _loc4_ = _loc3_.pop();
               removeChild(_loc4_);
               this.§#r§(_loc4_);
            }
            _loc2_++;
         }
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§^"t§ = param1;
         this.§`!y§ = param2;
         this.§="a§();
      }
      
      private function §="a§() : void
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(this.§^"t§ < 0 || this.§`!y§ < 0)
         {
            return;
         }
         if(this.§%"<§ == -1 || this.§ !;§ == -1)
         {
            _loc4_ = this.§5k§();
            this.§%"<§ = _loc4_.width;
            this.§ !;§ = _loc4_.height;
            if(this.§5"L§)
            {
               this.§#r§(_loc4_);
            }
         }
         var _loc1_:int = Math.ceil(this.§^"t§ / (this.§%"<§ * scaleX));
         var _loc2_:int = Math.ceil(this.§`!y§ / (this.§ !;§ * scaleY));
         var _loc3_:int = 0;
         while(_loc3_ < this.§?"J§.length)
         {
            _loc6_ = (_loc5_ = this.§?"J§[_loc3_]).length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc6_ >= _loc1_ || _loc3_ >= _loc2_)
               {
                  _loc7_ = _loc5_[_loc6_];
                  removeChild(_loc7_);
                  if(this.§5"L§)
                  {
                     this.§#r§(_loc7_);
                  }
                  _loc5_.pop();
               }
               _loc6_--;
            }
            _loc3_++;
         }
         while(this.§?"J§.length < _loc2_)
         {
            this.§?"J§.push([]);
         }
         _loc3_ = 0;
         while(_loc3_ < this.§?"J§.length)
         {
            _loc5_ = this.§?"J§[_loc3_];
            while(_loc5_.length < _loc1_)
            {
               (_loc8_ = this.§5k§()).x = _loc5_.length * this.§%"<§;
               _loc8_.y = _loc3_ * this.§ !;§;
               addChild(_loc8_);
               _loc5_.push(_loc8_);
            }
            _loc3_++;
         }
      }
      
      override public function get width() : Number
      {
         return this.§^"t§;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§^"t§ = param1;
         this.§="a§();
      }
      
      override public function get height() : Number
      {
         return this.§`!y§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§`!y§ = param1;
         this.§="a§();
      }
      
      override public function set scaleX(param1:Number) : void
      {
         super.scaleX = param1;
         this.§="a§();
      }
      
      override public function set scaleY(param1:Number) : void
      {
         super.scaleY = param1;
         this.§="a§();
      }
      
      private function §5k§() : DisplayObject
      {
         if(this.§5"L§ == false || this.§8"'§.length == 0)
         {
            return new §5"]§.§4!K§(this.§""E§)();
         }
         return this.§8"'§.pop();
      }
      
      private function §#r§(param1:DisplayObject) : void
      {
         this.§8"'§.push(param1);
      }
   }
}
