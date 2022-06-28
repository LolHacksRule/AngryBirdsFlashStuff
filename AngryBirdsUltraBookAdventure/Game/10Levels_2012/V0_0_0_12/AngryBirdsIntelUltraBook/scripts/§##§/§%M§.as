package §##§
{
   import §4!9§.§6"§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §%M§ extends Popup
   {
       
      
      private var §,^§:Sprite;
      
      public function §%M§(data:XML, currentUIView:§6"§, tutorialSprite:Sprite)
      {
         super(data,currentUIView);
         this.setVisibility(false);
         this.§,^§ = tutorialSprite;
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var x:int = container.width - this.§,^§.width >> 1;
         var y:int = container.height - this.§,^§.height >> 1;
         var rect:Rectangle = this.§,^§.getBounds(this.§,^§);
         x -= rect.left;
         y -= rect.top;
         container.addChild(this.§,^§);
         this.§,^§.x = x;
         this.§,^§.y = y - 10;
         super.open(useFadeEffect);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         super.preClose(useFadeEffect);
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         container.removeChild(this.§,^§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
