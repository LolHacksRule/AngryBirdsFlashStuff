package §!i§
{
   import §'#§.§0"H§;
   import §4!t§.§>r§;
   import §<!#§.§""§;
   import flash.text.TextField;
   
   public class §?"%§ extends §>r§
   {
       
      
      public var §8!o§:TextField;
      
      private var §+d§:§0"H§ = null;
      
      public function §?"%§(param1:XML, param2:§1s§)
      {
         super(param1,param2);
         this.§8!o§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§8!o§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§8!o§)
         {
            this.§8!o§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §""§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§8!o§.text = param1;
      }
      
      public function §]!`§() : String
      {
         return this.§8!o§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§+d§)
         {
            this.§+d§.dispose();
            this.§+d§ = null;
         }
         this.§8!o§ = null;
      }
      
      public function §8"6§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§+d§ = new §0"H§(this.§8!o§,param1,param2,param3);
      }
      
      public function §?!4§() : void
      {
         this.§+d§.dispose();
         this.§+d§ = null;
      }
   }
}
