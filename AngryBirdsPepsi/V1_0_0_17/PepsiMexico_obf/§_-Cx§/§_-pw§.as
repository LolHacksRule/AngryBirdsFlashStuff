package §_-Cx§
{
   import §_-LP§.Sprite;
   
   public class §_-pw§
   {
       
      
      private var §_-ja§:Vector.<§_-UW§>;
      
      private var §_-gH§:Sprite;
      
      public function §_-pw§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-ja§ = new Vector.<§_-UW§>();
            if(_loc1_ || this)
            {
               addr35:
               this.§_-gH§ = new Sprite();
               if(!(_loc2_ && _loc2_))
               {
                  super();
                  if(!_loc2_)
                  {
                     addr57:
                     this.§_-gH§.§_-pE§ = false;
                  }
                  return;
               }
            }
            §§goto(addr57);
         }
         §§goto(addr35);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-gH§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-UW§ = null;
         while(this.§_-ja§.length)
         {
            _loc1_ = this.§_-ja§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§_-gH§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-UW§ = null;
         while(this.§_-ja§.length)
         {
            _loc1_ = this.§_-ja§.pop();
            if(_loc2_)
            {
               this.§_-gH§.removeChild(_loc1_.§_-tY§);
               if(_loc2_)
               {
                  _loc1_.dispose();
               }
            }
         }
      }
      
      public function §_-JY§(param1:§_-UW§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-ja§.push(param1);
            if(!_loc3_)
            {
               this.§_-gH§.addChild(param1.§_-tY§);
            }
         }
      }
      
      public function §_-63§(param1:§_-pw§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-UW§ = null;
         while(this.§_-ja§.length)
         {
            _loc2_ = this.§_-ja§.pop();
            if(_loc4_)
            {
               this.§_-gH§.removeChild(_loc2_.§_-tY§);
               if(!_loc3_)
               {
                  param1.§_-JY§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-UW§ = null;
         var _loc2_:* = int(this.§_-ja§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-ja§[_loc2_];
            if(_loc5_ || param1)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  this.§_-gH§.removeChild(_loc3_.§_-tY§);
                  if(!_loc5_)
                  {
                     continue;
                  }
                  addr58:
                  _loc3_.dispose();
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  this.§_-ja§.splice(_loc2_,1);
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
               }
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr58);
         }
      }
      
      public function §_-8v§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§_-gH§);
            if(!_loc3_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(-§§pop());
                  if(_loc4_ || this)
                  {
                     §§pop().x = §§pop();
                     if(_loc4_)
                     {
                        addr48:
                        §§push(this.§_-gH§);
                        §§push(param2);
                        if(!(_loc3_ && param1))
                        {
                           addr63:
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                        §§goto(addr65);
                     }
                     addr65:
                     return;
                  }
               }
               §§goto(addr63);
            }
         }
         §§goto(addr48);
      }
   }
}
