package §"",§
{
   import §1"2§.§ F§;
   import §<!<§.§"H§;
   import flash.text.TextField;
   
   public class §+§ extends § F§
   {
       
      
      public var §"<§:TextField;
      
      private var §5!S§:§"H§ = null;
      
      public function §+§(param1:XML, param2:§<+§)
      {
         super(param1,param2);
         this.§"<§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§"<§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§"<§)
         {
            this.§"<§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§"<§.text = param1;
      }
      
      public function §0H§() : String
      {
         return this.§"<§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§5!S§)
         {
            this.§5!S§.dispose();
            this.§5!S§ = null;
         }
         this.§"<§ = null;
      }
      
      public function §^"#§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§5!S§ = new §"H§(this.§"<§,param1,param2,param3);
      }
      
      public function §+! §() : void
      {
         this.§5!S§.dispose();
         this.§5!S§ = null;
      }
   }
}
