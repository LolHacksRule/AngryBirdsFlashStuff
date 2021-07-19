package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3#<§ extends Sprite
   {
       
      
      protected var §!!I§:Number;
      
      protected var §5i§:Number;
      
      protected var §6"5§:Number;
      
      protected var §%#V§:§[#R§;
      
      protected var §5!f§:Number;
      
      protected var §3#M§:Number;
      
      public function §3#<§(param1:Number = 1.25, param2:Number = 0.13)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            if(_loc4_)
            {
               §§push(this);
               §§push(this);
               §§push(this.§6"5§ = 1);
               if(!_loc5_)
               {
                  var _loc3_:*;
                  §§push(_loc3_ = §§pop());
               }
               §§pop().§5i§ = §§pop();
               §§pop().§!!I§ = _loc3_;
               if(_loc4_ || this)
               {
                  this.§5!f§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§3#M§ = param2;
                     addr100:
                     while(_loc5_ && _loc3_)
                     {
                        continue loop2;
                     }
                     addEventListener(MouseEvent.ROLL_OVER,this.onOver);
                  }
                  addr61:
               }
               while(true)
               {
                  addEventListener(MouseEvent.ROLL_OUT,this.onOut);
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
                  §§goto(addr100);
               }
               return;
               addr87:
            }
            §§goto(addr61);
         }
         §§goto(addr87);
      }
      
      protected function onOver(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§%#V§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%#V§);
                     addr114:
                     while(true)
                     {
                        §§pop().stop();
                        addr115:
                        while(true)
                        {
                        }
                     }
                  }
                  addr112:
               }
               while(true)
               {
                  this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":this.§5!f§},null,this.§3#M§,§9!Z§.easeOut);
                  addr96:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§%#V§);
                        if(_loc3_ && _loc3_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§pop().play();
                     }
                     else
                     {
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr114);
               }
            }
         }
         while(parent)
         {
            if(_loc2_ || this)
            {
               parent.setChildIndex(this,parent.numChildren - 1);
            }
            if(!_loc2_)
            {
               continue;
            }
            if(_loc2_)
            {
               if(_loc2_ || _loc3_)
               {
                  break;
               }
               §§goto(addr115);
            }
            §§goto(addr96);
         }
      }
      
      protected function onOut(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§%#V§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%#V§);
                     addr84:
                     while(true)
                     {
                        §§pop().stop();
                        addr85:
                        while(true)
                        {
                        }
                     }
                  }
                  addr82:
               }
               while(true)
               {
                  this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1},null,this.§3#M§,§9!Z§.easeOut);
                  while(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§%#V§);
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§pop().play();
                              if(!_loc3_)
                              {
                                 return;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr82);
                     }
                     §§goto(addr84);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function get hoverScale() : Number
      {
         return this.§6"5§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6"5§ = param1;
            do
            {
               §§push(this);
               §§push(this.§!!I§);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() * this.§6"5§);
               }
               §§pop().super.scaleX = §§pop();
               do
               {
                  §§push(this);
                  §§push(this.§5i§);
                  if(_loc3_)
                  {
                     §§push(§§pop() * this.§6"5§);
                  }
                  §§pop().super.scaleY = §§pop();
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_);
            
         }
      }
      
      override public function get scaleX() : Number
      {
         return this.§!!I§;
      }
      
      override public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!I§ = param1;
            do
            {
               §§push(this);
               §§push(this.§!!I§);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§6"5§);
               }
               §§pop().super.scaleX = §§pop();
            }
            while(!_loc2_);
            
         }
      }
      
      override public function get scaleY() : Number
      {
         return this.§5i§;
      }
      
      override public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5i§ = param1;
         }
         do
         {
            §§push(this);
            §§push(this.§5i§);
            if(_loc2_ || this)
            {
               §§push(§§pop() * this.§6"5§);
            }
            §§pop().super.scaleY = §§pop();
         }
         while(!_loc2_);
         
      }
   }
}
