package §[]§
{
   import §-!;§.§4^§;
   import §-!;§.§^!,§;
   import §7L§.§+!$§;
   import flash.display.MovieClip;
   
   public class §+F§ extends §+!$§
   {
       
      
      private var §-r§:§4^§;
      
      public function §+F§(param1:XML, param2:§`!`§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §7,§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7,§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7,§(§[h§,param1.@MouseOver);
         §7,§(§!t§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §2!H§)
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
         if(§@8§)
         {
            if(param1 == §7!X§)
            {
               if(this.§-r§ != null)
               {
                  this.§-r§.stop();
               }
               this.§-r§ = §^!,§.§0!S§.§3n§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§-r§.play();
            }
            else if(param1 == §!I§)
            {
               if(this.§-r§ != null)
               {
                  this.§-r§.stop();
               }
               this.§-r§ = §^!,§.§0!S§.§3n§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§-r§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§-r§)
         {
            this.§-r§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§-r§)
         {
            this.§-r§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
