package §=!7§
{
   import §<!1§.§!v§;
   import §@y§.§>!D§;
   import flash.text.TextField;
   
   public class §!!]§ extends §>!D§
   {
       
      
      public var §<!g§:TextField;
      
      private var §+" §:§!v§ = null;
      
      public function §!!]§(param1:XML, param2:§6W§)
      {
         super(param1,param2);
         this.§<!g§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§<!g§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§<!g§)
         {
            this.§<!g§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§<!g§.text = param1;
      }
      
      public function §3!f§() : String
      {
         return this.§<!g§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§+" §)
         {
            this.§+" §.dispose();
            this.§+" § = null;
         }
         this.§<!g§ = null;
      }
      
      public function §;=§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§+" § = new §!v§(this.§<!g§,param1,param2,param3);
      }
      
      public function §,=§() : void
      {
         this.§+" §.dispose();
         this.§+" § = null;
      }
   }
}
