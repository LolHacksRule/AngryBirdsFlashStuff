package §?>§
{
   import §+d§.§2R§;
   import §7'§.§'q§;
   import flash.text.TextField;
   
   public class §<l§ extends §'q§
   {
       
      
      public var §]!N§:TextField;
      
      private var §+!Z§:§2R§ = null;
      
      public function §<l§(param1:XML, param2:§ !V§)
      {
         super(param1,param2);
         this.§]!N§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§]!N§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§]!N§)
         {
            this.§]!N§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§]!N§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§]!N§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§+!Z§)
         {
            this.§+!Z§.dispose();
            this.§+!Z§ = null;
         }
         this.§]!N§ = null;
      }
      
      public function §8§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§+!Z§ = new §2R§(this.§]!N§,param1,param2,param3);
      }
      
      public function §"!@§() : void
      {
         this.§+!Z§.dispose();
         this.§+!Z§ = null;
      }
   }
}
