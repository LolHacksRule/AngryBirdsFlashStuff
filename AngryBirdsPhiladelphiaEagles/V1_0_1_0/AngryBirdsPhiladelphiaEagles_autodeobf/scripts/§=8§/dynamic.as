package §=8§
{
   import §'!N§.§>p§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import flash.display.MovieClip;
   
   public class dynamic extends §>p§
   {
       
      
      private var §]!"§:§]H§;
      
      public function dynamic(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §#D§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §#D§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §#D§(§6!I§,param1.@MouseOver);
         §#D§(§+]§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §3!-§)
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
         if(§#6§)
         {
            if(param1 == §?W§)
            {
               if(this.§]!"§ != null)
               {
                  this.§]!"§.stop();
               }
               this.§]!"§ = §<t§.§4J§.§#q§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§]!"§.play();
            }
            else if(param1 == §1,§)
            {
               if(this.§]!"§ != null)
               {
                  this.§]!"§.stop();
               }
               this.§]!"§ = §<t§.§4J§.§#q§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§]!"§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§]!"§)
         {
            this.§]!"§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§]!"§)
         {
            this.§]!"§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
