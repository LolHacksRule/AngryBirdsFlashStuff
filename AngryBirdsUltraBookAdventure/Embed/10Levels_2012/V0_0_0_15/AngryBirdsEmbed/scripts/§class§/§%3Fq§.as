package §class§
{
   import §-!F§.§`!&§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import flash.display.MovieClip;
   
   public class §?q§ extends §`!&§
   {
       
      
      private var §+[§:§?!3§;
      
      public function §?q§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §7w§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7w§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7w§(§null§,param1.@MouseOver);
         §7w§(§@!'§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §9I§)
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
         if(§8!2§)
         {
            if(param1 == §[!;§)
            {
               if(this.§+[§ != null)
               {
                  this.§+[§.stop();
               }
               this.§+[§ = §,B§.§^n§.§2E§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§+[§.play();
            }
            else if(param1 == §#@§)
            {
               if(this.§+[§ != null)
               {
                  this.§+[§.stop();
               }
               this.§+[§ = §,B§.§^n§.§2E§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§+[§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§+[§)
         {
            this.§+[§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§+[§)
         {
            this.§+[§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
