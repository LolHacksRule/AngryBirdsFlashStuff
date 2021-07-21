package §^!k§
{
   import flash.display.DisplayObject;
   import flash.display.Shape;
   
   public class §30§ extends §5!r§
   {
       
      
      private var §""1§:Number = 0.05;
      
      public function §30§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         var _loc1_:Shape = new Shape();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.graphics.beginFill(0,0);
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,40,40);
               addr58:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               return;
               addr65:
            }
         }
         while(true)
         {
            _loc1_.graphics.endFill();
            while(_loc3_ || _loc2_)
            {
               addChild(_loc1_);
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr58);
            }
         }
         §§goto(addr65);
      }
      
      override public function onEnterGUI() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            alpha = 0.3;
            do
            {
               mouseEnabled = false;
            }
            while(_loc1_);
            
         }
      }
      
      override public function onLeaveGUI() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            alpha = 1;
            do
            {
               mouseEnabled = true;
            }
            while(_loc1_);
            
         }
      }
      
      override public function setIcon(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.setIcon(param1);
            do
            {
               x = parent.mouseX - width / 2;
               do
               {
                  y = parent.mouseY - height / 2;
               }
               while(!_loc3_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = NaN;
         if(!(_loc3_ && _loc2_))
         {
            if(parent)
            {
               loop0:
               while(param1 != -1)
               {
                  _loc2_ = Math.min(this.§""1§ * param1,1);
                  loop1:
                  while(_loc4_ || this)
                  {
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     loop2:
                     while(true)
                     {
                        x -= (x - (parent.mouseX - width / 2)) * _loc2_;
                        while(_loc4_)
                        {
                           if(_loc4_)
                           {
                              y -= (y - (parent.mouseY - height / 2)) * _loc2_;
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§goto(addr27);
                                 }
                                 break loop2;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     addr27:
                     return;
                  }
                  y = parent.mouseY - height / 2;
                  §§goto(addr117);
               }
               if(!_loc3_)
               {
                  x = parent.mouseX - width / 2;
                  §§goto(addr142);
               }
            }
            return;
         }
         §§goto(addr107);
      }
   }
}
