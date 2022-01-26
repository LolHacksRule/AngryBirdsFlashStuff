package §;[§
{
   import §!7§.§!>§;
   import §!7§.§`R§;
   import §'!N§.§71§;
   import flash.display.MovieClip;
   
   public class §7!F§ extends §71§
   {
       
      
      private var §?!T§:§!>§;
      
      public function §7!F§(param1:XML, param2:§>!^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §=!`§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §=!`§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §=!`§(§0!>§,param1.@MouseOver);
         §=!`§(§5V§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §'!,§)
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
         if(§3!H§)
         {
            if(param1 == §9!"§)
            {
               if(this.§?!T§ != null)
               {
                  this.§?!T§.stop();
               }
               this.§?!T§ = §`R§.§!!8§.§ B§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§?!T§.play();
            }
            else if(param1 == §<!8§)
            {
               if(this.§?!T§ != null)
               {
                  this.§?!T§.stop();
               }
               this.§?!T§ = §`R§.§!!8§.§ B§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§?!T§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§?!T§)
         {
            this.§?!T§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§?!T§)
         {
            this.§?!T§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
