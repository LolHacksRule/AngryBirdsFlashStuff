package §,j§
{
   import §1§.§&!3§;
   import flash.text.TextField;
   
   public class §[i§ extends §&!3§
   {
       
      
      public var §7t§:TextField;
      
      public function §[i§(param1:XML, param2:§1-§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§7t§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     if(!_loc3_)
                     {
                        this.setText(param1.@text);
                        addr80:
                        while(true)
                        {
                        }
                        addr80:
                     }
                     §§goto(addr80);
                  }
                  loop2:
                  while(true)
                  {
                     if(param1.@tabIndex)
                     {
                        while(true)
                        {
                           this.§7t§.tabIndex = param1.@tabIndex;
                           addr69:
                           while(true)
                           {
                           }
                        }
                        addr64:
                     }
                     while(!mClip.mouseEnabled)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              this.setEnabled(mClip.mouseEnabled);
                              addr52:
                              if(_loc4_ || param1)
                              {
                                 break;
                              }
                              §§goto(addr64);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr52);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.setEnabled(param1);
            while(this.§7t§)
            {
               if(!_loc2_)
               {
                  break;
               }
               addr66:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               this.§7t§.mouseEnabled = mClip.mouseEnabled;
               addr51:
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr51);
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
         if(_loc2_ || _loc3_)
         {
            this.§7t§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§7t§.text;
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
               this.§7t§ = null;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
   }
}
