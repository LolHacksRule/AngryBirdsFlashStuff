package §2K§
{
   import §6!K§.§3l§;
   import §6!S§.§!<§;
   import §6!S§.§,!9§;
   import flash.display.MovieClip;
   
   public class § 3§ extends §3l§
   {
       
      
      private var §;j§:§,!9§;
      
      public function § 3§(param1:XML, param2:§,!@§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §]s§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §]s§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §]s§(§%!_§,param1.@MouseOver);
         §]s§(§'!>§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §,!8§)
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
         if(§-S§)
         {
            if(param1 == §#S§)
            {
               if(this.§;j§ != null)
               {
                  this.§;j§.stop();
               }
               this.§;j§ = §!<§.§%b§.§9!!§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§;j§.play();
            }
            else if(param1 == §@Z§)
            {
               if(this.§;j§ != null)
               {
                  this.§;j§.stop();
               }
               this.§;j§ = §!<§.§%b§.§9!!§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§;j§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§;j§)
         {
            this.§;j§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§;j§)
         {
            this.§;j§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
