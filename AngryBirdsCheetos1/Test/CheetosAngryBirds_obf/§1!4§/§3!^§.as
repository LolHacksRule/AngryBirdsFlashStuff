package §1!4§
{
   import §^a§.Sprite;
   
   public class §3!^§
   {
       
      
      private var §3I§:Vector.<§7!?§>;
      
      private var §1A§:Sprite;
      
      public function §3!^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§3I§ = new Vector.<§7!?§>();
         }
         loop0:
         while(true)
         {
            this.§1A§ = new Sprite();
            do
            {
               super();
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§1A§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7!?§ = null;
         while(this.§3I§.length)
         {
            _loc1_ = this.§3I§.pop();
            if(_loc2_ || this)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc3_)
         {
            this.§1A§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7!?§ = null;
         while(this.§3I§.length)
         {
            _loc1_ = this.§3I§.pop();
            if(!(_loc2_ && _loc2_))
            {
               this.§1A§.removeChild(_loc1_.§<L§);
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!(_loc2_ && this))
         {
            this.§1A§.§<!Z§();
         }
      }
      
      public function addParticle(param1:§7!?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3I§.push(param1);
         }
         do
         {
            this.§1A§.addChild(param1.§<L§);
         }
         while(_loc3_);
         
      }
      
      public function §>u§(param1:§7!?§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7!?§ = null;
         var _loc2_:int = this.§3I§.indexOf(param1);
         if(_loc5_)
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§3I§[_loc2_];
               addr31:
               if(_loc5_ || _loc2_)
               {
                  this.§1A§.removeChild(_loc3_.§<L§);
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.dispose();
                        do
                        {
                           this.§3I§.splice(_loc2_,1);
                        }
                        while(!(_loc5_ || this));
                        
                        if(_loc5_)
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr92:
                           return;
                           addr70:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr92);
         }
         §§goto(addr31);
      }
      
      public function §[%§(param1:§3!^§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7!?§ = null;
         while(this.§3I§.length)
         {
            _loc2_ = this.§3I§.pop();
            if(_loc3_ || _loc3_)
            {
               this.§1A§.removeChild(_loc2_.§<L§);
               if(_loc3_)
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
         var _loc3_:§7!?§ = null;
         var _loc2_:* = int(this.§3I§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3I§[_loc2_];
            if(!(_loc4_ && param1))
            {
               if(!_loc3_.update(param1))
               {
                  addr93:
                  while(true)
                  {
                     this.§1A§.removeChild(_loc3_.§<L§);
                     addr108:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr88:
                        loop3:
                        while(true)
                        {
                           addr76:
                           while(true)
                           {
                              this.§3I§.splice(_loc2_,1);
                              addr82:
                              addr84:
                              while(!_loc5_)
                              {
                                 continue loop3;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!(_loc4_ && this))
                  {
                     if(_loc5_)
                     {
                        if(!_loc4_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr76);
                        }
                        else
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr82);
                  §§goto(addr84);
               }
               continue;
            }
            §§goto(addr93);
         }
      }
      
      public function § !h§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§1A§);
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
         }
         §§goto(addr74);
      }
   }
}
