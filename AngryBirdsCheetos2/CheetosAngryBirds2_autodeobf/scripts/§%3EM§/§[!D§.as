package §>M§
{
   import flash.display.MovieClip;
   
   public class §[!D§ extends §^-§
   {
       
      
      public var §>y§:MovieClip;
      
      public var §`s§:int = 0;
      
      public function §[!D§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
            loop0:
            while(param1.@childIndex)
            {
               if(_loc5_ || param3)
               {
                  while(true)
                  {
                     this.§`s§ = param1.@childIndex;
                  }
                  addr45:
               }
               while(true)
               {
                  if(_loc5_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §3!3§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!_loc7_)
         {
            this.§>y§ = param1;
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§>y§.mouseEnabled = false;
                  if(_loc6_)
                  {
                     this.§>y§.mouseChildren = false;
                     if(!_loc6_)
                     {
                        (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                        if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                        {
                           if(!(_loc7_ && this))
                           {
                              _loc5_.visible = false;
                           }
                        }
                     }
                     else
                     {
                        addr68:
                     }
                     continue loop0;
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.clear();
            while(this.§>y§)
            {
               if(_loc1_)
               {
                  this.§>y§ = null;
               }
               if(!(_loc2_ && _loc2_))
               {
                  addr64:
                  break;
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setComponentState(param1);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§>y§));
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr120:
                     while(true)
                     {
                        §§push(Boolean((mParentContainer.mParentContainer as §]w§).§9!'§));
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr119:
               }
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           if(_loc3_)
                           {
                              this.§>y§.filters = [(mParentContainer.mParentContainer as §]w§).§9!'§];
                           }
                        }
                        else
                        {
                           this.§>y§.filters = [];
                           if(!(_loc2_ && param1))
                           {
                              break;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr120);
                     continue;
                  }
                  continue loop0;
               }
               addr20:
               return;
            }
            §§goto(addr119);
         }
      }
   }
}
