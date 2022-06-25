package §,B§
{
   import §[!+§.§4`§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §'!q§ extends Popup
   {
       
      
      private var §!h§:Sprite;
      
      private var §^O§:String;
      
      public function §'!q§(param1:XML, param2:§4`§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2);
            loop0:
            do
            {
               this.§^O§ = param4;
               while(true)
               {
                  this.setVisibility(false);
                  while(_loc5_ || param2)
                  {
                     this.§!h§ = param3;
                     if(!(_loc6_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc6_ && param1);
            
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
         if(!_loc6_)
         {
            §§push(_loc3_);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
                  addr209:
                  §§push(§§pop() - _loc5_.top);
                  if(!_loc7_)
                  {
                     continue;
                  }
                  addr225:
                  §§push(int(§§pop()));
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc4_ = §§pop();
                     loop3:
                     for(; _loc7_; if(_loc6_ && _loc2_)
                     {
                        continue;
                     },if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                     {
                        §§goto(addr194);
                     },mClip.ButtonEasterEgg5.visible = true,§§goto(addr172))
                     {
                        _loc2_.addChild(this.§!h§);
                        while(true)
                        {
                           if(this.§^O§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                           {
                              if(!_loc6_)
                              {
                                 continue loop3;
                              }
                              addr198:
                              while(true)
                              {
                                 addr165:
                                 loop8:
                                 while(true)
                                 {
                                    addr158:
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                 }
                              }
                              addr198:
                           }
                           else if(mClip.ButtonEasterEgg5)
                           {
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    mClip.ButtonEasterEgg5.visible = false;
                                    while(true)
                                    {
                                       §§goto(addr129);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr198);
                                 }
                                 §§goto(addr165);
                              }
                              continue;
                           }
                           addr129:
                           §§goto(addr90);
                        }
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           §§goto(addr209);
                        }
                        §§goto(addr225);
                     }
                     addr249:
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr249);
                  }
                  addr248:
               }
            }
            §§goto(addr248);
         }
         addr90:
         while(true)
         {
            this.§!h§.x = _loc3_;
            loop14:
            while(true)
            {
               this.§!h§.y = _loc4_ - 10;
               while(true)
               {
                  if(_loc7_)
                  {
                     continue loop5;
                  }
                  continue loop14;
                  addr69:
                  if(_loc7_ || this)
                  {
                     continue loop6;
                  }
               }
               §§goto(addr198);
            }
            continue loop6;
         }
         addr90:
      }
      
      private function §&!r§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
            do
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_)
         {
            _loc2_.removeChild(this.§!h§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(_loc4_ && _loc3_);
            
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
