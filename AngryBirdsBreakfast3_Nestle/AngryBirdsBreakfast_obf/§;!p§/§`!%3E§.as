package §;!p§
{
   import §'"!§.§-!g§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §[+§.§3!O§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   
   public class §`!>§ extends §#!N§
   {
       
      
      public function §`!>§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §=!V§.§?!O§("CountrySelection_Asset") as Class;
         if(!_loc3_)
         {
            §=a§ = new _loc1_() as MovieClip;
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      override public function disposeRovioButton(param1:§,6§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§^"0§)
            {
               if(!_loc3_)
               {
                  addr55:
                  if(§^"0§.mClip.parent == this)
                  {
                     while(true)
                     {
                        removeChild(§^"0§.mClip);
                        §§goto(addr74);
                     }
                     addr70:
                  }
                  while(true)
                  {
                     param1.mClip.addChild(§^"0§.mClip);
                     while(!_loc3_)
                     {
                        param1.§""5§(§^"0§);
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           addr74:
                        }
                        §§goto(addr41);
                     }
                  }
               }
               §§goto(addr70);
            }
            addr41:
            while(true)
            {
            }
            return;
         }
         §§goto(addr55);
      }
      
      override public function hide(param1:§,6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
                     for(; _loc3_; if(_loc3_ || _loc3_)
                     {
                        continue loop0;
                     })
                     {
                        §^"0§.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        while(true)
                        {
                           §^"0§.setEnabled(true);
                           loop4:
                           while(_loc3_)
                           {
                              continue loop2;
                              while(true)
                              {
                                 §^"0§ = null;
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                        }
                     }
                  }
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr25);
         }
         §§goto(addr71);
      }
      
      override protected function createRovioButton(param1:§,6§, param2:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:XML = null;
         var _loc5_:§]"%§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §3!O§).id;
         for each(_loc5_ in param1.§,_§)
         {
            if(_loc5_.mName == _loc4_)
            {
               if(_loc9_)
               {
                  return;
               }
            }
         }
         _loc3_ = <Button/>;
         if(_loc9_)
         {
            _loc3_.@name = _loc4_;
            while(true)
            {
               _loc3_.@MouseUp = "SCROLLITEM_COUNTRY_CLICK";
               loop2:
               for(; !(_loc8_ && this); loop4:
               while(!(_loc8_ && param2))
               {
                  if(param2 == _loc4_)
                  {
                     if(!_loc8_)
                     {
                        if(!_loc8_)
                        {
                           §""-§(true);
                        }
                        else
                        {
                           §§goto(addr143);
                        }
                     }
                     while(true)
                     {
                     }
                     addr117:
                  }
                  loop6:
                  while(§^"0§.mClip.parent != this)
                  {
                     loop7:
                     while(_loc9_)
                     {
                        while(true)
                        {
                           addChild(§^"0§.mClip);
                           do
                           {
                              param1.§!!1§(§^"0§);
                           }
                           while(_loc8_ && param2);
                           
                           if(!_loc8_)
                           {
                              if(_loc9_)
                              {
                                 break loop6;
                              }
                              §§goto(addr117);
                              continue loop6;
                           }
                           continue loop7;
                        }
                     }
                     continue loop4;
                  }
                  return;
               })
               {
                  §^"0§ = new §]"%§(_loc3_,param1,§=a§);
                  while(true)
                  {
                     §^"0§.mClip.text.text = (data as §3!O§).nativeName;
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr101);
      }
   }
}
