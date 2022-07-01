package §'p§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§9!!§;
   import flash.display.MovieClip;
   
   public class §="#§ extends §9!!§
   {
       
      
      private var §2!q§:§3^§;
      
      public function §="#§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         § "<§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         § "<§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         § "<§(§%x§,param1.@MouseOver);
         § "<§(§2"3§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §%!§)
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
         if(§<!l§)
         {
            if(param1 == §&M§)
            {
               if(this.§2!q§ != null)
               {
                  this.§2!q§.stop();
               }
               this.§2!q§ = §7!E§.§2=§.§<!C§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§2!q§.play();
            }
            else if(param1 == §7N§)
            {
               if(this.§2!q§ != null)
               {
                  this.§2!q§.stop();
               }
               this.§2!q§ = §7!E§.§2=§.§<!C§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§2!q§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§2!q§)
         {
            this.§2!q§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§2!q§)
         {
            this.§2!q§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
