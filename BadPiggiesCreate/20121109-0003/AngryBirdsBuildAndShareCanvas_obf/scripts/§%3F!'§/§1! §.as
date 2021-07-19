package §?!'§
{
   import §&!<§.§>!V§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §1! § extends Popup
   {
       
      
      private var §0Y§:Sprite;
      
      private var §&"'§:String;
      
      public function §1! §(param1:XML, param2:§>!V§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§&"'§ = param4;
               addr73:
               while(true)
               {
                  this.setVisibility(false);
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§0Y§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§0Y§.height >> 1;
         var _loc5_:Rectangle = this.§0Y§.getBounds(this.§0Y§);
         if(_loc7_)
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
                  loop2:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(§§pop() - _loc5_.top);
                           if(_loc6_)
                           {
                              continue loop1;
                           }
                           §§push(int(§§pop()));
                        }
                        if(_loc6_)
                        {
                           continue loop2;
                        }
                        _loc4_ = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc2_.addChild(this.§0Y§);
                           while(_loc7_ || this)
                           {
                              if(_loc7_ || this)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§0Y§.x = _loc3_;
            loop7:
            do
            {
               this.§0Y§.y = _loc4_ - 10;
               while(true)
               {
                  super.open(param1);
                  while(!(_loc6_ && _loc3_))
                  {
                     mClip.getChildByName("Container_Tutorial").visible = true;
                     if(!(_loc6_ && param1))
                     {
                        continue loop7;
                     }
                  }
               }
            }
            while(_loc6_ && _loc3_);
            
            §§goto(addr76);
         }
         §§goto(addr100);
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
         if(!_loc3_)
         {
            _loc2_.removeChild(this.§0Y§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.close();
         }
      }
   }
}
