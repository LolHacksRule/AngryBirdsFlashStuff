package §!!j§
{
   import §>f§.§&!G§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §4U§ extends Popup
   {
       
      
      private var §1J§:Sprite;
      
      private var §99§:String;
      
      public function §4U§(param1:XML, param2:§&!G§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§99§ = param4;
               do
               {
                  this.setVisibility(false);
                  continue loop0;
               }
               while(_loc6_ && param2);
               
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§1J§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§1J§.height >> 1;
         var _loc5_:Rectangle = this.§1J§.getBounds(this.§1J§);
         if(_loc6_ || param1)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               addr174:
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
                        if(!(_loc7_ && this))
                        {
                           continue loop0;
                        }
                        addr164:
                        if(_loc6_)
                        {
                           _loc4_ = §§pop();
                           loop4:
                           for(; !_loc7_; loop6:
                           do
                           {
                              if(_loc7_ && _loc2_)
                              {
                                 continue loop4;
                              }
                              this.§1J§.y = _loc4_ - 10;
                              while(_loc6_)
                              {
                                 super.open(param1);
                                 do
                                 {
                                    mClip.getChildByName("Container_Tutorial").visible = true;
                                 }
                                 while(!(_loc6_ || _loc3_));
                                 
                                 if(_loc6_)
                                 {
                                    continue loop6;
                                 }
                              }
                              §§goto(addr126);
                           }
                           while(!(_loc6_ || this));
                           )
                           {
                              _loc2_.addChild(this.§1J§);
                              while(true)
                              {
                                 this.§1J§.x = _loc3_;
                                 continue loop4;
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
         if(!(_loc3_ && _loc2_))
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
         if(_loc1_ || this)
         {
            super.close();
         }
      }
   }
}
