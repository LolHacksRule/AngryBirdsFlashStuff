package §2y§
{
   import §3!R§.§,=§;
   import §?I§.§^Z§;
   import flash.text.TextField;
   
   public class §?`§ extends §,=§
   {
       
      
      public var §0!j§:TextField;
      
      private var §=!_§:§^Z§ = null;
      
      public function §?`§(param1:XML, param2:§]`§)
      {
         super(param1,param2);
         this.§0!j§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§0!j§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§0!j§)
         {
            this.§0!j§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§0!j§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§0!j§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§=!_§)
         {
            this.§=!_§.dispose();
            this.§=!_§ = null;
         }
         this.§0!j§ = null;
      }
      
      public function §;!!§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§=!_§ = new §^Z§(this.§0!j§,param1,param2,param3);
      }
      
      public function §?9§() : void
      {
         this.§=!_§.dispose();
         this.§=!_§ = null;
      }
   }
}
