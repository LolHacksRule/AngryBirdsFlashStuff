package §>G§
{
   import §"%§.§9j§;
   import §;!j§.§>6§;
   import flash.text.TextField;
   
   public class §]!W§ extends §9j§
   {
       
      
      public var §^!m§:TextField;
      
      private var §`[§:§>6§ = null;
      
      public function §]!W§(param1:XML, param2:§]f§)
      {
         super(param1,param2);
         this.§^!m§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§^!m§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§^!m§)
         {
            this.§^!m§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§^!m§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§^!m§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§`[§)
         {
            this.§`[§.dispose();
            this.§`[§ = null;
         }
         this.§^!m§ = null;
      }
      
      public function §"h§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§`[§ = new §>6§(this.§^!m§,param1,param2,param3);
      }
      
      public function §<_§() : void
      {
         this.§`[§.dispose();
         this.§`[§ = null;
      }
   }
}
