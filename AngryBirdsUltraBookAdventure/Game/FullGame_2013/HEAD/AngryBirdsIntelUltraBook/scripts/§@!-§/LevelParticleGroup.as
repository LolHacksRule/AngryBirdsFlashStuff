package §@!-§
{
   import §#!,§.Sprite;
   
   public class LevelParticleGroup
   {
       
      
      private var §0d§:Vector.<§ !_§>;
      
      private var §2$§:Sprite;
      
      public function LevelParticleGroup()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§0d§ = new Vector.<§ !_§>();
            loop0:
            while(true)
            {
               this.§2$§ = new Sprite();
               while(true)
               {
                  super();
                  while(!_loc2_)
                  {
                     continue loop0;
                     this.§2$§.§<@§ = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get sprite() : Sprite
      {
         return this.§2$§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ !_§ = null;
         while(this.§0d§.length)
         {
            _loc1_ = this.§0d§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            this.§2$§.dispose();
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ !_§ = null;
         while(this.§0d§.length)
         {
            _loc1_ = this.§0d§.pop();
            if(!(_loc3_ && _loc2_))
            {
               this.§2$§.removeChild(_loc1_.displayObject);
               if(_loc3_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc2_)
         {
            this.§2$§.§&!b§();
         }
      }
      
      public function §?`§(param1:§ !_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0d§.push(param1);
            do
            {
               this.§2$§.addChild(param1.displayObject);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §1>§(param1:§ !_§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ !_§ = null;
         var _loc2_:int = this.§0d§.indexOf(param1);
         if(_loc5_ || _loc3_)
         {
            if(_loc2_ > -1)
            {
               _loc3_ = this.§0d§[_loc2_];
               addr36:
               if(!(_loc4_ && this))
               {
                  this.§2$§.removeChild(_loc3_.displayObject);
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.dispose();
                        do
                        {
                           this.§0d§.splice(_loc2_,1);
                        }
                        while(_loc4_ && _loc2_);
                        
                        if(_loc5_ || _loc2_)
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr105:
                           return;
                           addr91:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr105);
         }
         §§goto(addr36);
      }
      
      public function §=!+§(param1:LevelParticleGroup) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ !_§ = null;
         while(this.§0d§.length)
         {
            _loc2_ = this.§0d§.pop();
            if(!_loc3_)
            {
               this.§2$§.removeChild(_loc2_.displayObject);
               if(!_loc4_)
               {
                  continue;
               }
            }
            param1.§?`§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ !_§ = null;
         var _loc2_:* = int(this.§0d§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0d§[_loc2_];
            if(!(_loc4_ && this))
            {
               §§push(_loc3_.update(param1));
               if(_loc5_ || this)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     this.§2$§.removeChild(_loc3_.displayObject);
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_.dispose();
                     while(true)
                     {
                        addr80:
                        addr69:
                        while(true)
                        {
                           this.§0d§.splice(_loc2_,1);
                           addr87:
                           while(true)
                           {
                           }
                        }
                        if(_loc5_ || _loc2_)
                        {
                           if(_loc5_)
                           {
                              while(false)
                              {
                                 §§goto(addr80);
                              }
                              continue loop0;
                              addr78:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc4_)
                     {
                        addr50:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr78);
         }
      }
      
      public function §,a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§2$§);
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
