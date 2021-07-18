package §-!<§
{
   import § N§.Sprite;
   
   public class §5D§
   {
       
      
      private var §6l§:Vector.<§8R§>;
      
      private var §"F§:Sprite;
      
      public function §5D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6l§ = new Vector.<§8R§>();
            loop0:
            while(true)
            {
               this.§"F§ = new Sprite();
               while(true)
               {
                  super();
                  loop2:
                  while(_loc1_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§"F§.§!!"§ = false;
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function get sprite() : Sprite
      {
         return this.§"F§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8R§ = null;
         while(this.§6l§.length)
         {
            _loc1_ = this.§6l§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            this.§"F§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8R§ = null;
         while(this.§6l§.length)
         {
            _loc1_ = this.§6l§.pop();
            if(_loc3_ || _loc2_)
            {
               this.§"F§.removeChild(_loc1_.§-!-§);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!(_loc2_ && this))
         {
            this.§"F§.§1j§();
         }
      }
      
      public function addParticle(param1:§8R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§6l§.push(param1);
         }
         do
         {
            this.§"F§.addChild(param1.§-!-§);
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function § use§(param1:§8R§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§8R§ = null;
         var _loc2_:int = this.§6l§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ > -1)
            {
               addr41:
               _loc3_ = this.§6l§[_loc2_];
               if(!(_loc4_ && this))
               {
                  this.§"F§.removeChild(_loc3_.§-!-§);
                  loop0:
                  while(true)
                  {
                     addr75:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr78:
                        while(_loc5_)
                        {
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§6l§.splice(_loc2_,1);
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr78);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §1!0§(param1:§5D§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8R§ = null;
         while(this.§6l§.length)
         {
            _loc2_ = this.§6l§.pop();
            if(_loc4_)
            {
               this.§"F§.removeChild(_loc2_.§-!-§);
               if(!_loc3_)
               {
                  param1.addParticle(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§8R§ = null;
         var _loc2_:* = int(this.§6l§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6l§[_loc2_];
            if(_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§"F§.removeChild(_loc3_.§-!-§);
                     while(true)
                     {
                        _loc3_.dispose();
                        while(_loc5_)
                        {
                           continue loop1;
                           addr65:
                           if(!(_loc4_ && _loc2_))
                           {
                              while(false)
                              {
                                 while(true)
                                 {
                                    this.§6l§.splice(_loc2_,1);
                                    while(true)
                                    {
                                       addr37:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ || this))
                                          {
                                             continue;
                                          }
                                          §§goto(addr65);
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                              addr72:
                           }
                        }
                     }
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr72);
         }
      }
      
      public function §0!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§"F§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || param2)
               {
                  §§push(-§§pop());
               }
               addr89:
               while(true)
               {
                  §§pop().x = §§pop();
                  §§push(param2);
                  addr48:
                  continue loop0;
                  if(!_loc4_)
                  {
                     §§push(-§§pop());
                  }
                  if(_loc3_ || param1)
                  {
                     §§pop().y = §§pop();
                     if(!(_loc4_ && param1))
                     {
                        return;
                        addr77:
                     }
                     continue loop0;
                  }
               }
            }
            addr80:
         }
         while(true)
         {
            §§push(this.§"F§);
            if(_loc3_ || param2)
            {
               §§goto(addr48);
            }
            else
            {
               §§goto(addr80);
            }
         }
         §§goto(addr77);
      }
   }
}
