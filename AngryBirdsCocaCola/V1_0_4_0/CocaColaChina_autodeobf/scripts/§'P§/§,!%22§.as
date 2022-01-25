package §'P§
{
   import §7]§.§8N§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   import flash.display.MovieClip;
   
   public class §,!"§ extends §8N§
   {
       
      
      private var §+u§:§3!2§;
      
      public function §,!"§(param1:XML, param2:§`;§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §=!&§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §=!&§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §=!&§(§?R§,param1.@MouseOver);
         §=!&§(§&y§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §!N§)
         {
            mClip.useHandCursor = false;
            mClip.buttonMode = false;
         }
         else
         {
            mClip.useHandCursor = true;
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(§+N§)
         {
            if(param1 == §@2§)
            {
               if(this.§+u§ != null)
               {
                  this.§+u§.stop();
               }
               this.§+u§ = §!!K§.§@!c§.§'!H§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§+u§.play();
            }
            else if(param1 == §#! §)
            {
               if(this.§+u§ != null)
               {
                  this.§+u§.stop();
               }
               this.§+u§ = §!!K§.§@!c§.§'!H§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§+u§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§+u§)
         {
            this.§+u§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§+u§)
         {
            this.§+u§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
