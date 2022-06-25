package §`M§
{
   import §=R§.§5!a§;
   import flash.text.TextField;
   
   public class §3!@§ extends §5!a§
   {
       
      
      public var §!!2§:TextField;
      
      public function §3!@§(param1:XML, param2:§9!#§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§!!2§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     loop2:
                     for(; _loc3_; if(!(_loc4_ && this))
                     {
                        addr24:
                        return;
                        addr81:
                     })
                     {
                        this.setText(param1.@text);
                        while(true)
                        {
                           addr67:
                           if(!(_loc4_ && this))
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     if(!param1.@tabIndex)
                     {
                        while(!mClip.mouseEnabled)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              this.setEnabled(mClip.mouseEnabled);
                           }
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop1;
                           }
                           addr50:
                           if(_loc3_ || param2)
                           {
                              §§goto(addr67);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§!!2§.tabIndex = param1.@tabIndex;
                                 continue loop1;
                                 §§goto(addr50);
                              }
                              addr86:
                           }
                        }
                        §§goto(addr24);
                        addr28:
                     }
                     §§goto(addr86);
                     §§goto(addr119);
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setEnabled(param1);
         }
         while(this.§!!2§)
         {
            if(!(_loc3_ && param1))
            {
               this.§!!2§.mouseEnabled = mClip.mouseEnabled;
            }
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
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
            this.§!!2§.text = param1;
         }
      }
      
      public function §%!i§() : String
      {
         return this.§!!2§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            do
            {
               this.§!!2§ = null;
            }
            while(!_loc2_);
            
         }
      }
   }
}
