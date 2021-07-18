package §?f§
{
   import §`a§.Sprite;
   
   public class §@!F§
   {
       
      
      private var §8!B§:Vector.<§-&§>;
      
      private var §08§:Sprite;
      
      public function §@!F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8!B§ = new Vector.<§-&§>();
            loop0:
            while(true)
            {
               this.§08§ = new Sprite();
               while(true)
               {
                  super();
                  addr49:
                  while(_loc1_)
                  {
                     if(_loc1_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§08§.§=!;§ = false;
            if(!(_loc2_ && this))
            {
               break;
            }
            §§goto(addr49);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§08§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§-&§ = null;
         while(this.§8!B§.length)
         {
            _loc1_ = this.§8!B§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc2_))
         {
            this.§08§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§-&§ = null;
         while(this.§8!B§.length)
         {
            _loc1_ = this.§8!B§.pop();
            if(!_loc2_)
            {
               this.§08§.removeChild(_loc1_.§=M§);
               if(!(_loc2_ && _loc1_))
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!_loc2_)
         {
            this.§08§.§=b§();
         }
      }
      
      public function addParticle(param1:§-&§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§8!B§.push(param1);
         }
         do
         {
            this.§08§.addChild(param1.§=M§);
         }
         while(_loc3_ && param1);
         
      }
      
      public function §`]§(param1:§-&§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-&§ = null;
         var _loc2_:int = this.§8!B§.indexOf(param1);
         if(!(_loc5_ && param1))
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§8!B§[_loc2_];
               if(!_loc5_)
               {
                  this.§08§.removeChild(_loc3_.§=M§);
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.dispose();
                        do
                        {
                           this.§8!B§.splice(_loc2_,1);
                        }
                        while(_loc5_);
                        
                        if(_loc4_ || _loc2_)
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr91:
                           return;
                           addr69:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr91);
         }
         §§goto(addr45);
      }
      
      public function §[W§(param1:§@!F§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-&§ = null;
         while(this.§8!B§.length)
         {
            _loc2_ = this.§8!B§.pop();
            if(_loc4_)
            {
               this.§08§.removeChild(_loc2_.§=M§);
               if(!(_loc4_ || this))
               {
                  continue;
               }
            }
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-&§ = null;
         var _loc2_:* = int(this.§8!B§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8!B§[_loc2_];
            if(_loc4_)
            {
               if(!_loc3_.update(param1))
               {
                  if(_loc4_)
                  {
                     this.§08§.removeChild(_loc3_.§=M§);
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_.dispose();
                     addr75:
                     while(true)
                     {
                        addr63:
                        while(true)
                        {
                           this.§8!B§.splice(_loc2_,1);
                           addr69:
                           addr71:
                           while(_loc5_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr69);
                  §§goto(addr71);
               }
               continue;
            }
            §§goto(addr75);
         }
      }
      
      public function §?!1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§08§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(-§§pop());
               }
               addr74:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr70:
         }
         while(true)
         {
            §§push(this.§08§);
            if(_loc3_ || param1)
            {
               §§push(param2);
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  else
                  {
                     §§goto(addr74);
                  }
               }
               §§pop().y = §§pop();
               if(_loc3_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr70);
            §§goto(addr74);
         }
      }
   }
}
