package §<!I§
{
   import §&!&§.§+!A§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import flash.display.MovieClip;
   
   public class §="5§ extends §+!A§
   {
       
      
      private var §`!5§:§^!#§;
      
      public function §="5§(param1:XML, param2:§>"-§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §9!z§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §9!z§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §9!z§(§2P§,param1.@MouseOver);
         §9!z§(§5"-§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §@x§)
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
         if(§]!z§)
         {
            if(param1 == §3#§)
            {
               if(this.§`!5§ != null)
               {
                  this.§`!5§.stop();
               }
               this.§`!5§ = §"g§.§'!o§.§while§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§`!5§.play();
            }
            else if(param1 == §`y§)
            {
               if(this.§`!5§ != null)
               {
                  this.§`!5§.stop();
               }
               this.§`!5§ = §"g§.§'!o§.§while§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§`!5§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§`!5§)
         {
            this.§`!5§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§`!5§)
         {
            this.§`!5§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
