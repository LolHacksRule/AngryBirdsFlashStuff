package §5!q§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class § !U§
   {
       
      
      private var §>!3§:TextField;
      
      private var §6X§:String;
      
      private var §9!>§:Vector.<§true§>;
      
      private var § !f§:§true§ = null;
      
      private var §]!M§:Sprite;
      
      public function § !U§(param1:TextField, param2:String, param3:DisplayObjectContainer)
      {
         super();
         this.§>!3§ = param1;
         this.§6X§ = param2;
         this.§]!M§ = new Sprite();
         param3.addChild(this.§]!M§);
         this.init();
      }
      
      private function init() : void
      {
         this.§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!8§);
         this.§>!3§.addEventListener(MouseEvent.MOUSE_MOVE,this.§-!a§);
         this.§9!>§ = new Vector.<§true§>();
      }
      
      protected function §0!p§() : §true§
      {
         return new §true§();
      }
      
      public function §0<§(param1:String, param2:int = 0) : §true§
      {
         var _loc5_:§true§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Rectangle = null;
         var _loc3_:int = this.§6X§.indexOf(param1);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = this.§6X§.indexOf(param1,_loc3_ + param1.length);
            _loc4_++;
         }
         if(_loc3_ != -1 && param1.length > 1)
         {
            (_loc5_ = this.§0!p§()).text = param1;
            _loc5_.§9^§ = _loc3_;
            _loc5_.§&m§ = _loc3_ + param1.length - 1;
            _loc6_ = this.§>!3§.getCharBoundaries(_loc5_.§9^§);
            _loc7_ = this.§>!3§.getCharBoundaries(_loc5_.§&m§);
            _loc5_.§8Z§ = new Rectangle(_loc6_.x - _loc6_.width / 2,_loc6_.y,_loc7_.x + _loc7_.width - _loc6_.x + _loc6_.width / 2,_loc6_.height);
            _loc5_.textField = this.§>!3§;
            this.§]!M§.addChild(_loc5_.§&[§);
            this.§9!>§[this.§9!>§.length] = _loc5_;
            return _loc5_;
         }
         return null;
      }
      
      public function update() : void
      {
         this.§6X§ = this.§>!3§.text;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!>§.length)
         {
            this.§'7§(_loc1_);
            _loc1_++;
         }
      }
      
      private function §!8§(param1:MouseEvent) : void
      {
         var _loc2_:§true§ = this.§!!o§();
         if(_loc2_ != null)
         {
            _loc2_.§]%§();
         }
      }
      
      private function §-!a§(param1:MouseEvent) : void
      {
         var _loc2_:§true§ = this.§!!o§();
         if(_loc2_ != null && _loc2_.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
         }
         if(this.§ !f§ != _loc2_)
         {
            if(this.§ !f§ != null)
            {
               this.§ !f§.§1!K§();
            }
            if(_loc2_ != null)
            {
               _loc2_.§%L§();
            }
            this.§ !f§ = _loc2_;
         }
      }
      
      private function §!!o§() : §true§
      {
         var _loc2_:§true§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!>§.length)
         {
            _loc2_ = this.§9!>§[_loc1_];
            if(_loc2_.§8Z§.contains(this.§>!3§.mouseX,this.§>!3§.mouseY))
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      private function §'7§(param1:int) : void
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc2_:§true§ = this.§9!>§[param1];
         param1 = this.§6X§.indexOf(_loc2_.text);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.§@N§)
         {
            param1 = this.§6X§.indexOf(_loc2_.text,param1 + _loc2_.text.length);
            _loc3_++;
         }
         if(param1 != -1)
         {
            _loc2_.clear();
            _loc2_.§9^§ = param1;
            _loc2_.§&m§ = param1 + _loc2_.text.length - 1;
            _loc4_ = this.§>!3§.getCharBoundaries(_loc2_.§9^§);
            _loc5_ = this.§>!3§.getCharBoundaries(_loc2_.§&m§);
            _loc2_.§8Z§ = new Rectangle(_loc4_.x - _loc4_.width / 2,_loc4_.y,_loc5_.x + _loc5_.width - _loc4_.x + _loc4_.width / 2,_loc4_.height);
         }
         else
         {
            this.§9!>§.splice(param1,1);
         }
      }
   }
}
