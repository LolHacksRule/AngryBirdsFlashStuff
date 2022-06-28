package §^@§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §1h§.§ use§;
   import flash.display.MovieClip;
   
   public class §=^§ extends § use§
   {
       
      
      private var §]P§:§ !5§;
      
      public function §=^§(param1:XML, param2:§2q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §,E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §,E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §,E§(§;!1§,param1.@MouseOver);
         §,E§(§3]§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §?J§)
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
         if(§89§)
         {
            if(param1 == §%e§)
            {
               if(this.§]P§ != null)
               {
                  this.§]P§.stop();
               }
               this.§]P§ = §%!>§.§-]§.§?U§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§]P§.play();
            }
            else if(param1 == §^8§)
            {
               if(this.§]P§ != null)
               {
                  this.§]P§.stop();
               }
               this.§]P§ = §%!>§.§-]§.§?U§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§]P§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§]P§)
         {
            this.§]P§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§]P§)
         {
            this.§]P§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
