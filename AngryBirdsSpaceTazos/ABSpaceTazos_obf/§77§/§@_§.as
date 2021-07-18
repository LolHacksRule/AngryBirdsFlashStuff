package §77§
{
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.display.MovieClip;
   
   public class §@_§ extends §@!!§
   {
       
      
      public function §@_§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
            while(true)
            {
               targetSprite.buttonMode = true;
               loop1:
               for(; !_loc4_; while(!(_loc4_ && param1))
               {
                  §§goto(addr48);
               })
               {
                  targetSprite.mouseChildren = false;
                  while(true)
                  {
                     targetSprite.tabEnabled = false;
                     continue loop1;
                     while(!(_loc4_ && param3))
                     {
                        §]!d§(§3!R§,param1.@MouseOver);
                        loop7:
                        while(!_loc4_)
                        {
                           if(!(_loc4_ && this))
                           {
                              §]!d§(§ h§,param1.@MouseOut);
                              if(!_loc4_)
                              {
                                 addr37:
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §]!d§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                       break loop7;
                                       §§goto(addr37);
                                    }
                                    addr86:
                                 }
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §]!d§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
            §§goto(addr86);
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 != COMPONENT_STATE_DISABLED)
            {
               targetSprite.useHandCursor = true;
               while(true)
               {
                  targetSprite.buttonMode = true;
                  loop1:
                  for(; _loc3_; while(_loc3_ || this)
                  {
                     §§goto(addr29);
                  })
                  {
                     if(!(_loc2_ && this))
                     {
                        if(_loc3_ || _loc2_)
                        {
                           targetSprite.mouseChildren = false;
                           continue;
                        }
                        addr116:
                        while(true)
                        {
                           targetSprite.useHandCursor = false;
                           addr119:
                           while(true)
                           {
                              targetSprite.buttonMode = false;
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        addr29:
                        while(true)
                        {
                           super.setComponentState(param1);
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           if(_loc3_ || _loc2_)
                           {
                              return;
                           }
                           §§goto(addr119);
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr119);
      }
   }
}
