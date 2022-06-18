package §4-§
{
   import §0u§.§"`§;
   import §]5§.§,G§;
   import §]5§.§1^§;
   import flash.display.MovieClip;
   
   public class §%+§ extends §"`§
   {
       
      
      private var §+!"§:§1^§;
      
      public function §%+§(param1:XML, param2:§'J§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §?Y§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §?Y§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §?Y§(§-&§,param1.@MouseOver);
         §?Y§(§,n§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §&!$§)
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
         if(§;!E§)
         {
            if(param1 == §^K§)
            {
               if(this.§+!"§ != null)
               {
                  this.§+!"§.stop();
               }
               this.§+!"§ = §,G§.§+S§.§1u§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§+!"§.play();
            }
            else if(param1 == § !3§)
            {
               if(this.§+!"§ != null)
               {
                  this.§+!"§.stop();
               }
               this.§+!"§ = §,G§.§+S§.§1u§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§+!"§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§+!"§)
         {
            this.§+!"§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§+!"§)
         {
            this.§+!"§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
