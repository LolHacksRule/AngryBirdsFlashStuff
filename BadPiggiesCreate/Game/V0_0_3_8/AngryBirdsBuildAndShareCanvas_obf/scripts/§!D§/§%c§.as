package §!D§
{
   import §,E§.§7r§;
   import §9!7§.§6"0§;
   import flash.text.TextField;
   
   public class §%c§ extends §6"0§
   {
       
      
      public var §3v§:TextField;
      
      private var §>!w§:§7r§ = null;
      
      public function §%c§(param1:XML, param2:§ use§)
      {
         super(param1,param2);
         this.§3v§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§3v§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§3v§)
         {
            this.§3v§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§3v§.text = param1;
      }
      
      public function §8`§() : String
      {
         return this.§3v§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§>!w§)
         {
            this.§>!w§.dispose();
            this.§>!w§ = null;
         }
         this.§3v§ = null;
      }
      
      public function §2!m§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§>!w§ = new §7r§(this.§3v§,param1,param2,param3);
      }
      
      public function §[Y§() : void
      {
         this.§>!w§.dispose();
         this.§>!w§ = null;
      }
   }
}
