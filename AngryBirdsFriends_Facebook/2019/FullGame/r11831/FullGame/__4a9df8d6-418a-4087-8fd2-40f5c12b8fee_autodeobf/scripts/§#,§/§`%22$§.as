package §#,§
{
   import §!"'§.§0"Z§;
   import §&!_§.§8$A§;
   import §,!Q§.§+!2§;
   import flash.text.TextField;
   
   public class §`"$§ extends §+!2§
   {
       
      
      public var §2"<§:TextField;
      
      private var §]#4§:§8$A§ = null;
      
      public function §`"$§(param1:XML, param2:§]$+§)
      {
         super(param1,param2);
         this.§2"<§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§2"<§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§2"<§)
         {
            this.§2"<§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §0"Z§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§2"<§.text = param1;
      }
      
      public function §3$>§() : String
      {
         return this.§2"<§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§]#4§)
         {
            this.§]#4§.dispose();
            this.§]#4§ = null;
         }
         this.§2"<§ = null;
      }
      
      public function §4!A§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§]#4§ = new §8$A§(this.§2"<§,param1,param2,param3);
      }
      
      public function §=!U§() : void
      {
         this.§]#4§.dispose();
         this.§]#4§ = null;
      }
   }
}
