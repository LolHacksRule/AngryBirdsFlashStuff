package §=!H§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §9c§.§6P§;
   import flash.display.MovieClip;
   
   public class §=<§ extends §6P§
   {
       
      
      private var §!5§:§ !4§;
      
      public function §=<§(param1:XML, param2:§9V§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §4F§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §4F§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §4F§(§]!J§,param1.@MouseOver);
         §4F§(§#!I§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §^!<§)
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
         if(§2L§)
         {
            if(param1 == §6K§)
            {
               if(this.§!5§ != null)
               {
                  this.§!5§.stop();
               }
               this.§!5§ = §49§.§&y§.§=!3§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§!5§.play();
            }
            else if(param1 == §`5§)
            {
               if(this.§!5§ != null)
               {
                  this.§!5§.stop();
               }
               this.§!5§ = §49§.§&y§.§=!3§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§!5§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§!5§)
         {
            this.§!5§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§!5§)
         {
            this.§!5§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
