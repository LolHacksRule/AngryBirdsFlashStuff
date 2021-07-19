package §#J§
{
   import §^V§.Sprite;
   
   public class §+h§
   {
       
      
      private var §;!4§:Vector.<§'b§>;
      
      private var §%C§:Sprite;
      
      public function §+h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§;!4§ = new Vector.<§'b§>();
            while(true)
            {
               this.§%C§ = new Sprite();
            }
            addr82:
         }
         loop1:
         while(true)
         {
            super();
            while(!(_loc1_ && _loc2_))
            {
               this.§%C§.§<!<§ = false;
               if(_loc1_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break loop1;
               }
               §§goto(addr82);
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%C§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§'b§ = null;
         while(this.§;!4§.length)
         {
            _loc1_ = this.§;!4§.pop();
            if(!_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_)
         {
            this.§%C§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§'b§ = null;
         while(this.§;!4§.length)
         {
            _loc1_ = this.§;!4§.pop();
            if(!_loc3_)
            {
               this.§%C§.removeChild(_loc1_.§return§);
               if(!_loc3_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!(_loc3_ && _loc1_))
         {
            this.§%C§.§]P§();
         }
      }
      
      public function §-X§(param1:§'b§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§;!4§.push(param1);
            do
            {
               this.§%C§.addChild(param1.§return§);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §"!=§(param1:§'b§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'b§ = null;
         var _loc2_:int = this.§;!4§.indexOf(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§;!4§[_loc2_];
               if(_loc4_ || _loc3_)
               {
                  this.§%C§.removeChild(_loc3_.§return§);
               }
               while(true)
               {
                  while(true)
                  {
                     _loc3_.dispose();
                     do
                     {
                        this.§;!4§.splice(_loc2_,1);
                     }
                     while(_loc5_ && _loc2_);
                     
                     if(_loc5_ && this)
                     {
                        break;
                     }
                     if(true)
                     {
                        return;
                     }
                     addr101:
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr45);
      }
      
      public function §29§(param1:§+h§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'b§ = null;
         while(this.§;!4§.length)
         {
            _loc2_ = this.§;!4§.pop();
            if(!(_loc3_ && _loc3_))
            {
               this.§%C§.removeChild(_loc2_.§return§);
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
            }
            param1.§-X§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'b§ = null;
         var _loc2_:* = int(this.§;!4§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;!4§[_loc2_];
            if(_loc5_ || param1)
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§%C§.removeChild(_loc3_.§return§);
                     addr103:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr93:
                        while(true)
                        {
                           addr81:
                           while(true)
                           {
                              this.§;!4§.splice(_loc2_,1);
                              addr87:
                              addr89:
                              while(!_loc5_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr87);
                  §§goto(addr89);
               }
               continue;
            }
            §§goto(addr93);
         }
      }
      
      public function §85§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§%C§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr89:
               while(true)
               {
                  §§push(-§§pop());
                  addr90:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr88:
         }
         while(true)
         {
            §§push(this.§%C§);
            if(_loc4_ || _loc3_)
            {
               §§push(param2);
               if(!(_loc3_ && param1))
               {
                  if(_loc4_ || this)
                  {
                     if(_loc4_)
                     {
                        addr77:
                        §§pop().y = -§§pop();
                        if(!(_loc3_ && param2))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr90);
               }
               §§goto(addr77);
            }
            else
            {
               §§goto(addr88);
            }
         }
      }
   }
}
