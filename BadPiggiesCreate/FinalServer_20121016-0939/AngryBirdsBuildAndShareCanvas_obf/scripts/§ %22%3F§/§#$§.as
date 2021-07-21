package § "?§
{
   import §default§.Sprite;
   
   public class §#$§
   {
       
      
      private var §^!r§:Vector.<§&!>§>;
      
      private var §+!e§:Sprite;
      
      public function §#$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§^!r§ = new Vector.<§&!>§>();
            while(true)
            {
               this.§+!e§ = new Sprite();
               addr57:
               if(!(_loc1_ && this))
               {
                  this.§+!e§.§#!1§ = false;
                  addr64:
                  if(!(_loc2_ || this))
                  {
                     while(_loc2_)
                     {
                        §§goto(addr57);
                        §§goto(addr64);
                     }
                     while(true)
                     {
                        super();
                        §§goto(addr55);
                     }
                     addr55:
                     addr80:
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get sprite() : Sprite
      {
         return this.§+!e§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&!>§ = null;
         while(this.§^!r§.length)
         {
            _loc1_ = this.§^!r§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc2_ && _loc3_))
         {
            this.§+!e§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!>§ = null;
         while(this.§^!r§.length)
         {
            _loc1_ = this.§^!r§.pop();
            if(!(_loc3_ && _loc2_))
            {
               this.§+!e§.removeChild(_loc1_.§;!1§);
               if(_loc3_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc2_ || this)
         {
            this.§+!e§.§4J§();
         }
      }
      
      public function §[b§(param1:§&!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^!r§.push(param1);
            do
            {
               this.§+!e§.addChild(param1.§;!1§);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §!Y§(param1:§&!>§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§&!>§ = null;
         var _loc2_:int = this.§^!r§.indexOf(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§^!r§[_loc2_];
               addr36:
               if(!(_loc4_ && param1))
               {
                  this.§+!e§.removeChild(_loc3_.§;!1§);
               }
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
            return;
         }
         §§goto(addr36);
      }
      
      public function §<!H§(param1:§#$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!>§ = null;
         while(this.§^!r§.length)
         {
            _loc2_ = this.§^!r§.pop();
            if(_loc4_)
            {
               this.§+!e§.removeChild(_loc2_.§;!1§);
               if(_loc3_)
               {
                  continue;
               }
            }
            param1.§[b§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&!>§ = null;
         var _loc2_:* = int(this.§^!r§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§^!r§[_loc2_];
            if(!_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  loop6:
                  while(true)
                  {
                     this.§+!e§.removeChild(_loc3_.§;!1§);
                     addr107:
                     while(true)
                     {
                        _loc3_.dispose();
                        loop4:
                        while(true)
                        {
                           if(_loc5_ && _loc3_)
                           {
                              continue loop6;
                           }
                           addr87:
                           while(true)
                           {
                              this.§^!r§.splice(_loc2_,1);
                              addr74:
                              addr76:
                              while(!_loc4_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr87);
                           }
                        }
                        continue loop6;
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!(_loc5_ && param1))
                  {
                     if(!(_loc5_ && this))
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr74);
                  §§goto(addr76);
               }
               continue;
            }
            §§goto(addr92);
         }
      }
      
      public function §"!8§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§+!e§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr79:
               while(true)
               {
                  §§push(-§§pop());
                  addr80:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr78:
         }
         while(true)
         {
            §§push(this.§+!e§);
            if(!(_loc3_ && this))
            {
               §§push(param2);
               if(_loc4_ || param2)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(_loc4_)
                     {
                        addr62:
                        §§pop().y = -§§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr80);
               }
               §§goto(addr62);
            }
            else
            {
               §§goto(addr78);
            }
         }
      }
   }
}
