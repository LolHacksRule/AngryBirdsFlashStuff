package §+D§
{
   import §;"Y§.§1"z§;
   import flash.display.MovieClip;
   
   public class §^"m§ extends §1"z§
   {
       
      
      public function §^"m§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
            while(true)
            {
               targetSprite.buttonMode = true;
               addr107:
               while(!_loc5_)
               {
               }
            }
         }
         while(true)
         {
            targetSprite.mouseChildren = false;
            loop3:
            while(true)
            {
               targetSprite.tabEnabled = false;
               while(!_loc5_)
               {
                  § #A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                  while(_loc4_)
                  {
                     § #A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                     while(_loc4_)
                     {
                        § #A§(§;#V§,param1.@MouseOver);
                        continue loop3;
                     }
                  }
               }
               §§goto(addr107);
            }
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == COMPONENT_STATE_DISABLED)
            {
               if(_loc2_)
               {
                  targetSprite.useHandCursor = false;
               }
               loop0:
               do
               {
                  targetSprite.buttonMode = false;
                  addr79:
                  while(true)
                  {
                     while(true)
                     {
                        super.setComponentState(param1);
                        if(!_loc3_)
                        {
                           break;
                        }
                        while(_loc3_ && _loc2_)
                        {
                           loop4:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 targetSprite.buttonMode = true;
                                 continue loop4;
                              }
                           }
                           targetSprite.mouseChildren = false;
                        }
                     }
                     continue loop0;
                  }
               }
               while(!(_loc2_ || _loc3_));
               
               return;
            }
            targetSprite.useHandCursor = true;
            while(true)
            {
               if(_loc2_)
               {
                  §§goto(addr74);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr74);
      }
   }
}
