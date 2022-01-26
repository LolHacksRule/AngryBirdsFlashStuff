package §[v§
{
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §`W§.§<r§;
   import flash.display.MovieClip;
   
   public class §^P§ extends §<r§
   {
       
      
      private var §2! §:§?A§;
      
      public function §^P§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §`!E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §`!E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §`!E§(§&!<§,param1.@MouseOver);
         §`!E§(§@K§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §?!B§)
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
         if(§!8§)
         {
            if(param1 == §%i§)
            {
               if(this.§2! § != null)
               {
                  this.§2! §.stop();
               }
               this.§2! § = §";§.§[8§.§6!$§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§2! §.play();
            }
            else if(param1 == §const§)
            {
               if(this.§2! § != null)
               {
                  this.§2! §.stop();
               }
               this.§2! § = §";§.§[8§.§6!$§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§2! §.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§2! §)
         {
            this.§2! §.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§2! §)
         {
            this.§2! §.stop();
         }
         super.viewHeight = param1;
      }
   }
}
