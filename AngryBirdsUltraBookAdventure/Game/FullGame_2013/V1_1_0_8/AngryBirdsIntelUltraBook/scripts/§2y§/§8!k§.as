package §2y§
{
   import flash.display.MovieClip;
   
   public class §8!k§ extends §[!i§
   {
       
      
      public var §#!H§:MovieClip;
      
      public var §<!k§:int = 0;
      
      public function §8!k§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
            while(param1.@childIndex)
            {
               if(!(_loc5_ && param1))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  this.§<!k§ = param1.@childIndex;
               }
               break;
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_)
         {
            this.§#!H§ = param1;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§#!H§.mouseEnabled = false;
                  loop2:
                  while(true)
                  {
                     this.§#!H§.mouseChildren = false;
                     if(!(_loc6_ || param2))
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 if(param2 != null)
                                 {
                                    if(_loc6_ || param1)
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
                                 }
                                 else
                                 {
                                    if(this.§<!k§ >= 1)
                                    {
                                       mClip.addChildAt(this.§#!H§,this.§<!k§ - 1);
                                       break;
                                    }
                                    if(!_loc7_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 break;
                              }
                              addr127:
                              continue loop1;
                           }
                           addr135:
                           return;
                           addr41:
                        }
                        break loop1;
                     }
                  }
                  mClip.addChild(this.§#!H§);
                  if(!(_loc7_ && this))
                  {
                     §§goto(addr127);
                  }
                  §§goto(addr135);
               }
            }
         }
         §§goto(addr41);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
            while(this.§#!H§)
            {
               if(_loc1_ && _loc1_)
               {
                  break;
               }
               addr55:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               this.§#!H§ = null;
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr55);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§#!H§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr108:
                        while(_loc3_)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §<N§).§2!G§));
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop2;
                           }
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     while(true)
                     {
                        if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           if(!(_loc2_ && param1))
                           {
                              this.§#!H§.filters = [(mParentContainer.mParentContainer as §<N§).§2!G§];
                              break;
                           }
                           break;
                        }
                        this.§#!H§.filters = [];
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc3_ || param1)
                        {
                           break loop4;
                        }
                     }
                     if(_loc3_)
                     {
                        break;
                        addr100:
                     }
                     §§goto(addr108);
                  }
                  return;
               }
            }
         }
         §§goto(addr100);
      }
   }
}
