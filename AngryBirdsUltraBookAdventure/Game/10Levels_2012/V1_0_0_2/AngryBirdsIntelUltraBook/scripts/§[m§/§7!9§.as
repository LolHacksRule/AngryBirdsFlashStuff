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
                  this.§,!t§ = param3;
               }
               while(_loc4_);
               
            }
            while(_loc4_);
            
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
         if(_loc6_ || param1)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               addr164:
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
                        if(!_loc7_)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr158:
                        _loc4_ = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc2_.addChild(this.§,!t§);
                           while(true)
                           {
                              this.§,!t§.x = _loc3_;
                              addr115:
                              while(_loc6_ || this)
                              {
                              }
                              continue loop3;
                              addr92:
                              if(!(_loc7_ && _loc3_))
                              {
                                 mClip.getChildByName("Container_Tutorial").visible = true;
                                 addr99:
                                 if(!_loc7_)
                                 {
                                    continue loop4;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr92);
                                    }
                                    else
                                    {
                                       while(!_loc7_)
                                       {
                                          super.open(param1);
                                          continue loop9;
                                       }
                                       §§goto(addr115);
                                       addr107:
                                    }
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
            this.§,!t§.y = _loc4_ - 10;
            §§goto(addr107);
         }
         §§goto(addr85);
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
         if(!_loc4_)
         {
            _loc2_.removeChild(this.§,!t§);
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
         if(_loc1_)
         {
            super.close();
         }
      }
   }
}
