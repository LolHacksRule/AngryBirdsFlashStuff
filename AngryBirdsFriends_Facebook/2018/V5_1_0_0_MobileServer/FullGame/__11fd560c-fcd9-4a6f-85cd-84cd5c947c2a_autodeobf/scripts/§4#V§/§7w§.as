package §4#V§
{
   import §&"`§.§##P§;
   import §@!M§.§!"p§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §7w§ extends EventDispatcher
   {
      
      public static const §&[§:String = "CoinShopButtonBuyClicked";
       
      
      private var mAssetHolder:Sprite;
      
      protected var §+$'§:§##P§;
      
      protected var §<#+§:String;
      
      protected var §;!V§:MovieClip;
      
      protected var §&!&§:int;
      
      protected var §1#1§:uint;
      
      private var §4"V§:Number;
      
      private var §""&§:Number;
      
      protected var §<";§:String;
      
      public function §7w§(param1:§7w§, param2:int, param3:§##P§, param4:String, param5:String, param6:String, param7:int = 0)
      {
         super();
         if(param1 != this)
         {
            throw new Error("Abstract class did not receive reference to self. AbstractClass cannot be instantiated directly.");
         }
         this.mAssetHolder = new Sprite();
         this.§+$'§ = param3;
         this.§&!&§ = param2;
         this.§<#+§ = param4;
         this.§;!V§ = new §!"f§.§##?§(param5)();
         this.§4"V§ = this.§;!V§.width + param7;
         this.§""&§ = this.§;!V§.height;
         this.§<";§ = param6;
         if(this.§+$'§.totalQuantity >= 10000)
         {
            this.§1#1§ = 5;
         }
         else if(this.§+$'§.totalQuantity >= 1000)
         {
            this.§1#1§ = 4;
         }
         else
         {
            this.§1#1§ = 3;
         }
         this.§;!V§.mouseChildren = false;
         this.§;!V§.mouseEnabled = false;
         this.mAssetHolder.addChild(this.§;!V§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§9#L§);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
      }
      
      protected final function init() : void
      {
         this.setBCIcon();
         this.setBCTextField();
         this.setBG();
         this.setDiscountTag();
         this.setMainIcon();
         this.setNewTag();
         this.setPrice();
         this.setSpecialTag();
      }
      
      public final function getGraphics() : Sprite
      {
         return this.mAssetHolder;
      }
      
      public final function §;"?§(param1:Boolean) : void
      {
         this.getGraphics().visible = param1;
      }
      
      public final function get x() : Number
      {
         return this.mAssetHolder.x;
      }
      
      public final function set x(param1:Number) : void
      {
         this.mAssetHolder.x = param1;
      }
      
      public final function get y() : Number
      {
         return this.mAssetHolder.y;
      }
      
      public final function set y(param1:Number) : void
      {
         this.mAssetHolder.y = param1;
      }
      
      public final function setEnabled(param1:Boolean) : void
      {
         this.mAssetHolder.mouseEnabled = param1;
      }
      
      public final function §@#+§() : int
      {
         return this.§&!&§;
      }
      
      public final function disable() : void
      {
         this.mAssetHolder.removeEventListener(MouseEvent.CLICK,this.§9#L§);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.mAssetHolder.removeChildren();
         if(this.mAssetHolder.parent)
         {
            this.mAssetHolder.parent.removeChild(this.mAssetHolder);
         }
      }
      
      private function §9#L§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new Event(§&[§));
      }
      
      protected function setDiscountTag() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setMainIcon() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setBCIcon() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setBG() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setBCTextField() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setSpecialTag() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setPrice() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setNewTag() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function onMouseOut(param1:MouseEvent) : void
      {
      }
      
      protected function onMouseUp(param1:MouseEvent) : void
      {
      }
      
      protected function onMouseDown(param1:MouseEvent) : void
      {
      }
      
      protected function onMouseOver(param1:MouseEvent) : void
      {
      }
   }
}
