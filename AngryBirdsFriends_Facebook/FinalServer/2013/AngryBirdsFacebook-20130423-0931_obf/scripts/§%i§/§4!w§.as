package §%i§
{
   import flash.display.MovieClip;
   
   public class §4!w§ extends §7"0§
   {
       
      
      public var §&"E§:MovieClip;
      
      public var §#"T§:int = 0;
      
      public function §4!w§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
            while(param1.@childIndex)
            {
               if(!_loc4_)
               {
                  break;
               }
               addr50:
               if(!(_loc4_ || this))
               {
                  continue;
               }
               addr46:
               this.§#"T§ = param1.@childIndex;
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc7_)
         {
            this.§&"E§ = param1;
            if(!_loc6_)
            {
               addr68:
               while(true)
               {
                  this.§&"E§.mouseEnabled = false;
                  if(!(_loc7_ || param3))
                  {
                     break;
                  }
                  this.§&"E§.mouseChildren = false;
                  if(!(_loc6_ && param3))
                  {
                     if(true)
                     {
                        if(param2 != null)
                        {
                           if(_loc7_)
                           {
                              (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                              if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                              {
                                 if(!_loc6_)
                                 {
                                    _loc5_.visible = false;
                                 }
                              }
                              break;
                           }
                        }
                        else
                        {
                           if(this.§#"T§ >= 1)
                           {
                              mClip.addChildAt(this.§&"E§,this.§#"T§ - 1);
                              break;
                           }
                           if(_loc7_ || param1)
                           {
                              mClip.addChild(this.§&"E§);
                              if(_loc7_ || param1)
                              {
                              }
                              break;
                           }
                        }
                     }
                     continue;
                     break;
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.clear();
            loop0:
            for(; this.§&"E§; while(true)
            {
               if(_loc1_ || _loc1_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc2_ && this)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§&"E§ = null;
            §§goto(addr62);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§&"E§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr114:
                        while(true)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §7!t§).§`!D§));
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     addr95:
                     if(_loc2_)
                     {
                        this.§&"E§.filters = [(mParentContainer.mParentContainer as §7!t§).§`!D§];
                        break;
                        addr106:
                     }
                     §§goto(addr114);
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr114);
      }
   }
}
