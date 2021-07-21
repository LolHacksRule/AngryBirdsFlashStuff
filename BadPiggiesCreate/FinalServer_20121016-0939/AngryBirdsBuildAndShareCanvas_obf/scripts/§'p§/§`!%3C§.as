package §'p§
{
   import §'!A§.§9!!§;
   import §'@§.§@=§;
   import flash.text.TextField;
   
   public class §`!<§ extends §9!!§
   {
       
      
      public var §&!w§:TextField;
      
      private var §%!p§:§@=§ = null;
      
      public function §`!<§(param1:XML, param2:§`!T§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            while(true)
            {
               this.§&!w§ = mClip.getChildByName("text") as TextField;
               loop1:
               for(; _loc4_ || param2; while(_loc4_ || param1)
               {
                  this.§&!w§.tabIndex = param1.@tabIndex;
                  §§goto(addr87);
               })
               {
                  if(param1.@text)
                  {
                     if(_loc4_)
                     {
                        this.setText(param1.@text);
                     }
                     while(true)
                     {
                        addr53:
                        if(!(_loc3_ && this))
                        {
                           §§goto(addr25);
                        }
                     }
                     addr98:
                  }
                  while(true)
                  {
                     if(param1.@tabIndex)
                     {
                        continue loop1;
                     }
                     loop6:
                     for(; !mClip.mouseEnabled; while(true)
                     {
                        continue loop6;
                        §§goto(addr40);
                     })
                     {
                        if(!(_loc3_ && param2))
                        {
                           addr40:
                           if(!(_loc4_ || param2))
                           {
                              continue;
                           }
                           while(true)
                           {
                              this.setEnabled(mClip.mouseEnabled);
                           }
                        }
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                           §§goto(addr53);
                        }
                     }
                     addr25:
                     return;
                     §§goto(addr98);
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setEnabled(param1);
            while(this.§&!w§)
            {
               if(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     this.§&!w§.mouseEnabled = mClip.mouseEnabled;
                     addr62:
                     break;
                  }
                  continue;
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr62);
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
         if(_loc2_ || _loc2_)
         {
            this.§&!w§.text = param1;
         }
      }
      
      public function §2! §() : String
      {
         return this.§&!w§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            while(true)
            {
               §§push(this.§%!p§);
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     while(!_loc1_)
                     {
                        §§push(this.§%!p§);
                        while(true)
                        {
                           §§pop().dispose();
                           addr81:
                           loop5:
                           while(true)
                           {
                              this.§%!p§ = null;
                              addr47:
                              addr54:
                              while(!(_loc2_ || this))
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                     continue;
                     addr76:
                  }
                  while(true)
                  {
                     this.§&!w§ = null;
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr47);
                     §§goto(addr54);
                  }
                  return;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr81);
      }
      
      public function §8!Q§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§%!p§ = new §@=§(this.§&!w§,param1,param2,param3);
         }
      }
      
      public function §19§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§%!p§.dispose();
            do
            {
               this.§%!p§ = null;
            }
            while(!_loc2_);
            
         }
      }
   }
}
