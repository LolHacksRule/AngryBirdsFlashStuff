package §1!E§
{
   import §>7§.§4+§;
   import flash.text.TextField;
   
   public class §?!x§ extends §4+§
   {
       
      
      public var §,!F§:TextField;
      
      public function §?!x§(param1:XML, param2:§#?§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§,!F§ = mClip.getChildByName("text") as TextField;
               while(true)
               {
                  if(param1.@text)
                  {
                     while(_loc3_)
                     {
                        while(true)
                        {
                           this.setText(param1.@text);
                           addr104:
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr98:
                  }
                  while(true)
                  {
                     if(param1.@tabIndex)
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc3_ || param2))
                           {
                              continue;
                           }
                           this.§,!F§.tabIndex = param1.@tabIndex;
                        }
                        while(true)
                        {
                        }
                        addr93:
                     }
                     for(; !mClip.mouseEnabled; §§goto(addr93))
                     {
                        if(_loc4_ && param1)
                        {
                           addr62:
                           if(_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§goto(addr98);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setEnabled(param1);
         }
         while(this.§,!F§)
         {
            if(!(_loc2_ || _loc3_))
            {
               break;
            }
            addr56:
            if(!(_loc2_ || _loc3_))
            {
               continue;
            }
            this.§,!F§.mouseEnabled = mClip.mouseEnabled;
            §§goto(addr56);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,!F§.text = param1;
         }
      }
      
      public function §]H§() : String
      {
         return this.§,!F§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
         }
         do
         {
            this.§,!F§ = null;
         }
         while(_loc2_);
         
      }
   }
}
