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
         if(!(_loc4_ && param2))
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
                                 this.§"E§.tabIndex = param1.@tabIndex;
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
         while(this.§"E§)
         {
            if(!(_loc3_ && param1))
            {
               this.§"E§.mouseEnabled = mClip.mouseEnabled;
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
            this.§"E§.text = param1;
         }
      }
      
      public function §%!o§() : String
      {
         return this.§"E§.text;
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
               this.§"E§ = null;
            }
            while(!_loc2_);
            
         }
      }
   }
}
