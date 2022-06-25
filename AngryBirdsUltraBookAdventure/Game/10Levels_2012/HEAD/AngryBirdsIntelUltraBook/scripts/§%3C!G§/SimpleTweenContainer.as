package §<!G§
{
   public class SimpleTweenContainer extends §'=§ implements §;K§
   {
       
      
      private var §@!=§:Vector.<§;K§>;
      
      private var §+!8§:Boolean = true;
      
      private var §>5§:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§;K§ = null;
         if(_loc7_)
         {
            this.§@!=§ = new Vector.<§;K§>();
            if(_loc7_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc7_ || _loc3_)
            {
               this.§@!=§.push(_loc3_);
            }
         }
         if(_loc7_ || param1)
         {
            this.§+!8§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;K§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§@!=§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ && _loc1_))
               {
                  §§push(!_loc1_.isCompleted);
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(false);
                        break;
                     }
                  }
               }
            }
            return true;
         }
         return §§pop();
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;K§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§@!=§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && _loc2_)
               {
                  addr79:
                  break;
               }
               §§push(!_loc1_.isPaused);
               if(!(_loc5_ || _loc3_))
               {
                  return §§pop();
               }
               if(§§pop())
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr79);
         §§push(false);
      }
      
      private function get §1!I§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§+!8§)
            {
               if(!_loc2_)
               {
                  §§goto(addr70);
               }
               else
               {
                  while(true)
                  {
                     addr57:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     addr19:
                     §§push(0);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr56);
                  }
                  addr74:
               }
            }
            while(true)
            {
               if(this.§@!=§.length > this.§>5§)
               {
                  if(!_loc2_)
                  {
                     addr56:
                     return §§pop();
                     §§push(1);
                  }
                  else
                  {
                     §§goto(addr57);
                  }
               }
               break;
               §§goto(addr74);
            }
            §§goto(addr19);
         }
         addr70:
         return this.§@!=§.length;
      }
      
      private function get §]!D§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§+!8§)
            {
               if(!_loc2_)
               {
                  addr33:
                  §§push(0);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr42:
                  return this.§>5§;
               }
               return §§pop();
            }
            §§goto(addr42);
         }
         §§goto(addr33);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;K§ = null;
         while(this.§@!=§.length > 0)
         {
            _loc1_ = this.§@!=§.shift();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;K§ = null;
         if(!(_loc5_ && this))
         {
            §§push(this.isCompleted);
            if(!_loc5_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr52:
               var _loc2_:int = 0;
               for each(_loc1_ in this.§@!=§)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §]8§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;K§ = null;
         if(_loc5_)
         {
            §§push(this.isCompleted);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr48:
               for each(_loc1_ in this.§@!=§)
               {
                  if(_loc5_ || _loc1_)
                  {
                     _loc1_.§]8§();
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;K§ = null;
         for each(_loc1_ in this.§@!=§)
         {
            if(_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;K§ = null;
         for each(_loc1_ in this.§@!=§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §!f§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;K§ = null;
         if(_loc3_ || this)
         {
            §>2§ = -§=8§;
            if(_loc3_ || this)
            {
               addr48:
               this.§>5§ = 0;
            }
            §§push(0);
            if(!(_loc4_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            while(_loc1_ < this.§@!=§.length)
            {
               _loc2_ = this.§@!=§[_loc1_];
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
               _loc2_.§!f§();
               if(_loc4_)
               {
                  continue;
               }
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc4_)
                  {
                     addr97:
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§;K§ = null;
         if(_loc6_)
         {
            §>2§ += param1;
            if(!(_loc7_ && param1))
            {
               if(§>2§ < 0)
               {
                  if(_loc6_)
                  {
                     return;
                  }
               }
            }
         }
         §§push(this.§1!I§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§]!D§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(_loc4_ < _loc3_ + _loc2_)
         {
            _loc5_ = this.§@!=§[_loc4_];
            if(!_loc7_)
            {
               _loc5_.update(param1);
               while(true)
               {
                  addr119:
                  addr100:
                  while(true)
                  {
                     this.§99§(_loc5_);
                  }
                  if(_loc7_ && _loc3_)
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr119);
               }
            }
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(_loc6_ || _loc3_)
                  {
                     addr91:
                     §§push(int(§§pop()));
                  }
                  _loc4_ = §§pop();
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  §§goto(addr100);
               }
               §§goto(addr91);
            }
         }
         if(_loc6_ || _loc3_)
         {
            this.§"!e§();
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.update(0);
         }
      }
      
      private function §99§(param1:§;K§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(param1.isCompleted)
            {
               if(!_loc4_)
               {
                  §§push(this.§+!8§);
                  if(_loc5_ || param1)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr52:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§>5§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc4_ && this))
                        {
                           _loc2_.§>5§ = _loc3_;
                        }
                        if(_loc5_ || _loc2_)
                        {
                           if(this.§>5§ < this.§@!=§.length)
                           {
                              if(!_loc4_)
                              {
                                 this.§@!=§[this.§>5§].play();
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr52);
      }
      
      private function §"!e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.isCompleted);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr38:
                     if(!§2N§)
                     {
                        if(!(_loc3_ && this))
                        {
                           this.§!f§();
                           addr46:
                           if(!(_loc3_ && _loc2_))
                           {
                              this.play();
                              if(_loc4_)
                              {
                                 addr122:
                                 return;
                                 addr71:
                              }
                              §§goto(addr122);
                           }
                           try
                           {
                              addr76:
                              §1!1§();
                              if(_loc4_)
                              {
                                 §1!1§ = null;
                              }
                              §§goto(addr122);
                           }
                           catch(e:Error)
                           {
                              if(_loc4_)
                              {
                                 §1!1§ = null;
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr117);
                              }
                              if(!§9i§)
                              {
                                 addr117:
                                 throw e;
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr122);
                        }
                     }
                     else
                     {
                        if(§1!1§ != null)
                        {
                           §§goto(addr76);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr71);
               }
               §§goto(addr122);
            }
            §§goto(addr38);
         }
         §§goto(addr46);
      }
   }
}
