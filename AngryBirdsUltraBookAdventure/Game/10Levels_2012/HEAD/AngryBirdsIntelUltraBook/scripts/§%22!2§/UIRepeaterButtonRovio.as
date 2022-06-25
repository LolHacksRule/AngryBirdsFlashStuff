package §"!2§
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var §^!b§:MovieClip;
      
      public var §#$§:int = 0;
      
      public function UIRepeaterButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(_loc4_)
            {
               if(!_loc4_)
               {
                  continue;
               }
               this.§#$§ = param1.@childIndex;
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
            this.§^!b§ = param1;
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§^!b§.mouseEnabled = false;
                  if(!(_loc6_ || param3))
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     while(true)
                     {
                        this.§^!b§.mouseChildren = false;
                        if(_loc6_)
                        {
                           if(true)
                           {
                              if(param2 != null)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    _loc4_ = mClip.getChildByName(param2) as MovieClip;
                                    if(_loc6_)
                                    {
                                       _loc4_.addChild(param1);
                                    }
                                    _loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip;
                                    if(!(_loc7_ && param2))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc6_ || param3)
                                          {
                                             addr115:
                                             _loc5_.visible = false;
                                          }
                                       }
                                       break loop1;
                                    }
                                    §§goto(addr115);
                                 }
                                 break loop1;
                              }
                              if(this.§#$§ < 1)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    mClip.addChild(this.§^!b§);
                                    if(_loc6_ || param2)
                                    {
                                       break;
                                    }
                                    break loop1;
                                 }
                                 break;
                              }
                              mClip.addChildAt(this.§^!b§,this.§#$§ - 1);
                           }
                           continue loop1;
                           break loop1;
                        }
                        break;
                     }
                     break;
                     addr48:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.clear();
            while(this.§^!b§)
            {
               if(!_loc2_)
               {
                  if(_loc1_)
                  {
                     this.§^!b§ = null;
                     addr50:
                     break;
                  }
                  continue;
               }
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.setComponentState(param1);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§^!b§));
            loop1:
            while(true)
            {
               §§push(§§pop());
               if(_loc3_ || param1)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(Boolean((mParentContainer.mParentContainer as UIRepeaterRovio).§@!]§));
                        if(_loc3_ || param1)
                        {
                           if(!_loc2_)
                           {
                              while(§§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          this.§^!b§.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).§@!]§];
                                       }
                                    }
                                    else
                                    {
                                       this.§^!b§.filters = [];
                                       if(_loc3_ || _loc3_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              return;
                              addr72:
                           }
                           break;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               §§goto(addr72);
            }
         }
      }
   }
}
