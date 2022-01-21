package §31§
{
   import §"f§.§%1§;
   import §"f§.§@4§;
   import §6@§.§>n§;
   import flash.display.MovieClip;
   
   public class §#!d§ extends §>n§
   {
       
      
      private var §8!Z§:§@4§;
      
      public function §#!d§(param1:XML, param2:§ !A§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §?!V§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §?!V§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §?!V§(§;!!§,param1.@MouseOver);
         §?!V§(§%!V§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §0A§)
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
         if(§7!g§)
         {
            if(param1 == §^2§)
            {
               if(this.§8!Z§ != null)
               {
                  this.§8!Z§.stop();
               }
               this.§8!Z§ = §%1§.§+j§.§78§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§8!Z§.play();
            }
            else if(param1 == §'!`§)
            {
               if(this.§8!Z§ != null)
               {
                  this.§8!Z§.stop();
               }
               this.§8!Z§ = §%1§.§+j§.§78§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§8!Z§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§8!Z§)
         {
            this.§8!Z§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§8!Z§)
         {
            this.§8!Z§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
