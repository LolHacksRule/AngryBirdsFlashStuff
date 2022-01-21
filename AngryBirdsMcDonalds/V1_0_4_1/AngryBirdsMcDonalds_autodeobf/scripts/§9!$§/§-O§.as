package §9!$§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §-O§
   {
       
      
      private var § !K§:TextField;
      
      private var §>6§:String;
      
      private var §5!]§:Vector.<§'W§>;
      
      private var §]!b§:§'W§ = null;
      
      private var §#Y§:Sprite;
      
      public function §-O§(param1:TextField, param2:String, param3:DisplayObjectContainer)
      {
         super();
         this.§ !K§ = param1;
         this.§>6§ = param2;
         this.§#Y§ = new Sprite();
         param3.addChild(this.§#Y§);
         this.init();
      }
      
      private function init() : void
      {
         this.§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§41§);
         this.§ !K§.addEventListener(MouseEvent.MOUSE_MOVE,this.§9+§);
         this.§5!]§ = new Vector.<§'W§>();
      }
      
      protected function §[!J§() : §'W§
      {
         return new §'W§();
      }
      
      public function §3;§(param1:String, param2:int = 0) : §'W§
      {
         var _loc5_:§'W§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Rectangle = null;
         var _loc3_:int = this.§>6§.indexOf(param1);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = this.§>6§.indexOf(param1,_loc3_ + param1.length);
            _loc4_++;
         }
         if(_loc3_ != -1 && param1.length > 1)
         {
            (_loc5_ = this.§[!J§()).text = param1;
            _loc5_.§4!e§ = _loc3_;
            _loc5_.§,!#§ = _loc3_ + param1.length - 1;
            _loc6_ = this.§ !K§.getCharBoundaries(_loc5_.§4!e§);
            _loc7_ = this.§ !K§.getCharBoundaries(_loc5_.§,!#§);
            _loc5_.§?!`§ = new Rectangle(_loc6_.x - _loc6_.width / 2,_loc6_.y,_loc7_.x + _loc7_.width - _loc6_.x + _loc6_.width / 2,_loc6_.height);
            _loc5_.textField = this.§ !K§;
            this.§#Y§.addChild(_loc5_.§0x§);
            this.§5!]§[this.§5!]§.length] = _loc5_;
            return _loc5_;
         }
         return null;
      }
      
      public function update() : void
      {
         this.§>6§ = this.§ !K§.text;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!]§.length)
         {
            this.§'&§(_loc1_);
            _loc1_++;
         }
      }
      
      private function §41§(param1:MouseEvent) : void
      {
         var _loc2_:§'W§ = this.§1l§();
         if(_loc2_ != null)
         {
            _loc2_.§0!'§();
         }
      }
      
      private function §9+§(param1:MouseEvent) : void
      {
         var _loc2_:§'W§ = this.§1l§();
         if(_loc2_ != null && _loc2_.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
         }
         if(this.§]!b§ != _loc2_)
         {
            if(this.§]!b§ != null)
            {
               this.§]!b§.§2T§();
            }
            if(_loc2_ != null)
            {
               _loc2_.§`v§();
            }
            this.§]!b§ = _loc2_;
         }
      }
      
      private function §1l§() : §'W§
      {
         var _loc2_:§'W§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!]§.length)
         {
            _loc2_ = this.§5!]§[_loc1_];
            if(_loc2_.§?!`§.contains(this.§ !K§.mouseX,this.§ !K§.mouseY))
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      private function §'&§(param1:int) : void
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc2_:§'W§ = this.§5!]§[param1];
         param1 = this.§>6§.indexOf(_loc2_.text);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.§8!9§)
         {
            param1 = this.§>6§.indexOf(_loc2_.text,param1 + _loc2_.text.length);
            _loc3_++;
         }
         if(param1 != -1)
         {
            _loc2_.clear();
            _loc2_.§4!e§ = param1;
            _loc2_.§,!#§ = param1 + _loc2_.text.length - 1;
            _loc4_ = this.§ !K§.getCharBoundaries(_loc2_.§4!e§);
            _loc5_ = this.§ !K§.getCharBoundaries(_loc2_.§,!#§);
            _loc2_.§?!`§ = new Rectangle(_loc4_.x - _loc4_.width / 2,_loc4_.y,_loc5_.x + _loc5_.width - _loc4_.x + _loc4_.width / 2,_loc4_.height);
         }
         else
         {
            this.§5!]§.splice(param1,1);
         }
      }
   }
}
