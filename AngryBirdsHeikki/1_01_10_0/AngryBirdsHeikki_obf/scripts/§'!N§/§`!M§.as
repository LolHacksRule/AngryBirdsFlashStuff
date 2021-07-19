package §'!N§
{
   import flash.display.MovieClip;
   
   public class §`!M§ extends §<i§
   {
       
      
      public var §;2§:MovieClip;
      
      public var §<s§:int = 0;
      
      public function §`!M§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param2,param3);
            while(param1.@childIndex)
            {
               if(!(_loc4_ || param3))
               {
                  break;
               }
               addr70:
               if(!(_loc4_ || param2))
               {
                  continue;
               }
               this.§<s§ = param1.@childIndex;
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §1o§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!(_loc7_ && param3))
         {
            this.§;2§ = param1;
            if(_loc6_)
            {
               while(true)
               {
                  this.§;2§.mouseEnabled = false;
                  if(!_loc7_)
                  {
                     this.§;2§.mouseChildren = false;
                     if(!(_loc7_ && param1))
                     {
                        if(true)
                        {
                           if(param2 != null)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                                 if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                                 {
                                    if(!_loc7_)
                                    {
                                       _loc5_.visible = false;
                                    }
                                 }
                                 break;
                              }
                              else
                              {
                                 addr127:
                              }
                              addr127:
                              break;
                           }
                           if(this.§<s§ < 1)
                           {
                              if(!_loc7_)
                              {
                                 mClip.addChild(this.§;2§);
                                 if(_loc6_)
                                 {
                                    §§goto(addr127);
                                 }
                                 break;
                              }
                              break;
                           }
                        }
                        continue;
                        mClip.addChildAt(this.§;2§,this.§<s§ - 1);
                        break;
                     }
                     §§goto(addr127);
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr127);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.clear();
         }
         while(this.§;2§)
         {
            if(_loc1_)
            {
               break;
            }
            addr60:
            if(_loc1_)
            {
               continue;
            }
            this.§;2§ = null;
            §§goto(addr60);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setComponentState(param1);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§;2§));
            addr89:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(§§pop())
                  {
                     while(true)
                     {
                        if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           if(!_loc3_)
                           {
                              this.§;2§.filters = [(mParentContainer.mParentContainer as §,2§).§ ! §];
                              break;
                           }
                           break;
                        }
                        this.§;2§.filters = [];
                        if(_loc3_ && _loc2_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           break loop4;
                        }
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
                  addr66:
               }
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
      }
   }
}
