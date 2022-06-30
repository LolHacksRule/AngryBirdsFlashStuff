package §]!&§
{
   import §+!M§.§^<§;
   import §9!Q§.§&o§;
   import flash.text.TextField;
   
   public class §1E§ extends §^<§
   {
       
      
      public var §;+§:TextField;
      
      private var §9J§:§&o§ = null;
      
      public function §1E§(param1:XML, param2:§5!5§)
      {
         super(param1,param2);
         this.§;+§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§;+§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§;+§)
         {
            this.§;+§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§;+§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§;+§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§9J§)
         {
            this.§9J§.dispose();
            this.§9J§ = null;
         }
         this.§;+§ = null;
      }
      
      public function §71§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§9J§ = new §&o§(this.§;+§,param1,param2,param3);
      }
      
      public function §=m§() : void
      {
         this.§9J§.dispose();
         this.§9J§ = null;
      }
   }
}
