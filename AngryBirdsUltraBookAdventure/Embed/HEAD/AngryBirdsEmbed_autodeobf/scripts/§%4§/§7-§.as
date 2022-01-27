package §%4§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §0!#§.§0K§;
   import flash.display.MovieClip;
   
   public class §7-§ extends §0K§
   {
       
      
      private var §8!+§:§ !=§;
      
      public function §7-§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §else§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §else§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §else§(§[F§,param1.@MouseOver);
         §else§(§@^§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §]x§)
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
         if(§4%§)
         {
            if(param1 == §?'§)
            {
               if(this.§8!+§ != null)
               {
                  this.§8!+§.stop();
               }
               this.§8!+§ = §@7§.§@6§.§3!%§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§8!+§.play();
            }
            else if(param1 == §4m§)
            {
               if(this.§8!+§ != null)
               {
                  this.§8!+§.stop();
               }
               this.§8!+§ = §@7§.§@6§.§3!%§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§8!+§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§8!+§)
         {
            this.§8!+§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§8!+§)
         {
            this.§8!+§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
