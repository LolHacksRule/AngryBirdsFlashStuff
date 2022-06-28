package §=^§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §@s§.§9$§;
   import flash.display.MovieClip;
   
   public class §]P§ extends §9$§
   {
       
      
      private var §2q§:§ !5§;
      
      public function §]P§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         § [§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         § [§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         § [§(§3]§,param1.@MouseOver);
         § [§(§#H§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §^8§)
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
         if(§0J§)
         {
            if(param1 == §!!C§)
            {
               if(this.§2q§ != null)
               {
                  this.§2q§.stop();
               }
               this.§2q§ = §%!>§.§-]§.§?U§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§2q§.play();
            }
            else if(param1 == §%e§)
            {
               if(this.§2q§ != null)
               {
                  this.§2q§.stop();
               }
               this.§2q§ = §%!>§.§-]§.§?U§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§2q§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§2q§)
         {
            this.§2q§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§2q§)
         {
            this.§2q§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
