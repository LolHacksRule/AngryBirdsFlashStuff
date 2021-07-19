package §"U§
{
   import §0!E§.§>q§;
   import §6v§.§@V§;
   import flash.text.TextField;
   
   public class §@4§ extends §@V§
   {
       
      
      public var §!!@§:TextField;
      
      private var §'!2§:§>q§ = null;
      
      public function §@4§(param1:XML, param2:§[Q§)
      {
         super(param1,param2);
         this.§!!@§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§!!@§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§!!@§)
         {
            this.§!!@§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§!!@§.text = param1;
      }
      
      public function §null §() : String
      {
         return this.§!!@§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§'!2§)
         {
            this.§'!2§.dispose();
            this.§'!2§ = null;
         }
         this.§!!@§ = null;
      }
      
      public function §?o§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§'!2§ = new §>q§(this.§!!@§,param1,param2,param3);
      }
      
      public function §7B§() : void
      {
         this.§'!2§.dispose();
         this.§'!2§ = null;
      }
   }
}
