package §'p§
{
   import §'!A§.§9!!§;
   import §'@§.§@=§;
   import flash.text.TextField;
   
   public class §`!<§ extends §9!!§
   {
       
      
      public var §&!w§:TextField;
      
      private var §%!p§:§@=§ = null;
      
      public function §`!<§(param1:XML, param2:§`!T§)
      {
         super(param1,param2);
         this.§&!w§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§&!w§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§&!w§)
         {
            this.§&!w§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§&!w§.text = param1;
      }
      
      public function §2! §() : String
      {
         return this.§&!w§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§%!p§)
         {
            this.§%!p§.dispose();
            this.§%!p§ = null;
         }
         this.§&!w§ = null;
      }
      
      public function §8!Q§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§%!p§ = new §@=§(this.§&!w§,param1,param2,param3);
      }
      
      public function §19§() : void
      {
         this.§%!p§.dispose();
         this.§%!p§ = null;
      }
   }
}
