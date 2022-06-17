package §%4§
{
   import §!!?§.§<#a§;
   import §>"9§.§[#%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §]#X§ extends EventDispatcher
   {
      
      public static const §8#&§:String = "CoinShopButtonBuyClicked";
       
      
      private var mAssetHolder:Sprite;
      
      protected var §^"v§:§<#a§;
      
      protected var §+0§:String;
      
      protected var §>"k§:MovieClip;
      
      protected var §4$C§:int;
      
      protected var §&#&§:uint;
      
      private var §@#Z§:Number;
      
      private var §+#j§:Number;
      
      protected var §?!l§:String;
      
      public function §]#X§(param1:§]#X§, param2:int, param3:§<#a§, param4:String, param5:String, param6:String, param7:int = 0)
      {
         super();
         if(param1 != this)
         {
            throw new Error("Abstract class did not receive reference to self. AbstractClass cannot be instantiated directly.");
         }
         this.mAssetHolder = new Sprite();
         this.§^"v§ = param3;
         this.§4$C§ = param2;
         this.§+0§ = param4;
         this.§>"k§ = new §2"O§.§`>§(param5)();
         this.§@#Z§ = this.§>"k§.width + param7;
         this.§+#j§ = this.§>"k§.height;
         this.§?!l§ = param6;
         if(this.§^"v§.totalQuantity >= 10000)
         {
            this.§&#&§ = 5;
         }
         else if(this.§^"v§.totalQuantity >= 1000)
         {
            this.§&#&§ = 4;
         }
         else
         {
            this.§&#&§ = 3;
         }
         this.§>"k§.mouseChildren = false;
         this.§>"k§.mouseEnabled = false;
         this.mAssetHolder.addChild(this.§>"k§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§;!l§);
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
      
      public final function §[$>§() : int
      {
         return this.§4$C§;
      }
      
      public final function disable() : void
      {
         this.mAssetHolder.removeEventListener(MouseEvent.CLICK,this.§;!l§);
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
      
      private function §;!l§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new Event(§8#&§));
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
