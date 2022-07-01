package §;!A§
{
   import §+!d§.§"r§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.display.MovieClip;
   
   public class §2v§ extends §"r§
   {
       
      
      private var §49§:§8!K§;
      
      public function §2v§(param1:XML, param2:§;!u§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §<]§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §<]§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §<]§(§+!^§,param1.@MouseOver);
         §<]§(§-!^§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §=!Z§)
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
         if(§"!^§)
         {
            if(param1 == §"!g§)
            {
               if(this.§49§ != null)
               {
                  this.§49§.stop();
               }
               this.§49§ = §%!Z§.§if §.§"<§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§49§.play();
            }
            else if(param1 == §9j§)
            {
               if(this.§49§ != null)
               {
                  this.§49§.stop();
               }
               this.§49§ = §%!Z§.§if §.§"<§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§49§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§49§)
         {
            this.§49§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§49§)
         {
            this.§49§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
