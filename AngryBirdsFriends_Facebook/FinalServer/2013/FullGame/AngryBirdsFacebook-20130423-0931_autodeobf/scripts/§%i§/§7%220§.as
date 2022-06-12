package §%i§
{
   import §1!t§.§!!G§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import flash.display.MovieClip;
   
   public class §7"0§ extends §!!G§
   {
       
      
      private var §-!D§:§6!K§;
      
      public function §7"0§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §[o§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §[o§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §[o§(§?"H§,param1.@MouseOver);
         §[o§(§6!E§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §[E§)
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
         if(§63§)
         {
            if(param1 == §+"B§)
            {
               if(this.§-!D§ != null)
               {
                  this.§-!D§.stop();
               }
               this.§-!D§ = §0W§.§&"5§.§]!r§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§-!D§.play();
            }
            else if(param1 == §'!P§)
            {
               if(this.§-!D§ != null)
               {
                  this.§-!D§.stop();
               }
               this.§-!D§ = §0W§.§&"5§.§]!r§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§-!D§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§-!D§)
         {
            this.§-!D§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§-!D§)
         {
            this.§-!D§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
