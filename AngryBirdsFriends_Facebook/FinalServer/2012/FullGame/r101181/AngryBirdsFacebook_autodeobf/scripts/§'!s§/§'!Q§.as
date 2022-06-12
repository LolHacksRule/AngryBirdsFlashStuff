package §'!s§
{
   import §#^§.§7!A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'!Q§ extends Popup
   {
       
      
      private var §8"7§:Sprite;
      
      public function §'!Q§(param1:XML, param2:§7!A§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2);
            while(true)
            {
               this.setVisibility(false);
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§8"7§ = param3;
            if(!_loc4_)
            {
               if(!(_loc4_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§8"7§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§8"7§.height >> 1;
         var _loc5_:Rectangle = this.§8"7§.getBounds(this.§8"7§);
         if(!_loc6_)
         {
            §§push(_loc3_);
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
                  addr139:
                  §§push(§§pop() - _loc5_.top);
                  if(!_loc7_)
                  {
                     continue;
                  }
                  addr155:
                  §§push(int(§§pop()));
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc4_ = §§pop();
                     while(true)
                     {
                        _loc2_.addChild(this.§8"7§);
                        while(true)
                        {
                           this.§8"7§.x = _loc3_;
                           §§goto(addr123);
                        }
                     }
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr177);
                  }
                  addr176:
               }
            }
            §§goto(addr176);
         }
         addr123:
         loop5:
         while(true)
         {
            this.§8"7§.y = _loc4_ - 10;
            while(true)
            {
               if(!_loc6_)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  super.open(param1);
                  while(true)
                  {
                     if(_loc7_ || _loc2_)
                     {
                        continue;
                     }
                     addr177:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || _loc2_)
                        {
                           §§goto(addr139);
                        }
                        §§goto(addr155);
                     }
                  }
                  continue loop4;
               }
               continue loop5;
               if(!(_loc6_ && _loc2_))
               {
                  continue loop4;
               }
            }
            continue loop3;
         }
         addr93:
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc3_)
         {
            _loc2_.removeChild(this.§8"7§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(_loc3_);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.close();
         }
      }
   }
}
