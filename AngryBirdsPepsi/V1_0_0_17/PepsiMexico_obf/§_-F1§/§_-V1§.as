package §_-F1§
{
   import §_-6r§.§_-h3§;
   import flash.text.TextField;
   
   public class §_-V1§ extends §_-h3§
   {
       
      
      public var §_-hJ§:TextField;
      
      public function §_-V1§(param1:XML, param2:§_-k4§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super(param1,param2);
         this.§_-hJ§ = mClip.getChildByName("text") as TextField;
         if(!_loc3_)
         {
            if(param1.@text)
            {
               addr37:
               this.setText(param1.@text);
            }
            if(param1.@tabIndex)
            {
               this.§_-hJ§.tabIndex = param1.@tabIndex;
            }
            if(!mClip.mouseEnabled)
            {
               this.setEnabled(mClip.mouseEnabled);
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.setEnabled(param1);
            if(!_loc2_)
            {
               addr33:
               if(this.§_-hJ§)
               {
                  if(_loc3_)
                  {
                     this.§_-hJ§.mouseEnabled = mClip.mouseEnabled;
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-hJ§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§_-hJ§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.clear();
            if(!(_loc2_ && this))
            {
               this.§_-hJ§ = null;
            }
         }
      }
   }
}
