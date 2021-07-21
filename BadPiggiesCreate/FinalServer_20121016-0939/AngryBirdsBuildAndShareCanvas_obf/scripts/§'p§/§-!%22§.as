package §'p§
{
   import flash.display.MovieClip;
   
   public class §-!"§ extends §="#§
   {
       
      
      public var §,!G§:MovieClip;
      
      public var §""-§:int = 0;
      
      public function §-!"§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(_loc5_)
            {
               if(!_loc5_)
               {
                  continue;
               }
               this.§""-§ = param1.@childIndex;
            }
            break;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!(_loc6_ && param3))
         {
            this.§,!G§ = param1;
            loop0:
            while(true)
            {
               addr52:
               addr117:
               while(true)
               {
                  this.§,!G§.mouseEnabled = false;
                  if(_loc6_)
                  {
                     break;
                  }
                  this.§,!G§.mouseChildren = false;
                  if(_loc6_ && param2)
                  {
                     return;
                  }
                  addr141:
                  addr141:
                  continue loop0;
               }
               mClip.addChild(this.§,!G§);
               if(_loc7_)
               {
                  addr133:
               }
               §§goto(addr141);
            }
         }
         §§goto(addr133);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.clear();
            while(this.§,!G§)
            {
               if(_loc2_)
               {
                  break;
               }
               addr59:
               if(_loc2_)
               {
                  continue;
               }
               this.§,!G§ = null;
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§,!G§));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    this.§,!G§.filters = [(mParentContainer.mParentContainer as §+!,§).§6Y§];
                                 }
                              }
                              else
                              {
                                 this.§,!G§.filters = [];
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       break loop4;
                                    }
                                    addr123:
                                    while(true)
                                    {
                                       §§push(Boolean((mParentContainer.mParentContainer as §+!,§).§6Y§));
                                       if(_loc3_ && param1)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr124);
                                    }
                                    addr124:
                                 }
                              }
                           }
                           addr85:
                        }
                        break;
                     }
                     return;
                     addr81:
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr85);
      }
   }
}
