package §>F§
{
   import §?^§.Sprite;
   
   public class §=n§
   {
       
      
      private var §[r§:Vector.<§2S§>;
      
      private var § !6§:Sprite;
      
      public function §=n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[r§ = new Vector.<§2S§>();
            if(_loc1_)
            {
               this.§ !6§ = new Sprite();
               if(_loc1_ || _loc2_)
               {
                  super();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr66:
                     this.§ !6§.§-j§ = false;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ !6§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2S§ = null;
         while(this.§[r§.length)
         {
            _loc1_ = this.§[r§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§ !6§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2S§ = null;
         while(this.§[r§.length)
         {
            _loc1_ = this.§[r§.pop();
            if(!_loc2_)
            {
               this.§ !6§.removeChild(_loc1_.§5F§);
               if(_loc3_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc3_)
         {
            this.§ !6§.§9!B§();
         }
      }
      
      public function § t§(param1:§2S§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§[r§.push(param1);
            if(_loc2_ || _loc2_)
            {
               this.§ !6§.addChild(param1.§5F§);
            }
         }
      }
      
      public function §6f§(param1:§2S§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2S§ = null;
         var _loc2_:int = this.§[r§.indexOf(param1);
         if(!_loc5_)
         {
            if(_loc2_ > -1)
            {
               addr50:
               _loc3_ = this.§[r§[_loc2_];
               if(_loc4_)
               {
                  this.§ !6§.removeChild(_loc3_.§5F§);
                  if(_loc4_)
                  {
                     _loc3_.dispose();
                     if(_loc5_ && param1)
                     {
                     }
                     §§goto(addr79);
                  }
                  this.§[r§.splice(_loc2_,1);
               }
            }
            addr79:
            return;
         }
         §§goto(addr50);
      }
      
      public function §;q§(param1:§=n§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2S§ = null;
         while(this.§[r§.length)
         {
            _loc2_ = this.§[r§.pop();
            if(!(_loc4_ && this))
            {
               this.§ !6§.removeChild(_loc2_.§5F§);
               if(_loc4_ && param1)
               {
                  continue;
               }
            }
            param1.§ t§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2S§ = null;
         var _loc2_:* = int(this.§[r§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[r§[_loc2_];
            if(_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  if(_loc5_ || this)
                  {
                     this.§ !6§.removeChild(_loc3_.§5F§);
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     _loc3_.dispose();
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  this.§[r§.splice(_loc2_,1);
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
               }
            }
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
      }
      
      public function §>8§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§ !6§);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(-§§pop());
                  if(_loc4_)
                  {
                     §§pop().x = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        addr69:
                        §§push(this.§ !6§);
                        §§push(param2);
                        if(!_loc3_)
                        {
                           addr73:
                           §§pop().y = -§§pop();
                        }
                        §§goto(addr73);
                     }
                     return;
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr69);
      }
   }
}
