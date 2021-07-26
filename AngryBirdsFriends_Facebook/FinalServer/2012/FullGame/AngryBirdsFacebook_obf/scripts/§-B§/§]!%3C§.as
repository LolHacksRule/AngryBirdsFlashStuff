package §-B§
{
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §;n§.§^q§;
   import flash.display.MovieClip;
   
   public class §]!<§ extends §^q§
   {
       
      
      private var §4!"§:§!"&§;
      
      public function §]!<§(param1:XML, param2:§?!j§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §-"C§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §-"C§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §-"C§(§^" §,param1.@MouseOver);
         §-"C§(§[!v§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §?!0§)
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
         if(§;!E§)
         {
            if(param1 == §7!9§)
            {
               if(this.§4!"§ != null)
               {
                  this.§4!"§.stop();
               }
               this.§4!"§ = §&p§.§1[§.§7!3§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§4!"§.play();
            }
            else if(param1 == §,"1§)
            {
               if(this.§4!"§ != null)
               {
                  this.§4!"§.stop();
               }
               this.§4!"§ = §&p§.§1[§.§7!3§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§4!"§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§4!"§)
         {
            this.§4!"§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§4!"§)
         {
            this.§4!"§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
