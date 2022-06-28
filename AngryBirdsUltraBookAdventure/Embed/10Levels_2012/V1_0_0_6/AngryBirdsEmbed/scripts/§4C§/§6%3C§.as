package §4C§
{
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§[4§;
   import flash.display.MovieClip;
   
   public class §6<§ extends §[4§
   {
       
      
      private var §-7§:§3_§;
      
      public function §6<§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §1?§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §1?§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §1?§(§;!4§,param1.@MouseOver);
         §1?§(§#x§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §?[§)
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
         if(get)
         {
            if(param1 == §4b§)
            {
               if(this.§-7§ != null)
               {
                  this.§-7§.stop();
               }
               this.§-7§ = §,!G§.§@j§.§47§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§-7§.play();
            }
            else if(param1 == §@!,§)
            {
               if(this.§-7§ != null)
               {
                  this.§-7§.stop();
               }
               this.§-7§ = §,!G§.§@j§.§47§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§-7§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§-7§)
         {
            this.§-7§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§-7§)
         {
            this.§-7§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
