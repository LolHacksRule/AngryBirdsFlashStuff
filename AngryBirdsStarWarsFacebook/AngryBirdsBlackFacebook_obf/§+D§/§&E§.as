package §+D§
{
   import flash.display.MovieClip;
   
   public class §&E§ extends §^"m§
   {
       
      
      public var §2#2§:MovieClip;
      
      public var §1!F§:int = 0;
      
      public function §&E§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(!_loc5_)
            {
               this.§1!F§ = param1.@childIndex;
            }
            if(!(_loc5_ && param2))
            {
               break;
            }
         }
      }
      
      public function §4,§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!_loc6_)
         {
            this.§2#2§ = param1;
            if(_loc7_)
            {
               while(true)
               {
                  this.§2#2§.mouseEnabled = false;
                  if(!(_loc6_ && this))
                  {
                     continue;
                  }
                  addr74:
                  (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                  if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                  {
                     if(_loc7_)
                     {
                        _loc5_.visible = false;
                     }
                  }
               }
            }
            §§goto(addr136);
         }
         §§goto(addr74);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.clear();
         }
         while(this.§2#2§)
         {
            if(_loc1_ && this)
            {
               break;
            }
            addr70:
            if(!(_loc2_ || this))
            {
               continue;
            }
            this.§2#2§ = null;
            §§goto(addr70);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§2#2§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr110:
                        do
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §?"o§).§+""§));
                           if(!(_loc3_ || param1))
                           {
                              continue loop2;
                           }
                        }
                        while(_loc3_);
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     if(!_loc2_)
                     {
                        if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           this.§2#2§.filters = [];
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                        }
                        break;
                        addr92:
                     }
                     §§goto(addr110);
                  }
                  return;
               }
            }
         }
         this.§2#2§.filters = [(mParentContainer.mParentContainer as §?"o§).§+""§];
         §§goto(addr92);
      }
   }
}
