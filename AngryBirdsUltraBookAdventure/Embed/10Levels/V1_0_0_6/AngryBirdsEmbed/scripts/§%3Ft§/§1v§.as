package §?t§
{
   import §,_§.Sprite;
   
   public class §1v§
   {
       
      
      private var §?j§:Vector.<§,i§>;
      
      private var §46§:Sprite;
      
      public function §1v§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?j§ = new Vector.<§,i§>();
            if(_loc2_)
            {
               this.§46§ = new Sprite();
               if(!(_loc1_ && _loc2_))
               {
                  super();
                  if(!_loc2_)
                  {
                  }
               }
               §§goto(addr56);
            }
            this.§46§.§!!%§ = false;
         }
         addr56:
      }
      
      public function get sprite() : Sprite
      {
         return this.§46§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,i§ = null;
         while(this.§?j§.length)
         {
            _loc1_ = this.§?j§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc1_))
         {
            this.§46§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§,i§ = null;
         while(this.§?j§.length)
         {
            _loc1_ = this.§?j§.pop();
            if(_loc3_ || this)
            {
               this.§46§.removeChild(_loc1_.§?l§);
               if(_loc3_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!_loc2_)
         {
            this.§46§.§6L§();
         }
      }
      
      public function §8"§(param1:§,i§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?j§.push(param1);
            if(_loc3_)
            {
               addr25:
               this.§46§.addChild(param1.§?l§);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §0M§(param1:§,i§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,i§ = null;
         var _loc2_:int = this.§?j§.indexOf(param1);
         if(!(_loc5_ && this))
         {
            if(_loc2_ > -1)
            {
               addr55:
               _loc3_ = this.§?j§[_loc2_];
               if(!(_loc5_ && param1))
               {
                  this.§46§.removeChild(_loc3_.§?l§);
                  if(_loc4_)
                  {
                     _loc3_.dispose();
                     if(_loc5_)
                     {
                     }
                     §§goto(addr84);
                  }
                  this.§?j§.splice(_loc2_,1);
               }
            }
            addr84:
            return;
         }
         §§goto(addr55);
      }
      
      public function §3"§(param1:§1v§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,i§ = null;
         while(this.§?j§.length)
         {
            _loc2_ = this.§?j§.pop();
            if(_loc4_)
            {
               this.§46§.removeChild(_loc2_.§?l§);
               if(!(_loc3_ && _loc2_))
               {
                  param1.§8"§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,i§ = null;
         var _loc2_:* = int(this.§?j§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?j§[_loc2_];
            if(!_loc4_)
            {
               if(!_loc3_.update(param1))
               {
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  this.§46§.removeChild(_loc3_.§?l§);
                  if(_loc5_)
                  {
                     _loc3_.dispose();
                     if(!_loc5_)
                     {
                        continue;
                     }
                     this.§?j§.splice(_loc2_,1);
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                  }
               }
            }
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
      }
      
      public function §;!A§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§46§);
            if(!_loc4_)
            {
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(-§§pop());
                  if(_loc3_ || this)
                  {
                     addr63:
                     §§pop().x = §§pop();
                     §§goto(addr83);
                  }
                  §§pop().y = §§pop();
                  addr83:
                  if(_loc3_ || _loc3_)
                  {
                     addr73:
                     §§push(this.§46§);
                     §§push(param2);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(-§§pop());
                     }
                  }
                  return;
               }
               §§goto(addr63);
            }
            §§goto(addr73);
         }
         §§goto(addr63);
      }
   }
}
