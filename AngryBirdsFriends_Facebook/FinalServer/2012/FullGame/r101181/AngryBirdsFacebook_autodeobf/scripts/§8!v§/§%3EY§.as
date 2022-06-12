package §8!v§
{
   public class §>Y§ extends §'!6§ implements §+!W§
   {
       
      
      private var §77§:Vector.<§+!W§>;
      
      private var §&!5§:Boolean = true;
      
      private var §&!i§:int = 0;
      
      public function §>Y§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§+!W§ = null;
         if(_loc6_)
         {
            this.§77§ = new Vector.<§+!W§>();
            if(!_loc7_)
            {
               addr39:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(!_loc7_)
               {
                  this.§77§.push(_loc3_);
               }
            }
            if(!(_loc7_ && this))
            {
               this.§&!5§ = param2;
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
         {
            if(!_loc5_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(_loc4_ || _loc1_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
         {
            if(!(_loc4_ && _loc1_))
            {
               if(!_loc1_.isPaused)
               {
                  if(_loc5_ || this)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function get §3!I§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§&!5§)
            {
               if(!_loc2_)
               {
                  return this.§77§.length;
               }
               while(true)
               {
               }
               addr74:
            }
            while(this.§77§.length > this.§&!i§)
            {
               if(_loc2_)
               {
                  break;
               }
               if(!_loc2_)
               {
                  §§goto(addr63);
               }
               §§goto(addr74);
            }
            §§push(0);
            if(_loc1_)
            {
               return §§pop();
            }
            §§goto(addr63);
         }
         addr63:
         return 1;
      }
      
      private function get §>#§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§&!5§)
            {
               if(!_loc2_)
               {
                  §§push(0);
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  return this.§&!i§;
               }
               return §§pop();
            }
         }
         §§goto(addr47);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§+!W§ = null;
         while(this.§77§.length > 0)
         {
            _loc1_ = this.§77§.shift();
            if(!(_loc3_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+!W§ = null;
         if(_loc5_ || _loc1_)
         {
            if(!this.isCompleted)
            {
               addr50:
               for each(_loc1_ in this.§77§)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §?"3§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+!W§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr44:
               var _loc3_:* = this.§77§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc1_.§?"3§();
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
         {
            if(_loc4_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
         {
            if(_loc4_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function § set§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+!W§ = null;
         if(_loc3_ || _loc3_)
         {
            §?!x§ = -§0!t§;
            if(_loc3_)
            {
               this.§&!i§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§77§.length)
         {
            _loc2_ = this.§77§[_loc1_];
            if(!(_loc4_ && this))
            {
               _loc2_.§ set§();
               if(!(_loc3_ || this))
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§+!W§ = null;
         if(!_loc6_)
         {
            §?!x§ += param1;
            if(_loc7_)
            {
               if(§?!x§ < 0)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr39);
                  }
               }
               §§push(this.§3!I§);
               if(_loc7_ || this)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(this.§>#§);
               if(!(_loc6_ && param1))
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               while(_loc4_ < _loc3_ + _loc2_)
               {
                  (_loc5_ = this.§77§[_loc4_]).update(param1);
                  if(_loc7_)
                  {
                     this.§="0§(_loc5_);
                     if(!(_loc6_ && this))
                     {
                        _loc4_++;
                     }
                  }
               }
               if(!(_loc6_ && _loc3_))
               {
                  this.§^!k§();
               }
               return;
            }
         }
         addr39:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §="0§(param1:§+!W§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.isCompleted)
            {
               if(_loc4_ || this)
               {
                  if(!this.§&!5§)
                  {
                     if(_loc4_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§&!i§);
                        if(_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc2_.§&!i§ = _loc3_;
                        }
                        if(!_loc5_)
                        {
                           addr75:
                           if(this.§&!i§ < this.§77§.length)
                           {
                              if(_loc5_ && param1)
                              {
                              }
                           }
                        }
                        §§goto(addr94);
                     }
                     this.§77§[this.§&!i§].play();
                  }
               }
               §§goto(addr75);
            }
            addr94:
            return;
         }
         §§goto(addr75);
      }
      
      private function §^!k§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(this.isCompleted)
            {
               if(_loc3_ || this)
               {
                  addr37:
                  if(!§%"?§)
                  {
                     if(_loc3_)
                     {
                        this.§ set§();
                        if(!_loc4_)
                        {
                           addr55:
                           this.play();
                           if(_loc3_)
                           {
                              addr111:
                              return;
                              addr59:
                           }
                           §§goto(addr111);
                        }
                        try
                        {
                           addr63:
                           §>!8§();
                           if(_loc3_ || _loc2_)
                           {
                              §>!8§ = null;
                           }
                           §§goto(addr111);
                        }
                        catch(e:Error)
                        {
                           if(!_loc4_)
                           {
                              §>!8§ = null;
                              if(_loc3_)
                              {
                                 if(§3"!§)
                                 {
                                    §§goto(addr111);
                                 }
                              }
                           }
                           throw e;
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr59);
                  }
                  else
                  {
                     if(§>!8§ != null)
                     {
                        §§goto(addr63);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr111);
         }
         §§goto(addr37);
      }
   }
}
