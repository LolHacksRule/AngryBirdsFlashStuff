package §7f§
{
   import §!>§.§!#§;
   import §!>§.§5!$§;
   import §^r§.§%%§;
   import flash.display.MovieClip;
   
   public class §,!>§ extends §%%§
   {
       
      
      private var §['§:§5!$§;
      
      public function §,!>§(param1:XML, param2:§?i§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §[!O§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §[!O§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §[!O§(§<8§,param1.@MouseOver);
         §[!O§(§@'§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §@!]§)
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
         if(§3?§)
         {
            if(param1 == §,<§)
            {
               if(this.§['§ != null)
               {
                  this.§['§.stop();
               }
               this.§['§ = §!#§.§!5§.§&![§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§['§.play();
            }
            else if(param1 == §0!§)
            {
               if(this.§['§ != null)
               {
                  this.§['§.stop();
               }
               this.§['§ = §!#§.§!5§.§&![§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§['§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§['§)
         {
            this.§['§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§['§)
         {
            this.§['§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
