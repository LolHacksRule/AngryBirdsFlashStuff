package §5!Y§
{
   import §`"%§.§`_§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §6A§ extends Popup
   {
       
      
      private var §=F§:Sprite;
      
      private var §%D§:String;
      
      public function §6A§(param1:XML, param2:§`_§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param2);
            while(true)
            {
               this.§%D§ = param4;
               while(_loc5_ || this)
               {
                  this.setVisibility(false);
                  while(!(_loc6_ && param2))
                  {
                     this.§=F§ = param3;
                     if(_loc6_)
                     {
                        continue;
                     }
                     return;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§=F§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§=F§.height >> 1;
         var _loc5_:Rectangle = this.§=F§.getBounds(this.§=F§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
                  addr133:
                  §§push(§§pop() - _loc5_.top);
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  addr154:
                  _loc4_ = int(§§pop());
                  loop3:
                  while(_loc6_ || _loc2_)
                  {
                     while(true)
                     {
                        _loc2_.addChild(this.§=F§);
                        loop5:
                        for(; _loc6_; if(!(_loc6_ || param1))
                        {
                           continue;
                        },§§goto(addr99))
                        {
                           this.§=F§.x = _loc3_;
                           loop6:
                           while(true)
                           {
                              this.§=F§.y = _loc4_ - 10;
                              loop7:
                              while(true)
                              {
                                 super.open(param1);
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                    addr99:
                                    mClip.getChildByName("Container_Tutorial").visible = true;
                                    if(!(_loc7_ && param1))
                                    {
                                       return;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        if(!(_loc6_ || this))
                        {
                           break;
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr154);
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr176);
                  }
                  addr176:
                  addr175:
               }
            }
            §§goto(addr175);
         }
         §§goto(addr162);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc3_)
         {
            _loc2_.removeChild(this.§=F§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(!(_loc4_ || this));
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.close();
         }
      }
   }
}
