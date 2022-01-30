package §>P§
{
   import §!!&§.§,d§;
   import §"V§.§]j§;
   import §<!0§.§3!W§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §%`§ extends §3!W§
   {
       
      
      public var §=!=§:Object;
      
      private var §9!Z§:§,d§ = null;
      
      public function §%`§(param1:XML, param2:§]"4§)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.§=!=§ = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.§=!=§ = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§=!=§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§=!=§)
         {
            this.§=!=§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]j§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.§=!=§.text != param1)
         {
            this.§=!=§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§=!=§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§9!Z§)
         {
            this.§9!Z§.dispose();
            this.§9!Z§ = null;
         }
         this.§=!=§ = null;
      }
   }
}
