package §77§
{
   import flash.display.MovieClip;
   
   public class §#"D§ extends §@_§
   {
       
      
      public var §[I§:MovieClip;
      
      public var §'§:int = 0;
      
      public function §#"D§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(_loc4_ || param3)
            {
               if(_loc5_)
               {
                  continue;
               }
               this.§'§ = param1.@childIndex;
            }
            break;
         }
      }
      
      public function §]"$§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!(_loc7_ && param1))
         {
            this.§[I§ = param1;
            while(true)
            {
               §§goto(addr39);
            }
         }
         while(true)
         {
            this.§[I§.mouseChildren = false;
            if(_loc6_)
            {
               if(false)
               {
                  addr39:
                  §§goto(addr140);
               }
               else if(param2 != null)
               {
                  if(!_loc7_)
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
                     addr116:
                     mClip.addChild(this.§[I§);
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
               }
               else
               {
                  if(this.§'§ < 1)
                  {
                     if(_loc6_ || param1)
                     {
                        §§goto(addr116);
                     }
                     break;
                  }
                  mClip.addChildAt(this.§[I§,this.§'§ - 1);
               }
               §§goto(addr140);
            }
            break;
         }
         addr140:
         while(true)
         {
            this.§[I§.mouseEnabled = false;
            if(_loc7_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
            loop0:
            while(this.§[I§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     this.§[I§ = null;
                  }
                  addr55:
               }
               while(true)
               {
                  if(!_loc1_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§[I§));
               loop1:
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
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!(_loc3_ && param1))
                              {
                                 this.§[I§.filters = [(mParentContainer.mParentContainer as §%]§).§,-§];
                                 break;
                              }
                              loop3:
                              while(!_loc3_)
                              {
                                 addr124:
                                 §§push(Boolean((mParentContainer.mParentContainer as §%]§).§,-§));
                                 if(!(_loc3_ && this))
                                 {
                                    continue loop1;
                                 }
                                 addr121:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                    §§goto(addr124);
                                 }
                              }
                              continue loop0;
                           }
                           this.§[I§.filters = [];
                           if(_loc3_ && this)
                           {
                              break;
                           }
                           if(_loc2_ || _loc3_)
                           {
                              break loop4;
                           }
                        }
                        break;
                     }
                     return;
                     addr81:
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr104);
      }
   }
}
