package §'!s§
{
   import §#^§.§7!A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-!5§ extends Popup
   {
       
      
      private var §8"7§:Sprite;
      
      private var §=!O§:String;
      
      public function §-!5§(param1:XML, param2:§7!A§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§=!O§ = param4;
               while(true)
               {
                  this.setVisibility(false);
                  addr59:
                  while(_loc5_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§8"7§ = param3;
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr59);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§8"7§.width >> 1;
         if(_loc7_)
         {
            _loc4_ = _loc2_.height - this.§8"7§.height >> 1;
         }
         var _loc5_:Rectangle = this.§8"7§.getBounds(this.§8"7§);
         if(!(_loc6_ && this))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop() - _loc5_.top);
                           if(_loc6_ && _loc2_)
                           {
                              continue loop1;
                           }
                           §§push(int(§§pop()));
                        }
                        if(!(_loc7_ || _loc3_))
                        {
                           break;
                        }
                        if(_loc7_)
                        {
                           _loc4_ = §§pop();
                           loop4:
                           while(_loc7_)
                           {
                              _loc2_.addChild(this.§8"7§);
                              while(true)
                              {
                                 this.§8"7§.x = _loc3_;
                                 addr111:
                                 while(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       continue;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§8"7§.y = _loc4_ - 10;
            do
            {
               super.open(param1);
               do
               {
                  mClip.getChildByName("Container_Tutorial").visible = true;
               }
               while(!_loc7_);
               
            }
            while(_loc6_);
            
            if(_loc7_ || _loc3_)
            {
               break;
            }
            §§goto(addr111);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc4_)
         {
            _loc2_.removeChild(this.§8"7§);
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
         if(!_loc1_)
         {
            super.close();
         }
      }
   }
}
