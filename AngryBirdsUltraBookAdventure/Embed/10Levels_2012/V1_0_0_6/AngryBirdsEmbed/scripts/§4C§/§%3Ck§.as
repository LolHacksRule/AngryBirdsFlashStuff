package §4C§
{
   import §`!0§.§[4§;
   import flash.text.TextField;
   
   public class §<k§ extends §[4§
   {
       
      
      public var §5+§:TextField;
      
      public function §<k§(param1:XML, param2:§1!=§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            this.§5+§ = mClip.getChildByName("text") as TextField;
            if(param1.@text)
            {
               this.setText(param1.@text);
               if(!_loc3_)
               {
                  addr64:
                  if(param1.@tabIndex)
                  {
                     addr67:
                     this.§5+§.tabIndex = param1.@tabIndex;
                  }
               }
               if(!mClip.mouseEnabled)
               {
                  this.setEnabled(mClip.mouseEnabled);
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr67);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setEnabled(param1);
            if(!(_loc2_ && _loc2_))
            {
               addr39:
               if(this.§5+§)
               {
                  if(_loc3_)
                  {
                     this.§5+§.mouseEnabled = mClip.mouseEnabled;
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5+§.text = param1;
         }
      }
      
      public function §<!A§() : String
      {
         return this.§5+§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            if(_loc1_)
            {
               this.§5+§ = null;
            }
         }
      }
   }
}
