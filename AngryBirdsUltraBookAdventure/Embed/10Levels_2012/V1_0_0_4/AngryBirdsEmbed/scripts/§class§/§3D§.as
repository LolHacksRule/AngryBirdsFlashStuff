package §class§
{
   import §-!F§.§`!&§;
   import flash.text.TextField;
   
   public class §3D§ extends §`!&§
   {
       
      
      public var §7=§:TextField;
      
      public function §3D§(param1:XML, param2:§3C§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super(param1,param2);
         this.§7=§ = mClip.getChildByName("text") as TextField;
         if(_loc4_ || _loc3_)
         {
            if(param1.@text)
            {
               if(!_loc3_)
               {
                  this.setText(param1.@text);
               }
            }
         }
         if(param1.@tabIndex)
         {
            if(_loc4_ || this)
            {
               this.§7=§.tabIndex = param1.@tabIndex;
            }
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setEnabled(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(this.§7=§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§7=§.mouseEnabled = mClip.mouseEnabled;
                  }
               }
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§7=§.text = param1;
         }
      }
      
      public function §0S§() : String
      {
         return this.§7=§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
            if(_loc2_)
            {
               this.§7=§ = null;
            }
         }
      }
   }
}
