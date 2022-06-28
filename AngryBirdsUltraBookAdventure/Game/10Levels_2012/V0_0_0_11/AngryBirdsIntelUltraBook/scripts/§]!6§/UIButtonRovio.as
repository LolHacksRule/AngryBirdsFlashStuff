package §]!6§
{
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §>!-§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      private var §#!&§:§!T§;
      
      public function UIButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §5j§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §5j§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §5j§(§,!k§,param1.@MouseOver);
         §5j§(§@8§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §1!M§)
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
         if(§8j§)
         {
            if(param1 == §#!A§)
            {
               if(this.§#!&§ != null)
               {
                  this.§#!&§.stop();
               }
               this.§#!&§ = TweenManager.§8!X§.§8m§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§#!&§.play();
            }
            else if(param1 == §5$§)
            {
               if(this.§#!&§ != null)
               {
                  this.§#!&§.stop();
               }
               this.§#!&§ = TweenManager.§8!X§.§8m§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§#!&§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§#!&§)
         {
            this.§#!&§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§#!&§)
         {
            this.§#!&§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
