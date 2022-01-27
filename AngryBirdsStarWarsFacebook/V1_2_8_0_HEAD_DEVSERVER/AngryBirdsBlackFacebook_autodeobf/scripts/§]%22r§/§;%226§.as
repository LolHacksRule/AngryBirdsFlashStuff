package §]"r§
{
   import §`^§.DropDownEvent;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §;"6§ extends Sprite
   {
       
      
      private var §#!V§:TextField;
      
      private var §##H§:Sprite;
      
      private var §,#%§:int = 18;
      
      private var § ""§:int;
      
      private var §""L§:Sprite;
      
      private var §#"M§:Vector.<§2!H§>;
      
      private var §!!d§:Number;
      
      private var selection:§2!H§;
      
      public function §;"6§(param1:String = "Dropdown")
      {
         this.§##H§ = new Sprite();
         this.§""L§ = new Sprite();
         this.§#"M§ = new Vector.<§2!H§>();
         super();
         addChild(this.§""L§);
         addChild(this.§##H§);
         buttonMode = true;
         this.§#!V§ = new TextField();
         this.§#!V§.autoSize = TextFieldAutoSize.LEFT;
         this.§#!V§.defaultTextFormat = §6!x§.§'#N§;
         this.§#!V§.embedFonts = this.§#!V§.defaultTextFormat.font.charAt(0) != "_";
         this.§#!V§.selectable = false;
         this.§#!V§.mouseEnabled = false;
         this.§#!V§.y = 1;
         this.§>"x§(param1,false);
         this.§##H§.addChild(this.§#!V§);
         this.§##H§.graphics.clear();
         this.§##H§.graphics.beginFill(§?#O§.§8#W§);
         this.§##H§.graphics.drawRect(0,0,this.§ ""§,this.§,#%§);
         this.§##H§.graphics.endFill();
         this.§#!V§.textColor = §?#O§.§?"7§;
         this.§""L§.visible = false;
         this.§""L§.y = this.§,#%§;
         addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         this.§""L§.visible = true;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         filters = [new DropShadowFilter(4,45,0,0.1,8,8)];
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc2_:int = Math.floor(this.§""L§.mouseY / this.§!!d§);
         var _loc3_:Boolean = _loc2_ >= 0 && _loc2_ < this.§#"M§.length;
         if(_loc3_)
         {
            this.selection = this.§#"M§[_loc2_];
         }
         else
         {
            this.selection = null;
         }
      }
      
      public function §>"x§(param1:String, param2:Boolean = false) : void
      {
         this.§#!V§.text = param1;
         this.§ ""§ = this.§#!V§.textWidth + 4;
         if(param2)
         {
            this.draw();
         }
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         filters = [];
         if(this.selection)
         {
            dispatchEvent(new DropDownEvent(DropDownEvent.§0F§,this.selection));
            this.§>"x§(this.selection.title,true);
         }
         this.§""L§.visible = false;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
      }
      
      public function §8#§(param1:§2!H§) : void
      {
         this.§#"M§.push(param1);
         param1.index = this.§#"M§.length - 1;
         this.§""L§.addChild(param1);
         if(param1.§+w§)
         {
            this.§>"x§(param1.title);
         }
         this.draw();
      }
      
      public function §<!P§() : void
      {
         var _loc1_:§2!H§ = null;
         for each(_loc1_ in this.§#"M§)
         {
            _loc1_.§<!P§();
         }
         this.draw();
      }
      
      public function §[!N§(param1:String) : void
      {
      }
      
      public function §##4§(param1:String) : void
      {
         this.§>"x§(param1,true);
      }
      
      private function draw() : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:§2!H§ = null;
         var _loc1_:Number = 0;
         _loc2_ = this.§#!V§.textWidth + 6;
         var _loc3_:int = 0;
         while(_loc3_ < this.§#"M§.length)
         {
            this.§#"M§[_loc3_].y = _loc1_;
            this.§!!d§ = this.§#"M§[_loc3_].height;
            _loc1_ += this.§#"M§[_loc3_].height;
            if(this.§#"M§[_loc3_].width > _loc2_)
            {
               _loc2_ = this.§#"M§[_loc3_].width;
            }
            _loc3_++;
         }
         for each(_loc4_ in this.§#"M§)
         {
            _loc4_.setWidth(_loc2_);
         }
         this.§ ""§ = _loc2_;
         this.§""L§.graphics.clear();
         this.§""L§.graphics.beginFill(§?#O§.§3# §);
         this.§""L§.graphics.drawRect(0,0,_loc2_,_loc1_);
         this.§##H§.graphics.clear();
         this.§##H§.graphics.beginFill(§?#O§.§8#W§);
         this.§##H§.graphics.drawRect(0,0,this.§ ""§,this.§,#%§);
         this.§##H§.graphics.endFill();
         this.§#!V§.textColor = §?#O§.§?"7§;
         this.§#!V§.backgroundColor = §?#O§.§3# §;
         this.§`n§();
      }
      
      private function §`n§() : void
      {
         this.§##H§.graphics.clear();
         this.§##H§.graphics.beginFill(§?#O§.§3# §);
         this.§##H§.graphics.lineStyle(0,§?#O§.§8"E§);
         this.§##H§.graphics.drawRect(0,0,this.§ ""§,this.§,#%§);
         this.§##H§.graphics.endFill();
      }
   }
}
