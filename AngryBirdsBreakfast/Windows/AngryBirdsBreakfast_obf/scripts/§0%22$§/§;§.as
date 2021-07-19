package §0"$§
{
   import §,L§.§%J§;
   import flash.display.MovieClip;
   
   public class §;§ extends §%J§
   {
       
      
      public function §;§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               targetSprite.buttonMode = true;
               while(true)
               {
                  targetSprite.mouseChildren = false;
                  loop2:
                  while(true)
                  {
                     targetSprite.tabEnabled = false;
                     while(_loc5_)
                     {
                        §9E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                        loop4:
                        while(!(_loc4_ && param1))
                        {
                           §9E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                           loop5:
                           while(true)
                           {
                              §9E§(§,!y§,param1.@MouseOver);
                              while(true)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    continue loop2;
                                 }
                                 continue loop5;
                                 addr77:
                                 §9E§(§-g§,param1.@MouseOut);
                                 if(!(_loc4_ && param3))
                                 {
                                    if(_loc5_)
                                    {
                                       break loop5;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           return;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1 != COMPONENT_STATE_DISABLED)
            {
               targetSprite.useHandCursor = true;
               do
               {
                  if(_loc2_ || this)
                  {
                     targetSprite.buttonMode = true;
                     do
                     {
                        if(!(_loc3_ && this))
                        {
                           targetSprite.mouseChildren = false;
                           while(true)
                           {
                              if(_loc2_ || param1)
                              {
                                 continue;
                              }
                              addr118:
                              addr118:
                              while(true)
                              {
                                 targetSprite.buttonMode = false;
                              }
                           }
                           continue;
                        }
                        addr115:
                        while(true)
                        {
                           targetSprite.useHandCursor = false;
                           §§goto(addr118);
                        }
                        §§goto(addr118);
                     }
                     while(_loc3_ && _loc3_);
                     
                     continue;
                  }
                  while(true)
                  {
                     §§goto(addr28);
                  }
               }
               while(!(_loc2_ || _loc3_));
               
               return;
            }
            §§goto(addr115);
         }
         §§goto(addr118);
      }
   }
}
