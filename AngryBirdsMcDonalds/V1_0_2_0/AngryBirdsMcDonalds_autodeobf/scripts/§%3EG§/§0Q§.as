package §>G§
{
   import §"%§.§9j§;
   import §=!F§.§"!2§;
   import §=!F§.§^!^§;
   import flash.display.MovieClip;
   
   public class §0Q§ extends §9j§
   {
       
      
      private var §,t§:§^!^§;
      
      public function §0Q§(param1:XML, param2:§]f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §58§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §58§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §58§(§-!X§,param1.@MouseOver);
         §58§(§;!Y§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §^^§)
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
         if(§5o§)
         {
            if(param1 == §?`§)
            {
               if(this.§,t§ != null)
               {
                  this.§,t§.stop();
               }
               this.§,t§ = §"!2§.§'!S§.§-!S§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§,t§.play();
            }
            else if(param1 == §9!m§)
            {
               if(this.§,t§ != null)
               {
                  this.§,t§.stop();
               }
               this.§,t§ = §"!2§.§'!S§.§-!S§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§,t§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§,t§)
         {
            this.§,t§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§,t§)
         {
            this.§,t§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
