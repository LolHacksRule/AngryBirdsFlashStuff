package §"U§
{
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import flash.display.MovieClip;
   
   public class §^'§ extends §@V§
   {
       
      
      private var §6;§:§[!9§;
      
      public function §^'§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §9A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §9A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §9A§(§^! §,param1.@MouseOver);
         §9A§(§&U§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §!%§)
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
         if(§;R§)
         {
            if(param1 == §+R§)
            {
               if(this.§6;§ != null)
               {
                  this.§6;§.stop();
               }
               this.§6;§ = §3C§.§>o§.§<t§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§6;§.play();
            }
            else if(param1 == §1V§)
            {
               if(this.§6;§ != null)
               {
                  this.§6;§.stop();
               }
               this.§6;§ = §3C§.§>o§.§<t§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§6;§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§6;§)
         {
            this.§6;§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§6;§)
         {
            this.§6;§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
