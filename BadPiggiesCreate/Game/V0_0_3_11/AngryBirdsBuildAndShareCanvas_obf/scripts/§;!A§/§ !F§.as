package §;!A§
{
   import §+!d§.§"r§;
   import §2i§.§]§;
   import flash.text.TextField;
   
   public class § !F§ extends §"r§
   {
       
      
      public var §1!k§:TextField;
      
      private var §4W§:§]§ = null;
      
      public function § !F§(param1:XML, param2:§;!u§)
      {
         super(param1,param2);
         this.§1!k§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§1!k§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§1!k§)
         {
            this.§1!k§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§1!k§.text = param1;
      }
      
      public function §5!§() : String
      {
         return this.§1!k§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§4W§)
         {
            this.§4W§.dispose();
            this.§4W§ = null;
         }
         this.§1!k§ = null;
      }
      
      public function §`J§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§4W§ = new §]§(this.§1!k§,param1,param2,param3);
      }
      
      public function §5U§() : void
      {
         this.§4W§.dispose();
         this.§4W§ = null;
      }
   }
}
