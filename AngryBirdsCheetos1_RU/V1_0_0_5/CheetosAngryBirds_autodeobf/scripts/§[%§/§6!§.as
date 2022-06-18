package §[%§
{
   import §+k§.§+!&§;
   import §+k§.§=! §;
   import §<s§.§&4§;
   import flash.display.MovieClip;
   
   public class §6!§ extends §&4§
   {
       
      
      private var §`!B§:§=! §;
      
      public function §6!§(param1:XML, param2:§&a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §0!T§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §0!T§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §0!T§(§<o§,param1.@MouseOver);
         §0!T§(§#3§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §'!U§)
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
         if(§'!K§)
         {
            if(param1 == §"!S§)
            {
               if(this.§`!B§ != null)
               {
                  this.§`!B§.stop();
               }
               this.§`!B§ = §+!&§.§,§.§9x§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§`!B§.play();
            }
            else if(param1 == §+$§)
            {
               if(this.§`!B§ != null)
               {
                  this.§`!B§.stop();
               }
               this.§`!B§ = §+!&§.§,§.§9x§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§`!B§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§`!B§)
         {
            this.§`!B§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§`!B§)
         {
            this.§`!B§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
