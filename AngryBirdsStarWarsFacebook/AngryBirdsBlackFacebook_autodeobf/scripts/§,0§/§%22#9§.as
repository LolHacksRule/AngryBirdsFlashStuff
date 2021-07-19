package §,0§
{
   import §6Z§.§!!-§;
   import §]"U§.§ !X§;
   import §]"U§.§'#;§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §"#9§ extends Sprite implements §2#M§, §'#;§
   {
       
      
      private var §]!Y§:Boolean = true;
      
      private var §-a§:Boolean = true;
      
      public var inspector:§#A§;
      
      protected var §5Y§:Number;
      
      protected var §""]§:Rectangle;
      
      protected var §%#F§:Sprite;
      
      public function §"#9§()
      {
         this.§%#F§ = new Sprite();
         super();
         this.§%#F§.scrollRect = new Rectangle();
         addChild(this.§%#F§);
         this.§5Y§ = 0;
         addEventListener(Event.ADDED_TO_STAGE,this.§2X§);
      }
      
      private function §2X§(param1:Event) : void
      {
         this.§4L§();
      }
      
      protected function §4L§() : void
      {
      }
      
      public function §&"'§(param1:§#A§) : void
      {
         this.inspector = param1;
      }
      
      public function §&!B§(param1:Number, param2:Number) : void
      {
         this.§&;§ -= param1;
         this.§-l§ -= param2;
      }
      
      public function get §&;§() : Number
      {
         return this.scrollRect.x;
      }
      
      public function get §-l§() : Number
      {
         return this.scrollRect.y;
      }
      
      public function §4R§(param1:Event = null) : void
      {
      }
      
      public function §`V§(param1:Number, param2:Number) : void
      {
         var _loc3_:Rectangle = this.scrollRect;
         _loc3_.width = param1;
         _loc3_.height = param2;
         this.scrollRect = _loc3_;
         this.§&!B§(0,0);
      }
      
      override public function get scrollRect() : Rectangle
      {
         return this.§%#F§.scrollRect;
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         this.§%#F§.scrollRect = param1;
      }
      
      public function §@#5§(param1:Object) : void
      {
      }
      
      public function set §&;§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:Rectangle = this.scrollRect;
         this.§;!<§();
         if(this.§7#3§)
         {
            _loc2_.x = param1;
            _loc3_ = this.§""]§.width - this.scrollRect.width;
            _loc2_.x = Math.max(-this.§5Y§,Math.min(_loc2_.x,_loc3_ + this.§5Y§));
         }
         else
         {
            _loc2_.x = -this.§5Y§;
         }
         this.scrollRect = _loc2_;
      }
      
      protected function §;!<§() : Rectangle
      {
         return this.§""]§ = this.§%#F§.transform.pixelBounds;
      }
      
      public function get §7#3§() : Boolean
      {
         if(this.§]!Y§)
         {
            return this.§""]§.width > this.scrollRect.width;
         }
         return false;
      }
      
      public function get §6T§() : Boolean
      {
         if(this.§-a§)
         {
            return this.§""]§.height > this.scrollRect.height;
         }
         return false;
      }
      
      public function get §9#Q§() : Number
      {
         return this.scrollRect.width;
      }
      
      public function get §-!E§() : Number
      {
         return this.scrollRect.height;
      }
      
      public function set §7#3§(param1:Boolean) : void
      {
         this.§]!Y§ = param1;
      }
      
      public function set §6T§(param1:Boolean) : void
      {
         this.§-a§ = param1;
      }
      
      public function set §-l§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         this.§;!<§();
         var _loc2_:Rectangle = this.scrollRect;
         if(this.§6T§)
         {
            _loc2_.y = param1;
            _loc3_ = this.§""]§.height - this.scrollRect.height;
            _loc2_.y = Math.max(-this.§5Y§,Math.min(_loc2_.y,_loc3_ + this.§5Y§));
         }
         else
         {
            _loc2_.y = -this.§5Y§;
         }
         this.scrollRect = _loc2_;
      }
      
      public function get §2#-§() : Number
      {
         return this.§%#F§.transform.pixelBounds.height - this.scrollRect.height;
      }
      
      public function get §^!"§() : Number
      {
         return this.§%#F§.transform.pixelBounds.width - this.scrollRect.width;
      }
      
      public function §>!q§() : void
      {
         Mouse.cursor = MouseCursor.HAND;
         mouseChildren = false;
      }
      
      public function stopDragging() : void
      {
         Mouse.cursor = MouseCursor.AUTO;
         mouseChildren = true;
      }
      
      public function resize() : void
      {
      }
      
      public function get view() : §"#9§
      {
         return this;
      }
      
      public function get title() : String
      {
         throw new §!!-§("An inspector view must have a title");
      }
      
      public function update(param1:§ !X§) : void
      {
      }
      
      public function get §6!7§() : String
      {
         throw new §!!-§();
      }
      
      public function initialize(param1:§ !X§) : void
      {
      }
      
      public function shutdown(param1:§ !X§) : void
      {
      }
      
      public function get §&!R§() : Vector.<Class>
      {
         return null;
      }
   }
}
