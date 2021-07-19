package §2u§
{
   import §!""§.§]H§;
   import §'"!§.§-!g§;
   import §4!i§.§0!8§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §7!&§ extends §-!g§
   {
       
      
      public var §'!"§:Object;
      
      private var §]n§:§0!8§ = null;
      
      public function §7!&§(param1:XML, param2:§,6§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
            while(true)
            {
               if(mClip.getChildByName("text") is TLFTextField)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§'!"§ = mClip.getChildByName("text") as TLFTextField;
                     addr139:
                     loop9:
                     while(true)
                     {
                        addr88:
                        while(true)
                        {
                           if(param1.@text)
                           {
                              while(true)
                              {
                                 this.setText(param1.@text);
                                 addr96:
                                 while(true)
                                 {
                                 }
                              }
                              addr92:
                           }
                           while(true)
                           {
                              if(param1.@tabIndex)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§'!"§.tabIndex = param1.@tabIndex;
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             while(!mClip.mouseEnabled)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                }
                                                addr46:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr92);
                                             }
                                             return;
                                             addr23:
                                          }
                                          continue loop9;
                                       }
                                       §§goto(addr96);
                                    }
                                    continue loop9;
                                 }
                              }
                              §§goto(addr23);
                           }
                        }
                     }
                     addr139:
                  }
                  §§goto(addr139);
               }
               else
               {
                  this.§'!"§ = mClip.getChildByName("text") as TextField;
               }
               while(true)
               {
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr139);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setEnabled(param1,param2);
            while(this.§'!"§)
            {
               if(_loc4_)
               {
                  this.§'!"§.mouseEnabled = mClip.mouseEnabled;
               }
               if(_loc4_ || param2)
               {
                  addr62:
                  break;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§'!"§.text != param1)
            {
               if(!_loc2_)
               {
                  addr51:
                  this.§'!"§.text = param1;
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function getText() : String
      {
         return this.§'!"§.text;
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
               §§push(this.§]n§);
               if(_loc2_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§'!"§ = null;
                        if(!_loc1_)
                        {
                           break;
                        }
                        addr35:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              addr52:
                              if(!(_loc1_ && this))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  else
                  {
                     addr30:
                  }
                  continue;
                  return;
               }
               addr90:
               while(true)
               {
                  §§pop().dispose();
               }
               while(true)
               {
                  this.§]n§ = null;
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr30);
      }
   }
}
