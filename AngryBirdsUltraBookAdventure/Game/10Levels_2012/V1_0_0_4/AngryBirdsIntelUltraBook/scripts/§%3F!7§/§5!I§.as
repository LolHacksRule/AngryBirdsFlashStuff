package §?!7§
{
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import flash.display.MovieClip;
   
   public class §5!I§ extends §+!!§
   {
       
      
      private var §-J§:§4!Z§;
      
      public function §5!I§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §7k§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7k§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7k§(§^§,param1.@MouseOver);
         §7k§(§[!J§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == § H§)
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
         if(§&&§)
         {
            if(param1 == §;=§)
            {
               if(this.§-J§ != null)
               {
                  this.§-J§.stop();
               }
               this.§-J§ = §,!b§.§<d§.§>a§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§-J§.play();
            }
            else if(param1 == §?!0§)
            {
               if(this.§-J§ != null)
               {
                  this.§-J§.stop();
               }
               this.§-J§ = §,!b§.§<d§.§>a§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§-J§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§-J§)
         {
            this.§-J§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§-J§)
         {
            this.§-J§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
