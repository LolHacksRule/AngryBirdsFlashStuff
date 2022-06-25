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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param2);
            while(true)
            {
               this.setVisibility(false);
               while(!_loc5_)
               {
                  this.§1J§ = param3;
                  if(!(_loc5_ && param3))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§1J§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§1J§.height >> 1;
         var _loc5_:Rectangle = this.§1J§.getBounds(this.§1J§);
         if(_loc7_ || param1)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
               }
               addr160:
            }
            while(true)
            {
               _loc3_ = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§§pop() - _loc5_.top);
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        §§goto(addr160);
                     }
                  }
                  if(_loc6_ && param1)
                  {
                     break;
                     addr151:
                  }
                  _loc4_ = §§pop();
                  while(_loc7_)
                  {
                     _loc2_.addChild(this.§1J§);
                     loop4:
                     while(true)
                     {
                        this.§1J§.x = _loc3_;
                        while(true)
                        {
                           this.§1J§.y = _loc4_ - 10;
                           addr79:
                           if(!(_loc6_ && _loc3_))
                           {
                              if(_loc7_)
                              {
                                 return;
                                 addr88:
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         loop6:
         while(true)
         {
            super.open(param1);
            while(true)
            {
               if(_loc6_)
               {
                  continue loop6;
               }
               if(_loc7_)
               {
                  continue;
               }
               §§goto(addr151);
            }
            §§goto(addr117);
         }
         §§goto(addr88);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_ || param1)
         {
            _loc2_.removeChild(this.§1J§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(!(_loc3_ || this));
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.close();
            do
            {
               §,!s§.resume();
            }
            while(_loc2_);
            
         }
      }
   }
}
