package §_-gU§
{
   import §_-Yl§.§_-5q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-wZ§ extends Popup
   {
       
      
      private var §_-mA§:Sprite;
      
      public function §_-wZ§(param1:XML, param2:§_-5q§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2);
         }
         while(true)
         {
            this.setVisibility(false);
            while(_loc5_ || param2)
            {
               this.§_-mA§ = param3;
               if(_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§_-mA§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§_-mA§.height >> 1;
         var _loc5_:Rectangle = this.§_-mA§.getBounds(this.§_-mA§);
         if(_loc7_ || _loc3_)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
                  addr134:
                  §§push(§§pop() - _loc5_.top);
                  if(_loc6_)
                  {
                     continue;
                  }
                  addr150:
                  _loc4_ = int(§§pop());
                  loop3:
                  for(; !(_loc6_ && _loc3_); loop5:
                  for(; !(_loc6_ && this); if(!(_loc7_ || param1))
                  {
                     continue;
                  },super.open(param1),while(_loc7_)
                  {
                     mClip.getChildByName("Container_Tutorial").visible = true;
                     if(!_loc6_)
                     {
                        return;
                     }
                  },§§goto(addr94))
                  {
                     this.§_-mA§.x = _loc3_;
                     loop6:
                     while(true)
                     {
                        this.§_-mA§.y = _loc4_ - 10;
                        addr94:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              continue loop5;
                           }
                           continue loop6;
                        }
                        continue loop5;
                     }
                  })
                  {
                     while(true)
                     {
                        _loc2_.addChild(this.§_-mA§);
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr150);
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr172);
                  }
                  addr172:
                  addr171:
               }
            }
            §§goto(addr171);
         }
         §§goto(addr158);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc4_)
         {
            _loc2_.removeChild(this.§_-mA§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(!_loc3_);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.close();
         }
      }
   }
}
