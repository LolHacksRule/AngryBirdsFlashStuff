package §>q§
{
   import §"!U§.§6!J§;
   import §8§.§#$+§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §@#a§ extends EventDispatcher
   {
      
      public static const §2E§:String = "CoinShopButtonBuyClicked";
       
      
      private var mAssetHolder:Sprite;
      
      protected var §3!@§:§6!J§;
      
      protected var §-[§:String;
      
      protected var §>"'§:MovieClip;
      
      protected var §=`§:int;
      
      protected var §=!'§:uint;
      
      private var §]<§:Number;
      
      private var §""b§:Number;
      
      protected var §#?§:String;
      
      public function §@#a§(param1:§@#a§, param2:int, param3:§6!J§, param4:String, param5:String, param6:String, param7:int = 0)
      {
         super();
         if(param1 != this)
         {
            throw new Error("Abstract class did not receive reference to self. AbstractClass cannot be instantiated directly.");
         }
         this.mAssetHolder = new Sprite();
         this.§3!@§ = param3;
         this.§=`§ = param2;
         this.§-[§ = param4;
         this.§>"'§ = new §@`§.§4!i§(param5)();
         this.§]<§ = this.§>"'§.width + param7;
         this.§""b§ = this.§>"'§.height;
         this.§#?§ = param6;
         if(this.§3!@§.totalQuantity >= 10000)
         {
            this.§=!'§ = 5;
         }
         else if(this.§3!@§.totalQuantity >= 1000)
         {
            this.§=!'§ = 4;
         }
         else
         {
            this.§=!'§ = 3;
         }
         this.§>"'§.mouseChildren = false;
         this.§>"'§.mouseEnabled = false;
         this.mAssetHolder.addChild(this.§>"'§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§;"!§);
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
      
      public final function §5'§(param1:Boolean) : void
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
      
      public final function §[!s§() : int
      {
         return this.§=`§;
      }
      
      public final function disable() : void
      {
         this.mAssetHolder.removeEventListener(MouseEvent.CLICK,this.§;"!§);
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
      
      private function §;"!§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new Event(§2E§));
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
