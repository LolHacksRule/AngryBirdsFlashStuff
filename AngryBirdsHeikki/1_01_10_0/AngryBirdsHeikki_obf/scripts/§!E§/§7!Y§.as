package §!E§
{
   import §2Y§.Sprite;
   
   public class §7!Y§
   {
       
      
      private var §@!f§:Vector.<§!U§>;
      
      private var §6!"§:Sprite;
      
      public function §7!Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§@!f§ = new Vector.<§!U§>();
            loop0:
            do
            {
               this.§6!"§ = new Sprite();
               while(true)
               {
                  super();
                  while(_loc2_ || _loc1_)
                  {
                     this.§6!"§.§0!3§ = false;
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_);
            
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§6!"§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!U§ = null;
         while(this.§@!f§.length)
         {
            _loc1_ = this.§@!f§.pop();
            if(_loc2_ || _loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && this))
         {
            this.§6!"§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!U§ = null;
         while(this.§@!f§.length)
         {
            _loc1_ = this.§@!f§.pop();
            if(!_loc3_)
            {
               this.§6!"§.removeChild(_loc1_.§-L§);
               if(!_loc3_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!(_loc3_ && this))
         {
            this.§6!"§.§3!0§();
         }
      }
      
      public function addParticle(param1:§!U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!f§.push(param1);
         }
         do
         {
            this.§6!"§.addChild(param1.§-L§);
         }
         while(_loc2_);
         
      }
      
      public function § ^§(param1:§!U§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!U§ = null;
         var _loc2_:int = this.§@!f§.indexOf(param1);
         if(_loc5_)
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§@!f§[_loc2_];
               addr31:
               if(_loc5_ || _loc2_)
               {
                  this.§6!"§.removeChild(_loc3_.§-L§);
                  loop0:
                  while(true)
                  {
                     addr65:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr65);
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §=!D§(param1:§7!Y§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!U§ = null;
         while(this.§@!f§.length)
         {
            _loc2_ = this.§@!f§.pop();
            if(!(_loc3_ && this))
            {
               this.§6!"§.removeChild(_loc2_.§-L§);
               if(_loc4_ || _loc2_)
               {
                  param1.addParticle(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!U§ = null;
         var _loc2_:* = int(this.§@!f§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!f§[_loc2_];
            if(!(_loc5_ && _loc2_))
            {
               if(!_loc3_.update(param1))
               {
                  addr92:
                  while(true)
                  {
                     this.§6!"§.removeChild(_loc3_.§-L§);
                     addr107:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr87:
                        loop3:
                        while(true)
                        {
                           addr75:
                           while(true)
                           {
                              this.§@!f§.splice(_loc2_,1);
                              addr81:
                              addr83:
                              while(!_loc4_)
                              {
                                 continue loop3;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        if(_loc4_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr75);
                        }
                        else
                        {
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr81);
                  §§goto(addr83);
               }
               continue;
            }
            §§goto(addr92);
         }
      }
      
      public function §51§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§6!"§);
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
