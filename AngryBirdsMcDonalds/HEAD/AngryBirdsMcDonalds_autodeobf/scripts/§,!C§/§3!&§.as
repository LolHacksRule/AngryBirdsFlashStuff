package §,!C§
{
   import §#!1§.§!,§;
   import §@-§.§ x§;
   import flash.text.TextField;
   
   public class §3!&§ extends § x§
   {
       
      
      public var §>!3§:TextField;
      
      private var §+q§:§!,§ = null;
      
      public function §3!&§(param1:XML, param2:§-6§)
      {
         super(param1,param2);
         this.§>!3§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§>!3§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§>!3§)
         {
            this.§>!3§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§>!3§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§>!3§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§+q§)
         {
            this.§+q§.dispose();
            this.§+q§ = null;
         }
         this.§>!3§ = null;
      }
      
      public function §1S§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§+q§ = new §!,§(this.§>!3§,param1,param2,param3);
      }
      
      public function § !C§() : void
      {
         this.§+q§.dispose();
         this.§+q§ = null;
      }
   }
}
