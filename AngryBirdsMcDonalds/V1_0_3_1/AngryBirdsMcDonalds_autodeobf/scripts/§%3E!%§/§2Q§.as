package §>!%§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §2Q§
   {
       
      
      private var §0!j§:TextField;
      
      private var §,%§:String;
      
      private var §7!C§:Vector.<§'!m§>;
      
      private var §6r§:§'!m§ = null;
      
      private var §7U§:Sprite;
      
      public function §2Q§(param1:TextField, param2:String, param3:DisplayObjectContainer)
      {
         super();
         this.§0!j§ = param1;
         this.§,%§ = param2;
         this.§7U§ = new Sprite();
         param3.addChild(this.§7U§);
         this.init();
      }
      
      private function init() : void
      {
         this.§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!d§);
         this.§0!j§.addEventListener(MouseEvent.MOUSE_MOVE,this.§[_§);
         this.§7!C§ = new Vector.<§'!m§>();
      }
      
      protected function §>!=§() : §'!m§
      {
         return new §'!m§();
      }
      
      public function §@0§(param1:String, param2:int = 0) : §'!m§
      {
         var _loc5_:§'!m§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Rectangle = null;
         var _loc3_:int = this.§,%§.indexOf(param1);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = this.§,%§.indexOf(param1,_loc3_ + param1.length);
            _loc4_++;
         }
         if(_loc3_ != -1 && param1.length > 1)
         {
            (_loc5_ = this.§>!=§()).text = param1;
            _loc5_.§^!Z§ = _loc3_;
            _loc5_.§7!?§ = _loc3_ + param1.length - 1;
            _loc6_ = this.§0!j§.getCharBoundaries(_loc5_.§^!Z§);
            _loc7_ = this.§0!j§.getCharBoundaries(_loc5_.§7!?§);
            _loc5_.§^! § = new Rectangle(_loc6_.x - _loc6_.width / 2,_loc6_.y,_loc7_.x + _loc7_.width - _loc6_.x + _loc6_.width / 2,_loc6_.height);
            _loc5_.textField = this.§0!j§;
            this.§7U§.addChild(_loc5_.§]2§);
            this.§7!C§[this.§7!C§.length] = _loc5_;
            return _loc5_;
         }
         return null;
      }
      
      public function update() : void
      {
         this.§,%§ = this.§0!j§.text;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!C§.length)
         {
            this.§`5§(_loc1_);
            _loc1_++;
         }
      }
      
      private function §!!d§(param1:MouseEvent) : void
      {
         var _loc2_:§'!m§ = this.§==§();
         if(_loc2_ != null)
         {
            _loc2_.§7X§();
         }
      }
      
      private function §[_§(param1:MouseEvent) : void
      {
         var _loc2_:§'!m§ = this.§==§();
         if(_loc2_ != null && _loc2_.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
         }
         if(this.§6r§ != _loc2_)
         {
            if(this.§6r§ != null)
            {
               this.§6r§.§#^§();
            }
            if(_loc2_ != null)
            {
               _loc2_.§?X§();
            }
            this.§6r§ = _loc2_;
         }
      }
      
      private function §==§() : §'!m§
      {
         var _loc2_:§'!m§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!C§.length)
         {
            _loc2_ = this.§7!C§[_loc1_];
            if(_loc2_.§^! §.contains(this.§0!j§.mouseX,this.§0!j§.mouseY))
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      private function §`5§(param1:int) : void
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc2_:§'!m§ = this.§7!C§[param1];
         param1 = this.§,%§.indexOf(_loc2_.text);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.§,S§)
         {
            param1 = this.§,%§.indexOf(_loc2_.text,param1 + _loc2_.text.length);
            _loc3_++;
         }
         if(param1 != -1)
         {
            _loc2_.clear();
            _loc2_.§^!Z§ = param1;
            _loc2_.§7!?§ = param1 + _loc2_.text.length - 1;
            _loc4_ = this.§0!j§.getCharBoundaries(_loc2_.§^!Z§);
            _loc5_ = this.§0!j§.getCharBoundaries(_loc2_.§7!?§);
            _loc2_.§^! § = new Rectangle(_loc4_.x - _loc4_.width / 2,_loc4_.y,_loc5_.x + _loc5_.width - _loc4_.x + _loc4_.width / 2,_loc4_.height);
         }
         else
         {
            this.§7!C§.splice(param1,1);
         }
      }
   }
}
