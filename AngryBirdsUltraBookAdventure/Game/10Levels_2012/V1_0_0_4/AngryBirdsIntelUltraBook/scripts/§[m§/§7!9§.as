package §[m§
{
   import §2h§.§'!^§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §7!9§ extends Popup
   {
       
      
      private var §,!t§:Sprite;
      
      public function §7!9§(param1:XML, param2:§'!^§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super(param1,param2);
            do
            {
               this.setVisibility(false);
               do
               {
                  this.§,!t§ = param3;
               }
               while(!_loc4_);
               
            }
            while(_loc5_ && param1);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§,!t§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§,!t§.height >> 1;
         var _loc5_:Rectangle = this.§,!t§.getBounds(this.§,!t§);
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_);
            if(_loc6_)
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
            }
            addr155:
         }
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() - _loc5_.top);
               if(!_loc7_)
               {
                  addr144:
                  §§push(int(§§pop()));
                  if(!_loc7_)
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        _loc2_.addChild(this.§,!t§);
                        addr128:
                        while(true)
                        {
                           this.§,!t§.x = _loc3_;
                           addr112:
                           while(true)
                           {
                              this.§,!t§.y = _loc4_ - 10;
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§goto(addr154);
               }
               §§goto(addr155);
            }
            §§goto(addr144);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc3_ && param1))
         {
            _loc2_.removeChild(this.§,!t§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(_loc3_);
         
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
