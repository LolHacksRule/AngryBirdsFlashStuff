package §6a§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentInteractiveRovio
   {
       
      
      public var §,![§:TextField;
      
      public function UITextFieldRovio(param1:XML, param2:UIContainerRovio)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§,![§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  §§push(Boolean(param1.@text));
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param2)
                        {
                           continue loop1;
                        }
                        continue loop0;
                     }
                     addr78:
                     while(true)
                     {
                        §§push(Boolean(param1.@tabIndex));
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                        }
                     }
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              addr57:
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              this.setEnabled(mClip.mouseEnabled);
                              addr75:
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§goto(addr23);
                                 }
                                 addr88:
                              }
                              §§goto(addr19);
                           }
                           while(true)
                           {
                              this.§,![§.tabIndex = param1.@tabIndex;
                              §§goto(addr88);
                           }
                           addr83:
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr19);
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setEnabled(param1);
            loop0:
            while(this.§,![§)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     this.§,![§.mouseEnabled = mClip.mouseEnabled;
                  }
                  addr40:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr40);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,![§.text = param1;
         }
      }
      
      public function §+b§() : String
      {
         return this.§,![§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.clear();
            do
            {
               this.§,![§ = null;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
   }
}
