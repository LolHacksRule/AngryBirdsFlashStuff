package §?!'§
{
   import §&!<§.§>!V§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §7!I§ extends Popup
   {
       
      
      private var §0Y§:Sprite;
      
      public function §7!I§(param1:XML, param2:§>!V§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2);
            while(true)
            {
               this.setVisibility(false);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§0Y§ = param3;
            if(_loc4_ || param2)
            {
               if(!(_loc5_ && param1))
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
         var _loc4_:* = 0;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§0Y§.width >> 1;
         if(_loc7_)
         {
            _loc4_ = _loc2_.height - this.§0Y§.height >> 1;
         }
         var _loc5_:Rectangle = this.§0Y§.getBounds(this.§0Y§);
         if(_loc7_)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
                  addr138:
                  §§push(§§pop() - _loc5_.top);
                  if(!(_loc7_ || _loc3_))
                  {
                     continue;
                  }
                  addr149:
                  §§push(int(§§pop()));
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        _loc2_.addChild(this.§0Y§);
                        while(true)
                        {
                           this.§0Y§.x = _loc3_;
                           while(!(_loc6_ && _loc2_))
                           {
                              this.§0Y§.y = _loc4_ - 10;
                              continue loop3;
                              if(!(_loc6_ && param1))
                              {
                                 return;
                              }
                           }
                           addr176:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 §§goto(addr138);
                              }
                              §§goto(addr149);
                           }
                           addr92:
                           while(_loc7_ || param1)
                           {
                              mClip.getChildByName("Container_Tutorial").visible = true;
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr70);
                           }
                        }
                     }
                     addr157:
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr176);
                  }
                  addr175:
               }
            }
            §§goto(addr175);
         }
         §§goto(addr157);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_ || _loc3_)
         {
            _loc2_.removeChild(this.§0Y§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.close();
         }
      }
   }
}
