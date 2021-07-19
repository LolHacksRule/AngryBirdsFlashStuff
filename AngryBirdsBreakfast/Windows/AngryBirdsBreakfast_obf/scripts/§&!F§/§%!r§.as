package §&!F§
{
   import §,L§.§%J§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §5!G§.§#!6§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   
   public class §%!r§ extends §7n§
   {
       
      
      public function §%!r§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §<V§.§"!,§("CountrySelection_Asset") as Class;
         if(_loc2_)
         {
            §'!#§ = new _loc1_() as MovieClip;
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function updateVisuals() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.updateVisuals();
         }
      }
      
      override public function disposeRovioButton(param1:§"!a§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§4!H§)
            {
               loop0:
               while(true)
               {
                  if(§4!H§.mClip.parent == this)
                  {
                     while(true)
                     {
                        removeChild(§4!H§.mClip);
                        addr85:
                        while(true)
                        {
                        }
                        addr30:
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        return;
                        addr47:
                     }
                  }
                  while(true)
                  {
                     param1.mClip.addChild(§4!H§.mClip);
                     loop4:
                     while(_loc3_ || param1)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              param1.§^!F§(§4!H§);
                              if(!_loc3_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr30);
                           }
                           §§goto(addr47);
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr63);
      }
      
      override public function hide(param1:§"!a§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§4!H§)
            {
               loop0:
               while(true)
               {
                  param1.mClip.addChild(§4!H§.mClip);
                  while(true)
                  {
                     param1.§^!F§(§4!H§);
                     loop2:
                     while(_loc3_ || _loc3_)
                     {
                        §4!H§.setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        loop3:
                        do
                        {
                           §4!H§.setEnabled(true);
                           while(!_loc2_)
                           {
                              continue loop0;
                              §4!H§ = null;
                              if(!(_loc2_ && param1))
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        while(_loc2_ && this);
                        
                     }
                  }
               }
               addr97:
            }
            return;
         }
         §§goto(addr97);
      }
      
      override protected function createRovioButton(param1:§"!a§, param2:String) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:XML = null;
         var _loc5_:§;§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §#!6§).id;
         for each(_loc5_ in param1.§<C§)
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
         if(!_loc9_)
         {
            _loc3_.@name = _loc4_;
            loop1:
            while(true)
            {
               _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
               addr175:
               while(true)
               {
                  §4!H§ = new §;§(_loc3_,param1,§'!#§);
                  continue loop1;
               }
            }
         }
         §§goto(addr126);
      }
   }
}
