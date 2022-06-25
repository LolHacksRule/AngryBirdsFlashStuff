package §_-N3§
{
   import §_-uY§.Sprite;
   
   public class §_-kh§
   {
       
      
      private var §_-04Q§:Vector.<§_-Hv§>;
      
      private var §_-7c§:Sprite;
      
      public function §_-kh§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§_-04Q§ = new Vector.<§_-Hv§>();
         }
         loop0:
         do
         {
            this.§_-7c§ = new Sprite();
            while(true)
            {
               super();
               while(!(_loc1_ && _loc2_))
               {
                  this.§_-7c§.§_-xd§ = false;
                  if(_loc2_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_);
         
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-7c§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-Hv§ = null;
         while(this.§_-04Q§.length)
         {
            _loc1_ = this.§_-04Q§.pop();
            if(!(_loc3_ && this))
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc1_)
         {
            this.§_-7c§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-Hv§ = null;
         while(this.§_-04Q§.length)
         {
            _loc1_ = this.§_-04Q§.pop();
            if(!_loc2_)
            {
               this.§_-7c§.removeChild(_loc1_.§_-IN§);
               if(_loc2_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!(_loc2_ && _loc3_))
         {
            this.§_-7c§.§_-6e§();
         }
      }
      
      public function §_-0EQ§(param1:§_-Hv§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-04Q§.push(param1);
            do
            {
               this.§_-7c§.addChild(param1.§_-IN§);
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §_-zZ§(param1:§_-Hv§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-Hv§ = null;
         var _loc2_:int = this.§_-04Q§.indexOf(param1);
         if(_loc5_ || _loc2_)
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§_-04Q§[_loc2_];
               addr46:
               if(!_loc4_)
               {
                  this.§_-7c§.removeChild(_loc3_.§_-IN§);
                  loop0:
                  while(true)
                  {
                     addr75:
                     while(true)
                     {
                        _loc3_.dispose();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              this.§_-04Q§.splice(_loc2_,1);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr75);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-5B§(param1:§_-kh§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Hv§ = null;
         while(this.§_-04Q§.length)
         {
            _loc2_ = this.§_-04Q§.pop();
            if(!(_loc4_ && _loc3_))
            {
               this.§_-7c§.removeChild(_loc2_.§_-IN§);
               if(!(_loc4_ && this))
               {
                  param1.§_-0EQ§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-Hv§ = null;
         var _loc2_:* = int(this.§_-04Q§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-04Q§[_loc2_];
            if(_loc4_)
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§_-7c§.removeChild(_loc3_.§_-IN§);
                     while(true)
                     {
                        _loc3_.dispose();
                        while(_loc4_ || this)
                        {
                           while(true)
                           {
                              this.§_-04Q§.splice(_loc2_,1);
                              addr81:
                              while(true)
                              {
                              }
                           }
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                           if(true)
                           {
                              continue loop0;
                           }
                           §§goto(addr65);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr54);
               }
               continue;
            }
            §§goto(addr81);
         }
      }
      
      public function §_-PS§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§_-7c§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr83:
               while(true)
               {
                  §§push(-§§pop());
                  addr84:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
   }
}
