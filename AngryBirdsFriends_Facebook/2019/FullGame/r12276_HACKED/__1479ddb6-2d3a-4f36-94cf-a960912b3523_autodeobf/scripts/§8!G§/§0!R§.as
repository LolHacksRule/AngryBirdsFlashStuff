package §8!G§
{
   import § "v§.§4$4§;
   import §4#l§.§>"`§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §0!R§ extends EventDispatcher
   {
      
      public static const §?!a§:String = "CoinShopButtonBuyClicked";
       
      
      private var mAssetHolder:Sprite;
      
      protected var §[!'§:§>"`§;
      
      protected var §6#>§:String;
      
      protected var §0?§:MovieClip;
      
      protected var §`!g§:int;
      
      protected var §5!S§:uint;
      
      private var §@!l§:Number;
      
      private var §,7§:Number;
      
      protected var §?#d§:String;
      
      public function §0!R§(param1:§0!R§, param2:int, param3:§>"`§, param4:String, param5:String, param6:String, param7:int = 0)
      {
         super();
         if(param1 != this)
         {
            throw new Error("Abstract class did not receive reference to self. AbstractClass cannot be instantiated directly.");
         }
         this.mAssetHolder = new Sprite();
         this.§[!'§ = param3;
         this.§`!g§ = param2;
         this.§6#>§ = param4;
         this.§0?§ = new §=@§.§9!x§(param5)();
         this.§@!l§ = this.§0?§.width + param7;
         this.§,7§ = this.§0?§.height;
         this.§?#d§ = param6;
         if(this.§[!'§.totalQuantity >= 10000)
         {
            this.§5!S§ = 5;
         }
         else if(this.§[!'§.totalQuantity >= 1000)
         {
            this.§5!S§ = 4;
         }
         else
         {
            this.§5!S§ = 3;
         }
         this.§0?§.mouseChildren = false;
         this.§0?§.mouseEnabled = false;
         this.mAssetHolder.addChild(this.§0?§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§;"y§);
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
      
      public final function setVisible(param1:Boolean) : void
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
      
      public final function §%$!§() : int
      {
         return this.§`!g§;
      }
      
      public final function disable() : void
      {
         this.mAssetHolder.removeEventListener(MouseEvent.CLICK,this.§;"y§);
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
      
      private function §;"y§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new Event(§?!a§));
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
