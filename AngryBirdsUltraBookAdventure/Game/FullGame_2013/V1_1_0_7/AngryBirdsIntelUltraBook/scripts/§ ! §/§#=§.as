package § ! §
{
   import §`g§.Sprite;
   
   public class §#=§
   {
       
      
      private var §[m§:Vector.<§>p§>;
      
      private var §>0§:Sprite;
      
      public function §#=§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§[m§ = new Vector.<§>p§>();
            loop0:
            while(true)
            {
               this.§>0§ = new Sprite();
               loop1:
               do
               {
                  super();
                  while(_loc2_)
                  {
                     this.§>0§.§&!U§ = false;
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc2_ || _loc2_));
               
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§>0§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc1_ = this.§[m§.pop();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§>0§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc1_ = this.§[m§.pop();
            if(_loc2_)
            {
               this.§>0§.removeChild(_loc1_.§3!Q§);
               if(_loc2_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc2_ || _loc2_)
         {
            this.§>0§.§;i§();
         }
      }
      
      public function §-M§(param1:§>p§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[m§.push(param1);
            do
            {
               this.§>0§.addChild(param1.§3!Q§);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §^!%§(param1:§>p§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>p§ = null;
         var _loc2_:int = this.§[m§.indexOf(param1);
         if(!(_loc5_ && _loc2_))
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§[m§[_loc2_];
               if(_loc4_)
               {
                  this.§>0§.removeChild(_loc3_.§3!Q§);
                  loop0:
                  while(true)
                  {
                     addr79:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§[m§.splice(_loc2_,1);
                  if(_loc4_ || _loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr82);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §<!j§(param1:§#=§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc2_ = this.§[m§.pop();
            if(!_loc3_)
            {
               this.§>0§.removeChild(_loc2_.§3!Q§);
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
            }
            param1.§-M§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>p§ = null;
         var _loc2_:* = int(this.§[m§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[m§[_loc2_];
            if(_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§>0§.removeChild(_loc3_.§3!Q§);
                     addr113:
                     loop6:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr103:
                        loop4:
                        while(true)
                        {
                           addr74:
                           while(true)
                           {
                              this.§[m§.splice(_loc2_,1);
                              addr90:
                              addr99:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop6;
                              }
                              addr99:
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr90);
                  §§goto(addr99);
               }
               continue;
            }
            §§goto(addr113);
         }
      }
      
      public function §53§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§>0§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc4_ && param1))
               {
                  §§push(-§§pop());
               }
               addr79:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
                  addr56:
                  if(!(_loc4_ && this))
                  {
                     addr64:
                     §§pop().y = -§§pop();
                     if(!_loc4_)
                     {
                        return;
                        addr67:
                     }
                     continue loop0;
                  }
               }
            }
            addr70:
         }
         while(true)
         {
            §§push(this.§>0§);
            if(_loc3_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§goto(addr56);
               }
               §§goto(addr64);
            }
            else
            {
               §§goto(addr70);
            }
         }
         §§goto(addr67);
      }
   }
}
