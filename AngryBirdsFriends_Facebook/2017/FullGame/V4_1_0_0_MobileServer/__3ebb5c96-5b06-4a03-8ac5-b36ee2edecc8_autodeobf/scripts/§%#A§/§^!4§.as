package §%#A§
{
   import §6V§.§'"t§;
   import §<"1§.§@!N§;
   import §<o§.§3h§;
   import flash.text.TextField;
   
   public class §^!4§ extends §@!N§
   {
       
      
      public var §[!&§:TextField;
      
      private var §;"!§:§'"t§ = null;
      
      public function §^!4§(param1:XML, param2:§]!_§)
      {
         super(param1,param2);
         this.§[!&§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§[!&§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§[!&§)
         {
            this.§[!&§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3h§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§[!&§.text = param1;
      }
      
      public function §9!c§() : String
      {
         return this.§[!&§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§;"!§)
         {
            this.§;"!§.dispose();
            this.§;"!§ = null;
         }
         this.§[!&§ = null;
      }
      
      public function §3"+§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§;"!§ = new §'"t§(this.§[!&§,param1,param2,param3);
      }
      
      public function § !k§() : void
      {
         this.§;"!§.dispose();
         this.§;"!§ = null;
      }
   }
}
