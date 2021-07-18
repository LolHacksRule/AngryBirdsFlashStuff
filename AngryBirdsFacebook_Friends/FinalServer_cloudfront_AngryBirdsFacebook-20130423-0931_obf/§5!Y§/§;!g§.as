package §5!Y§
{
   import §`"%§.§`_§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §;!g§ extends Popup
   {
       
      
      private var §=F§:Sprite;
      
      public function §;!g§(param1:XML, param2:§`_§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
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
            this.§=F§ = param3;
            if(!_loc4_)
            {
               if(!_loc4_)
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
         var _loc3_:* = _loc2_.width - this.§=F§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§=F§.height >> 1;
         var _loc5_:Rectangle = this.§=F§.getBounds(this.§=F§);
         if(_loc7_ || this)
         {
            §§push(_loc3_);
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               addr165:
               while(true)
               {
                  §§push(int(§§pop()));
                  addr166:
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
               }
            }
            addr162:
         }
         loop3:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() - _loc5_.top);
               if(!_loc6_)
               {
                  addr150:
                  §§push(int(§§pop()));
                  if(_loc7_ || this)
                  {
                     if(!_loc6_)
                     {
                        _loc4_ = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc2_.addChild(this.§=F§);
                           while(_loc7_)
                           {
                              this.§=F§.x = _loc3_;
                              while(_loc7_)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                     }
                     else
                     {
                        §§goto(addr162);
                     }
                  }
                  §§goto(addr166);
               }
               §§goto(addr165);
            }
            §§goto(addr150);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc4_ || _loc2_)
         {
            _loc2_.removeChild(this.§=F§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(_loc3_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.close();
         }
      }
   }
}
