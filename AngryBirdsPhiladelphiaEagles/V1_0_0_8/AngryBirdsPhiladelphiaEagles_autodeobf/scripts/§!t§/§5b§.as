package §!t§
{
   import §5F§.§3^§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import flash.display.MovieClip;
   
   public class §5b§ extends §3^§
   {
       
      
      private var §7!4§:§!l§;
      
      public function §5b§(param1:XML, param2:§;1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §53§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §53§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §53§(§,j§,param1.@MouseOver);
         §53§(§1!#§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §4a§)
         {
            mClip.useHandCursor = false;
            mClip.buttonMode = false;
         }
         else
         {
            mClip.useHandCursor = true;
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(§8'§)
         {
            if(param1 == §%!F§)
            {
               if(this.§7!4§ != null)
               {
                  this.§7!4§.stop();
               }
               this.§7!4§ = §5!&§.§@!&§.§9!4§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§7!4§.play();
            }
            else if(param1 == §-q§)
            {
               if(this.§7!4§ != null)
               {
                  this.§7!4§.stop();
               }
               this.§7!4§ = §5!&§.§@!&§.§9!4§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§7!4§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§7!4§)
         {
            this.§7!4§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§7!4§)
         {
            this.§7!4§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
