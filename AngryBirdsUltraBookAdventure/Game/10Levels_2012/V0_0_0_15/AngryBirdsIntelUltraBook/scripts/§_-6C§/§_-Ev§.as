package §_-6C§
{
   import flash.display.MovieClip;
   
   public class §_-Ev§ extends §_-Mu§
   {
       
      
      public var §_-Nx§:MovieClip;
      
      public var §_-0EH§:int = 0;
      
      public function §_-Ev§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(!_loc4_)
            {
               if(_loc4_)
               {
                  continue;
               }
               this.§_-0EH§ = param1.@childIndex;
            }
            break;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!_loc7_)
         {
            this.§_-Nx§ = param1;
            if(!(_loc7_ && param2))
            {
               loop0:
               while(true)
               {
                  this.§_-Nx§.mouseEnabled = false;
                  loop1:
                  while(true)
                  {
                     this.§_-Nx§.mouseChildren = false;
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(!(_loc7_ && param1))
                     {
                        while(true)
                        {
                           if(true)
                           {
                              if(param2 != null)
                              {
                                 if(!_loc7_)
                                 {
                                    (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                                    if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                                    {
                                       if(_loc6_)
                                       {
                                          _loc5_.visible = false;
                                       }
                                    }
                                    break;
                                 }
                                 break;
                              }
                              if(this.§_-0EH§ < 1)
                              {
                                 if(_loc6_)
                                 {
                                    break loop1;
                                 }
                                 break;
                              }
                              mClip.addChildAt(this.§_-Nx§,this.§_-0EH§ - 1);
                           }
                           continue loop0;
                        }
                        addr130:
                        return;
                        addr39:
                     }
                  }
               }
            }
            mClip.addChild(this.§_-Nx§);
            if(_loc7_)
            {
            }
            §§goto(addr130);
         }
         §§goto(addr39);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
         }
         while(this.§_-Nx§)
         {
            if(!_loc1_)
            {
               this.§_-Nx§ = null;
            }
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§_-Nx§));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(§§pop())
                     {
                        while(param1 != COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           this.§_-Nx§.filters = [];
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                           if(_loc3_ && this)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                        }
                        if(_loc3_)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(Boolean((mParentContainer.mParentContainer as §_-05d§).§_-yS§));
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr103:
                              while(true)
                              {
                                 §§pop();
                                 continue loop4;
                              }
                           }
                           if(!_loc3_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        this.§_-Nx§.filters = [(mParentContainer.mParentContainer as §_-05d§).§_-yS§];
                        §§goto(addr96);
                     }
                     return;
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr87);
      }
   }
}
