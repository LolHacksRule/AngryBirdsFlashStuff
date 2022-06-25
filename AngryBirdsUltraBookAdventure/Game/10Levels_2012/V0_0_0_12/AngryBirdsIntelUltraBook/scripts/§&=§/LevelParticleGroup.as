package §&=§
{
   import §6!7§.Sprite;
   
   public class LevelParticleGroup
   {
       
      
      private var §7D§:Vector.<§0'§>;
      
      private var §'K§:Sprite;
      
      public function LevelParticleGroup()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§7D§ = new Vector.<§0'§>();
         }
         while(true)
         {
            this.§'K§ = new Sprite();
            while(_loc2_ || this)
            {
               super();
               do
               {
                  this.§'K§.§<!4§ = false;
               }
               while(_loc1_ && _loc1_);
               
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§'K§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0'§ = null;
         while(this.§7D§.length)
         {
            _loc1_ = this.§7D§.pop();
            if(!(_loc3_ && this))
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc3_))
         {
            this.§'K§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0'§ = null;
         while(this.§7D§.length)
         {
            _loc1_ = this.§7D§.pop();
            if(!_loc3_)
            {
               this.§'K§.removeChild(_loc1_.displayObject);
               if(_loc2_ || this)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!(_loc3_ && _loc1_))
         {
            this.§'K§.§%s§();
         }
      }
      
      public function §@4§(param1:§0'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7D§.push(param1);
         }
         do
         {
            this.§'K§.addChild(param1.displayObject);
         }
         while(_loc3_);
         
      }
      
      public function §!!,§(param1:§0'§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0'§ = null;
         var _loc2_:int = this.§7D§.indexOf(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_ > -1)
            {
               addr46:
               _loc3_ = this.§7D§[_loc2_];
               if(_loc5_ || this)
               {
                  this.§'K§.removeChild(_loc3_.displayObject);
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.dispose();
                     while(!_loc4_)
                     {
                        this.§7D§.splice(_loc2_,1);
                        if(_loc5_)
                        {
                           if(true)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §use §(param1:LevelParticleGroup) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0'§ = null;
         while(this.§7D§.length)
         {
            _loc2_ = this.§7D§.pop();
            if(_loc4_)
            {
               this.§'K§.removeChild(_loc2_.displayObject);
               if(!_loc3_)
               {
                  param1.§@4§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0'§ = null;
         var _loc2_:* = int(this.§7D§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7D§[_loc2_];
            if(!(_loc4_ && this))
            {
               §§push(_loc3_.update(param1));
               if(_loc5_ || _loc2_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§'K§.removeChild(_loc3_.displayObject);
                     while(true)
                     {
                        _loc3_.dispose();
                        while(_loc5_ || _loc3_)
                        {
                           while(true)
                           {
                              this.§7D§.splice(_loc2_,1);
                              addr82:
                              while(true)
                              {
                              }
                           }
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              continue loop1;
                           }
                           if(true)
                           {
                              continue loop0;
                           }
                           §§goto(addr75);
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
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr64);
               }
               continue;
            }
            §§goto(addr82);
         }
      }
      
      public function §3!U§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§'K§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr78:
               while(true)
               {
                  §§push(-§§pop());
                  addr79:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr77:
         }
         while(true)
         {
            §§push(this.§'K§);
            if(!(_loc4_ && param2))
            {
               §§push(param2);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(-§§pop());
               }
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     §§pop().y = §§pop();
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
               §§goto(addr79);
            }
            else
            {
               §§goto(addr77);
            }
         }
      }
   }
}
