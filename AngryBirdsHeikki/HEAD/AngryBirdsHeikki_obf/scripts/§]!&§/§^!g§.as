package §]!&§
{
   import §+!M§.§^<§;
   import §1!d§.§!![§;
   import §1!d§.§9m§;
   import flash.display.MovieClip;
   
   public class §^!g§ extends §^<§
   {
       
      
      private var §6y§:§!![§;
      
      public function §^!g§(param1:XML, param2:§5!5§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         § Q§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         § Q§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         § Q§(§`W§,param1.@MouseOver);
         § Q§(§,!P§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §-!O§)
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
         if(§]§)
         {
            if(param1 == §^`§)
            {
               if(this.§6y§ != null)
               {
                  this.§6y§.stop();
               }
               this.§6y§ = §9m§.§?! §.§]C§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§6y§.play();
            }
            else if(param1 == §8!%§)
            {
               if(this.§6y§ != null)
               {
                  this.§6y§.stop();
               }
               this.§6y§ = §9m§.§?! §.§]C§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§6y§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§6y§)
         {
            this.§6y§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§6y§)
         {
            this.§6y§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
