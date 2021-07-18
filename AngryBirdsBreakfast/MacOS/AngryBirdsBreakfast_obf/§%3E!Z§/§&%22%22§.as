package §>!Z§
{
   import §6![§.Sprite;
   
   public class §&""§
   {
       
      
      private var §#z§:Vector.<§2_§>;
      
      private var §@'§:Sprite;
      
      public function §&""§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#z§ = new Vector.<§2_§>();
            while(true)
            {
               this.§@'§ = new Sprite();
               addr46:
               if(!(_loc2_ && _loc1_))
               {
                  this.§@'§.§!!9§ = false;
                  addr53:
                  if(!_loc1_)
                  {
                     while(_loc1_)
                     {
                        §§goto(addr46);
                        §§goto(addr53);
                     }
                     while(true)
                     {
                        super();
                        §§goto(addr44);
                     }
                     addr44:
                     addr69:
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get sprite() : Sprite
      {
         return this.§@'§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2_§ = null;
         while(this.§#z§.length)
         {
            _loc1_ = this.§#z§.pop();
            if(_loc2_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc1_))
         {
            this.§@'§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2_§ = null;
         while(this.§#z§.length)
         {
            _loc1_ = this.§#z§.pop();
            if(!_loc2_)
            {
               this.§@'§.removeChild(_loc1_.displayObject);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc3_)
         {
            this.§@'§.§>"'§();
         }
      }
      
      public function §-!,§(param1:§2_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#z§.push(param1);
         }
         do
         {
            this.§@'§.addChild(param1.displayObject);
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function §9]§(param1:§2_§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2_§ = null;
         var _loc2_:int = this.§#z§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§#z§[_loc2_];
               addr31:
               if(!(_loc4_ && _loc3_))
               {
                  this.§@'§.removeChild(_loc3_.displayObject);
               }
               loop0:
               while(true)
               {
                  addr70:
                  while(true)
                  {
                     _loc3_.dispose();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §+!,§(param1:§&""§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2_§ = null;
         while(this.§#z§.length)
         {
            _loc2_ = this.§#z§.pop();
            if(_loc4_ || _loc2_)
            {
               this.§@'§.removeChild(_loc2_.displayObject);
               if(_loc4_)
               {
                  param1.§-!,§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2_§ = null;
         var _loc2_:* = int(this.§#z§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#z§[_loc2_];
            if(_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  while(true)
                  {
                     this.§@'§.removeChild(_loc3_.displayObject);
                     addr103:
                     loop6:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr83:
                        loop4:
                        while(true)
                        {
                           addr66:
                           while(true)
                           {
                              this.§#z§.splice(_loc2_,1);
                              addr72:
                              addr79:
                              while(!(_loc5_ || this))
                              {
                                 continue loop6;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr66);
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr72);
                  §§goto(addr79);
               }
               continue;
            }
            §§goto(addr103);
         }
      }
      
      public function §7!d§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§@'§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || param2)
               {
                  §§push(-§§pop());
               }
               addr74:
               while(true)
               {
                  §§pop().x = §§pop();
                  §§push(param2);
                  addr43:
                  continue loop0;
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  if(_loc3_)
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
            §§push(this.§@'§);
            if(!(_loc4_ && param1))
            {
               §§goto(addr43);
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
