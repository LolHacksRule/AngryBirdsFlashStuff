package §=!c§
{
   import §93§.§?t§;
   import §>!_§.§2V§;
   import §>!_§.§9!+§;
   import flash.display.MovieClip;
   
   public class §-A§ extends §?t§
   {
       
      
      private var § !8§:§2V§;
      
      public function §-A§(param1:XML, param2:§=>§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §?W§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §?W§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §?W§(§[u§,param1.@MouseOver);
         §?W§(§ [§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §@G§)
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
         if(§%y§)
         {
            if(param1 == §=B§)
            {
               if(this.§ !8§ != null)
               {
                  this.§ !8§.stop();
               }
               this.§ !8§ = §9!+§.§;!F§.§`!'§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§ !8§.play();
            }
            else if(param1 == §1!3§)
            {
               if(this.§ !8§ != null)
               {
                  this.§ !8§.stop();
               }
               this.§ !8§ = §9!+§.§;!F§.§`!'§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§ !8§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§ !8§)
         {
            this.§ !8§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§ !8§)
         {
            this.§ !8§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
