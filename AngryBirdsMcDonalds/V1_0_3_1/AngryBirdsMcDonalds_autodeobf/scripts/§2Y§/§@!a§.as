package §2y§
{
   import §3!R§.§,=§;
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   import flash.display.MovieClip;
   
   public class §@!a§ extends §,=§
   {
       
      
      private var §<!j§:§2,§;
      
      public function §@!a§(param1:XML, param2:§]`§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §@q§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §@q§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §@q§(§71§,param1.@MouseOver);
         §@q§(§&!3§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §%,§)
         {
            targetSprite.useHandCursor = false;
            targetSprite.buttonMode = false;
         }
         else
         {
            targetSprite.useHandCursor = true;
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(§2V§)
         {
            if(param1 == §>!m§)
            {
               if(this.§<!j§ != null)
               {
                  this.§<!j§.stop();
               }
               this.§<!j§ = §;i§.§@!7§.§@!6§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§<!j§.play();
            }
            else if(param1 == §2;§)
            {
               if(this.§<!j§ != null)
               {
                  this.§<!j§.stop();
               }
               this.§<!j§ = §;i§.§@!7§.§@!6§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§<!j§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§<!j§)
         {
            this.§<!j§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§<!j§)
         {
            this.§<!j§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
