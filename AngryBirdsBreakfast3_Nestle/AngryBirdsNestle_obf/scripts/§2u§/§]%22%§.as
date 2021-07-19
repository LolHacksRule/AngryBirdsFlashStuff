package §2u§
{
   import §'"!§.§-!g§;
   import flash.display.MovieClip;
   
   public class §]"%§ extends §-!g§
   {
       
      
      public function §]"%§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               targetSprite.buttonMode = true;
               while(true)
               {
                  targetSprite.mouseChildren = false;
                  addr102:
                  while(_loc4_ || param3)
                  {
                     targetSprite.tabEnabled = false;
                     do
                     {
                        §^1§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                        continue loop0;
                     }
                     while(_loc5_ && param3);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != COMPONENT_STATE_DISABLED)
            {
               targetSprite.useHandCursor = true;
               loop0:
               while(true)
               {
                  targetSprite.buttonMode = true;
                  while(true)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        targetSprite.mouseChildren = false;
                        loop2:
                        for(; !_loc3_; while(true)
                        {
                           super.setComponentState(param1);
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              return;
                              addr51:
                           }
                           §§goto(addr96);
                        })
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           addr96:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     addr100:
                     while(true)
                     {
                        targetSprite.useHandCursor = false;
                     }
                     while(true)
                     {
                        targetSprite.buttonMode = false;
                        §§goto(addr96);
                     }
                  }
               }
            }
            §§goto(addr100);
         }
         §§goto(addr51);
      }
   }
}
