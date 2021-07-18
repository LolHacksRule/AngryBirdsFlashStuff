package §^[§
{
   import flash.display.DisplayObject;
   import flash.display.Shape;
   
   public class §-[§ extends §>!B§
   {
       
      
      private var §2^§:Number = 0.05;
      
      public function §-[§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         var _loc1_:Shape = new Shape();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.graphics.beginFill(0,0);
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,40,40);
               loop2:
               while(_loc3_ || this)
               {
                  addChild(_loc1_);
                  if(!(_loc2_ && this))
                  {
                     addr58:
                     if(_loc2_ && _loc1_)
                     {
                        while(true)
                        {
                           _loc1_.graphics.endFill();
                           continue loop2;
                           §§goto(addr58);
                        }
                        addr96:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      override public function onEnterGUI() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            alpha = 0.3;
         }
         do
         {
            mouseEnabled = false;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function onLeaveGUI() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            alpha = 1;
         }
         do
         {
            mouseEnabled = true;
         }
         while(_loc1_);
         
      }
      
      override public function setIcon(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setIcon(param1);
            while(true)
            {
               x = parent.mouseX - width / 2;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     y = parent.mouseY - height / 2;
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function update(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = NaN;
         if(!(_loc4_ && this))
         {
            if(!parent)
            {
               if(!_loc4_)
               {
                  return;
               }
               while(true)
               {
               }
               addr145:
            }
            loop0:
            while(true)
            {
               if(param1 == -1)
               {
                  if(_loc3_)
                  {
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     x = parent.mouseX - width / 2;
                  }
                  y = parent.mouseY - height / 2;
                  break;
                  addr139:
               }
               else
               {
                  _loc2_ = Math.min(this.§2^§ * param1,1);
                  while(true)
                  {
                     if(!(_loc3_ || this))
                     {
                        break loop0;
                     }
                     x -= (x - (parent.mouseX - width / 2)) * _loc2_;
                     while(!_loc4_)
                     {
                        y -= (y - (parent.mouseY - height / 2)) * _loc2_;
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           §§goto(addr26);
                        }
                        §§goto(addr139);
                     }
                  }
               }
            }
            addr26:
            return;
         }
         §§goto(addr145);
      }
   }
}
