package §"$§
{
   import §=!5§.§`X§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3!R§ extends Popup
   {
       
      
      private var §2!_§:Sprite;
      
      public function §3!R§(data:XML, currentUIView:§`X§, tutorialSprite:Sprite)
      {
         super(data,currentUIView);
         this.setVisibility(false);
         this.§2!_§ = tutorialSprite;
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var x:int = container.width - this.§2!_§.width >> 1;
         var y:int = container.height - this.§2!_§.height >> 1;
         var rect:Rectangle = this.§2!_§.getBounds(this.§2!_§);
         x -= rect.left;
         y -= rect.top;
         container.addChild(this.§2!_§);
         this.§2!_§.x = x;
         this.§2!_§.y = y - 10;
         super.open(useFadeEffect);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         super.preClose(useFadeEffect);
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         container.removeChild(this.§2!_§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
