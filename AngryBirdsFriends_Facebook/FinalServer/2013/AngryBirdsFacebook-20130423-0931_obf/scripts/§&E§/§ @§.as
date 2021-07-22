package §&E§
{
   import §'!6§.Sprite;
   
   public class § @§
   {
       
      
      private var §["V§:Vector.<§0i§>;
      
      private var §>!=§:Sprite;
      
      public function § @§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§["V§ = new Vector.<§0i§>();
         }
         do
         {
            this.§>!=§ = new Sprite();
            do
            {
               super();
               do
               {
                  this.§>!=§.§^]§ = false;
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_);
            
         }
         while(!_loc1_);
         
      }
      
      public function get sprite() : Sprite
      {
         return this.§>!=§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0i§ = null;
         while(this.§["V§.length)
         {
            _loc1_ = this.§["V§.pop();
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_)
         {
            this.§>!=§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0i§ = null;
         while(this.§["V§.length)
         {
            _loc1_ = this.§["V§.pop();
            if(!_loc3_)
            {
               this.§>!=§.removeChild(_loc1_.§>R§);
               if(_loc3_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!_loc3_)
         {
            this.§>!=§.§!!>§();
         }
      }
      
      public function §"!J§(param1:§0i§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§["V§.push(param1);
            do
            {
               this.§>!=§.addChild(param1.§>R§);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function §"!]§(param1:§0i§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0i§ = null;
         var _loc2_:int = this.§["V§.indexOf(param1);
         if(!(_loc5_ && param1))
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§["V§[_loc2_];
               if(!(_loc5_ && _loc2_))
               {
                  this.§>!=§.removeChild(_loc3_.§>R§);
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.dispose();
                     while(_loc4_)
                     {
                        this.§["V§.splice(_loc2_,1);
                        if(_loc4_)
                        {
                           if(true)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §#!4§(param1:§ @§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0i§ = null;
         while(this.§["V§.length)
         {
            _loc2_ = this.§["V§.pop();
            if(!_loc3_)
            {
               this.§>!=§.removeChild(_loc2_.§>R§);
               if(!(_loc3_ && _loc2_))
               {
                  param1.§"!J§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0i§ = null;
         var _loc2_:* = int(this.§["V§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§["V§[_loc2_];
            if(_loc5_ || param1)
            {
               if(!_loc3_.update(param1))
               {
                  loop4:
                  while(true)
                  {
                     this.§>!=§.removeChild(_loc3_.§>R§);
                     loop5:
                     while(true)
                     {
                        _loc3_.dispose();
                        loop6:
                        while(true)
                        {
                           addr67:
                           while(true)
                           {
                              this.§["V§.splice(_loc2_,1);
                              addr83:
                              addr94:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
                  addr103:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr83);
                  §§goto(addr94);
               }
               continue;
            }
            §§goto(addr103);
         }
      }
      
      public function §^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§>!=§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(-§§pop());
               }
               addr75:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
      }
   }
}
