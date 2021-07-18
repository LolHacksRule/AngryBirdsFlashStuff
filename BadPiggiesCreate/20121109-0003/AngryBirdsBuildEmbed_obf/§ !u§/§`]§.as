package § !u§
{
   import flash.display.DisplayObject;
   import flash.display.Shape;
   
   public class §`]§ extends §0m§
   {
       
      
      private var §#B§:Number = 0.05;
      
      public function §`]§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         var _loc1_:Shape = new Shape();
         if(!(_loc2_ && this))
         {
            _loc1_.graphics.beginFill(0,0);
            if(_loc3_ || this)
            {
               §§goto(addr64);
            }
            §§goto(addr83);
         }
         addr64:
         _loc1_.graphics.drawRect(0,0,40,40);
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.graphics.endFill();
            if(!_loc2_)
            {
               addr83:
               addChild(_loc1_);
            }
         }
      }
      
      override public function onEnterGUI() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            alpha = 0.3;
            if(!(_loc2_ && this))
            {
               addr43:
               mouseEnabled = false;
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function onLeaveGUI() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            alpha = 1;
            if(!_loc1_)
            {
               mouseEnabled = true;
            }
         }
      }
      
      override public function setIcon(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setIcon(param1);
            if(!(_loc2_ && this))
            {
               §§goto(addr49);
            }
            §§goto(addr64);
         }
         addr49:
         x = parent.mouseX - width / 2;
         if(!(_loc2_ && param1))
         {
            addr64:
            y = parent.mouseY - height / 2;
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = NaN;
         if(!parent)
         {
            return;
         }
         if(param1 == -1)
         {
            x = parent.mouseX - width / 2;
            if(_loc4_ || _loc3_)
            {
               y = parent.mouseY - height / 2;
               if(!(_loc4_ || _loc2_))
               {
                  addr85:
                  x -= (x - (parent.mouseX - width / 2)) * _loc2_;
                  y -= (y - (parent.mouseY - height / 2)) * _loc2_;
               }
               else
               {
                  addr65:
               }
               return;
            }
            §§goto(addr65);
         }
         else
         {
            _loc2_ = Math.min(this.§#B§ * param1,1);
         }
         §§goto(addr85);
      }
   }
}
