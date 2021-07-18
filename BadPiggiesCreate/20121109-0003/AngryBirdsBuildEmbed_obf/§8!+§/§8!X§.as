package §8!+§
{
   import § !u§.§9y§;
   import § !u§.§`]§;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §8!X§ extends §"!X§
   {
       
      
      private var §^!e§:§9y§;
      
      public function §8!X§(param1:§"U§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super(param1);
            if(_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr49);
         }
         addr38:
         § do§(new §`]§());
         if(_loc2_ || param1)
         {
            addr49:
            §8e§.addEventListener(MouseEvent.MOUSE_UP,this.§>!1§);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §%!3§.deleteSelectedObjectsFromLevel();
            if(_loc2_)
            {
               super.deActivate();
            }
         }
      }
      
      override protected function startAreaSelection() : void
      {
      }
      
      public function §%a§(param1:§9y§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§^!e§)
            {
               if(!_loc4_)
               {
                  §%!3§.deleteSelectedObjectsFromLevel();
                  if(!_loc4_)
                  {
                     addr27:
                     this.§^!e§ = param1;
                     if(_loc3_)
                     {
                        dispatchEvent(new Event(Event.CHANGE));
                        addr32:
                     }
                  }
                  var _loc2_:Object = §%!3§.addItem(this.§^!e§.mName);
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        if(!(_loc4_ && this))
                        {
                           §;;§(§;5§.§9!6§(_loc2_),false);
                           if(_loc3_)
                           {
                              this.§^!e§.§;?§();
                              if(_loc4_)
                              {
                              }
                           }
                           §§goto(addr97);
                        }
                        §6=§();
                        if(!_loc3_)
                        {
                        }
                     }
                     else
                     {
                        §%!3§.setTool(§"!X§);
                     }
                  }
                  addr97:
                  return;
               }
               §§goto(addr32);
            }
            §§goto(addr27);
         }
         §§goto(addr32);
      }
      
      private function §>!1§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.stopObjectDrag();
            if(_loc3_)
            {
               addr23:
               §%!3§.calculateCurrentScoreLimits();
            }
            return;
         }
         §§goto(addr23);
      }
      
      override public function onMouseDown() : void
      {
      }
      
      override public function stopObjectDrag() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§;5§> = null;
         if(_loc2_)
         {
            if(isDragging())
            {
               if(_loc2_)
               {
                  addr26:
                  super.stopObjectDrag();
               }
               _loc1_ = getSelectedObjects();
               if(_loc2_)
               {
                  §§push(this.§^!e§);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           addr73:
                           this.§^!e§.§#!q§();
                           if(!_loc3_)
                           {
                              this.§^!e§ = null;
                              addr79:
                              clearSelection();
                              if(_loc2_)
                              {
                                 addr83:
                                 §%!3§.setTool(§"!X§);
                              }
                              §%!3§.getCurrentTool().setSelection(_loc1_);
                              §§goto(addr90);
                           }
                           §§goto(addr83);
                        }
                        addr90:
                        return;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr26);
      }
   }
}
