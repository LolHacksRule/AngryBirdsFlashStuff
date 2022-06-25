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
         if(_loc5_ || param3)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§99§ = param4;
            do
            {
               this.setVisibility(false);
               continue loop0;
            }
            while(!_loc5_);
            
            return;
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
         if(_loc6_ || _loc2_)
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
                     loop3:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(§§pop() - _loc5_.top);
                           if(!(_loc6_ || _loc3_))
                           {
                              continue loop1;
                           }
                           §§push(int(§§pop()));
                        }
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           _loc2_.addChild(this.§1J§);
                           loop5:
                           while(true)
                           {
                              this.§1J§.x = _loc3_;
                              while(true)
                              {
                                 this.§1J§.y = _loc4_ - 10;
                                 continue loop5;
                                 addr85:
                                 while(!(_loc7_ && _loc2_))
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       mClip.getChildByName("Container_Tutorial").visible = true;
                                       if(!_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             return;
                                             addr80:
                                          }
                                          continue loop5;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            super.open(param1);
            §§goto(addr85);
         }
         §§goto(addr80);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_)
         {
            _loc2_.removeChild(this.§1J§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!(_loc3_ || this));
            
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
