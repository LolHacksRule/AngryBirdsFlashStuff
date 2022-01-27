package §7g§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §+!J§.§>n§;
   import §1"b§.§7",§;
   import §>"%§.§"!5§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,!B§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var _rect:Rectangle;
      
      private var §9L§:Vector.<String>;
      
      private var §-!z§:§"!5§;
      
      private var §]#a§:§>n§;
      
      private var §=w§:Number = 0;
      
      private var §%§:Number = 0;
      
      private var § ",§:Boolean = false;
      
      private var §5"K§:Array;
      
      private var §#L§:§!!%§;
      
      public function §,!B§(param1:§!!%§)
      {
         this._rect = new Rectangle();
         this.§9L§ = new Vector.<String>();
         this.§]#a§ = new §>n§();
         super();
         this.§#L§ = param1;
         this.§#L§.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
         this.§#L§.§]"z§.addCallback(§""A§.§9#C§,this.§5!5§);
         this.§#L§.§]"z§.addCallback(§""A§.§8"$§,this.§#!<§);
         this.§#L§.§]"z§.addCallback(§""A§.§5!q§,this.§2#§);
         addChild(this.§]#a§);
         addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         if(!this.§["a§)
         {
            return;
         }
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§%§ = mouseX;
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc2_:Number = mouseX - this.§%§;
         if(Math.sqrt(_loc2_ * _loc2_) > 5)
         {
            this.§ ",§ = true;
            this.§]#a§.mouseChildren = false;
            this.§]#a§.mouseEnabled = false;
         }
         if(this.§ ",§)
         {
            this.§>"Y§();
         }
      }
      
      private function §>"Y§() : void
      {
         var _loc1_:Number = mouseX - this.§%§;
         this.§%§ = mouseX;
         this.§]#a§.x += _loc1_;
         this.§+b§();
      }
      
      private function get §["a§() : Boolean
      {
         var _loc1_:Rectangle = this.§]#a§.transform.pixelBounds;
         var _loc2_:Number = _loc1_.width - scrollRect.width;
         return _loc2_ > 0;
      }
      
      private function §+b§() : void
      {
         var _loc1_:Rectangle = this.§]#a§.transform.pixelBounds;
         var _loc2_:Number = _loc1_.width - scrollRect.width;
         this.§]#a§.x = Math.max(-_loc2_,Math.min(this.§]#a§.x,0));
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§]#a§.mouseChildren = true;
         this.§]#a§.mouseEnabled = true;
      }
      
      private function §2#§(param1:§7",§) : void
      {
         var _loc3_:§0"a§ = null;
         this.§-!z§ = param1.§@Z§ as §"!5§;
         var _loc2_:Array = this.§]#a§.§[`§();
         for each(_loc3_ in _loc2_)
         {
            _loc3_.active = _loc3_.§[!_§.toLowerCase() == this.§-!z§.§^"%§.name.toLowerCase();
         }
      }
      
      private function §#!<§(param1:§7",§) : void
      {
         this.§-!z§ = param1.§@Z§ as §"!5§;
         this.§`"x§();
      }
      
      private function §`"x§() : void
      {
         var _loc3_:§0"a§ = null;
         this.§]#a§.§7!Y§();
         var _loc1_:Vector.<String> = this.§-!z§.§;#R§();
         this.§5"K§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = new §0"a§(this.§#L§,_loc1_[_loc2_]);
            if(_loc3_.§[!_§.toLowerCase() == this.§-!z§.§^"%§.name.toLowerCase())
            {
               _loc3_.active = true;
            }
            this.§5"K§.push(_loc3_);
            _loc2_++;
         }
         this.§]#a§.§9V§(this.§5"K§,0);
      }
      
      private function §5!5§(param1:§7",§) : void
      {
         this.§-!z§ = param1.§@Z§ as §"!5§;
         this.§`"x§();
      }
      
      public function §5p§(param1:Number) : void
      {
         var _loc2_:§0"a§ = null;
         graphics.clear();
         graphics.beginFill(§?#O§.§`!1§);
         graphics.drawRect(0,0,param1,§>"!§.§6R§);
         scrollRect = new Rectangle(0,0,param1,§>"!§.§6R§);
         for each(_loc2_ in this.§5"K§)
         {
            _loc2_.§5p§();
         }
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         this._rect = param1;
         y = this._rect.y;
         x = this._rect.x;
         this.§5p§(this._rect.width);
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         this.§5p§(this._rect.width);
      }
      
      public function get rect() : Rectangle
      {
         return getRect(parent);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
   }
}
