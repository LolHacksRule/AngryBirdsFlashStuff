package §`!r§
{
   import §!!U§.Sprite;
   
   public class §1$§
   {
       
      
      private var §`#[§:Vector.<§ U§>;
      
      private var §^c§:Sprite;
      
      public function §1$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`#[§ = new Vector.<§ U§>();
         }
         while(true)
         {
            this.§^c§ = new Sprite();
            while(!_loc1_)
            {
               super();
               while(_loc2_)
               {
                  this.§^c§.§3'§ = false;
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§^c§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ U§ = null;
         while(this.§`#[§.length)
         {
            _loc1_ = this.§`#[§.pop();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            this.§^c§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ U§ = null;
         while(this.§`#[§.length)
         {
            _loc1_ = this.§`#[§.pop();
            if(_loc3_)
            {
               this.§^c§.removeChild(_loc1_.§[!8§);
               if(!_loc2_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!(_loc2_ && _loc1_))
         {
            this.§^c§.§1!h§();
         }
      }
      
      public function §;!0§(param1:§ U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§`#[§.push(param1);
            do
            {
               this.§^c§.addChild(param1.§[!8§);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §`!q§(param1:§ U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§ U§ = null;
         var _loc2_:int = this.§`#[§.indexOf(param1);
         if(!_loc5_)
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§`#[§[_loc2_];
               addr30:
               if(!_loc5_)
               {
                  this.§^c§.removeChild(_loc3_.§[!8§);
                  loop0:
                  while(true)
                  {
                     addr66:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
                  addr85:
               }
               while(true)
               {
                  this.§`#[§.splice(_loc2_,1);
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr66);
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function §^@§(param1:§1$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ U§ = null;
         while(this.§`#[§.length)
         {
            _loc2_ = this.§`#[§.pop();
            if(_loc3_ || this)
            {
               this.§^c§.removeChild(_loc2_.§[!8§);
               if(_loc4_)
               {
                  continue;
               }
            }
            param1.§;!0§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§ U§ = null;
         var _loc2_:* = int(this.§`#[§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§`#[§[_loc2_];
            if(_loc4_ || _loc3_)
            {
               if(!_loc3_.update(param1))
               {
                  loop6:
                  while(true)
                  {
                     this.§^c§.removeChild(_loc3_.§[!8§);
                     addr112:
                     while(true)
                     {
                        _loc3_.dispose();
                        loop4:
                        while(true)
                        {
                           addr73:
                           while(true)
                           {
                              this.§`#[§.splice(_loc2_,1);
                              addr79:
                              addr88:
                              while(true)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr97:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr79);
                  §§goto(addr88);
               }
               continue;
            }
            §§goto(addr97);
         }
      }
      
      public function §>"Y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§^c§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(-§§pop());
               }
               addr64:
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
