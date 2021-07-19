package §;!p§
{
   import §'"!§.§-!g§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §[+§.§"!u§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   
   public class §^!%§ extends §#!N§
   {
       
      
      public function §^!%§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §=!V§.§?!O§("CountrySelection_Asset") as Class;
         if(!_loc3_)
         {
            §=a§ = new _loc1_() as MovieClip;
         }
         do
         {
            super();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      override protected function updateVisuals() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.updateVisuals();
         }
      }
      
      override public function disposeRovioButton(param1:§,6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§^"0§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(§^"0§.mClip.parent == this)
                  {
                     if(_loc3_)
                     {
                        removeChild(§^"0§.mClip);
                        addr80:
                        while(true)
                        {
                        }
                        addr80:
                     }
                     §§goto(addr80);
                  }
                  loop0:
                  while(true)
                  {
                     param1.mClip.addChild(§^"0§.mClip);
                     while(true)
                     {
                        if(_loc3_)
                        {
                           param1.§""5§(§^"0§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr20);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr20);
         }
         addr20:
      }
      
      override public function hide(param1:§,6§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§^"0§)
            {
               loop0:
               while(true)
               {
                  param1.mClip.addChild(§^"0§.mClip);
                  while(true)
                  {
                     param1.§""5§(§^"0§);
                     loop2:
                     while(_loc2_)
                     {
                        §^"0§.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        loop3:
                        while(true)
                        {
                           §^"0§.setEnabled(true);
                           loop4:
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 §^"0§ = null;
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr53);
         }
         §§goto(addr60);
      }
      
      override protected function createRovioButton(param1:§,6§, param2:String) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:XML = null;
         var _loc5_:§]"%§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §"!u§).id;
         for each(_loc5_ in param1.§,_§)
         {
            if(_loc5_.mName == _loc4_)
            {
               if(_loc8_)
               {
                  return;
               }
            }
         }
         _loc3_ = <Button/>;
         if(_loc8_)
         {
            _loc3_.@name = _loc4_;
            loop1:
            while(true)
            {
               _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
               loop2:
               while(true)
               {
                  §^"0§ = new §]"%§(_loc3_,param1,§=a§);
                  loop3:
                  while(true)
                  {
                     §^"0§.mClip.text.text = (data as §"!u§).nativeName;
                     addr161:
                     addr129:
                     while(true)
                     {
                        if(param2 != _loc4_)
                        {
                           while(§^"0§.mClip.parent != this)
                           {
                              if(!_loc8_)
                              {
                                 continue loop1;
                              }
                              if(!(_loc9_ && param2))
                              {
                                 addChild(§^"0§.mClip);
                                 continue loop1;
                              }
                           }
                           addr62:
                           return;
                        }
                        while(true)
                        {
                           §""-§(true);
                           §§goto(addr107);
                        }
                     }
                     while(true)
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           continue loop2;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr151);
      }
   }
}
