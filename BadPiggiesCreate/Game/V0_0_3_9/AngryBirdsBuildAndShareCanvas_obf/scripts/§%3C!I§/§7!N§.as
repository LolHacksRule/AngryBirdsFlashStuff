package §<!I§
{
   import §!!A§.§`L§;
   import §&!&§.§+!A§;
   import flash.text.TextField;
   
   public class §7!N§ extends §+!A§
   {
       
      
      public var §"!_§:TextField;
      
      private var §=L§:§`L§ = null;
      
      public function §7!N§(param1:XML, param2:§>"-§)
      {
         super(param1,param2);
         this.§"!_§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§"!_§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§"!_§)
         {
            this.§"!_§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§"!_§.text = param1;
      }
      
      public function §2!^§() : String
      {
         return this.§"!_§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§=L§)
         {
            this.§=L§.dispose();
            this.§=L§ = null;
         }
         this.§"!_§ = null;
      }
      
      public function §<!i§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§=L§ = new §`L§(this.§"!_§,param1,param2,param3);
      }
      
      public function §,"8§() : void
      {
         this.§=L§.dispose();
         this.§=L§ = null;
      }
   }
}
