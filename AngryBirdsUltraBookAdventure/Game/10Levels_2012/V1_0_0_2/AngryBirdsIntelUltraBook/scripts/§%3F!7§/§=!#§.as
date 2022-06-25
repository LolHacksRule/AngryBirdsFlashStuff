package §?!7§
{
   import flash.display.MovieClip;
   
   public class §=!#§ extends §5!I§
   {
       
      
      public var §?!"§:MovieClip;
      
      public var §4J§:int = 0;
      
      public function §=!#§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(!(_loc5_ || param3))
            {
               break;
            }
            addr66:
            if(_loc4_ && this)
            {
               continue;
            }
            this.§4J§ = param1.@childIndex;
            §§goto(addr66);
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_ || param1)
         {
            this.§?!"§ = param1;
            if(_loc6_)
            {
               while(true)
               {
                  this.§?!"§.mouseEnabled = false;
                  if(_loc6_ || param1)
                  {
                     continue;
                  }
               }
               addr73:
               (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
               if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
               {
                  if(!_loc7_)
                  {
                     _loc5_.visible = false;
                  }
               }
               §§goto(addr135);
            }
            §§goto(addr127);
         }
         §§goto(addr73);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.clear();
         }
         while(this.§?!"§)
         {
            if(_loc2_)
            {
               this.§?!"§ = null;
            }
            if(_loc2_ || _loc2_)
            {
               break;
            }
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§?!"§));
               if(!(_loc3_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 addr68:
                                 if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                                 {
                                    if(_loc2_)
                                    {
                                       this.§?!"§.filters = [(mParentContainer.mParentContainer as §?!x§).§3!m§];
                                       addr73:
                                    }
                                 }
                                 else
                                 {
                                    this.§?!"§.filters = [];
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr73);
                        }
                        §§push(Boolean((mParentContainer.mParentContainer as §?!x§).§3!m§));
                        addr114:
                        break;
                        if(_loc2_ || this)
                        {
                           continue;
                        }
                        addr106:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr106:
                     }
                     return;
                  }
               }
               §§goto(addr106);
            }
         }
         §§goto(addr68);
      }
   }
}
