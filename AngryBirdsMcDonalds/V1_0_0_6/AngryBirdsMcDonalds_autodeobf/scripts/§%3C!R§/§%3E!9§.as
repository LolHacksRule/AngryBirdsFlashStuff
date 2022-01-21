package §<!R§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §>!9§
   {
       
      
      private var §&t§:TextField;
      
      private var §0! §:String;
      
      private var §5A§:Vector.<§&?§>;
      
      private var §3Z§:§&?§ = null;
      
      private var §%!l§:Sprite;
      
      public function §>!9§(param1:TextField, param2:String, param3:DisplayObjectContainer)
      {
         super();
         this.§&t§ = param1;
         this.§0! § = param2;
         this.§%!l§ = new Sprite();
         param3.addChild(this.§%!l§);
         this.init();
      }
      
      private function init() : void
      {
         this.§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ l§);
         this.§&t§.addEventListener(MouseEvent.MOUSE_MOVE,this.§[A§);
         this.§5A§ = new Vector.<§&?§>();
      }
      
      protected function §@r§() : §&?§
      {
         return new §&?§();
      }
      
      public function §0@§(param1:String, param2:int = 0) : §&?§
      {
         var _loc5_:§&?§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Rectangle = null;
         var _loc3_:int = this.§0! §.indexOf(param1);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = this.§0! §.indexOf(param1,_loc3_ + param1.length);
            _loc4_++;
         }
         if(_loc3_ != -1 && param1.length > 1)
         {
            (_loc5_ = this.§@r§()).text = param1;
            _loc5_.§'n§ = _loc3_;
            _loc5_.§?N§ = _loc3_ + param1.length - 1;
            _loc6_ = this.§&t§.getCharBoundaries(_loc5_.§'n§);
            _loc7_ = this.§&t§.getCharBoundaries(_loc5_.§?N§);
            _loc5_.§=!<§ = new Rectangle(_loc6_.x - _loc6_.width / 2,_loc6_.y,_loc7_.x + _loc7_.width - _loc6_.x + _loc6_.width / 2,_loc6_.height);
            _loc5_.textField = this.§&t§;
            this.§%!l§.addChild(_loc5_.§'I§);
            this.§5A§[this.§5A§.length] = _loc5_;
            return _loc5_;
         }
         return null;
      }
      
      public function update() : void
      {
         this.§0! § = this.§&t§.text;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5A§.length)
         {
            this.§5l§(_loc1_);
            _loc1_++;
         }
      }
      
      private function § l§(param1:MouseEvent) : void
      {
         var _loc2_:§&?§ = this.§`!§();
         if(_loc2_ != null)
         {
            _loc2_.§4X§();
         }
      }
      
      private function §[A§(param1:MouseEvent) : void
      {
         var _loc2_:§&?§ = this.§`!§();
         if(_loc2_ != null && _loc2_.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
         }
         if(this.§3Z§ != _loc2_)
         {
            if(this.§3Z§ != null)
            {
               this.§3Z§.§"!c§();
            }
            if(_loc2_ != null)
            {
               _loc2_.§ !V§();
            }
            this.§3Z§ = _loc2_;
         }
      }
      
      private function §`!§() : §&?§
      {
         var _loc2_:§&?§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5A§.length)
         {
            _loc2_ = this.§5A§[_loc1_];
            if(_loc2_.§=!<§.contains(this.§&t§.mouseX,this.§&t§.mouseY))
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      private function §5l§(param1:int) : void
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc2_:§&?§ = this.§5A§[param1];
         param1 = this.§0! §.indexOf(_loc2_.text);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.§%[§)
         {
            param1 = this.§0! §.indexOf(_loc2_.text,param1 + _loc2_.text.length);
            _loc3_++;
         }
         if(param1 != -1)
         {
            _loc2_.clear();
            _loc2_.§'n§ = param1;
            _loc2_.§?N§ = param1 + _loc2_.text.length - 1;
            _loc4_ = this.§&t§.getCharBoundaries(_loc2_.§'n§);
            _loc5_ = this.§&t§.getCharBoundaries(_loc2_.§?N§);
            _loc2_.§=!<§ = new Rectangle(_loc4_.x - _loc4_.width / 2,_loc4_.y,_loc5_.x + _loc5_.width - _loc4_.x + _loc4_.width / 2,_loc4_.height);
         }
         else
         {
            this.§5A§.splice(param1,1);
         }
      }
   }
}
