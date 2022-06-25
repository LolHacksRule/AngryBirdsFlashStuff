package §9#§
{
   import §1n§.§ C§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §"<§ extends Popup
   {
       
      
      private var §2!k§:Sprite;
      
      public function §"<§(param1:XML, param2:§ C§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2);
            do
            {
               this.setVisibility(false);
               do
               {
                  this.§2!k§ = param3;
               }
               while(!_loc5_);
               
            }
            while(!_loc5_);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§2!k§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§2!k§.height >> 1;
         var _loc5_:Rectangle = this.§2!k§.getBounds(this.§2!k§);
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
               }
               addr154:
            }
            while(true)
            {
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ || _loc3_)
                  {
                     if(!(_loc6_ || this))
                     {
                        break;
                     }
                     §§push(§§pop() - _loc5_.top);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        §§goto(addr154);
                     }
                  }
                  _loc4_ = §§pop();
                  loop3:
                  while(true)
                  {
                     _loc2_.addChild(this.§2!k§);
                     loop4:
                     while(true)
                     {
                        this.§2!k§.x = _loc3_;
                        loop5:
                        while(true)
                        {
                           this.§2!k§.y = _loc4_ - 10;
                           while(true)
                           {
                              super.open(param1);
                              while(_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       mClip.getChildByName("Container_Tutorial").visible = true;
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc3_)
         {
            _loc2_.removeChild(this.§2!k§);
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
