package §`"]§
{
   import §+d§.§2!g§;
   import com.rovio.assets.§%!Z§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §0!a§ extends Sprite
   {
      
      private static var §'!b§:§2!g§;
       
      
      private var §;K§:String;
      
      private var §&!S§:Array;
      
      private var §0"e§:Number = -1;
      
      private var §?!O§:Number = -1;
      
      private var §2">§:Number = -1;
      
      private var §-!h§:Number = -1;
      
      private var §#"?§:Boolean;
      
      private var §'#1§:Array;
      
      public function §0!a§(param1:String, param2:Boolean = true)
      {
         this.§&!S§ = [];
         super();
         this.§#"?§ = param2;
         this.§;K§ = param1;
         if(this.§#"?§)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§"#6§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§^!z§);
            if(§'!b§ == null)
            {
               §'!b§ = new §2!g§();
            }
            if(§'!b§[this.§;K§] == undefined)
            {
               §'!b§[this.§;K§] = [];
            }
            this.§'#1§ = §'!b§[this.§;K§];
         }
      }
      
      private function §"#6§(param1:Event) : void
      {
         this.§5!!§();
      }
      
      private function §^!z§(param1:Event) : void
      {
         var _loc3_:Array = null;
         var _loc4_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!S§.length)
         {
            _loc3_ = this.§&!S§[_loc2_];
            while(_loc3_.length > 0)
            {
               _loc4_ = _loc3_.pop();
               removeChild(_loc4_);
               this.§5"V§(_loc4_);
            }
            _loc2_++;
         }
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§0"e§ = param1;
         this.§?!O§ = param2;
         this.§5!!§();
      }
      
      private function §5!!§() : void
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(this.§0"e§ < 0 || this.§?!O§ < 0)
         {
            return;
         }
         if(this.§2">§ == -1 || this.§-!h§ == -1)
         {
            _loc4_ = this.§&#5§();
            this.§2">§ = _loc4_.width;
            this.§-!h§ = _loc4_.height;
            if(this.§#"?§)
            {
               this.§5"V§(_loc4_);
            }
         }
         var _loc1_:int = Math.ceil(this.§0"e§ / (this.§2">§ * scaleX));
         var _loc2_:int = Math.ceil(this.§?!O§ / (this.§-!h§ * scaleY));
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!S§.length)
         {
            _loc6_ = (_loc5_ = this.§&!S§[_loc3_]).length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc6_ >= _loc1_ || _loc3_ >= _loc2_)
               {
                  _loc7_ = _loc5_[_loc6_];
                  removeChild(_loc7_);
                  if(this.§#"?§)
                  {
                     this.§5"V§(_loc7_);
                  }
                  _loc5_.pop();
               }
               _loc6_--;
            }
            _loc3_++;
         }
         while(this.§&!S§.length < _loc2_)
         {
            this.§&!S§.push([]);
         }
         _loc3_ = 0;
         while(_loc3_ < this.§&!S§.length)
         {
            _loc5_ = this.§&!S§[_loc3_];
            while(_loc5_.length < _loc1_)
            {
               (_loc8_ = this.§&#5§()).x = _loc5_.length * this.§2">§;
               _loc8_.y = _loc3_ * this.§-!h§;
               addChild(_loc8_);
               _loc5_.push(_loc8_);
            }
            _loc3_++;
         }
      }
      
      override public function get width() : Number
      {
         return this.§0"e§;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§0"e§ = param1;
         this.§5!!§();
      }
      
      override public function get height() : Number
      {
         return this.§?!O§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§?!O§ = param1;
         this.§5!!§();
      }
      
      override public function set scaleX(param1:Number) : void
      {
         super.scaleX = param1;
         this.§5!!§();
      }
      
      override public function set scaleY(param1:Number) : void
      {
         super.scaleY = param1;
         this.§5!!§();
      }
      
      private function §&#5§() : DisplayObject
      {
         if(this.§#"?§ == false || this.§'#1§.length == 0)
         {
            return new §%!Z§.§;",§(this.§;K§)();
         }
         return this.§'#1§.pop();
      }
      
      private function §5"V§(param1:DisplayObject) : void
      {
         this.§'#1§.push(param1);
      }
   }
}
