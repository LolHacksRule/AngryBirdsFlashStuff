package §#N§
{
   import §-!`§.Sprite;
   
   public class §>M§
   {
       
      
      private var §%4§:Vector.<§!r§>;
      
      private var §7f§:Sprite;
      
      public function §>M§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§%4§ = new Vector.<§!r§>();
            if(!(_loc1_ && this))
            {
               this.§7f§ = new Sprite();
               if(_loc2_ || _loc2_)
               {
                  super();
                  if(_loc2_ || _loc2_)
                  {
                     addr77:
                     this.§7f§.§[,§ = false;
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function get sprite() : Sprite
      {
         return this.§7f§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§!r§ = null;
         while(this.§%4§.length)
         {
            _loc1_ = this.§%4§.pop();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§7f§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!r§ = null;
         while(this.§%4§.length)
         {
            _loc1_ = this.§%4§.pop();
            if(_loc2_ || _loc2_)
            {
               this.§7f§.removeChild(_loc1_.§>[§);
               if(!_loc2_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!(_loc3_ && this))
         {
            this.§7f§.§!u§();
         }
      }
      
      public function §1&§(param1:§!r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%4§.push(param1);
            if(_loc2_)
            {
               this.§7f§.addChild(param1.§>[§);
            }
         }
      }
      
      public function §0W§(param1:§!r§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!r§ = null;
         var _loc2_:int = this.§%4§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ > -1)
            {
               addr51:
               _loc3_ = this.§%4§[_loc2_];
               if(!_loc4_)
               {
                  this.§7f§.removeChild(_loc3_.§>[§);
                  if(_loc5_)
                  {
                     _loc3_.dispose();
                     if(_loc5_ || this)
                     {
                        this.§%4§.splice(_loc2_,1);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §,!J§(param1:§>M§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§!r§ = null;
         while(this.§%4§.length)
         {
            _loc2_ = this.§%4§.pop();
            if(!(_loc4_ && this))
            {
               this.§7f§.removeChild(_loc2_.§>[§);
               if(!_loc4_)
               {
                  param1.§1&§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!r§ = null;
         var _loc2_:* = int(this.§%4§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§%4§[_loc2_];
            if(_loc4_)
            {
               if(!_loc3_.update(param1))
               {
                  if(_loc4_ || this)
                  {
                     this.§7f§.removeChild(_loc3_.§>[§);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     _loc3_.dispose();
                     if(_loc4_ || _loc2_)
                     {
                        this.§%4§.splice(_loc2_,1);
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                  }
               }
               §§push(_loc2_);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
            }
         }
      }
      
      public function §4O§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§7f§);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§pop().x = §§pop();
                     if(_loc3_)
                     {
                        addr43:
                        §§push(this.§7f§);
                        §§push(param2);
                        if(_loc3_)
                        {
                           addr46:
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                        §§goto(addr48);
                     }
                     addr48:
                     return;
                  }
               }
               §§goto(addr46);
            }
         }
         §§goto(addr43);
      }
   }
}
