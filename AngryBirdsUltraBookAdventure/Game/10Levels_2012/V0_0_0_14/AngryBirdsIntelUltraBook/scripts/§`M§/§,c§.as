package §`M§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §=R§.§5!a§;
   import flash.display.MovieClip;
   
   public class §,c§ extends §5!a§
   {
       
      
      private var §9!`§:§4F§;
      
      public function §,c§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §;!9§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §;!9§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §;!9§(§=!g§,param1.@MouseOver);
         §;!9§(§[$§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §-n§)
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
         if(§"!E§)
         {
            if(param1 == §8j§)
            {
               if(this.§9!`§ != null)
               {
                  this.§9!`§.stop();
               }
               this.§9!`§ = §5+§.§^Z§.§=!a§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§9!`§.play();
            }
            else if(param1 == §'0§)
            {
               if(this.§9!`§ != null)
               {
                  this.§9!`§.stop();
               }
               this.§9!`§ = §5+§.§^Z§.§=!a§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§9!`§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§9!`§)
         {
            this.§9!`§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§9!`§)
         {
            this.§9!`§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
