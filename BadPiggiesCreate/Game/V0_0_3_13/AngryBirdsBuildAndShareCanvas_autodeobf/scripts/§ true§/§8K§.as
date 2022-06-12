package § true§
{
   import §4!j§.§""3§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.display.MovieClip;
   
   public class §8K§ extends §""3§
   {
       
      
      private var §]8§:§-!m§;
      
      public function §8K§(param1:XML, param2:§1H§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §3!F§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §3!F§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §3!F§(§#!7§,param1.@MouseOver);
         §3!F§(§?!!§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == override)
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
         if(§#]§)
         {
            if(param1 == §8!o§)
            {
               if(this.§]8§ != null)
               {
                  this.§]8§.stop();
               }
               this.§]8§ = §"L§.§7!?§.§4!P§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§]8§.play();
            }
            else if(param1 == §^t§)
            {
               if(this.§]8§ != null)
               {
                  this.§]8§.stop();
               }
               this.§]8§ = §"L§.§7!?§.§4!P§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§]8§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§]8§)
         {
            this.§]8§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§]8§)
         {
            this.§]8§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
