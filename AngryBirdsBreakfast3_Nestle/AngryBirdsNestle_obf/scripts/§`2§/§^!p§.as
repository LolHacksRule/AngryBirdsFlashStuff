package §`2§
{
   import §3!J§.Sprite;
   
   public class §^!p§
   {
       
      
      private var §53§:Vector.<§`""§>;
      
      private var §29§:Sprite;
      
      public function §^!p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§53§ = new Vector.<§`""§>();
            while(true)
            {
               this.§29§ = new Sprite();
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            super();
            do
            {
               this.§29§.§6!U§ = false;
            }
            while(_loc2_ && _loc2_);
            
            if(_loc1_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§29§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`""§ = null;
         while(this.§53§.length)
         {
            _loc1_ = this.§53§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_ || _loc3_)
         {
            this.§29§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`""§ = null;
         while(this.§53§.length)
         {
            _loc1_ = this.§53§.pop();
            if(_loc3_ || _loc1_)
            {
               this.§29§.removeChild(_loc1_.displayObject);
               if(!(_loc2_ && this))
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc3_ || this)
         {
            this.§29§.§<4§();
         }
      }
      
      public function §9!@§(param1:§`""§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§53§.push(param1);
         }
         do
         {
            this.§29§.addChild(param1.displayObject);
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §^"7§(param1:§`""§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`""§ = null;
         var _loc2_:int = this.§53§.indexOf(param1);
         if(_loc4_ || param1)
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§53§[_loc2_];
               if(_loc4_)
               {
                  this.§29§.removeChild(_loc3_.displayObject);
                  loop0:
                  while(true)
                  {
                     addr69:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr69);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §#""§(param1:§^!p§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`""§ = null;
         while(this.§53§.length)
         {
            _loc2_ = this.§53§.pop();
            if(!(_loc3_ && _loc3_))
            {
               this.§29§.removeChild(_loc2_.displayObject);
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
            }
            param1.§9!@§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`""§ = null;
         var _loc2_:* = int(this.§53§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§53§[_loc2_];
            if(!_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  loop4:
                  while(true)
                  {
                     this.§29§.removeChild(_loc3_.displayObject);
                     addr102:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr80:
                        while(_loc5_)
                        {
                           continue loop4;
                        }
                        addr70:
                        this.§53§.splice(_loc2_,1);
                        continue loop4;
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr102);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr80);
               }
               continue;
            }
            §§goto(addr87);
         }
      }
      
      public function §5_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§29§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(-§§pop());
               }
               addr84:
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
