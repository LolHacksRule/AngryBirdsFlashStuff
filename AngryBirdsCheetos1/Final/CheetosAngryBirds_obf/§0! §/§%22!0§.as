package §0! §
{
   import §]@§.Sprite;
   
   public class §"!0§
   {
       
      
      private var §#r§:Vector.<§7o§>;
      
      private var §]!?§:Sprite;
      
      public function §"!0§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§#r§ = new Vector.<§7o§>();
            while(true)
            {
               this.§]!?§ = new Sprite();
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     super();
                     while(_loc2_)
                     {
                        this.§]!?§.§^f§ = false;
                        if(!(_loc1_ && this))
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!?§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7o§ = null;
         while(this.§#r§.length)
         {
            _loc1_ = this.§#r§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§]!?§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7o§ = null;
         while(this.§#r§.length)
         {
            _loc1_ = this.§#r§.pop();
            if(!(_loc3_ && _loc2_))
            {
               this.§]!?§.removeChild(_loc1_.§'!W§);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc2_ || _loc1_)
         {
            this.§]!?§.§#8§();
         }
      }
      
      public function addParticle(param1:§7o§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#r§.push(param1);
         }
         do
         {
            this.§]!?§.addChild(param1.§'!W§);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §6Z§(param1:§7o§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7o§ = null;
         var _loc2_:int = this.§#r§.indexOf(param1);
         if(!(_loc5_ && _loc3_))
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§#r§[_loc2_];
               addr35:
               if(!_loc5_)
               {
                  this.§]!?§.removeChild(_loc3_.§'!W§);
               }
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
            return;
         }
         §§goto(addr35);
      }
      
      public function §"!6§(param1:§"!0§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7o§ = null;
         while(this.§#r§.length)
         {
            _loc2_ = this.§#r§.pop();
            if(_loc4_ || _loc3_)
            {
               this.§]!?§.removeChild(_loc2_.§'!W§);
               if(_loc3_)
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
         var _loc3_:§7o§ = null;
         var _loc2_:* = int(this.§#r§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#r§[_loc2_];
            if(!(_loc5_ && _loc2_))
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc5_)
                  {
                     this.§]!?§.removeChild(_loc3_.§'!W§);
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_.dispose();
                     addr90:
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           this.§#r§.splice(_loc2_,1);
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr79);
                  §§goto(addr79);
               }
               continue;
            }
            §§goto(addr90);
         }
      }
      
      public function §;!H§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§]!?§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc4_ && param2))
               {
                  §§push(-§§pop());
               }
               addr74:
               while(true)
               {
                  §§pop().x = §§pop();
                  §§push(param2);
                  addr28:
                  continue loop0;
                  if(_loc3_ || param1)
                  {
                     §§push(-§§pop());
                  }
                  if(!_loc4_)
                  {
                     §§pop().y = §§pop();
                     if(!_loc4_)
                     {
                        return;
                        addr52:
                     }
                     continue loop0;
                  }
               }
            }
            addr55:
         }
         while(true)
         {
            §§push(this.§]!?§);
            if(!_loc4_)
            {
               §§goto(addr28);
            }
            else
            {
               §§goto(addr55);
            }
         }
         §§goto(addr52);
      }
   }
}
