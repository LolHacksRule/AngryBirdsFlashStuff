package §2y§
{
   import §<-§.§!!R§;
   import §@!&§.§-0§;
   import flash.text.TextField;
   
   public class §54§ extends §-0§
   {
       
      
      public var §5!B§:TextField;
      
      private var §&E§:§!!R§ = null;
      
      public function §54§(param1:XML, param2:§^! §)
      {
         super(param1,param2);
         this.§5!B§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§5!B§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§5!B§)
         {
            this.§5!B§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§5!B§.text = param1;
      }
      
      public function §5Q§() : String
      {
         return this.§5!B§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§&E§)
         {
            this.§&E§.dispose();
            this.§&E§ = null;
         }
         this.§5!B§ = null;
      }
      
      public function §%1§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§&E§ = new §!!R§(this.§5!B§,param1,param2,param3);
      }
      
      public function §5!$§() : void
      {
         this.§&E§.dispose();
         this.§&E§ = null;
      }
   }
}
