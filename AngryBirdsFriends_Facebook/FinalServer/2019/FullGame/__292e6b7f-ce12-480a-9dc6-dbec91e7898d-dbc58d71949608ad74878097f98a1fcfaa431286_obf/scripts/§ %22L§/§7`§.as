package § "L§
{
   import §#"4§.§6"a§;
   import §^"3§.§ #&§;
   import §`§.§%#m§;
   import flash.text.TextField;
   
   public class §7`§ extends § #&§
   {
       
      
      public var §%!8§:TextField;
      
      private var § ##§:§6"a§ = null;
      
      public function §7`§(param1:XML, param2:§23§)
      {
         super(param1,param2);
         this.§%!8§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§%!8§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§%!8§)
         {
            this.§%!8§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%#m§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§%!8§.text = param1;
      }
      
      public function §`"L§() : String
      {
         return this.§%!8§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§ ##§)
         {
            this.§ ##§.dispose();
            this.§ ##§ = null;
         }
         this.§%!8§ = null;
      }
      
      public function §>#?§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§ ##§ = new §6"a§(this.§%!8§,param1,param2,param3);
      }
      
      public function §]$A§() : void
      {
         this.§ ##§.dispose();
         this.§ ##§ = null;
      }
   }
}
