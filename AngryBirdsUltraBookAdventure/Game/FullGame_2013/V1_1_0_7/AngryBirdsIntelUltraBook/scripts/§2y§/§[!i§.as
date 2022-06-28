package §2y§
{
   import §@!&§.§-0§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.display.MovieClip;
   
   public class §[!i§ extends §-0§
   {
       
      
      private var §?X§:§^v§;
      
      public function §[!i§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §,9§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §,9§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §,9§(§4§,param1.@MouseOver);
         §,9§(§ M§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §6!q§)
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
         if(§-D§)
         {
            if(param1 == §5§)
            {
               if(this.§?X§ != null)
               {
                  this.§?X§.stop();
               }
               this.§?X§ = §`!G§.§[U§.§-]§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§?X§.play();
            }
            else if(param1 == §`"#§)
            {
               if(this.§?X§ != null)
               {
                  this.§?X§.stop();
               }
               this.§?X§ = §`!G§.§[U§.§-]§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§?X§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§?X§)
         {
            this.§?X§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§?X§)
         {
            this.§?X§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
