package §"!B§
{
   import §]!=§.§&P§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import flash.display.MovieClip;
   
   public class §+!9§ extends §&P§
   {
       
      
      private var §<X§:§'a§;
      
      public function §+!9§(param1:XML, param2:§58§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §[e§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §[e§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §[e§(§"?§,param1.@MouseOver);
         §[e§(§=!N§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §0!1§)
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
         if(§3c§)
         {
            if(param1 == §+H§)
            {
               if(this.§<X§ != null)
               {
                  this.§<X§.stop();
               }
               this.§<X§ = §-!&§.§;R§.§2w§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§<X§.play();
            }
            else if(param1 == §;y§)
            {
               if(this.§<X§ != null)
               {
                  this.§<X§.stop();
               }
               this.§<X§ = §-!&§.§;R§.§2w§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§<X§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§<X§)
         {
            this.§<X§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§<X§)
         {
            this.§<X§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
