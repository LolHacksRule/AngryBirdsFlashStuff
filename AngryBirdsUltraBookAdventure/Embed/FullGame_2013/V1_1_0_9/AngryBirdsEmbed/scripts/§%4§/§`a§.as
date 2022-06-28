package §%4§
{
   import §+!B§.§[y§;
   import §0!#§.§0K§;
   import flash.text.TextField;
   
   public class §`a§ extends §0K§
   {
       
      
      public var §@w§:TextField;
      
      private var §+!?§:§[y§ = null;
      
      public function §`a§(param1:XML, param2:§4!=§)
      {
         super(param1,param2);
         this.§@w§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§@w§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§@w§)
         {
            this.§@w§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§@w§.text = param1;
      }
      
      public function §'Y§() : String
      {
         return this.§@w§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§+!?§)
         {
            this.§+!?§.dispose();
            this.§+!?§ = null;
         }
         this.§@w§ = null;
      }
      
      public function §"$§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§+!?§ = new §[y§(this.§@w§,param1,param2,param3);
      }
      
      public function §9!<§() : void
      {
         this.§+!?§.dispose();
         this.§+!?§ = null;
      }
   }
}
