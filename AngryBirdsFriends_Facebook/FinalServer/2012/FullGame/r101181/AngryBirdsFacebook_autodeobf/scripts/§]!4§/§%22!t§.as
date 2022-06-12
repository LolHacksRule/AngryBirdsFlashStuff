package §]!4§
{
   import §1!$§.Sprite;
   
   public class §"!t§
   {
       
      
      private var §'">§:Vector.<§'G§>;
      
      private var §=!a§:Sprite;
      
      public function §"!t§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§'">§ = new Vector.<§'G§>();
            while(true)
            {
               this.§=!a§ = new Sprite();
               while(_loc1_)
               {
                  super();
                  do
                  {
                     this.§=!a§.§`!u§ = false;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(_loc1_ || _loc2_)
                  {
                     return;
                     addr67:
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!a§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'G§ = null;
         while(this.§'">§.length)
         {
            _loc1_ = this.§'">§.pop();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_ || _loc1_)
         {
            this.§=!a§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§'G§ = null;
         while(this.§'">§.length)
         {
            _loc1_ = this.§'">§.pop();
            if(_loc2_)
            {
               this.§=!a§.removeChild(_loc1_.§[%§);
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!(_loc3_ && _loc2_))
         {
            this.§=!a§.§4l§();
         }
      }
      
      public function §;!u§(param1:§'G§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'">§.push(param1);
            do
            {
               this.§=!a§.addChild(param1.§[%§);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §;z§(param1:§'G§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'G§ = null;
         var _loc2_:int = this.§'">§.indexOf(param1);
         if(_loc5_ || _loc2_)
         {
            if(_loc2_ > -1)
            {
               addr46:
               _loc3_ = this.§'">§[_loc2_];
               if(!(_loc4_ && _loc2_))
               {
                  this.§=!a§.removeChild(_loc3_.§[%§);
               }
               loop0:
               while(true)
               {
                  addr80:
                  while(true)
                  {
                     _loc3_.dispose();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §8!6§(param1:§"!t§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'G§ = null;
         while(this.§'">§.length)
         {
            _loc2_ = this.§'">§.pop();
            if(!(_loc3_ && param1))
            {
               this.§=!a§.removeChild(_loc2_.§[%§);
               if(_loc4_ || this)
               {
                  param1.§;!u§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'G§ = null;
         var _loc2_:* = int(this.§'">§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'">§[_loc2_];
            if(_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  while(true)
                  {
                     this.§=!a§.removeChild(_loc3_.§[%§);
                     addr103:
                     while(true)
                     {
                        _loc3_.dispose();
                        loop3:
                        while(true)
                        {
                           addr81:
                           while(true)
                           {
                              this.§'">§.splice(_loc2_,1);
                              addr87:
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr67:
                     if(!_loc5_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr81);
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
                  if(_loc5_ || this)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§goto(addr67);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr87);
               }
               continue;
            }
            §§goto(addr89);
         }
      }
      
      public function §=![§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§=!a§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr74:
               while(true)
               {
                  §§push(-§§pop());
                  addr75:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
