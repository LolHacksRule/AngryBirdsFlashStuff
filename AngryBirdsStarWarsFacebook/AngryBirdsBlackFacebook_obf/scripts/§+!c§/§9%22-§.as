package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §9"-§
   {
      
      private static const §"E§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"E§ = 0.3;
         }
      }
      
      private var mAsset:MovieClip;
      
      private var §!#T§:Vector.<MovieClip>;
      
      private var §6"5§:Number = 0;
      
      private var §%#V§:§[#R§;
      
      private var §0#$§:Number;
      
      private var §=9§:Number;
      
      public function §9"-§(param1:MovieClip)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         if(!(_loc5_ && param1))
         {
            this.§!#T§ = new Vector.<MovieClip>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.mAsset = param1;
                  while(_loc4_)
                  {
                     addr42:
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           this.§0#$§ = this.mAsset.scaleX;
                           do
                           {
                              this.§=9§ = this.mAsset.scaleY;
                           }
                           while(!(_loc4_ || _loc2_));
                           
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr42);
                        }
                        while(_loc4_)
                        {
                           §§goto(addr51);
                        }
                        addr51:
                        continue loop1;
                        addr63:
                     }
                     var _loc2_:int = 1;
                     while(_loc2_ < 100)
                     {
                        _loc3_ = this.mAsset["layer" + _loc2_];
                        if(!_loc5_)
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.§!#T§.push(_loc3_);
                              if(_loc4_)
                              {
                                 _loc2_++;
                                 if(_loc4_ || param1)
                                 {
                                    continue;
                                 }
                                 §§goto(addr170);
                                 continue;
                              }
                           }
                           this.mAsset.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
                           addr145:
                        }
                        do
                        {
                           this.mAsset.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
                        }
                        while(_loc5_);
                        
                        return;
                     }
                     this.hoverScale = 0;
                     if(_loc4_ || _loc2_)
                     {
                        §§goto(addr145);
                     }
                     §§goto(addr178);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.mAsset.mouseChildren = false;
            §§goto(addr63);
         }
      }
      
      protected function onOver(param1:MouseEvent) : void
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
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§%#V§);
                     loop1:
                     while(true)
                     {
                        §§pop().stop();
                        addr65:
                        addr89:
                        while(true)
                        {
                           §§push(this.§%#V§);
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           addr51:
                           while(true)
                           {
                              this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1},null,§"E§,§9!Z§.easeOut);
                              §§goto(addr65);
                           }
                           §§goto(addr50);
                        }
                     }
                  }
                  §§goto(addr89);
               }
               §§goto(addr51);
            }
         }
         §§goto(addr50);
      }
      
      protected function onOut(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2!t§(NaN);
         }
      }
      
      public function §2!t§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
                     addr116:
                     while(true)
                     {
                        §§pop().stop();
                        addr117:
                        while(true)
                        {
                        }
                     }
                  }
                  addr114:
               }
               while(true)
               {
                  if(!isNaN(param1))
                  {
                     loop5:
                     for(; !_loc3_; if(_loc3_ && param1)
                     {
                        continue;
                     },if(!(_loc3_ && param1))
                     {
                        §§push(this.§%#V§);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr114);
                     },§§goto(addr116))
                     {
                        this.hoverScale = param1;
                        loop6:
                        while(true)
                        {
                           addr68:
                           while(true)
                           {
                              if(_loc2_ || param1)
                              {
                                 continue loop5;
                              }
                              continue loop6;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr117);
                  }
                  while(true)
                  {
                     this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":0},null,§"E§,§9!Z§.easeOut);
                     §§goto(addr68);
                     §§goto(addr110);
                  }
               }
            }
         }
      }
      
      public function get hoverScale() : Number
      {
         return this.§6"5§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:* = NaN;
         if(_loc8_)
         {
            this.§6"5§ = param1;
         }
         for each(_loc2_ in this.§!#T§)
         {
            if(!(_loc7_ && this))
            {
               _loc2_.scaleX = _loc2_.scaleY = this.§6"5§;
               if(!(_loc7_ && _loc3_))
               {
                  _loc2_.visible = this.§6"5§ >= 0.1;
               }
            }
         }
         if(_loc8_)
         {
            §§push(1);
            §§push(this.§6"5§);
            if(_loc8_ || this)
            {
               §§push(§§pop() * 0.15);
            }
            §§push(§§pop() + §§pop());
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
         }
         do
         {
            this.mAsset.scaleX = this.§0#$§ * _loc3_;
            do
            {
               this.mAsset.scaleY = this.§=9§ * _loc3_;
            }
            while(!(_loc8_ || param1));
            
         }
         while(_loc7_ && _loc3_);
         
      }
   }
}
