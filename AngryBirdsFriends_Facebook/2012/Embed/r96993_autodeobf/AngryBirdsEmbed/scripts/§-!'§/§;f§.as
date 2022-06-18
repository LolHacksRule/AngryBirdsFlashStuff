package §-!'§
{
   import §!^§.§+!5§;
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import flash.display.MovieClip;
   
   public class §;f§ extends §+!5§
   {
       
      
      private var §5!H§:§`!-§;
      
      public function §;f§(param1:XML, param2:§in §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §5^§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §5^§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §5^§(§2!F§,param1.@MouseOver);
         §5^§(§!T§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == § !G§)
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
         if(§?=§)
         {
            if(param1 == §0O§)
            {
               if(this.§5!H§ != null)
               {
                  this.§5!H§.stop();
               }
               this.§5!H§ = §;q§.§9r§.§%!#§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§5!H§.play();
            }
            else if(param1 == §&B§)
            {
               if(this.§5!H§ != null)
               {
                  this.§5!H§.stop();
               }
               this.§5!H§ = §;q§.§9r§.§%!#§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§5!H§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§5!H§)
         {
            this.§5!H§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§5!H§)
         {
            this.§5!H§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
