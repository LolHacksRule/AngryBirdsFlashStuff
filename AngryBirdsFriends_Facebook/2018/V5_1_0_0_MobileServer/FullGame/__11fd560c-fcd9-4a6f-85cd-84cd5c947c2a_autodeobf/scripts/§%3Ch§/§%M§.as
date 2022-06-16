package §<h§
{
   import §3"I§.§ E§;
   import §3#T§.§,#[§;
   import §`7§.§0!e§;
   import flash.text.TextField;
   
   public class §%M§ extends §,#[§
   {
       
      
      public var §4!"§:TextField;
      
      private var §5A§:§0!e§ = null;
      
      public function §%M§(param1:XML, param2:§[#K§)
      {
         super(param1,param2);
         this.§4!"§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§4!"§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§4!"§)
         {
            this.§4!"§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : § E§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§4!"§.text = param1;
      }
      
      public function §,k§() : String
      {
         return this.§4!"§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§5A§)
         {
            this.§5A§.dispose();
            this.§5A§ = null;
         }
         this.§4!"§ = null;
      }
      
      public function §#$3§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§5A§ = new §0!e§(this.§4!"§,param1,param2,param3);
      }
      
      public function §6#§() : void
      {
         this.§5A§.dispose();
         this.§5A§ = null;
      }
   }
}
