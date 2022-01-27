package §-!V§
{
   import §2!D§.§&9§;
   import §2!D§.§'!7§;
   import §;!0§.§"[§;
   import flash.display.MovieClip;
   
   public class §'J§ extends §"[§
   {
       
      
      private var §&!§:§&9§;
      
      public function §'J§(param1:XML, param2:§@§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §1]§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §1]§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §1]§(§#!`§,param1.@MouseOver);
         §1]§(§'v§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §"f§)
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
         if(§]J§)
         {
            if(param1 == §@!?§)
            {
               if(this.§&!§ != null)
               {
                  this.§&!§.stop();
               }
               this.§&!§ = §'!7§.§=,§.§5Z§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§&!§.play();
            }
            else if(param1 == §^&§)
            {
               if(this.§&!§ != null)
               {
                  this.§&!§.stop();
               }
               this.§&!§ = §'!7§.§=,§.§5Z§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§&!§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§&!§)
         {
            this.§&!§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§&!§)
         {
            this.§&!§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
