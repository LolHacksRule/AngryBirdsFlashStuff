package §4!e§
{
   import flash.display.MovieClip;
   
   public class §+w§ extends §^!D§
   {
       
      
      public var §%!1§:MovieClip;
      
      public var §4!_§:int = 0;
      
      public function §+w§(param1:XML, param2:§08§, param3:MovieClip = null)
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
               this.§4!_§ = param1.@childIndex;
            }
            if(_loc5_ || param3)
            {
               break;
            }
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc7_)
         {
            this.§%!1§ = param1;
            loop0:
            while(true)
            {
               addr40:
               addr133:
               while(true)
               {
                  this.§%!1§.mouseEnabled = false;
                  if(_loc6_ && param3)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr141);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            while(this.§%!1§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§%!1§ = null;
               }
               if(!(_loc1_ && _loc2_))
               {
                  addr70:
                  break;
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§%!1§));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr114:
                        while(true)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §5!a§).§[y§));
                           if(!(_loc3_ && _loc3_))
                           {
                              while(§§pop())
                              {
                                 continue loop0;
                              }
                              addr19:
                              return;
                              addr64:
                           }
                           break;
                        }
                     }
                     addr113:
                  }
                  §§goto(addr64);
               }
               §§goto(addr113);
            }
         }
         while(true)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(_loc2_)
               {
                  this.§%!1§.filters = [(mParentContainer.mParentContainer as §5!a§).§[y§];
               }
            }
            else
            {
               this.§%!1§.filters = [];
               if(_loc2_ || this)
               {
                  if(_loc3_)
                  {
                     §§goto(addr66);
                  }
               }
               else
               {
                  addr97:
                  if(!(_loc2_ || this))
                  {
                     §§goto(addr114);
                  }
               }
               §§goto(addr19);
            }
            §§goto(addr97);
         }
      }
   }
}
