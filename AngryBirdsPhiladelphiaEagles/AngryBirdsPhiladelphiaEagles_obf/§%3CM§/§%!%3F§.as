package §<M§
{
   import §]!-§.§`o§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §%!?§ extends Popup
   {
       
      
      private var §!!7§:Sprite;
      
      public function §%!?§(param1:XML, param2:§`o§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
         do
         {
            this.setVisibility(false);
            do
            {
               this.§!!7§ = param3;
            }
            while(_loc5_ && this);
            
         }
         while(_loc5_);
         
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§!!7§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§!!7§.height >> 1;
         var _loc5_:Rectangle = this.§!!7§.getBounds(this.§!!7§);
         §§push(_loc3_);
         loop0:
         while(true)
         {
            §§push(§§pop() - _loc5_.left);
            addr156:
            while(true)
            {
               §§push(int(§§pop()));
               loop2:
               while(true)
               {
                  _loc3_ = §§pop();
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     addr141:
                     if(!_loc6_)
                     {
                        _loc4_ = §§pop();
                        while(!(_loc6_ && _loc2_))
                        {
                           _loc2_.addChild(this.§!!7§);
                           loop5:
                           while(true)
                           {
                              this.§!!7§.x = _loc3_;
                              if(!_loc7_)
                              {
                                 break;
                              }
                              this.§!!7§.y = _loc4_ - 10;
                              loop6:
                              while(true)
                              {
                                 super.open(param1);
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                    addr91:
                                    mClip.getChildByName("Container_Tutorial").visible = true;
                                    if(_loc7_ || this)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_)
         {
            _loc2_.removeChild(this.§!!7§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.close();
         }
      }
   }
}
