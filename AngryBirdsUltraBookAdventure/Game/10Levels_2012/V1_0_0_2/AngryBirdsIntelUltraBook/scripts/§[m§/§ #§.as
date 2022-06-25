package §[m§
{
   import §2h§.§'!^§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class § #§ extends Popup
   {
       
      
      private var §,!t§:Sprite;
      
      private var §+!"§:String;
      
      public function § #§(param1:XML, param2:§'!^§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2);
            while(true)
            {
               this.§+!"§ = param4;
               while(_loc6_ || param2)
               {
                  this.setVisibility(false);
                  do
                  {
                     this.§,!t§ = param3;
                  }
                  while(!_loc6_);
                  
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  return;
                  addr57:
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§,!t§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§,!t§.height >> 1;
         var _loc5_:Rectangle = this.§,!t§.getBounds(this.§,!t§);
         if(_loc7_ || param1)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               addr252:
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
                        if(!(_loc6_ && this))
                        {
                           continue loop0;
                        }
                        addr239:
                        if(_loc6_ && _loc3_)
                        {
                           continue loop2;
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           _loc2_.addChild(this.§,!t§);
                           loop5:
                           while(true)
                           {
                              if(this.§+!"§ != "POWERUP_TUTORIAL_SLINGSCOPE")
                              {
                                 if(mClip.ButtonEasterEgg5)
                                 {
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§0!$§);
                                             }
                                             continue loop3;
                                          }
                                          if(!(_loc6_ && param1))
                                          {
                                             mClip.ButtonEasterEgg5.visible = false;
                                             loop7:
                                             while(true)
                                             {
                                                addr91:
                                                while(true)
                                                {
                                                   this.§,!t§.x = _loc3_;
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr184:
                                             while(true)
                                             {
                                                mClip.ButtonEasterEgg5.visible = false;
                                                continue loop5;
                                             }
                                             addr184:
                                          }
                                       }
                                       while(true)
                                       {
                                          addr121:
                                          while(true)
                                          {
                                          }
                                       }
                                       if(!(_loc7_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       this.§,!t§.y = _loc4_ - 10;
                                       loop14:
                                       while(true)
                                       {
                                          super.open(param1);
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   addr177:
                                                   while(true)
                                                   {
                                                      if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                      else
                                                      {
                                                         mClip.ButtonEasterEgg5.visible = true;
                                                         §§goto(addr171);
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop14;
                                          }
                                          §§goto(addr96);
                                       }
                                    }
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr177);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      private function §0!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
         }
         do
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         while(_loc2_ && this);
         
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_ || _loc2_)
         {
            _loc2_.removeChild(this.§,!t§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.close();
         }
      }
   }
}
