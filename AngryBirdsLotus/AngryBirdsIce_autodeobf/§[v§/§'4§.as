package §[v§
{
   import §`W§.§<r§;
   import flash.text.TextField;
   
   public class §'4§ extends §<r§
   {
       
      
      public var §8?§:TextField;
      
      public function §'4§(param1:XML, param2:§&F§)
      {
         super(param1,param2);
         this.§8?§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§8?§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§8?§)
         {
            this.§8?§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§8?§.text = param1;
      }
      
      public function §&!>§() : String
      {
         return this.§8?§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§8?§ = null;
      }
   }
}
