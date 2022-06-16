package §6"r§
{
   import §'!U§.§4P§;
   import §3!T§.§3">§;
   import §>!#§.§!!E§;
   import flash.text.TextField;
   
   public class §]$!§ extends §4P§
   {
       
      
      public var §@]§:TextField;
      
      private var §>!M§:§!!E§ = null;
      
      public function §]$!§(param1:XML, param2:§0"<§)
      {
         super(param1,param2);
         this.§@]§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§@]§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§@]§)
         {
            this.§@]§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3">§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§@]§.text = param1;
      }
      
      public function §7$!§() : String
      {
         return this.§@]§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§>!M§)
         {
            this.§>!M§.dispose();
            this.§>!M§ = null;
         }
         this.§@]§ = null;
      }
      
      public function §8#K§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§>!M§ = new §!!E§(this.§@]§,param1,param2,param3);
      }
      
      public function §#N§() : void
      {
         this.§>!M§.dispose();
         this.§>!M§ = null;
      }
   }
}
