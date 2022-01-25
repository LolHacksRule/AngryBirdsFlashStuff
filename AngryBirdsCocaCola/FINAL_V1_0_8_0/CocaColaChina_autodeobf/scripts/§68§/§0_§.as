package §68§
{
   import §&V§.§4o§;
   import §7H§.§'!Y§;
   import §7H§.§8Q§;
   import flash.display.MovieClip;
   
   public class §0_§ extends §4o§
   {
       
      
      private var §4t§:§'!Y§;
      
      public function §0_§(param1:XML, param2:§`?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §8!Q§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §8!Q§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §8!Q§(§>!M§,param1.@MouseOver);
         §8!Q§(§>Y§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §0!;§)
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
         if(§+v§)
         {
            if(param1 == §!!K§)
            {
               if(this.§4t§ != null)
               {
                  this.§4t§.stop();
               }
               this.§4t§ = §8Q§.§]!D§.§^w§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§4t§.play();
            }
            else if(param1 == §0i§)
            {
               if(this.§4t§ != null)
               {
                  this.§4t§.stop();
               }
               this.§4t§ = §8Q§.§]!D§.§^w§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§4t§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§4t§)
         {
            this.§4t§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§4t§)
         {
            this.§4t§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
