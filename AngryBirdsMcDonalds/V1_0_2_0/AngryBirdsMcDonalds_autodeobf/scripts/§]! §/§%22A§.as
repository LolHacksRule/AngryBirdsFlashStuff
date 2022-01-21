package §]! §
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §"A§
   {
       
      
      private var §^!m§:TextField;
      
      private var §2F§:String;
      
      private var §7!2§:Vector.<§0!#§>;
      
      private var §1u§:§0!#§ = null;
      
      private var §`n§:Sprite;
      
      public function §"A§(param1:TextField, param2:String, param3:DisplayObjectContainer)
      {
         super();
         this.§^!m§ = param1;
         this.§2F§ = param2;
         this.§`n§ = new Sprite();
         param3.addChild(this.§`n§);
         this.init();
      }
      
      private function init() : void
      {
         this.§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[J§);
         this.§^!m§.addEventListener(MouseEvent.MOUSE_MOVE,this.§-!9§);
         this.§7!2§ = new Vector.<§0!#§>();
      }
      
      protected function §8!^§() : §0!#§
      {
         return new §0!#§();
      }
      
      public function §;[§(param1:String, param2:int = 0) : §0!#§
      {
         var _loc5_:§0!#§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Rectangle = null;
         var _loc3_:int = this.§2F§.indexOf(param1);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = this.§2F§.indexOf(param1,_loc3_ + param1.length);
            _loc4_++;
         }
         if(_loc3_ != -1 && param1.length > 1)
         {
            (_loc5_ = this.§8!^§()).text = param1;
            _loc5_.§73§ = _loc3_;
            _loc5_.§ !N§ = _loc3_ + param1.length - 1;
            _loc6_ = this.§^!m§.getCharBoundaries(_loc5_.§73§);
            _loc7_ = this.§^!m§.getCharBoundaries(_loc5_.§ !N§);
            _loc5_.§0!=§ = new Rectangle(_loc6_.x - _loc6_.width / 2,_loc6_.y,_loc7_.x + _loc7_.width - _loc6_.x + _loc6_.width / 2,_loc6_.height);
            _loc5_.textField = this.§^!m§;
            this.§`n§.addChild(_loc5_.§&!C§);
            this.§7!2§[this.§7!2§.length] = _loc5_;
            return _loc5_;
         }
         return null;
      }
      
      public function update() : void
      {
         this.§2F§ = this.§^!m§.text;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!2§.length)
         {
            this.§]!<§(_loc1_);
            _loc1_++;
         }
      }
      
      private function §[J§(param1:MouseEvent) : void
      {
         var _loc2_:§0!#§ = this.§9!J§();
         if(_loc2_ != null)
         {
            _loc2_.§ f§();
         }
      }
      
      private function §-!9§(param1:MouseEvent) : void
      {
         var _loc2_:§0!#§ = this.§9!J§();
         if(_loc2_ != null && _loc2_.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
         }
         if(this.§1u§ != _loc2_)
         {
            if(this.§1u§ != null)
            {
               this.§1u§.§2!%§();
            }
            if(_loc2_ != null)
            {
               _loc2_.§0-§();
            }
            this.§1u§ = _loc2_;
         }
      }
      
      private function §9!J§() : §0!#§
      {
         var _loc2_:§0!#§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!2§.length)
         {
            _loc2_ = this.§7!2§[_loc1_];
            if(_loc2_.§0!=§.contains(this.§^!m§.mouseX,this.§^!m§.mouseY))
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      private function §]!<§(param1:int) : void
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc2_:§0!#§ = this.§7!2§[param1];
         param1 = this.§2F§.indexOf(_loc2_.text);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.§<N§)
         {
            param1 = this.§2F§.indexOf(_loc2_.text,param1 + _loc2_.text.length);
            _loc3_++;
         }
         if(param1 != -1)
         {
            _loc2_.clear();
            _loc2_.§73§ = param1;
            _loc2_.§ !N§ = param1 + _loc2_.text.length - 1;
            _loc4_ = this.§^!m§.getCharBoundaries(_loc2_.§73§);
            _loc5_ = this.§^!m§.getCharBoundaries(_loc2_.§ !N§);
            _loc2_.§0!=§ = new Rectangle(_loc4_.x - _loc4_.width / 2,_loc4_.y,_loc5_.x + _loc5_.width - _loc4_.x + _loc4_.width / 2,_loc4_.height);
         }
         else
         {
            this.§7!2§.splice(param1,1);
         }
      }
   }
}
