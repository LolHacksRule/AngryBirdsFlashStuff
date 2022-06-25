package §]V§
{
   import §'!9§.Sprite;
   
   public class §[0§
   {
       
      
      private var §'9§:Vector.<§1!e§>;
      
      private var §'Q§:Sprite;
      
      public function §[0§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§'9§ = new Vector.<§1!e§>();
            while(true)
            {
               this.§'Q§ = new Sprite();
               addr66:
               if(_loc1_ || _loc2_)
               {
                  this.§'Q§.§@!U§ = false;
                  addr73:
                  if(!(_loc1_ || this))
                  {
                     while(_loc1_)
                     {
                        §§goto(addr66);
                        §§goto(addr73);
                     }
                     while(true)
                     {
                        super();
                        §§goto(addr64);
                     }
                     addr64:
                     addr79:
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'Q§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1!e§ = null;
         while(this.§'9§.length)
         {
            _loc1_ = this.§'9§.pop();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§'Q§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1!e§ = null;
         while(this.§'9§.length)
         {
            _loc1_ = this.§'9§.pop();
            if(_loc2_ || _loc2_)
            {
               this.§'Q§.removeChild(_loc1_.§0I§);
               if(_loc3_ && this)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!_loc3_)
         {
            this.§'Q§.§=!f§();
         }
      }
      
      public function § K§(param1:§1!e§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'9§.push(param1);
         }
         do
         {
            this.§'Q§.addChild(param1.§0I§);
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §3!k§(param1:§1!e§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§1!e§ = null;
         var _loc2_:int = this.§'9§.indexOf(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ > -1)
            {
               addr45:
               _loc3_ = this.§'9§[_loc2_];
               if(_loc4_)
               {
                  this.§'Q§.removeChild(_loc3_.§0I§);
                  loop0:
                  while(true)
                  {
                     addr79:
                     while(true)
                     {
                        _loc3_.dispose();
                        while(true)
                        {
                           if(_loc4_)
                           {
                              this.§'9§.splice(_loc2_,1);
                              if(!(_loc5_ && param1))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr79);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §%$§(param1:§[0§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1!e§ = null;
         while(this.§'9§.length)
         {
            _loc2_ = this.§'9§.pop();
            if(_loc3_ || this)
            {
               this.§'Q§.removeChild(_loc2_.§0I§);
               if(_loc3_)
               {
                  param1.§ K§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1!e§ = null;
         var _loc2_:* = int(this.§'9§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'9§[_loc2_];
            if(_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§'Q§.removeChild(_loc3_.§0I§);
                     loop2:
                     while(true)
                     {
                        _loc3_.dispose();
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              this.§'9§.splice(_loc2_,1);
                              addr73:
                              while(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              continue loop3;
                              addr57:
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr73);
               }
               continue;
            }
            §§goto(addr79);
         }
      }
      
      public function §#;§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§'Q§);
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
