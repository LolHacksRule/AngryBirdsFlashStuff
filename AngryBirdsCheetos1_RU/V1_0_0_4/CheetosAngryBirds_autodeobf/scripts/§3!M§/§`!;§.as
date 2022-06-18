package §3!M§
{
   import §!!S§.§>a§;
   import §6!P§.§88§;
   import §6!P§.§^!>§;
   import flash.display.MovieClip;
   
   public class §`!;§ extends §>a§
   {
       
      
      private var §]S§:§88§;
      
      public function §`!;§(param1:XML, param2:§7^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §&!$§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §&!$§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §&!$§(§ !1§,param1.@MouseOver);
         §&!$§(§7![§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §9E§)
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
         if(§ 7§)
         {
            if(param1 == §4!A§)
            {
               if(this.§]S§ != null)
               {
                  this.§]S§.stop();
               }
               this.§]S§ = §^!>§.§[P§.§@m§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§]S§.play();
            }
            else if(param1 == §@n§)
            {
               if(this.§]S§ != null)
               {
                  this.§]S§.stop();
               }
               this.§]S§ = §^!>§.§[P§.§@m§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§]S§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§]S§)
         {
            this.§]S§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§]S§)
         {
            this.§]S§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
