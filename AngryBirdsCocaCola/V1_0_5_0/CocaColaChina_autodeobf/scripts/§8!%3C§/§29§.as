package §8!<§
{
   import §6a§.§'!9§;
   import §6a§.§;!a§;
   import §7!H§.§`f§;
   import flash.display.MovieClip;
   
   public class §29§ extends §`f§
   {
       
      
      private var §5O§:§'!9§;
      
      public function §29§(param1:XML, param2:§2W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §7!M§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7!M§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7!M§(§%b§,param1.@MouseOver);
         §7!M§(§'!C§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §0m§)
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
         if(§+M§)
         {
            if(param1 == §return§)
            {
               if(this.§5O§ != null)
               {
                  this.§5O§.stop();
               }
               this.§5O§ = §;!a§.§0%§.§,w§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§5O§.play();
            }
            else if(param1 == §+-§)
            {
               if(this.§5O§ != null)
               {
                  this.§5O§.stop();
               }
               this.§5O§ = §;!a§.§0%§.§,w§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§5O§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§5O§)
         {
            this.§5O§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§5O§)
         {
            this.§5O§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
