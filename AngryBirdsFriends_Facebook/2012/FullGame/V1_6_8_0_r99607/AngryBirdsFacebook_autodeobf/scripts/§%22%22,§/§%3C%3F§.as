package §"",§
{
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import flash.display.MovieClip;
   
   public class §<?§ extends § F§
   {
       
      
      private var §[!L§:§-!F§;
      
      public function §<?§(param1:XML, param2:§<+§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §0">§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §0">§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §0">§(§&p§,param1.@MouseOver);
         §0">§(§2!H§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §<!7§)
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
         if(§0V§)
         {
            if(param1 == § !j§)
            {
               if(this.§[!L§ != null)
               {
                  this.§[!L§.stop();
               }
               this.§[!L§ = §7!b§.§8c§.§4&§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§[!L§.play();
            }
            else if(param1 == § C§)
            {
               if(this.§[!L§ != null)
               {
                  this.§[!L§.stop();
               }
               this.§[!L§ = §7!b§.§8c§.§4&§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§[!L§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§[!L§)
         {
            this.§[!L§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§[!L§)
         {
            this.§[!L§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
