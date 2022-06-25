package §=^§
{
   import §@s§.§9$§;
   import flash.text.TextField;
   
   public class § p§ extends §9$§
   {
       
      
      public var §!"§:TextField;
      
      public function § p§(param1:XML, param2:§`f§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
            this.§!"§ = mClip.getChildByName("text") as TextField;
            if(!_loc4_)
            {
               if(param1.@text)
               {
                  if(_loc3_)
                  {
                     this.setText(param1.@text);
                     if(_loc4_)
                     {
                     }
                     addr65:
                     this.§!"§.tabIndex = param1.@tabIndex;
                     if(_loc3_)
                     {
                        §§goto(addr72);
                     }
                     §§goto(addr82);
                  }
               }
            }
            if(param1.@tabIndex)
            {
               §§goto(addr65);
            }
            addr72:
            if(!mClip.mouseEnabled)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr82:
                  this.setEnabled(mClip.mouseEnabled);
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setEnabled(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(this.§!"§)
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr53);
            }
            this.§!"§.mouseEnabled = mClip.mouseEnabled;
         }
         addr53:
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.clear();
            if(_loc1_ || this)
            {
               this.§!"§ = null;
            }
         }
      }
   }
}
