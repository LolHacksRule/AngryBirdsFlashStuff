package §'b§
{
   import §3!`§.§8h§;
   import §3!`§.§]&§;
   import §6l§.§ l§;
   import flash.display.MovieClip;
   
   public class §0!D§ extends § l§
   {
       
      
      private var §&!7§:§]&§;
      
      public function §0!D§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §^!F§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §^!F§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §^!F§(§!!=§,param1.@MouseOver);
         §^!F§(§'!;§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §1'§)
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
         if(§2m§)
         {
            if(param1 == §!!V§)
            {
               if(this.§&!7§ != null)
               {
                  this.§&!7§.stop();
               }
               this.§&!7§ = §8h§.§`G§.§[O§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§&!7§.play();
            }
            else if(param1 == §^X§)
            {
               if(this.§&!7§ != null)
               {
                  this.§&!7§.stop();
               }
               this.§&!7§ = §8h§.§`G§.§[O§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§&!7§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§&!7§)
         {
            this.§&!7§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§&!7§)
         {
            this.§&!7§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
