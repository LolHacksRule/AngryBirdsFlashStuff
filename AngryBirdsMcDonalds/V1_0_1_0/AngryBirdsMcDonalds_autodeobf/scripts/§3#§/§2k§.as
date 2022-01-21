package §3#§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §2k§
   {
       
      
      private var §'!Z§:TextField;
      
      private var §7!!§:String;
      
      private var §`!F§:Vector.<§7b§>;
      
      private var §`h§:§7b§ = null;
      
      private var §[8§:Sprite;
      
      public function §2k§(param1:TextField, param2:String, param3:DisplayObjectContainer)
      {
         super();
         this.§'!Z§ = param1;
         this.§7!!§ = param2;
         this.§[8§ = new Sprite();
         param3.addChild(this.§[8§);
         this.init();
      }
      
      private function init() : void
      {
         this.§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@g§);
         this.§'!Z§.addEventListener(MouseEvent.MOUSE_MOVE,this.§&i§);
         this.§`!F§ = new Vector.<§7b§>();
      }
      
      protected function §?!h§() : §7b§
      {
         return new §7b§();
      }
      
      public function §9F§(param1:String, param2:int = 0) : §7b§
      {
         var _loc5_:§7b§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Rectangle = null;
         var _loc3_:int = this.§7!!§.indexOf(param1);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = this.§7!!§.indexOf(param1,_loc3_ + param1.length);
            _loc4_++;
         }
         if(_loc3_ != -1 && param1.length > 1)
         {
            (_loc5_ = this.§?!h§()).text = param1;
            _loc5_.§>!^§ = _loc3_;
            _loc5_.§^!`§ = _loc3_ + param1.length - 1;
            _loc6_ = this.§'!Z§.getCharBoundaries(_loc5_.§>!^§);
            _loc7_ = this.§'!Z§.getCharBoundaries(_loc5_.§^!`§);
            _loc5_.§'B§ = new Rectangle(_loc6_.x - _loc6_.width / 2,_loc6_.y,_loc7_.x + _loc7_.width - _loc6_.x + _loc6_.width / 2,_loc6_.height);
            _loc5_.textField = this.§'!Z§;
            this.§[8§.addChild(_loc5_.§'D§);
            this.§`!F§[this.§`!F§.length] = _loc5_;
            return _loc5_;
         }
         return null;
      }
      
      public function update() : void
      {
         this.§7!!§ = this.§'!Z§.text;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!F§.length)
         {
            this.§?1§(_loc1_);
            _loc1_++;
         }
      }
      
      private function §@g§(param1:MouseEvent) : void
      {
         var _loc2_:§7b§ = this.§;Q§();
         if(_loc2_ != null)
         {
            _loc2_.§]!N§();
         }
      }
      
      private function §&i§(param1:MouseEvent) : void
      {
         var _loc2_:§7b§ = this.§;Q§();
         if(_loc2_ != null && _loc2_.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
         }
         if(this.§`h§ != _loc2_)
         {
            if(this.§`h§ != null)
            {
               this.§`h§.§-!`§();
            }
            if(_loc2_ != null)
            {
               _loc2_.§&!b§();
            }
            this.§`h§ = _loc2_;
         }
      }
      
      private function §;Q§() : §7b§
      {
         var _loc2_:§7b§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!F§.length)
         {
            _loc2_ = this.§`!F§[_loc1_];
            if(_loc2_.§'B§.contains(this.§'!Z§.mouseX,this.§'!Z§.mouseY))
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      private function §?1§(param1:int) : void
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc2_:§7b§ = this.§`!F§[param1];
         param1 = this.§7!!§.indexOf(_loc2_.text);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.§6$§)
         {
            param1 = this.§7!!§.indexOf(_loc2_.text,param1 + _loc2_.text.length);
            _loc3_++;
         }
         if(param1 != -1)
         {
            _loc2_.clear();
            _loc2_.§>!^§ = param1;
            _loc2_.§^!`§ = param1 + _loc2_.text.length - 1;
            _loc4_ = this.§'!Z§.getCharBoundaries(_loc2_.§>!^§);
            _loc5_ = this.§'!Z§.getCharBoundaries(_loc2_.§^!`§);
            _loc2_.§'B§ = new Rectangle(_loc4_.x - _loc4_.width / 2,_loc4_.y,_loc5_.x + _loc5_.width - _loc4_.x + _loc4_.width / 2,_loc4_.height);
         }
         else
         {
            this.§`!F§.splice(param1,1);
         }
      }
   }
}
