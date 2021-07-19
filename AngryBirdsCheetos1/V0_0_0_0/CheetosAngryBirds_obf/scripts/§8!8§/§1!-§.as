package §8!8§
{
   import §@R§.§<d§;
   import flash.text.TextField;
   
   public class §1!-§ extends §<d§
   {
       
      
      public var §#!F§:TextField;
      
      public function §1!-§(param1:XML, param2:§4!C§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
            while(true)
            {
               this.§#!F§ = mClip.getChildByName("text") as TextField;
               loop2:
               while(!(_loc3_ && param1))
               {
                  this.setText(param1.@text);
                  loop3:
                  while(true)
                  {
                     addr46:
                     while(true)
                     {
                        if(!param1.@tabIndex)
                        {
                           loop7:
                           while(!mClip.mouseEnabled)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 this.setEnabled(mClip.mouseEnabled);
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        continue loop3;
                        return;
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setEnabled(param1);
            while(this.§#!F§)
            {
               if(!_loc2_)
               {
                  break;
               }
               addr66:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§#!F§.mouseEnabled = mClip.mouseEnabled;
               addr51:
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr51);
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
         if(!_loc3_)
         {
            this.§#!F§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§#!F§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.clear();
         }
         do
         {
            this.§#!F§ = null;
         }
         while(!_loc2_);
         
      }
   }
}
