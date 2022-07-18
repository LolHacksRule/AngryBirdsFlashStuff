package §+!c§
{
   import §1!i§.§,#_§;
   import com.rovio.assets.§5_§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9"1§ extends Sprite
   {
      
      private static var §!">§:§,#_§;
       
      
      private var §""b§:String;
      
      private var §1"O§:Array;
      
      private var §6"?§:Number = -1;
      
      private var §[!4§:Number = -1;
      
      private var §5!n§:Number = -1;
      
      private var §9"%§:Number = -1;
      
      private var §&"H§:Boolean;
      
      private var §=#V§:Array;
      
      public function §9"1§(param1:String, param2:Boolean = true)
      {
         this.§1"O§ = [];
         super();
         this.§&"H§ = param2;
         this.§""b§ = param1;
         if(this.§&"H§)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§+y§);
            if(§!">§ == null)
            {
               §!">§ = new §,#_§();
            }
            if(§!">§[this.§""b§] == undefined)
            {
               §!">§[this.§""b§] = [];
            }
            this.§=#V§ = §!">§[this.§""b§];
         }
      }
      
      private function §2f§(param1:Event) : void
      {
         this.§@",§();
      }
      
      private function §+y§(param1:Event) : void
      {
         var _loc3_:Array = null;
         var _loc4_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1"O§.length)
         {
            _loc3_ = this.§1"O§[_loc2_];
            while(_loc3_.length > 0)
            {
               _loc4_ = _loc3_.pop();
               removeChild(_loc4_);
               this.§#2§(_loc4_);
            }
            _loc2_++;
         }
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§6"?§ = param1;
         this.§[!4§ = param2;
         this.§@",§();
      }
      
      private function §@",§() : void
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(this.§6"?§ < 0 || this.§[!4§ < 0)
         {
            return;
         }
         if(this.§5!n§ == -1 || this.§9"%§ == -1)
         {
            _loc4_ = this.§#!`§();
            this.§5!n§ = _loc4_.width;
            this.§9"%§ = _loc4_.height;
            if(this.§&"H§)
            {
               this.§#2§(_loc4_);
            }
         }
         var _loc1_:int = Math.ceil(this.§6"?§ / (this.§5!n§ * scaleX));
         var _loc2_:int = Math.ceil(this.§[!4§ / (this.§9"%§ * scaleY));
         var _loc3_:int = 0;
         while(_loc3_ < this.§1"O§.length)
         {
            _loc6_ = (_loc5_ = this.§1"O§[_loc3_]).length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc6_ >= _loc1_ || _loc3_ >= _loc2_)
               {
                  _loc7_ = _loc5_[_loc6_];
                  removeChild(_loc7_);
                  if(this.§&"H§)
                  {
                     this.§#2§(_loc7_);
                  }
                  _loc5_.pop();
               }
               _loc6_--;
            }
            _loc3_++;
         }
         while(this.§1"O§.length < _loc2_)
         {
            this.§1"O§.push([]);
         }
         _loc3_ = 0;
         while(_loc3_ < this.§1"O§.length)
         {
            _loc5_ = this.§1"O§[_loc3_];
            while(_loc5_.length < _loc1_)
            {
               (_loc8_ = this.§#!`§()).x = _loc5_.length * this.§5!n§;
               _loc8_.y = _loc3_ * this.§9"%§;
               addChild(_loc8_);
               _loc5_.push(_loc8_);
            }
            _loc3_++;
         }
      }
      
      override public function get width() : Number
      {
         return this.§6"?§;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§6"?§ = param1;
         this.§@",§();
      }
      
      override public function get height() : Number
      {
         return this.§[!4§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§[!4§ = param1;
         this.§@",§();
      }
      
      override public function set scaleX(param1:Number) : void
      {
         super.scaleX = param1;
         this.§@",§();
      }
      
      override public function set scaleY(param1:Number) : void
      {
         super.scaleY = param1;
         this.§@",§();
      }
      
      private function §#!`§() : DisplayObject
      {
         if(this.§&"H§ == false || this.§=#V§.length == 0)
         {
            return new §5_§.§`"G§(this.§""b§)();
         }
         return this.§=#V§.pop();
      }
      
      private function §#2§(param1:DisplayObject) : void
      {
         this.§=#V§.push(param1);
      }
   }
}
