package §1!E§
{
   import flash.display.MovieClip;
   
   public class §,D§ extends §==§
   {
       
      
      public var §4?§:MovieClip;
      
      public var §[a§:int = 0;
      
      public function §,D§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(!(_loc4_ && param2))
            {
               if(_loc4_)
               {
                  continue;
               }
               this.§[a§ = param1.@childIndex;
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
         if(_loc6_)
         {
            this.§4?§ = param1;
            if(_loc6_)
            {
               addr47:
               loop0:
               while(true)
               {
                  this.§4?§.mouseEnabled = false;
                  while(true)
                  {
                     this.§4?§.mouseChildren = false;
                     if(_loc7_)
                     {
                        break;
                     }
                     if(!_loc7_)
                     {
                        if(true)
                        {
                           if(param2 != null)
                           {
                              if(_loc6_)
                              {
                                 (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                                 if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                                 {
                                    if(!_loc7_)
                                    {
                                       _loc5_.visible = false;
                                    }
                                 }
                              }
                              else
                              {
                                 addr117:
                              }
                           }
                           else if(this.§[a§ < 1)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§goto(addr117);
                           }
                           else
                           {
                              mClip.addChildAt(this.§4?§,this.§[a§ - 1);
                           }
                           return;
                        }
                        addr125:
                        continue loop0;
                     }
                  }
                  mClip.addChild(this.§4?§);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr117);
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr117);
         }
         §§goto(addr47);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
            while(this.§4?§)
            {
               if(!(_loc1_ && this))
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  this.§4?§ = null;
               }
               break;
            }
            return;
         }
         §§goto(addr47);
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
               §§push(Boolean(this.§4?§));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr114:
                        loop4:
                        while(true)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §31§).§1O§));
                           if(_loc2_ || param1)
                           {
                              loop1:
                              while(§§pop())
                              {
                                 while(true)
                                 {
                                    if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                                    {
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          this.§4?§.filters = [(mParentContainer.mParentContainer as §31§).§1O§];
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    this.§4?§.filters = [];
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc2_ || param1)
                                    {
                                       break loop1;
                                    }
                                 }
                                 continue loop0;
                              }
                              addr19:
                              return;
                              addr64:
                           }
                        }
                     }
                     addr113:
                  }
                  §§goto(addr64);
               }
               §§goto(addr113);
            }
         }
         §§goto(addr114);
      }
   }
}
