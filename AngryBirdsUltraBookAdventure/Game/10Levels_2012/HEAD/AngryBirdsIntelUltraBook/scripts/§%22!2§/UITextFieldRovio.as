package §"!2§
{
   import §>!<§.UIComponentInteractiveRovio;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentInteractiveRovio
   {
       
      
      public var § ^§:TextField;
      
      public function UITextFieldRovio(param1:XML, param2:UIContainerRovio)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§ ^§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  §§push(Boolean(param1.@text));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.setText(param1.@text);
                           addr106:
                           while(true)
                           {
                           }
                        }
                        addr101:
                     }
                     while(true)
                     {
                        §§push(Boolean(param1.@tabIndex));
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§ ^§.tabIndex = param1.@tabIndex;
                                 addr93:
                                 while(!_loc3_)
                                 {
                                 }
                                 continue loop0;
                              }
                              addr78:
                           }
                           while(true)
                           {
                              §§push(!mClip.mouseEnabled);
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr101);
                                             }
                                             §§goto(addr106);
                                          }
                                          else
                                          {
                                             §§goto(addr78);
                                          }
                                       }
                                       else
                                       {
                                          addr70:
                                          if(!_loc3_)
                                          {
                                             addr72:
                                             break;
                                          }
                                       }
                                       §§goto(addr93);
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop6;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setEnabled(param1);
         }
         while(this.§ ^§)
         {
            if(_loc2_)
            {
               this.§ ^§.mouseEnabled = mClip.mouseEnabled;
            }
            if(!(_loc3_ && this))
            {
               break;
            }
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
            this.§ ^§.text = param1;
         }
      }
      
      public function §5!!§() : String
      {
         return this.§ ^§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
         }
         do
         {
            this.§ ^§ = null;
         }
         while(_loc1_);
         
      }
   }
}
