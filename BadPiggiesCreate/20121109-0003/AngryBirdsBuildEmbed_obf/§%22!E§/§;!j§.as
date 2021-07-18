package §"!E§
{
   import §#!4§.§<f§;
   import flash.text.TextField;
   
   public class §;!j§ extends §<f§
   {
       
      
      public var §!D§:TextField;
      
      public function §;!j§(param1:XML, param2:§[!s§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc4_ || _loc3_)
            {
               this.§!D§ = mClip.getChildByName("text") as TextField;
               if(_loc4_ || this)
               {
                  addr54:
                  if(param1.@text)
                  {
                     this.setText(param1.@text);
                  }
                  if(param1.@tabIndex)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§!D§.tabIndex = param1.@tabIndex;
                        if(!_loc4_)
                        {
                        }
                        addr93:
                        this.setEnabled(mClip.mouseEnabled);
                        §§goto(addr97);
                     }
                     addr97:
                     return;
                  }
                  if(!mClip.mouseEnabled)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr93);
                     }
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr54);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setEnabled(param1);
            if(!(_loc3_ && _loc2_))
            {
               addr38:
               if(this.§!D§)
               {
                  if(!_loc3_)
                  {
                     this.§!D§.mouseEnabled = mClip.mouseEnabled;
                  }
               }
            }
            return;
         }
         §§goto(addr38);
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
         if(!(_loc3_ && _loc3_))
         {
            this.§!D§.text = param1;
         }
      }
      
      public function §,!v§() : String
      {
         return this.§!D§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.clear();
            if(_loc2_)
            {
               this.§!D§ = null;
            }
         }
      }
   }
}
