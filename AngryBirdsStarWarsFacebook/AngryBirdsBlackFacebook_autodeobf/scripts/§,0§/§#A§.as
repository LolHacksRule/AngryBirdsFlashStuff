package §,0§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import §4#R§.§2"B§;
   import §]"U§.§'#;§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§0#C§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.BlendMode;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#A§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §=!w§:Point;
      
      private var §<p§:Boolean;
      
      private var §>§:Shape;
      
      private var §0!q§:Shape;
      
      private var §2F§:§2"B§;
      
      private var §,"u§:Rectangle;
      
      private var §!!!§:§"#9§;
      
      private var §0!a§:Point;
      
      private var §-!y§:Sprite;
      
      private var §5R§:Boolean = true;
      
      private var §&"0§:Vector.<§"#9§>;
      
      private var §5"d§:§>l§;
      
      public function §#A§(param1:§!!%§, param2:Rectangle)
      {
         this.§0!a§ = new Point();
         this.§-!y§ = new Sprite();
         this.§&"0§ = new Vector.<§"#9§>();
         super();
         this.§5"d§ = param1.§]"z§;
         this.§,"u§ = param2;
         graphics.clear();
         graphics.beginFill(§?#O§.§!"[§);
         graphics.drawRect(0,0,param2.width,param2.height);
         this.§2F§ = new §2"B§(param1);
         addEventListener(MouseEvent.MOUSE_DOWN,this.§^U§);
         this.§>§ = new Shape();
         this.§0!q§ = new Shape();
         this.§>§.blendMode = this.§0!q§.blendMode = BlendMode.INVERT;
         this.§-!y§.y = this.§>§.y = this.§0!q§.y = §>"!§.§6R§;
         this.§>§.visible = this.§0!q§.visible = false;
         addChild(this.§-!y§);
         addChild(this.§2F§);
         addChild(this.§>§);
         addChild(this.§0!q§);
         this.§5"d§.addCallback(§""A§.§4#I§,this.§-!B§);
         this.§5"d§.addCallback(§""A§.§3#5§,this.§[" §);
         addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
      }
      
      public function §4!w§(param1:§'#;§) : void
      {
         param1.§&"'§(this);
         this.§-!y§.addChild(param1.view);
         this.§2F§.§8#§(param1);
         this.§&"0§.push(param1.view);
         this.§2V§(param1.view);
         param1.view.resize();
         this.§5"d§.§#!"§(§""A§.§&!I§,param1,this);
      }
      
      public function §2V§(param1:§"#9§) : void
      {
         this.§2F§.§"#7§(param1);
      }
      
      public function §]!E§(param1:§'#;§) : void
      {
         if(this.§-!y§.contains(param1.view))
         {
            this.§-!y§.removeChild(param1.view);
            this.§2F§.§^q§(param1);
            this.§&"0§.splice(this.§&"0§.indexOf(param1),1);
            if(param1.view == this.§!!!§)
            {
               if(this.§3!=§)
               {
                  this.§2V§(this.§&"0§[0]);
               }
            }
         }
         this.§5"d§.§#!"§(§""A§.§1"4§,param1,this);
      }
      
      private function §2f§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§2f§);
      }
      
      public function §4R§(param1:Event = null) : void
      {
         if(this.§!!!§ && this.§5R§)
         {
            this.§!!!§.§4R§(param1);
         }
      }
      
      private function §[" §(param1:§7",§) : void
      {
         if(this.§!!!§ == param1.data)
         {
            return;
         }
         if(this.§!!!§)
         {
            this.§-!y§.removeChild(this.§!!!§);
         }
         this.§!!!§ = param1.data as §"#9§;
         this.§-!y§.addChild(this.§!!!§);
      }
      
      private function §=!!§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         this.§>§.graphics.clear();
         this.§0!q§.graphics.clear();
         if(this.§!!!§.§6T§)
         {
            _loc1_ = this.§!!!§.§-l§ / this.§!!!§.§2#-§ * (this.§,"u§.height - 6);
            this.§>§.graphics.beginFill(§?#O§.§;"5§);
            this.§>§.graphics.drawRect(this.§,"u§.width - 3,_loc1_,3,3);
         }
         if(this.§!!!§.§7#3§)
         {
            _loc2_ = this.§!!!§.§&;§ / this.§!!!§.§^!"§ * (this.§,"u§.width - 3);
            this.§0!q§.graphics.beginFill(§?#O§.§;"5§);
            this.§0!q§.graphics.drawRect(_loc2_,this.§,"u§.height - 16,3,3);
         }
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
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Rectangle = param1.clone();
         x = _loc2_.x;
         y = _loc2_.y;
         _loc2_.y = 0;
         _loc2_.x = 0;
         scrollRect = _loc2_;
         this.§]!j§ = _loc2_;
         this.§9! §();
      }
      
      private function §9! §() : void
      {
         graphics.clear();
         graphics.beginFill(§?#O§.§!"[§,§0#C§.§&r§);
         graphics.drawRect(0,0,this.§,"u§.width,this.§,"u§.height);
         graphics.endFill();
      }
      
      public function get §]!j§() : Rectangle
      {
         return this.§,"u§;
      }
      
      public function set §]!j§(param1:Rectangle) : void
      {
         this.§,"u§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&"0§.length)
         {
            this.§&"0§[_loc2_].resize();
            _loc2_++;
         }
      }
      
      public function get §3!=§() : Boolean
      {
         return this.§&"0§.length > 0;
      }
      
      public function get enabled() : Boolean
      {
         return this.§5R§ && this.§&"0§.length > 0;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§5R§ = param1;
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         if(this.§<p§)
         {
            this.§!!!§.stopDragging();
         }
         this.§<p§ = false;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§0!q§.visible = false;
         this.§>§.visible = false;
      }
      
      private function §^U§(param1:MouseEvent) : void
      {
         if(!this.§!!!§)
         {
            return;
         }
         this.§=!w§ = new Point(mouseX,mouseY);
         if(this.§=!w§.y <= §>"!§.§6R§)
         {
            return;
         }
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§0!a§.x = mouseX;
         this.§0!a§.y = mouseY;
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         if(Point.distance(new Point(mouseX,mouseY),this.§=!w§) > 5)
         {
            this.§>!q§();
         }
         var _loc2_:Number = mouseX - this.§0!a§.x;
         var _loc3_:Number = mouseY - this.§0!a§.y;
         if(this.§<p§)
         {
            if(param1.shiftKey)
            {
               this.§!!!§.§&!B§(_loc2_ * 2,_loc3_ * 2);
            }
            else
            {
               this.§!!!§.§&!B§(_loc2_,_loc3_);
            }
            this.§=!!§();
         }
         this.§0!a§.x = mouseX;
         this.§0!a§.y = mouseY;
      }
      
      private function §>!q§() : void
      {
         this.§0!q§.visible = true;
         this.§>§.visible = true;
         this.§<p§ = true;
         this.§!!!§.§>!q§();
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         this.§9! §();
      }
   }
}
