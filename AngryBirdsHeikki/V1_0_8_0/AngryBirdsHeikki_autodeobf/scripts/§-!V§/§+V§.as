package §-!V§
{
   import §9!?§.§!2§;
   import §;!0§.§"[§;
   import flash.text.TextField;
   
   public class §+V§ extends §"[§
   {
       
      
      public var §3x§:TextField;
      
      private var §4!3§:§!2§ = null;
      
      public function §+V§(param1:XML, param2:§@§)
      {
         super(param1,param2);
         this.§3x§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§3x§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§3x§)
         {
            this.§3x§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§3x§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§3x§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§4!3§)
         {
            this.§4!3§.dispose();
            this.§4!3§ = null;
         }
         this.§3x§ = null;
      }
      
      public function §0§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§4!3§ = new §!2§(this.§3x§,param1,param2,param3);
      }
      
      public function §[!I§() : void
      {
         this.§4!3§.dispose();
         this.§4!3§ = null;
      }
   }
}
