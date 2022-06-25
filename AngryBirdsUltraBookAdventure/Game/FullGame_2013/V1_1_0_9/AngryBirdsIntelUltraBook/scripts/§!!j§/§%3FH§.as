package §!!j§
{
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §?H§ extends Popup
   {
       
      
      private var §1J§:Sprite;
      
      public function §?H§(param1:XML, param2:§&!G§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param1,param2);
         }
         do
         {
            this.setVisibility(false);
            do
            {
               this.§1J§ = param3;
            }
            while(_loc4_);
            
         }
         while(_loc4_);
         
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§1J§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§1J§.height >> 1;
         var _loc5_:Rectangle = this.§1J§.getBounds(this.§1J§);
         if(_loc6_)
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
                        if(!(_loc7_ && _loc3_))
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop() - _loc5_.top);
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           §§push(int(§§pop()));
                        }
                        _loc4_ = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc2_.addChild(this.§1J§);
                           loop5:
                           while(true)
                           {
                              this.§1J§.x = _loc3_;
                              do
                              {
                                 if(!_loc7_)
                                 {
                                    this.§1J§.y = _loc4_ - 10;
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              while(!(_loc6_ || param1));
                              
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
         if(!_loc3_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc4_)
         {
            _loc2_.removeChild(this.§1J§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!_loc4_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.close();
         }
         do
         {
            §,!s§.resume();
         }
         while(!(_loc1_ || _loc1_));
         
      }
   }
}
