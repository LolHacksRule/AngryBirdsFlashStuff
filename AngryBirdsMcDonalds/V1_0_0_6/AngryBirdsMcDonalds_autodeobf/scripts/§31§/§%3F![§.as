package §31§
{
   import § e§.§#!N§;
   import §6@§.§>n§;
   import flash.text.TextField;
   
   public class §?![§ extends §>n§
   {
       
      
      public var §&t§:TextField;
      
      private var §&H§:§#!N§ = null;
      
      public function §?![§(param1:XML, param2:§ !A§)
      {
         super(param1,param2);
         this.§&t§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§&t§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§&t§)
         {
            this.§&t§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§&t§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§&t§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§&H§)
         {
            this.§&H§.dispose();
            this.§&H§ = null;
         }
         this.§&t§ = null;
      }
      
      public function §8!,§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§&H§ = new §#!N§(this.§&t§,param1,param2,param3);
      }
      
      public function §[!?§() : void
      {
         this.§&H§.dispose();
         this.§&H§ = null;
      }
   }
}
