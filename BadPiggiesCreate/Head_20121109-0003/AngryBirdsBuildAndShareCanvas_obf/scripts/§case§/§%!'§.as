package §case§
{
   import §+!-§.Sprite;
   
   public class §%!'§
   {
       
      
      private var §]!r§:Vector.<§`!E§>;
      
      private var §,8§:Sprite;
      
      public function §%!'§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§]!r§ = new Vector.<§`!E§>();
         }
         loop0:
         while(true)
         {
            this.§,8§ = new Sprite();
            loop1:
            do
            {
               super();
               while(_loc2_)
               {
                  this.§,8§.§#b§ = false;
                  if(_loc2_ || _loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc2_ || _loc2_));
            
            return;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§,8§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`!E§ = null;
         while(this.§]!r§.length)
         {
            _loc1_ = this.§]!r§.pop();
            if(!_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_)
         {
            this.§,8§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`!E§ = null;
         while(this.§]!r§.length)
         {
            _loc1_ = this.§]!r§.pop();
            if(!_loc3_)
            {
               this.§,8§.removeChild(_loc1_.§1"7§);
               if(_loc2_ || _loc1_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc2_)
         {
            this.§,8§.§4"6§();
         }
      }
      
      public function §'p§(param1:§`!E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!r§.push(param1);
         }
         do
         {
            this.§,8§.addChild(param1.§1"7§);
         }
         while(!_loc2_);
         
      }
      
      public function §0!`§(param1:§`!E§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`!E§ = null;
         var _loc2_:int = this.§]!r§.indexOf(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§]!r§[_loc2_];
               addr36:
               if(_loc5_ || _loc2_)
               {
                  this.§,8§.removeChild(_loc3_.§1"7§);
                  loop0:
                  while(true)
                  {
                     addr75:
                     while(true)
                     {
                        _loc3_.dispose();
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§]!r§.splice(_loc2_,1);
                  if(!(_loc4_ && _loc2_))
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
         §§goto(addr36);
      }
      
      public function §%>§(param1:§%!'§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!E§ = null;
         while(this.§]!r§.length)
         {
            _loc2_ = this.§]!r§.pop();
            if(_loc4_)
            {
               this.§,8§.removeChild(_loc2_.§1"7§);
               if(!(_loc3_ && this))
               {
                  param1.§'p§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`!E§ = null;
         var _loc2_:* = int(this.§]!r§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!r§[_loc2_];
            if(_loc4_ || _loc3_)
            {
               if(!_loc3_.update(param1))
               {
                  loop1:
                  while(true)
                  {
                     this.§,8§.removeChild(_loc3_.§1"7§);
                     loop2:
                     while(true)
                     {
                        _loc3_.dispose();
                        while(true)
                        {
                           addr80:
                           addr64:
                           while(true)
                           {
                              this.§]!r§.splice(_loc2_,1);
                              continue loop1;
                           }
                           if(_loc4_ || _loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr78);
         }
      }
      
      public function §8!l§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§,8§);
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
