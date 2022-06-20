package §9"0§
{
   import §1#W§.§!#&§;
   import §7",§.§!#q§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §<0§ extends EventDispatcher
   {
      
      public static const §2!_§:String = "CoinShopButtonBuyClicked";
       
      
      private var mAssetHolder:Sprite;
      
      protected var §9#A§:§!#q§;
      
      protected var §;"^§:String;
      
      protected var §@"<§:MovieClip;
      
      protected var §,$<§:int;
      
      protected var §2f§:uint;
      
      private var § ";§:Number;
      
      private var §;!U§:Number;
      
      protected var §3!g§:String;
      
      public function §<0§(param1:§<0§, param2:int, param3:§!#q§, param4:String, param5:String, param6:String, param7:int = 0)
      {
         super();
         if(param1 != this)
         {
            throw new Error("Abstract class did not receive reference to self. AbstractClass cannot be instantiated directly.");
         }
         this.mAssetHolder = new Sprite();
         this.§9#A§ = param3;
         this.§,$<§ = param2;
         this.§;"^§ = param4;
         this.§@"<§ = new §+$#§.§["`§(param5)();
         this.§ ";§ = this.§@"<§.width + param7;
         this.§;!U§ = this.§@"<§.height;
         this.§3!g§ = param6;
         if(this.§9#A§.totalQuantity >= 10000)
         {
            this.§2f§ = 5;
         }
         else if(this.§9#A§.totalQuantity >= 1000)
         {
            this.§2f§ = 4;
         }
         else
         {
            this.§2f§ = 3;
         }
         this.§@"<§.mouseChildren = false;
         this.§@"<§.mouseEnabled = false;
         this.mAssetHolder.addChild(this.§@"<§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§8"V§);
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
      
      public final function §8"d§(param1:Boolean) : void
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
      
      public final function §<"x§() : int
      {
         return this.§,$<§;
      }
      
      public final function disable() : void
      {
         this.mAssetHolder.removeEventListener(MouseEvent.CLICK,this.§8"V§);
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
      
      private function §8"V§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new Event(§2!_§));
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
