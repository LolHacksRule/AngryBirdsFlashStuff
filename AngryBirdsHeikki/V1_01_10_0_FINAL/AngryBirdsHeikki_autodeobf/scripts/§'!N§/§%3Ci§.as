package §'!N§
{
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§4!Y§;
   import flash.display.MovieClip;
   
   public class §<i§ extends §4!Y§
   {
       
      
      private var §4v§:§&[§;
      
      public function §<i§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §[!O§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §[!O§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §[!O§(§3"§,param1.@MouseOver);
         §[!O§(§#!C§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §[&§)
         {
            targetSprite.useHandCursor = false;
            targetSprite.buttonMode = false;
         }
         else
         {
            targetSprite.useHandCursor = true;
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(§;c§)
         {
            if(param1 == §=w§)
            {
               if(this.§4v§ != null)
               {
                  this.§4v§.stop();
               }
               this.§4v§ = §"!X§.§ s§.§%!;§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§4v§.play();
            }
            else if(param1 == §-j§)
            {
               if(this.§4v§ != null)
               {
                  this.§4v§.stop();
               }
               this.§4v§ = §"!X§.§ s§.§%!;§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§4v§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§4v§)
         {
            this.§4v§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§4v§)
         {
            this.§4v§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
