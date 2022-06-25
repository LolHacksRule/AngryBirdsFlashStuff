package §!!>§
{
   import §9W§.Sprite;
   
   public class §#Z§
   {
       
      
      private var §5o§:Vector.<§!8§>;
      
      private var § !$§:Sprite;
      
      public function §#Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5o§ = new Vector.<§!8§>();
            if(_loc1_)
            {
               this.§ !$§ = new Sprite();
               if(_loc1_ || _loc2_)
               {
                  super();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr66:
                     this.§ !$§.§=O§ = false;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ !$§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§!8§ = null;
         while(this.§5o§.length)
         {
            _loc1_ = this.§5o§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§ !$§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§!8§ = null;
         while(this.§5o§.length)
         {
            _loc1_ = this.§5o§.pop();
            if(!_loc2_)
            {
               this.§ !$§.removeChild(_loc1_.§@p§);
               if(_loc3_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc3_)
         {
            this.§ !$§.§!Z§();
         }
      }
      
      public function §'!;§(param1:§!8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§5o§.push(param1);
            if(_loc2_ || _loc2_)
            {
               this.§ !$§.addChild(param1.§@p§);
            }
         }
      }
      
      public function §4Y§(param1:§!8§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!8§ = null;
         var _loc2_:int = this.§5o§.indexOf(param1);
         if(!_loc5_)
         {
            if(_loc2_ > -1)
            {
               addr50:
               _loc3_ = this.§5o§[_loc2_];
               if(_loc4_)
               {
                  this.§ !$§.removeChild(_loc3_.§@p§);
                  if(_loc4_)
                  {
                     _loc3_.dispose();
                     if(_loc5_ && param1)
                     {
                     }
                     §§goto(addr79);
                  }
                  this.§5o§.splice(_loc2_,1);
               }
            }
            addr79:
            return;
         }
         §§goto(addr50);
      }
      
      public function §[u§(param1:§#Z§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§!8§ = null;
         while(this.§5o§.length)
         {
            _loc2_ = this.§5o§.pop();
            if(!(_loc4_ && this))
            {
               this.§ !$§.removeChild(_loc2_.§@p§);
               if(_loc4_ && param1)
               {
                  continue;
               }
            }
            param1.§'!;§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!8§ = null;
         var _loc2_:* = int(this.§5o§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5o§[_loc2_];
            if(_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  if(_loc5_ || this)
                  {
                     this.§ !$§.removeChild(_loc3_.§@p§);
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
                  this.§5o§.splice(_loc2_,1);
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
      
      public function §4z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§ !$§);
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
                        §§push(this.§ !$§);
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
