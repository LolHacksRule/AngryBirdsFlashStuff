package §%4§
{
   import flash.display.MovieClip;
   
   public class §0!I§ extends §7-§
   {
       
      
      public var §`E§:MovieClip;
      
      public var §-!-§:int = 0;
      
      public function §0!I§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
            if(!_loc5_)
            {
               if(param1.@childIndex)
               {
                  if(_loc4_)
                  {
                     addr45:
                     this.§-!-§ = param1.@childIndex;
                  }
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function §-!B§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!(_loc6_ && param3))
         {
            this.§`E§ = param1;
            if(!_loc6_)
            {
               this.§`E§.mouseEnabled = false;
               this.§`E§.mouseChildren = false;
               addr43:
               if(param2 != null)
               {
                  if(_loc7_)
                  {
                     (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                     if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                     {
                        if(!(_loc6_ && this))
                        {
                           _loc5_.visible = false;
                        }
                     }
                  }
                  else
                  {
                     addr115:
                  }
               }
               else if(this.§-!-§ < 1)
               {
                  mClip.addChild(this.§`E§);
                  if(_loc7_ || this)
                  {
                     §§goto(addr115);
                  }
               }
               else
               {
                  mClip.addChildAt(this.§`E§,this.§-!-§ - 1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.clear();
            if(_loc1_)
            {
               if(this.§`E§)
               {
                  if(!_loc2_)
                  {
                     addr42:
                     this.§`E§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.setComponentState(param1);
         if(_loc3_)
         {
            §§push(Boolean(this.§`E§));
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§pop();
                     §§push(Boolean((mParentContainer.mParentContainer as §]q§).§1=§));
                  }
               }
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     if(!_loc2_)
                     {
                        addr76:
                        this.§`E§.filters = [(mParentContainer.mParentContainer as §]q§).§1=§];
                     }
                  }
                  else
                  {
                     this.§`E§.filters = [];
                  }
                  §§goto(addr90);
               }
               §§goto(addr76);
            }
         }
         addr90:
      }
   }
}
