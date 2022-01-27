package §=u§
{
   import §5f§.§=;§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.display.MovieClip;
   
   public class §1r§ extends §=;§
   {
       
      
      private var §'!7§:§6q§;
      
      public function §1r§(param1:XML, param2:§>v§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §`y§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §`y§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §`y§(§^8§,param1.@MouseOver);
         §`y§(§<!L§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §+!0§)
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
         if(§&l§)
         {
            if(param1 == §6H§)
            {
               if(this.§'!7§ != null)
               {
                  this.§'!7§.stop();
               }
               this.§'!7§ = §[!-§.§ set§.§6B§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§'!7§.play();
            }
            else if(param1 == §,!E§)
            {
               if(this.§'!7§ != null)
               {
                  this.§'!7§.stop();
               }
               this.§'!7§ = §[!-§.§ set§.§6B§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§'!7§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§'!7§)
         {
            this.§'!7§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§'!7§)
         {
            this.§'!7§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
