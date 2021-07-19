package §2!5§
{
   public class §2!?§ extends §'n§ implements §=!$§
   {
       
      
      private var §]X§:Vector.<§=!$§>;
      
      private var §2!-§:Boolean = true;
      
      private var §[y§:int = 0;
      
      public function §2!?§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§=!$§ = null;
         if(!(_loc7_ && this))
         {
            this.§]X§ = new Vector.<§=!$§>();
            if(_loc6_ || this)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc6_)
            {
               this.§]X§.push(_loc3_);
            }
         }
         if(_loc6_ || this)
         {
            this.§2!-§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=!$§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§]X§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  addr63:
                  break;
               }
               §§push(_loc1_.isCompleted);
               if(_loc4_)
               {
                  return §§pop();
               }
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr63);
         §§push(false);
      }
      
      private function get §[!F§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§2!-§)
            {
               while(this.§]X§.length > 0)
               {
                  if(_loc1_)
                  {
                     §§goto(addr60);
                  }
                  if(!(_loc2_ && this))
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr75:
                        break;
                     }
                     addr79:
                     return this.§]X§.length;
                  }
               }
               §§push(0);
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop();
               }
               addr60:
               return 1;
            }
            §§goto(addr79);
         }
         §§goto(addr75);
      }
      
      private function get §,y§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§2!-§)
            {
               if(!_loc2_)
               {
                  addr33:
                  §§push(0);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr42:
                  return this.§[y§;
               }
               return §§pop();
            }
            §§goto(addr42);
         }
         §§goto(addr33);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§=!$§ = null;
         while(this.§]X§.length > 0)
         {
            _loc1_ = this.§]X§.shift();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=!$§ = null;
         if(_loc4_ || _loc3_)
         {
            if(!this.isCompleted)
            {
               addr49:
               for each(_loc1_ in this.§]X§)
               {
                  if(!_loc5_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §5h§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=!$§ = null;
         if(_loc4_ || _loc1_)
         {
            if(!this.isCompleted)
            {
               addr49:
               for each(_loc1_ in this.§]X§)
               {
                  if(_loc4_ || _loc1_)
                  {
                     _loc1_.§5h§();
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function pause() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=!$§ = null;
         §§push(this.§[!F§);
         if(!(_loc3_ && _loc1_))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]X§[_loc1_];
            if(_loc4_)
            {
               _loc2_.pause();
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
               }
            }
         }
      }
      
      public function play() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=!$§ = null;
         §§push(this.§[!F§);
         if(!_loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]X§[_loc1_];
            if(_loc4_)
            {
               _loc2_.play();
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
            }
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
      }
      
      public function §0N§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=!$§ = null;
         if(_loc3_)
         {
            § !A§ = -§<!C§;
            if(_loc3_)
            {
               addr47:
               this.§[y§ = 0;
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§]X§.length)
            {
               _loc2_ = this.§]X§[_loc1_];
               if(!_loc4_)
               {
                  _loc2_.§0N§();
                  if(_loc4_)
                  {
                     continue;
                  }
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[5] = null;
            §§push(§§newactivation());
            loop1:
            while(true)
            {
               §§pop().§§slot[1] = param1;
               § !A§ += deltaTime;
               loop2:
               while(§ !A§ >= 0)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(_loc5_)
                  {
                     §§push(this.§[!F§);
                     while(true)
                     {
                        §§push(int(§§pop()));
                        continue loop2;
                        addr65:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr63);
                           }
                        }
                        loop8:
                        while(_loc5_ || this)
                        {
                           §§push(int(§§pop()));
                           while(true)
                           {
                              §§pop().§§slot[3] = §§pop();
                              addr74:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 addr63:
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.update(0);
         }
      }
      
      private function § J§(param1:§=!$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.isCompleted);
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr33:
                     if(!this.§2!-§)
                     {
                        if(!(_loc4_ && this))
                        {
                           addr51:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§[y§);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc4_)
                           {
                              _loc2_.§[y§ = _loc3_;
                           }
                           if(_loc5_)
                           {
                              if(this.§[y§ < this.§]X§.length)
                              {
                                 if(_loc4_ && _loc2_)
                                 {
                                 }
                              }
                              §§goto(addr102);
                           }
                        }
                        this.§]X§[this.§[y§].play();
                     }
                  }
                  §§goto(addr51);
               }
               addr102:
               return;
            }
            §§goto(addr33);
         }
         §§goto(addr51);
      }
      
      private function §#8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.isCompleted)
            {
               if(_loc4_ || _loc1_)
               {
                  if(!§@_§)
                  {
                     if(!_loc3_)
                     {
                        this.§0N§();
                        if(!(_loc3_ && this))
                        {
                           addr56:
                           this.play();
                           if(_loc3_ && _loc3_)
                           {
                              try
                              {
                                 addr69:
                                 §@F§();
                                 if(_loc4_)
                                 {
                                    §@F§ = null;
                                 }
                                 §§goto(addr117);
                              }
                              catch(e:Error)
                              {
                                 var _loc2_:* = e;
                                 if(_loc4_ || _loc2_)
                                 {
                                    §@F§ = null;
                                    if(!_loc3_)
                                    {
                                       if(§+?§)
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                 }
                                 throw e;
                              }
                           }
                           §§goto(addr117);
                        }
                        addr117:
                        return;
                     }
                     §§goto(addr69);
                  }
                  else if(§@F§ != null)
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr69);
         }
         §§goto(addr56);
      }
   }
}
