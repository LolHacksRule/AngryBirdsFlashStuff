package §0!d§
{
   import §&!&§.§4!o§;
   import §<8§.§"h§;
   import flash.text.TextField;
   
   public class §`G§ extends §"h§
   {
       
      
      public var §?B§:TextField;
      
      private var §&`§:§4!o§ = null;
      
      public function §`G§(param1:XML, param2:§7!a§)
      {
         super(param1,param2);
         this.§?B§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§?B§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§?B§)
         {
            this.§?B§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§?B§.text = param1;
      }
      
      public function §0$§() : String
      {
         return this.§?B§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§&`§)
         {
            this.§&`§.dispose();
            this.§&`§ = null;
         }
         this.§?B§ = null;
      }
      
      public function §"!!§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§&`§ = new §4!o§(this.§?B§,param1,param2,param3);
      }
      
      public function §4!-§() : void
      {
         this.§&`§.dispose();
         this.§&`§ = null;
      }
   }
}
