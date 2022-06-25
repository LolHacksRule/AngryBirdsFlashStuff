package §]!6§
{
   import §>!-§.UIComponentInteractiveRovio;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentInteractiveRovio
   {
       
      
      public var §24§:TextField;
      
      public function UITextFieldRovio(param1:XML, param2:UIContainerRovio)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§24§ = mClip.getChildByName("text") as TextField;
            while(true)
            {
               §§push(Boolean(param1.@text));
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param2)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        this.setText(param1.@text);
                     }
                     while(true)
                     {
                        addr82:
                        if(!(_loc3_ && this))
                        {
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(Boolean(param1.@tabIndex));
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr82);
                        }
                        else
                        {
                           while(true)
                           {
                              continue loop5;
                              addr46:
                              if(!(_loc3_ && this))
                              {
                                 this.setEnabled(mClip.mouseEnabled);
                                 addr20:
                                 return;
                                 addr69:
                              }
                           }
                           addr101:
                        }
                     }
                     continue loop0;
                  }
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr46);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr20);
               }
            }
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setEnabled(param1);
            while(this.§24§)
            {
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               addr68:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§24§.mouseEnabled = mClip.mouseEnabled;
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§24§.text = param1;
         }
      }
      
      public function §8"§() : String
      {
         return this.§24§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
         }
         do
         {
            this.§24§ = null;
         }
         while(_loc1_ && _loc2_);
         
      }
   }
}
