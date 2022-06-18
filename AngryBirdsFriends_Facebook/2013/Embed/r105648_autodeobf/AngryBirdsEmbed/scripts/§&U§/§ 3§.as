package §&U§
{
   import §1t§.§-!M§;
   import §8!=§.§3e§;
   import flash.text.TextField;
   
   public class § 3§ extends §-!M§
   {
       
      
      public var set:TextField;
      
      private var § Q§:§3e§ = null;
      
      public function § 3§(param1:XML, param2:§05§)
      {
         super(param1,param2);
         this.set = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.set.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.set)
         {
            this.set.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.set.text = param1;
      }
      
      public function §=!$§() : String
      {
         return this.set.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§ Q§)
         {
            this.§ Q§.dispose();
            this.§ Q§ = null;
         }
         this.set = null;
      }
      
      public function §<8§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§ Q§ = new §3e§(this.set,param1,param2,param3);
      }
      
      public function §[!!§() : void
      {
         this.§ Q§.dispose();
         this.§ Q§ = null;
      }
   }
}
