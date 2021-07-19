package §77§
{
   import § !Y§.§1!4§;
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.text.TextField;
   
   public class §&!>§ extends §@!!§
   {
       
      
      public var § !'§:TextField;
      
      private var §7!t§:§1!4§ = null;
      
      public function §&!>§(param1:XML, param2:§ ",§)
      {
         super(param1,param2);
         this.§ !'§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§ !'§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§ !'§)
         {
            this.§ !'§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§ !'§.text = param1;
      }
      
      public function §5!m§() : String
      {
         return this.§ !'§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§7!t§)
         {
            this.§7!t§.dispose();
            this.§7!t§ = null;
         }
         this.§ !'§ = null;
      }
      
      public function §]!;§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§7!t§ = new §1!4§(this.§ !'§,param1,param2,param3);
      }
      
      public function §@2§() : void
      {
         this.§7!t§.dispose();
         this.§7!t§ = null;
      }
   }
}
