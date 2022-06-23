package §=^§
{
   import §@s§.§9$§;
   import flash.text.TextField;
   
   public class § p§ extends §9$§
   {
       
      
      public var §!"§:TextField;
      
      public function § p§(param1:XML, param2:§`f§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super(param1,param2);
         this.§!"§ = mClip.getChildByName("text") as TextField;
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
               this.§!"§.tabIndex = param1.@tabIndex;
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
               if(this.§!"§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§!"§.mouseEnabled = mClip.mouseEnabled;
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
            this.§!"§.text = param1;
         }
      }
      
      public function §6"§() : String
      {
         return this.§!"§.text;
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
               this.§!"§ = null;
            }
         }
      }
   }
}
