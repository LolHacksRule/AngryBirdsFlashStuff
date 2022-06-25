package §,B§
{
   import §[!+§.§4`§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §+g§ extends Popup
   {
       
      
      private var §!h§:Sprite;
      
      public function §+g§(param1:XML, param2:§4`§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2);
            do
            {
               this.setVisibility(false);
               do
               {
                  this.§!h§ = param3;
               }
               while(_loc4_);
               
            }
            while(_loc4_ && param3);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§!h§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§!h§.height >> 1;
         var _loc5_:Rectangle = this.§!h§.getBounds(this.§!h§);
         if(!(_loc6_ && this))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               addr180:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || this)
                        {
                           continue loop0;
                        }
                        addr167:
                        if(_loc6_ && param1)
                        {
                           continue loop2;
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           _loc2_.addChild(this.§!h§);
                           while(_loc7_ || _loc3_)
                           {
                              if(!(_loc7_ || this))
                              {
                                 continue loop3;
                              }
                              this.§!h§.x = _loc3_;
                              while(true)
                              {
                                 this.§!h§.y = _loc4_ - 10;
                                 §§goto(addr108);
                              }
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr100);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         addr108:
         do
         {
            super.open(param1);
            continue loop6;
         }
         while(!_loc7_);
         
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
         if(_loc3_)
         {
            _loc2_.removeChild(this.§!h§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(_loc4_ && param1);
         
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
