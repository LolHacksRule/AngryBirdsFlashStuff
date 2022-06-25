package §4@§
{
   import §&o§.Sprite;
   
   public class §7H§
   {
       
      
      private var §<^§:Vector.<§<!6§>;
      
      private var §?!@§:Sprite;
      
      public function §7H§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<^§ = new Vector.<§<!6§>();
            if(_loc1_ || this)
            {
               addr41:
               this.§?!@§ = new Sprite();
               if(_loc1_)
               {
                  super();
                  if(_loc1_)
                  {
                     this.§?!@§.§3!D§ = false;
                  }
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!@§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§<!6§ = null;
         while(this.§<^§.length)
         {
            _loc1_ = this.§<^§.pop();
            if(!(_loc2_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_ || _loc2_)
         {
            this.§?!@§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§<!6§ = null;
         while(this.§<^§.length)
         {
            _loc1_ = this.§<^§.pop();
            if(_loc3_ || _loc2_)
            {
               this.§?!@§.removeChild(_loc1_.§,_§);
               if(_loc2_ && this)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!_loc2_)
         {
            this.§?!@§.§>,§();
         }
      }
      
      public function §4#§(param1:§<!6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<^§.push(param1);
            if(_loc3_)
            {
               this.§?!@§.addChild(param1.§,_§);
            }
         }
      }
      
      public function §'C§(param1:§<!6§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<!6§ = null;
         var _loc2_:int = this.§<^§.indexOf(param1);
         if(_loc5_)
         {
            if(_loc2_ > -1)
            {
               addr51:
               _loc3_ = this.§<^§[_loc2_];
               if(_loc5_)
               {
                  this.§?!@§.removeChild(_loc3_.§,_§);
                  if(_loc5_)
                  {
                     _loc3_.dispose();
                     if(_loc5_ || _loc2_)
                     {
                     }
                     §§goto(addr80);
                  }
                  this.§<^§.splice(_loc2_,1);
               }
            }
            addr80:
            return;
         }
         §§goto(addr51);
      }
      
      public function §6Q§(param1:§7H§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!6§ = null;
         while(this.§<^§.length)
         {
            _loc2_ = this.§<^§.pop();
            if(_loc4_)
            {
               this.§?!@§.removeChild(_loc2_.§,_§);
               if(!_loc4_)
               {
                  continue;
               }
            }
            param1.§4#§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<!6§ = null;
         var _loc2_:* = int(this.§<^§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<^§[_loc2_];
            if(_loc5_ || _loc2_)
            {
               if(!_loc3_.update(param1))
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     this.§?!@§.removeChild(_loc3_.§,_§);
                     if(_loc5_ || param1)
                     {
                        _loc3_.dispose();
                        if(!_loc4_)
                        {
                           addr88:
                           this.§<^§.splice(_loc2_,1);
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                        }
                     }
                     §§goto(addr88);
                  }
               }
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr88);
         }
      }
      
      public function §&4§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§?!@§);
            if(_loc4_ || this)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(-§§pop());
                  if(!(_loc3_ && param2))
                  {
                     §§pop().x = §§pop();
                     if(!_loc3_)
                     {
                        addr69:
                        §§push(this.§?!@§);
                        §§push(param2);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr78:
                           §§pop().y = -§§pop();
                        }
                        §§goto(addr78);
                     }
                     return;
                  }
               }
               §§goto(addr78);
            }
         }
         §§goto(addr69);
      }
   }
}
