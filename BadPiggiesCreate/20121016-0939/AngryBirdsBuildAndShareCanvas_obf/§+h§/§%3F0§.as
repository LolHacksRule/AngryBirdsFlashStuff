package §+h§
{
   import §1"2§.§'s§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §?0§ extends Popup
   {
       
      
      private var §3"$§:Sprite;
      
      public function §?0§(param1:XML, param2:§'s§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1,param2);
            while(true)
            {
               this.setVisibility(false);
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     this.§3"$§ = param3;
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§3"$§.width >> 1;
         if(_loc7_)
         {
            _loc4_ = _loc2_.height - this.§3"$§.height >> 1;
         }
         var _loc5_:Rectangle = this.§3"$§.getBounds(this.§3"$§);
         if(_loc7_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               addr169:
               while(true)
               {
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr171:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && _loc2_))
                        {
                           continue loop0;
                        }
                        addr151:
                        if(_loc6_)
                        {
                           break;
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           _loc2_.addChild(this.§3"$§);
                        }
                     }
                  }
               }
            }
         }
         loop5:
         while(true)
         {
            this.§3"$§.x = _loc3_;
            while(!_loc6_)
            {
               this.§3"$§.y = _loc4_ - 10;
               continue loop5;
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
            §§goto(addr164);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_ || _loc3_)
         {
            _loc2_.removeChild(this.§3"$§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.close();
         }
      }
   }
}
