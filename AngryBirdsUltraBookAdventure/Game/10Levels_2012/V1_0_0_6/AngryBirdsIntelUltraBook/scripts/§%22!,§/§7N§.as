package §"!,§
{
   import §7!B§.Sprite;
   
   public class §7N§
   {
       
      
      private var §]=§:Vector.<§9!B§>;
      
      private var § t§:Sprite;
      
      public function §7N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§]=§ = new Vector.<§9!B§>();
            do
            {
               this.§ t§ = new Sprite();
               do
               {
                  super();
                  do
                  {
                     this.§ t§.§]!F§ = false;
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ t§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9!B§ = null;
         while(this.§]=§.length)
         {
            _loc1_ = this.§]=§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || this)
         {
            this.§ t§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9!B§ = null;
         while(this.§]=§.length)
         {
            _loc1_ = this.§]=§.pop();
            if(!(_loc3_ && _loc2_))
            {
               this.§ t§.removeChild(_loc1_.§[!s§);
               if(!_loc3_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!_loc3_)
         {
            this.§ t§.§&-§();
         }
      }
      
      public function §#Z§(param1:§9!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]=§.push(param1);
         }
         do
         {
            this.§ t§.addChild(param1.§[!s§);
         }
         while(_loc3_);
         
      }
      
      public function § !=§(param1:§9!B§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§9!B§ = null;
         var _loc2_:int = this.§]=§.indexOf(param1);
         if(_loc4_ || this)
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§]=§[_loc2_];
               if(!_loc5_)
               {
                  this.§ t§.removeChild(_loc3_.§[!s§);
                  loop0:
                  while(true)
                  {
                     addr74:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr74);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §,I§(param1:§7N§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9!B§ = null;
         while(this.§]=§.length)
         {
            _loc2_ = this.§]=§.pop();
            if(!(_loc4_ && this))
            {
               this.§ t§.removeChild(_loc2_.§[!s§);
               if(!_loc3_)
               {
                  continue;
               }
            }
            param1.§#Z§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9!B§ = null;
         var _loc2_:* = int(this.§]=§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]=§[_loc2_];
            if(!(_loc4_ && _loc3_))
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§ t§.removeChild(_loc3_.§[!s§);
                     loop2:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr93:
                        while(true)
                        {
                           addr64:
                           while(true)
                           {
                              this.§]=§.splice(_loc2_,1);
                              addr80:
                              addr89:
                              while(true)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr80);
                  §§goto(addr89);
               }
               continue;
            }
            §§goto(addr93);
         }
      }
      
      public function §!^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§ t§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_ || param2)
               {
                  §§push(-§§pop());
               }
               addr70:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr61:
         }
         while(true)
         {
            §§push(this.§ t§);
            if(!_loc3_)
            {
               §§push(param2);
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     §§push(-§§pop());
                  }
                  else
                  {
                     §§goto(addr70);
                  }
               }
               §§pop().y = §§pop();
               if(_loc4_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr61);
            §§goto(addr70);
         }
      }
   }
}
