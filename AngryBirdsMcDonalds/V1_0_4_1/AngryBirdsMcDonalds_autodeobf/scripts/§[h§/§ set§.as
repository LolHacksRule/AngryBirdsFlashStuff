package §[h§
{
   import §#!q§.§]I§;
   import §+$§.§"!p§;
   import flash.text.TextField;
   
   public class § set§ extends §"!p§
   {
       
      
      public var § !K§:TextField;
      
      private var §=!%§:§]I§ = null;
      
      public function § set§(param1:XML, param2:§ !&§)
      {
         super(param1,param2);
         this.§ !K§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§ !K§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§ !K§)
         {
            this.§ !K§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§ !K§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§ !K§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§=!%§)
         {
            this.§=!%§.dispose();
            this.§=!%§ = null;
         }
         this.§ !K§ = null;
      }
      
      public function §,O§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§=!%§ = new §]I§(this.§ !K§,param1,param2,param3);
      }
      
      public function §'C§() : void
      {
         this.§=!%§.dispose();
         this.§=!%§ = null;
      }
   }
}
