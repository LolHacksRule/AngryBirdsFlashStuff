package §-B§
{
   import §%!'§.§+l§;
   import §;n§.§^q§;
   import flash.text.TextField;
   
   public class §#p§ extends §^q§
   {
       
      
      public var §`E§:TextField;
      
      private var §2!W§:§+l§ = null;
      
      public function §#p§(param1:XML, param2:§?!j§)
      {
         super(param1,param2);
         this.§`E§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§`E§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§`E§)
         {
            this.§`E§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§`E§.text = param1;
      }
      
      public function §%m§() : String
      {
         return this.§`E§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§2!W§)
         {
            this.§2!W§.dispose();
            this.§2!W§ = null;
         }
         this.§`E§ = null;
      }
      
      public function §#!R§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§2!W§ = new §+l§(this.§`E§,param1,param2,param3);
      }
      
      public function §'"§() : void
      {
         this.§2!W§.dispose();
         this.§2!W§ = null;
      }
   }
}
