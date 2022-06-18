package §3'§
{
   import §+n§.§3P§;
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import flash.display.MovieClip;
   
   public class §5I§ extends §3P§
   {
       
      
      private var §=b§:§7I§;
      
      public function §5I§(param1:XML, param2:§8I§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §4`§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §4`§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §4`§(§#X§,param1.@MouseOver);
         §4`§(§`T§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §;_§)
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
         if(§;#§)
         {
            if(param1 == §?k§)
            {
               if(this.§=b§ != null)
               {
                  this.§=b§.stop();
               }
               this.§=b§ = §>!2§.§72§.§-z§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§=b§.play();
            }
            else if(param1 == §%!H§)
            {
               if(this.§=b§ != null)
               {
                  this.§=b§.stop();
               }
               this.§=b§ = §>!2§.§72§.§-z§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§=b§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§=b§)
         {
            this.§=b§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§=b§)
         {
            this.§=b§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
