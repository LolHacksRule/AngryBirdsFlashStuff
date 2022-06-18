package §2$;§
{
   import §2E§.§@#<§;
   import §<8§.§;"k§;
   import §=X§.§3§;
   import flash.text.TextField;
   
   public class §-$5§ extends §;"k§
   {
       
      
      public var §>$D§:TextField;
      
      private var §+#0§:§@#<§ = null;
      
      public function §-$5§(param1:XML, param2:§!"e§)
      {
         super(param1,param2);
         this.§>$D§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§>$D§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§>$D§)
         {
            this.§>$D§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3#6§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§>$D§.text = param1;
      }
      
      public function §>O§() : String
      {
         return this.§>$D§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§+#0§)
         {
            this.§+#0§.dispose();
            this.§+#0§ = null;
         }
         this.§>$D§ = null;
      }
      
      public function §8b§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§+#0§ = new §@#<§(this.§>$D§,param1,param2,param3);
      }
      
      public function § $>§() : void
      {
         this.§+#0§.dispose();
         this.§+#0§ = null;
      }
   }
}
