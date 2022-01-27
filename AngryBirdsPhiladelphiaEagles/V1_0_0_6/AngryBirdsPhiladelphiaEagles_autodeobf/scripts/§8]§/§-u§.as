package §8]§
{
   import §!!0§.§2§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.display.MovieClip;
   
   public class §-u§ extends §2§
   {
       
      
      private var §-§:§<Q§;
      
      public function §-u§(param1:XML, param2:§+a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §&!H§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §&!H§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §&!H§(§#j§,param1.@MouseOver);
         §&!H§(§4!$§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §1u§)
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
         if(§3$§)
         {
            if(param1 == §%7§)
            {
               if(this.§-§ != null)
               {
                  this.§-§.stop();
               }
               this.§-§ = §5^§.§<"§.§^g§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§-§.play();
            }
            else if(param1 == §@0§)
            {
               if(this.§-§ != null)
               {
                  this.§-§.stop();
               }
               this.§-§ = §5^§.§<"§.§^g§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§-§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§-§)
         {
            this.§-§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§-§)
         {
            this.§-§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
