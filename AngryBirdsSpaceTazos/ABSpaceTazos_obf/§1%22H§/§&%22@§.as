package §1"H§
{
   import §7!8§.Sprite;
   
   public class §&"@§
   {
       
      
      private var §3R§:Vector.<§2!V§>;
      
      private var §[S§:Sprite;
      
      public function §&"@§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3R§ = new Vector.<§2!V§>();
            while(true)
            {
               this.§[S§ = new Sprite();
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     super();
                     do
                     {
                        this.§[S§.§]!D§ = false;
                     }
                     while(!_loc1_);
                     
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get sprite() : Sprite
      {
         return this.§[S§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2!V§ = null;
         while(this.§3R§.length)
         {
            _loc1_ = this.§3R§.pop();
            if(_loc2_ || this)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc3_))
         {
            this.§[S§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2!V§ = null;
         while(this.§3R§.length)
         {
            _loc1_ = this.§3R§.pop();
            if(_loc2_ || this)
            {
               this.§[S§.removeChild(_loc1_.§,"F§);
               if(_loc3_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc2_ || _loc2_)
         {
            this.§[S§.§#!8§();
         }
      }
      
      public function §%!y§(param1:§2!V§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§3R§.push(param1);
         }
         do
         {
            this.§[S§.addChild(param1.§,"F§);
         }
         while(_loc2_);
         
      }
      
      public function §`!D§(param1:§2!V§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2!V§ = null;
         var _loc2_:int = this.§3R§.indexOf(param1);
         if(!(_loc5_ && this))
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§3R§[_loc2_];
               if(_loc4_)
               {
                  this.§[S§.removeChild(_loc3_.§,"F§);
                  loop0:
                  while(true)
                  {
                     addr71:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
                  addr90:
               }
               while(true)
               {
                  this.§3R§.splice(_loc2_,1);
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!(_loc5_ && param1))
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr71);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §?!&§(param1:§&"@§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2!V§ = null;
         while(this.§3R§.length)
         {
            _loc2_ = this.§3R§.pop();
            if(_loc4_)
            {
               this.§[S§.removeChild(_loc2_.§,"F§);
               if(_loc3_)
               {
                  continue;
               }
            }
            param1.§%!y§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2!V§ = null;
         var _loc2_:* = int(this.§3R§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3R§[_loc2_];
            if(!_loc4_)
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§[S§.removeChild(_loc3_.§,"F§);
                     while(true)
                     {
                        _loc3_.dispose();
                        loop3:
                        while(!(_loc4_ && this))
                        {
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§3R§.splice(_loc2_,1);
                                 addr68:
                                 addr70:
                                 while(!_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr68);
                                    §§goto(addr70);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr83);
         }
      }
      
      public function §[!K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr84:
               while(true)
               {
                  §§push(-§§pop());
                  addr85:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr80);
      }
   }
}
