package §<M§
{
   import §]!-§.§`o§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §]!2§ extends Popup
   {
       
      
      private var §!!7§:Sprite;
      
      private var §"w§:String;
      
      public function §]!2§(param1:XML, param2:§`o§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2);
         }
         do
         {
            this.§"w§ = param4;
            do
            {
               this.setVisibility(false);
               do
               {
                  this.§!!7§ = param3;
               }
               while(_loc5_);
               
            }
            while(!_loc6_);
            
         }
         while(!(_loc6_ || param3));
         
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§!!7§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§!!7§.height >> 1;
         var _loc5_:Rectangle = this.§!!7§.getBounds(this.§!!7§);
         if(!_loc6_)
         {
            §§push(_loc3_);
            loop0:
            do
            {
               §§push(§§pop() - _loc5_.left);
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§push(_loc4_);
                     if(_loc6_ && param1)
                     {
                        break;
                     }
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() - _loc5_.top);
                        if(_loc7_)
                        {
                           §§push(int(§§pop()));
                           break;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            while(_loc6_);
            
            _loc4_ = §§pop();
            _loc2_.addChild(this.§!!7§);
            if(this.§"w§ == "POWERUP_TUTORIAL_SLINGSCOPE")
            {
               if(!(AngryBirdsFP11.§`I§ as Object).isEggUnlocked("1000-5"))
               {
                  mClip.ButtonEasterEgg5.visible = true;
                  addr143:
                  if(!(_loc6_ && this))
                  {
                     mClip.ButtonEasterEgg5.buttonMode = true;
                     mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§5Y§);
                     addr129:
                     while(true)
                     {
                        §§goto(addr87);
                     }
                     addr103:
                  }
                  while(true)
                  {
                     §§goto(addr103);
                     §§goto(addr163);
                  }
                  addr167:
               }
               §§goto(addr163);
            }
            else if(mClip.ButtonEasterEgg5)
            {
               if(_loc7_ || param1)
               {
                  mClip.ButtonEasterEgg5.visible = false;
                  §§goto(addr87);
               }
               else
               {
                  §§goto(addr143);
               }
            }
            addr87:
            while(true)
            {
               this.§!!7§.x = _loc3_;
               do
               {
                  this.§!!7§.y = _loc4_ - 10;
                  super.open(param1);
                  do
                  {
                     mClip.getChildByName("Container_Tutorial").visible = true;
                  }
                  while(!(_loc7_ || param1));
                  
               }
               while(!_loc7_);
               
               if(!_loc6_)
               {
                  break;
               }
               addr163:
               while(true)
               {
                  mClip.ButtonEasterEgg5.visible = false;
               }
            }
            return;
         }
         §§goto(addr129);
      }
      
      private function §5Y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (AngryBirdsFP11.§`I§ as Object).setEggUnlocked("1000-5");
         }
         do
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         while(_loc3_);
         
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc3_)
         {
            _loc2_.removeChild(this.§!!7§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(!_loc3_);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.close();
         }
      }
   }
}
