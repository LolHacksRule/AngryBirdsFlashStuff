package §_-6C§
{
   import §_-MN§.§_-rR§;
   import flash.text.TextField;
   
   public class §_-0Eo§ extends §_-rR§
   {
       
      
      public var §_-ab§:TextField;
      
      public function §_-0Eo§(param1:XML, param2:§_-gt§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§_-ab§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     addr96:
                     while(true)
                     {
                        this.setText(param1.@text);
                        addr100:
                        while(true)
                        {
                        }
                     }
                     addr96:
                  }
                  loop2:
                  while(true)
                  {
                     if(!param1.@tabIndex)
                     {
                        while(!mClip.mouseEnabled)
                        {
                           if(_loc4_)
                           {
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              this.setEnabled(mClip.mouseEnabled);
                           }
                           §§goto(addr36);
                        }
                        addr20:
                     }
                     if(_loc3_)
                     {
                        addr89:
                        while(!_loc3_)
                        {
                           if(!(_loc4_ || param1))
                           {
                              continue;
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr20);
                           }
                           §§goto(addr96);
                        }
                        continue loop0;
                     }
                     continue loop1;
                     return;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setEnabled(param1);
         }
         while(this.§_-ab§)
         {
            if(_loc3_ && _loc3_)
            {
               break;
            }
            addr56:
            if(_loc3_ && this)
            {
               continue;
            }
            this.§_-ab§.mouseEnabled = mClip.mouseEnabled;
            §§goto(addr56);
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
         if(!_loc2_)
         {
            this.§_-ab§.text = param1;
         }
      }
      
      public function §_-06e§() : String
      {
         return this.§_-ab§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            do
            {
               this.§_-ab§ = null;
            }
            while(!_loc1_);
            
         }
      }
   }
}
