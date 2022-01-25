package §[h§
{
   import §+$§.§"!p§;
   import §^m§.§0!-§;
   import §^m§.§=!a§;
   import flash.display.MovieClip;
   
   public class §49§ extends §"!p§
   {
       
      
      private var §+S§:§0!-§;
      
      public function §49§(param1:XML, param2:§ !&§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §8L§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §8L§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §8L§(§0!V§,param1.@MouseOver);
         §8L§(§0§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §>!W§)
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
         if(§3o§)
         {
            if(param1 == §"!6§)
            {
               if(this.§+S§ != null)
               {
                  this.§+S§.stop();
               }
               this.§+S§ = §=!a§.§9$§.§9!H§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§+S§.play();
            }
            else if(param1 == §3!B§)
            {
               if(this.§+S§ != null)
               {
                  this.§+S§.stop();
               }
               this.§+S§ = §=!a§.§9$§.§9!H§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§+S§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§+S§)
         {
            this.§+S§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§+S§)
         {
            this.§+S§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
