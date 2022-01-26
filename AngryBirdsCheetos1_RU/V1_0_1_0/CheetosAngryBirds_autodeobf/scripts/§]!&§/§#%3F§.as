package §]!&§
{
   import §4x§.§"!X§;
   import §4x§.§?R§;
   import §]!5§.§=j§;
   import flash.display.MovieClip;
   
   public class §#?§ extends §=j§
   {
       
      
      private var §6!A§:§?R§;
      
      public function §#?§(param1:XML, param2:§]!K§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §7!@§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7!@§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7!@§(§5A§,param1.@MouseOver);
         §7!@§(§8!L§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §in §)
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
         if(§;!C§)
         {
            if(param1 == §,=§)
            {
               if(this.§6!A§ != null)
               {
                  this.§6!A§.stop();
               }
               this.§6!A§ = §"!X§.§0E§.§5`§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§6!A§.play();
            }
            else if(param1 == §;1§)
            {
               if(this.§6!A§ != null)
               {
                  this.§6!A§.stop();
               }
               this.§6!A§ = §"!X§.§0E§.§5`§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§6!A§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§6!A§)
         {
            this.§6!A§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§6!A§)
         {
            this.§6!A§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
