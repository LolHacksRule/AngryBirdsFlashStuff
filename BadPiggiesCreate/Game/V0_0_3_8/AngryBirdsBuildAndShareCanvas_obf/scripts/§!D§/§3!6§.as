package §!D§
{
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §9!7§.§6"0§;
   import flash.display.MovieClip;
   
   public class §3!6§ extends §6"0§
   {
       
      
      private var §"b§:§;!5§;
      
      public function §3!6§(param1:XML, param2:§ use§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §?!q§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §?!q§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §?!q§(§@q§,param1.@MouseOver);
         §?!q§(§6U§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §<>§)
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
         if(§>!c§)
         {
            if(param1 == §?!G§)
            {
               if(this.§"b§ != null)
               {
                  this.§"b§.stop();
               }
               this.§"b§ = §"!5§.§9j§.§4!p§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§"b§.play();
            }
            else if(param1 == §1!M§)
            {
               if(this.§"b§ != null)
               {
                  this.§"b§.stop();
               }
               this.§"b§ = §"!5§.§9j§.§4!p§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§"b§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§"b§)
         {
            this.§"b§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§"b§)
         {
            this.§"b§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
