package §=Z§
{
   import §+d§.§0!e§;
   import §8!h§.§%"z§;
   import §=!4§.§8"U§;
   import flash.text.TextField;
   
   public class §0%§ extends §%"z§
   {
       
      
      public var §9";§:TextField;
      
      private var §`#2§:§0!e§ = null;
      
      public function §0%§(param1:XML, param2:§@!8§)
      {
         super(param1,param2);
         this.§9";§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§9";§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§9";§)
         {
            this.§9";§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"U§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§9";§.text = param1;
      }
      
      public function §%!y§() : String
      {
         return this.§9";§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§`#2§)
         {
            this.§`#2§.dispose();
            this.§`#2§ = null;
         }
         this.§9";§ = null;
      }
      
      public function §'!T§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§`#2§ = new §0!e§(this.§9";§,param1,param2,param3);
      }
      
      public function §8"[§() : void
      {
         this.§`#2§.dispose();
         this.§`#2§ = null;
      }
   }
}
