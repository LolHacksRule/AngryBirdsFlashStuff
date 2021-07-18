package §=!7§
{
   import flash.display.MovieClip;
   
   public class §#!n§ extends §9"8§
   {
       
      
      public var §[K§:MovieClip;
      
      public var §0!E§:int = 0;
      
      public function §#!n§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(!_loc5_)
            {
               break;
            }
            addr66:
            if(!(_loc5_ || this))
            {
               continue;
            }
            this.§0!E§ = param1.@childIndex;
            §§goto(addr66);
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!(_loc7_ && param3))
         {
            this.§[K§ = param1;
            if(_loc6_ || this)
            {
               while(true)
               {
                  this.§[K§.mouseEnabled = false;
                  if(!(_loc7_ && param3))
                  {
                     this.§[K§.mouseChildren = false;
                     if(!_loc7_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        if(param2 == null)
                        {
                           if(this.§0!E§ < 1)
                           {
                              if(_loc6_ || param3)
                              {
                                 §§goto(addr126);
                              }
                              break;
                           }
                           mClip.addChildAt(this.§[K§,this.§0!E§ - 1);
                           break;
                        }
                        if(!(_loc6_ || param3))
                        {
                           addr126:
                           mClip.addChild(this.§[K§);
                           if(_loc6_ || param3)
                           {
                              break;
                           }
                           break;
                        }
                        §§goto(addr126);
                     }
                     (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                     if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                     {
                        if(_loc6_ || param3)
                        {
                           _loc5_.visible = false;
                        }
                     }
                     break;
                  }
                  break;
               }
               §§goto(addr155);
            }
            §§goto(addr126);
         }
         addr155:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            while(this.§[K§)
            {
               if(!_loc1_)
               {
                  break;
               }
               addr59:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               this.§[K§ = null;
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setComponentState(param1);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§[K§));
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr115:
                     while(true)
                     {
                        §§push(Boolean((mParentContainer.mParentContainer as §3!b§).§9!K§));
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr114:
               }
               while(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                     {
                        if(_loc3_)
                        {
                           this.§[K§.filters = [(mParentContainer.mParentContainer as §3!b§).§9!K§];
                        }
                     }
                     else
                     {
                        this.§[K§.filters = [];
                        if(_loc3_ || this)
                        {
                           break;
                        }
                     }
                  }
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr115);
               }
               addr20:
               return;
            }
            §§goto(addr114);
         }
      }
   }
}
