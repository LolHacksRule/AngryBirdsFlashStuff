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
         if(!_loc1_)
         {
            this.§[m§ = new Vector.<§>p§>();
         }
         while(true)
         {
            this.§>0§ = new Sprite();
            while(_loc2_)
            {
               super();
               do
               {
                  this.§>0§.§&!U§ = false;
               }
               while(!_loc2_);
               
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§>0§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc1_ = this.§[m§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc3_)
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
         if(_loc2_)
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
            while(_loc2_);
            
         }
      }
      
      public function §^!%§(param1:§>p§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>p§ = null;
         var _loc2_:int = this.§[m§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ > -1)
            {
               addr41:
               _loc3_ = this.§[m§[_loc2_];
               if(_loc5_ || param1)
               {
                  this.§>0§.removeChild(_loc3_.§3!Q§);
                  loop0:
                  while(true)
                  {
                     addr75:
                     while(true)
                     {
                        _loc3_.dispose();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              this.§[m§.splice(_loc2_,1);
                              if(_loc5_)
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
                  §§goto(addr75);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §<!j§(param1:§#=§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc2_ = this.§[m§.pop();
            if(_loc3_)
            {
               this.§>0§.removeChild(_loc2_.§3!Q§);
               if(_loc3_ || _loc3_)
               {
                  param1.§-M§(_loc2_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>p§ = null;
         var _loc2_:* = int(this.§[m§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[m§[_loc2_];
            if(!_loc5_)
            {
               if(!_loc3_.update(param1))
               {
                  while(true)
                  {
                     this.§>0§.removeChild(_loc3_.§3!Q§);
                     addr107:
                     while(true)
                     {
                        _loc3_.dispose();
                        addr97:
                        while(true)
                        {
                           addr87:
                           while(true)
                           {
                              this.§[m§.splice(_loc2_,1);
                              addr93:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr68:
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr87);
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr107);
                  }
               }
               continue;
            }
            §§goto(addr97);
         }
      }
      
      public function §53§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§>0§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr83:
               while(true)
               {
                  §§push(-§§pop());
                  addr84:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
   }
}
