package §3v§
{
   import §9E§.Sprite;
   
   public class §>!7§
   {
       
      
      private var §^0§:Vector.<§6Q§>;
      
      private var §5M§:Sprite;
      
      public function §>!7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§^0§ = new Vector.<§6Q§>();
            while(true)
            {
               this.§5M§ = new Sprite();
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     super();
                     while(_loc2_)
                     {
                        this.§5M§.§<V§ = false;
                        if(!_loc1_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get sprite() : Sprite
      {
         return this.§5M§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6Q§ = null;
         while(this.§^0§.length)
         {
            _loc1_ = this.§^0§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_)
         {
            this.§5M§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6Q§ = null;
         while(this.§^0§.length)
         {
            _loc1_ = this.§^0§.pop();
            if(!_loc3_)
            {
               this.§5M§.removeChild(_loc1_.§74§);
               if(!(_loc3_ && _loc1_))
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!_loc3_)
         {
            this.§5M§.§+Q§();
         }
      }
      
      public function §=!K§(param1:§6Q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^0§.push(param1);
            do
            {
               this.§5M§.addChild(param1.§74§);
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §4!1§(param1:§6Q§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6Q§ = null;
         var _loc2_:int = this.§^0§.indexOf(param1);
         if(_loc5_ || param1)
         {
            if(_loc2_ > -1)
            {
               addr46:
               _loc3_ = this.§^0§[_loc2_];
               if(!(_loc4_ && _loc2_))
               {
                  this.§5M§.removeChild(_loc3_.§74§);
                  loop0:
                  while(true)
                  {
                     addr87:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
                  addr96:
               }
               while(true)
               {
                  this.§^0§.splice(_loc2_,1);
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr87);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §;!'§(param1:§>!7§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§6Q§ = null;
         while(this.§^0§.length)
         {
            _loc2_ = this.§^0§.pop();
            if(_loc3_ || _loc3_)
            {
               this.§5M§.removeChild(_loc2_.§74§);
               if(_loc4_ && param1)
               {
                  continue;
               }
            }
            param1.§=!K§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6Q§ = null;
         var _loc2_:* = int(this.§^0§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§^0§[_loc2_];
            if(_loc4_)
            {
               if(!_loc3_.update(param1))
               {
                  if(!(_loc5_ && this))
                  {
                     this.§5M§.removeChild(_loc3_.§74§);
                     addr117:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr100:
                        while(true)
                        {
                           addr80:
                           while(true)
                           {
                              this.§^0§.splice(_loc2_,1);
                              addr96:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr117:
                  }
                  §§goto(addr117);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc4_ || this)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr117);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr100);
               }
               continue;
            }
            §§goto(addr117);
         }
      }
      
      public function §>!$§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§5M§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr73:
               while(true)
               {
                  §§push(-§§pop());
                  addr74:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
   }
}
