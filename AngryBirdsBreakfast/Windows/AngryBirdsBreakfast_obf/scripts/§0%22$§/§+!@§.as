package §0"$§
{
   import §"n§.§;Z§;
   import §,L§.§%J§;
   import §-!;§.§>!B§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §+!@§ extends §%J§
   {
       
      
      public var §"v§:Object;
      
      private var §4!>§:§;Z§ = null;
      
      public function §+!@§(param1:XML, param2:§"!a§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            if(!(mClip.getChildByName("text") is TLFTextField))
            {
               this.§"v§ = mClip.getChildByName("text") as TextField;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(param1.@text)
                     {
                        if(!_loc4_)
                        {
                           this.setText(param1.@text);
                        }
                        loop3:
                        while(true)
                        {
                           addr71:
                           loop5:
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 this.§"v§.tabIndex = param1.@tabIndex;
                                 loop6:
                                 while(_loc3_)
                                 {
                                    while(!mClip.mouseEnabled)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          continue loop5;
                                       }
                                       addr52:
                                       if(_loc4_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       addr117:
                                       while(true)
                                       {
                                          this.§"v§ = mClip.getChildByName("text") as TLFTextField;
                                          break loop5;
                                       }
                                    }
                                    return;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        if(param1.@tabIndex)
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr28);
                     }
                  }
               }
            }
            §§goto(addr117);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setEnabled(param1,param2);
         }
         while(this.§"v§)
         {
            if(_loc4_)
            {
               this.§"v§.mouseEnabled = mClip.mouseEnabled;
            }
            if(_loc4_)
            {
               break;
            }
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§"v§.text != param1)
            {
               if(_loc2_)
               {
                  addr45:
                  this.§"v§.text = param1;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function getText() : String
      {
         return this.§"v§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.§4!>§);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§"v§ = null;
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && this))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr52:
                        addr52:
                        addr59:
                        while(_loc1_ && this)
                        {
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     §§push(this.§4!>§);
                     §§goto(addr52);
                  }
               }
               while(true)
               {
                  §§pop().dispose();
                  continue loop0;
               }
            }
         }
         §§goto(addr59);
      }
   }
}
