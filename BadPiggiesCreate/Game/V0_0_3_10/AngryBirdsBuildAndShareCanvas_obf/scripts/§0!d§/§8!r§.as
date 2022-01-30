package §0!d§
{
   import §<8§.§"h§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import flash.display.MovieClip;
   
   public class §8!r§ extends §"h§
   {
       
      
      private var §]i§:§^F§;
      
      public function §8!r§(param1:XML, param2:§7!a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §"a§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §"a§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §"a§(§"!S§,param1.@MouseOver);
         §"a§(§-!r§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §?L§)
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
         if(§+![§)
         {
            if(param1 == §>n§)
            {
               if(this.§]i§ != null)
               {
                  this.§]i§.stop();
               }
               this.§]i§ = §<y§.§,l§.§]!C§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§]i§.play();
            }
            else if(param1 == §&!#§)
            {
               if(this.§]i§ != null)
               {
                  this.§]i§.stop();
               }
               this.§]i§ = §<y§.§,l§.§]!C§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§]i§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§]i§)
         {
            this.§]i§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§]i§)
         {
            this.§]i§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
