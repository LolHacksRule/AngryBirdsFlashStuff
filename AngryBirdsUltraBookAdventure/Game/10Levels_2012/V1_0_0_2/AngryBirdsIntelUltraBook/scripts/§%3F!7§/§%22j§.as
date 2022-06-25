package §?!7§
{
   import §9Y§.§+!!§;
   import flash.text.TextField;
   
   public class §"j§ extends §+!!§
   {
       
      
      public var §"E§:TextField;
      
      public function §"j§(param1:XML, param2:§8;§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§"E§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     addr85:
                     while(true)
                     {
                        this.setText(param1.@text);
                        addr89:
                        while(true)
                        {
                        }
                     }
                     addr85:
                  }
                  loop2:
                  while(param1.@tabIndex)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr89);
                           continue;
                        }
                        if(!(_loc4_ && this))
                        {
                           this.§"E§.tabIndex = param1.@tabIndex;
                        }
                        else
                        {
                           §§goto(addr85);
                        }
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           break loop2;
                        }
                        continue loop0;
                        addr27:
                        if(!_loc4_)
                        {
                           this.setEnabled(mClip.mouseEnabled);
                        }
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     if(!mClip.mouseEnabled)
                     {
                        §§goto(addr27);
                     }
                     §§goto(addr19);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setEnabled(param1);
         }
         while(this.§"E§)
         {
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc3_)
               {
                  continue;
               }
               this.§"E§.mouseEnabled = mClip.mouseEnabled;
            }
            break;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§"E§.text = param1;
         }
      }
      
      public function §%!o§() : String
      {
         return this.§"E§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            do
            {
               this.§"E§ = null;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
   }
}
