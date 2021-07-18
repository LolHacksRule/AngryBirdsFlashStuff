package §,j§
{
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §1§.§&!3§;
   import flash.display.MovieClip;
   
   public class §0!@§ extends §&!3§
   {
       
      
      private var §+!F§:§&!!§;
      
      public function §0!@§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §2!4§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §2!4§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §2!4§(§6!A§,param1.@MouseOver);
         §2!4§(§'!#§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §#!$§)
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
         if(§!!0§)
         {
            if(param1 == §;!F§)
            {
               if(this.§+!F§ != null)
               {
                  this.§+!F§.stop();
               }
               this.§+!F§ = §';§.§%!O§.§set §(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§+!F§.play();
            }
            else if(param1 == §#i§)
            {
               if(this.§+!F§ != null)
               {
                  this.§+!F§.stop();
               }
               this.§+!F§ = §';§.§%!O§.§set §(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§+!F§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§+!F§)
         {
            this.§+!F§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§+!F§)
         {
            this.§+!F§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
